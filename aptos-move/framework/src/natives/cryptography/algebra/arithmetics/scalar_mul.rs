// Copyright © Aptos Foundation

use crate::{
    abort_unless_feature_flag_enabled,
    natives::{
        cryptography::algebra::{
            abort_invariant_violated, gas::GasParameters, AlgebraContext, Structure,
            MOVE_ABORT_CODE_INPUT_VECTOR_SIZES_NOT_MATCHING, MOVE_ABORT_CODE_NOT_IMPLEMENTED,
        },
        helpers::{SafeNativeContext, SafeNativeError, SafeNativeResult},
    },
    safe_borrow_element, safely_pop_arg, store_element, structure_from_ty_arg,
};
use aptos_types::on_chain_config::FeatureFlag;
use ark_ec::{CurveGroup, Group};
use ark_ff::Field;
use move_core_types::gas_algebra::NumArgs;
use move_vm_types::{loaded_data::runtime_types::Type, values::Value};
use smallvec::{smallvec, SmallVec};
use std::{collections::VecDeque, rc::Rc};

fn feature_flag_of_group_scalar_mul(
    group_opt: Option<Structure>,
    scalar_field_opt: Option<Structure>,
) -> Option<FeatureFlag> {
    match (group_opt, scalar_field_opt) {
        (Some(Structure::BLS12381G1Affine), Some(Structure::BLS12381Fr))
        | (Some(Structure::BLS12381G2Affine), Some(Structure::BLS12381Fr))
        | (Some(Structure::BLS12381Gt), Some(Structure::BLS12381Fr)) => {
            Some(FeatureFlag::BLS12_381_STRUCTURES)
        },
        _ => None,
    }
}

macro_rules! abort_unless_group_scalar_mul_enabled {
    ($context:ident, $group_opt:expr, $scalar_field_opt:expr) => {
        let flag_opt = feature_flag_of_group_scalar_mul($group_opt, $scalar_field_opt);
        abort_unless_feature_flag_enabled!($context, flag_opt);
    };
}

macro_rules! ark_scalar_mul_internal {
    ($context:expr, $args:ident, $group_typ:ty, $scalar_typ:ty, $op:ident, $gas:expr) => {{
        let scalar_handle = safely_pop_arg!($args, u64) as usize;
        let element_handle = safely_pop_arg!($args, u64) as usize;
        safe_borrow_element!($context, element_handle, $group_typ, element_ptr, element);
        safe_borrow_element!($context, scalar_handle, $scalar_typ, scalar_ptr, scalar);
        let scalar_bigint: ark_ff::BigInteger256 = (*scalar).into();
        $context.charge($gas)?;
        let new_element = element.$op(scalar_bigint);
        let new_handle = store_element!($context, new_element);
        Ok(smallvec![Value::u64(new_handle as u64)])
    }};
}

pub fn scalar_mul_internal(
    gas_params: &GasParameters,
    context: &mut SafeNativeContext,
    ty_args: Vec<Type>,
    mut args: VecDeque<Value>,
) -> SafeNativeResult<SmallVec<[Value; 1]>> {
    assert_eq!(2, ty_args.len());
    let group_opt = structure_from_ty_arg!(context, &ty_args[0]);
    let scalar_field_opt = structure_from_ty_arg!(context, &ty_args[1]);
    abort_unless_group_scalar_mul_enabled!(context, group_opt, scalar_field_opt);
    match (group_opt, scalar_field_opt) {
        (Some(Structure::BLS12381G1Affine), Some(Structure::BLS12381Fr)) => {
            ark_scalar_mul_internal!(
                context,
                args,
                ark_bls12_381::G1Projective,
                ark_bls12_381::Fr,
                mul_bigint,
                gas_params.ark_bls12_381_g1_proj_scalar_mul * NumArgs::one()
            )
        },
        (Some(Structure::BLS12381G2Affine), Some(Structure::BLS12381Fr)) => {
            ark_scalar_mul_internal!(
                context,
                args,
                ark_bls12_381::G2Projective,
                ark_bls12_381::Fr,
                mul_bigint,
                gas_params.ark_bls12_381_g2_proj_scalar_mul * NumArgs::one()
            )
        },
        (Some(Structure::BLS12381Gt), Some(Structure::BLS12381Fr)) => {
            let scalar_handle = safely_pop_arg!(args, u64) as usize;
            let element_handle = safely_pop_arg!(args, u64) as usize;
            safe_borrow_element!(
                context,
                element_handle,
                ark_bls12_381::Fq12,
                element_ptr,
                element
            );
            safe_borrow_element!(
                context,
                scalar_handle,
                ark_bls12_381::Fr,
                scalar_ptr,
                scalar
            );
            let scalar_bigint: ark_ff::BigInteger256 = (*scalar).into();
            context.charge(gas_params.ark_bls12_381_fq12_pow_u256 * NumArgs::one())?;
            let new_element = element.pow(scalar_bigint);
            let new_handle = store_element!(context, new_element);
            Ok(smallvec![Value::u64(new_handle as u64)])
        },
        _ => Err(SafeNativeError::Abort {
            abort_code: MOVE_ABORT_CODE_NOT_IMPLEMENTED,
        }),
    }
}

macro_rules! ark_msm_internal {
    (
        $gas_params:expr,
        $context:expr,
        $args:ident,
        $structure:expr,
        $element_typ:ty,
        $scalar_typ:ty
    ) => {{
        let scalar_handles = safely_pop_arg!($args, Vec<u64>);
        let element_handles = safely_pop_arg!($args, Vec<u64>);
        let num_elements = element_handles.len();
        let num_scalars = scalar_handles.len();
        if num_elements != num_scalars {
            return Err(SafeNativeError::Abort {
                abort_code: MOVE_ABORT_CODE_INPUT_VECTOR_SIZES_NOT_MATCHING,
            });
        }
        let mut bases = Vec::with_capacity(num_elements);
        for handle in element_handles {
            safe_borrow_element!(
                $context,
                handle as usize,
                $element_typ,
                element_ptr,
                element
            );
            bases.push(element.into_affine());
        }
        let mut scalars = Vec::with_capacity(num_scalars);
        for handle in scalar_handles {
            safe_borrow_element!($context, handle as usize, $scalar_typ, scalar_ptr, scalar);
            scalars.push(scalar.clone());
        }
        $context.charge($gas_params.group_multi_scalar_mul($structure, num_elements))?;
        let new_element: $element_typ =
            ark_ec::VariableBaseMSM::msm(bases.as_slice(), scalars.as_slice()).unwrap();
        let new_handle = store_element!($context, new_element);
        Ok(smallvec![Value::u64(new_handle as u64)])
    }};
}

pub fn multi_scalar_mul_internal(
    gas_params: &GasParameters,
    context: &mut SafeNativeContext,
    ty_args: Vec<Type>,
    mut args: VecDeque<Value>,
) -> SafeNativeResult<SmallVec<[Value; 1]>> {
    assert_eq!(2, ty_args.len());
    let structure_opt = structure_from_ty_arg!(context, &ty_args[0]);
    let scalar_opt = structure_from_ty_arg!(context, &ty_args[1]);
    abort_unless_group_scalar_mul_enabled!(context, structure_opt, scalar_opt);
    match (structure_opt, scalar_opt) {
        (Some(Structure::BLS12381G1Affine), Some(Structure::BLS12381Fr)) => {
            ark_msm_internal!(
                gas_params,
                context,
                args,
                Structure::BLS12381G1Affine,
                ark_bls12_381::G1Projective,
                ark_bls12_381::Fr
            )
        },
        (Some(Structure::BLS12381G2Affine), Some(Structure::BLS12381Fr)) => {
            ark_msm_internal!(
                gas_params,
                context,
                args,
                Structure::BLS12381G2Affine,
                ark_bls12_381::G2Projective,
                ark_bls12_381::Fr
            )
        },
        _ => Err(SafeNativeError::Abort {
            abort_code: MOVE_ABORT_CODE_NOT_IMPLEMENTED,
        }),
    }
}