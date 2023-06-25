//# init --addresses Alice=0xf75daa73fc071f93593335eb9033da804777eb94491650dd3f095ce6f778acb6 Bob=0x9c3b634ac05d0af393e0f93b9b19b61e7cac1c519f566276aa0c6fd15dac12aa
//#      --private-keys Alice=56a26140eb233750cd14fb168c3eb4bd0782b099cde626ec8aff7f3cceb6364f Bob=952aaf3a98a27903dd078d76fc9e411740d2ae9dd9ecb87b96c7cd6b791ffc69
//#      --initial-coins 10000

//# run --script --signers Alice  --args @Bob 100



// Change publish network to testnet
// create signer account for the publishing module, use it
// create signer for the collection creator
// fund both accounts on testnet
// initialize_lilypad_v2, make sure max_mints_per_user is like 777 or smth


// tester wallet seed:
// bar mad lift farm omit wheat motor animal lock rain lizard shallow

//old one
// zero artwork judge insect chapter surge magic dose noise wheel mistake they

// 0x11637e8328263828fc96583fbdb4f263a0141d66a740f6a36017f685e71dd5ba, 0xac27bc01db6b4001a70f2273d3bf8a3877fd409a22cc2fd3a0eef534df789d94
// 0x8b1858c4ccf21024bb4b8dd23a8941fe763dbc3cb6750fc5a0bdb544e4aa18d0, 0xbc640853a95507db0fedaa04c82448b77c0be0d334d29f1fdc578db1ae6ebfdf
// 0x3a25227bc36e1f564ddce1ae9ee8006bdcc7b0e3451f07c2a1c9a9648be9bd72, 0xceb6ab10bf7878af3858e9c7104fb37cd0dd1c1ab60df91710d143aa5d187524
// 0x28f716ebd56a57d08764304e17fe3b8a32eff85b2a0c3b22206d713c5e3e41cf, 0xcee8ef03507ef65dff29253fa4664ebedf964b4d00a87db44813bdd4115177b0
// 0xe05b094d6a6c97b2612d52927249707a8563191703277c17d829033950fd120a, 0x318a716226cdb8f1f6612be7dbf515e076f43a9fde06f92508b2a74e0e876b9d
// 0x9755e1e3b25bff344d3c007eeac97709bce7ac3c2449333552cae90b2e1324f6, 0xc1500082e5b31026e3e3f109d4a1930370deba0c4a7c4f46c6ba7685071adb26
// 0x396ab00c12ff73717575d6b09fbd0b7083a2e82496145e530c7ecb744fc8fcb0, 0x653b8b7364fe951c9daff8581e6bdf6ae0ad0a52a0c4f84f42a05117923c6082

script {

	use aptos_framework::aptos_account::{Self};
	//use std::string::{String};

	fun main(
		sender: &signer,
		//creator: &signer,
		//minter1: &signer,
		//minter2: &signer,
		//minter3: &signer,
		//minter4: &signer,
	) {

		//coin::register<AptosCoin>(sender);

		//let creator_address = signer::address_of(creator);
		//let minter1_address = signer::address_of(minter1);
		//let minter2_address = signer::address_of(minter2);
		//let minter3_address = signer::address_of(minter3);
		//let minter4_address = signer::address_of(minter4);

		//aptos_account::transfer(sender, @creator_address, 10000000);
		aptos_account::transfer(sender, @minter1_address, 150000000); // 1 apt = 100000000
		aptos_account::transfer(sender, @minter2_address, 150000000);
		aptos_account::transfer(sender, @minter3_address, 150000000);
		aptos_account::transfer(sender, @minter4_address, 150000000);

		// 	let token_names = vector<String> [
		// 		utf8(b"Kreacher #0"),
		// 		utf8(b"Kreacher #1"),
		// 		utf8(b"Kreacher #2"),
		// 		utf8(b"Kreacher #3"),
		// 		utf8(b"Kreacher #4"),
		// 		utf8(b"Kreacher #5"),
		// 		utf8(b"Kreacher #6"),
		// 		utf8(b"Kreacher #7"),
		// 		utf8(b"Kreacher #8"),
		// 		utf8(b"Kreacher #9"),
		// 		utf8(b"Kreacher #10"),
		// 		utf8(b"Kreacher #11"),
		// 		utf8(b"Kreacher #12"),
		// 		utf8(b"Kreacher #13"),
		// 		utf8(b"Kreacher #14"),
		// 		utf8(b"Kreacher #15"),
		// 		utf8(b"Kreacher #16"),
		// 		utf8(b"Kreacher #17"),
		// 		utf8(b"Kreacher #18"),
		// 		utf8(b"Kreacher #19"),
		// 		utf8(b"Kreacher #20"),
		// 		utf8(b"Kreacher #21"),
		// 		utf8(b"Kreacher #22"),
		// 		utf8(b"Kreacher #23"),
		// 		utf8(b"Kreacher #24"),
		// 		utf8(b"Kreacher #25"),
		// 		utf8(b"Kreacher #26"),
		// 		utf8(b"Kreacher #27"),
		// 		utf8(b"Kreacher #28"),
		// 		utf8(b"Kreacher #29"),
		// 		utf8(b"Kreacher #30"),
		// 		utf8(b"Kreacher #31"),
		// 		utf8(b"Kreacher #32"),
		// 		utf8(b"Kreacher #33"),
		// 		utf8(b"Kreacher #34"),
		// 		utf8(b"Kreacher #35"),
		// 		utf8(b"Kreacher #36"),
		// 		utf8(b"Kreacher #37"),
		// 		utf8(b"Kreacher #38"),
		// 		utf8(b"Kreacher #39"),
		// 		utf8(b"Kreacher #40"),
		// 		utf8(b"Kreacher #41"),
		// 		utf8(b"Kreacher #42"),
		// 		utf8(b"Kreacher #43"),
		// 		utf8(b"Kreacher #44"),
		// 		utf8(b"Kreacher #45"),
		// 		utf8(b"Kreacher #46"),
		// 		utf8(b"Kreacher #47"),
		// 		utf8(b"Kreacher #48"),
		// 		utf8(b"Kreacher #49"),
		// 		utf8(b"Kreacher #50"),
		// 		utf8(b"Kreacher #51"),
		// 		utf8(b"Kreacher #52"),
		// 		utf8(b"Kreacher #53"),
		// 		utf8(b"Kreacher #54"),
		// 		utf8(b"Kreacher #55"),
		// 		utf8(b"Kreacher #56"),
		// 		utf8(b"Kreacher #57"),
		// 		utf8(b"Kreacher #58"),
		// 		utf8(b"Kreacher #59"),
		// 		utf8(b"Kreacher #60"),
		// 		utf8(b"Kreacher #61"),
		// 		utf8(b"Kreacher #62"),
		// 		utf8(b"Kreacher #63"),
		// 		utf8(b"Kreacher #64"),
		// 		utf8(b"Kreacher #65"),
		// 		utf8(b"Kreacher #66"),
		// 		utf8(b"Kreacher #67"),
		// 		utf8(b"Kreacher #68"),
		// 		utf8(b"Kreacher #69"),
		// 		utf8(b"Kreacher #70"),
		// 		utf8(b"Kreacher #71"),
		// 		utf8(b"Kreacher #72"),
		// 		utf8(b"Kreacher #73"),
		// 		utf8(b"Kreacher #74"),
		// 		utf8(b"Kreacher #75"),
		// 		utf8(b"Kreacher #76"),
		// 		utf8(b"Kreacher #77"),
		// 		utf8(b"Kreacher #78"),
		// 		utf8(b"Kreacher #79"),
		// 		utf8(b"Kreacher #80"),
		// 		utf8(b"Kreacher #81"),
		// 		utf8(b"Kreacher #82"),
		// 		utf8(b"Kreacher #83"),
		// 		utf8(b"Kreacher #84"),
		// 		utf8(b"Kreacher #85"),
		// 		utf8(b"Kreacher #86"),
		// 		utf8(b"Kreacher #87"),
		// 		utf8(b"Kreacher #88"),
		// 		utf8(b"Kreacher #89"),
		// 		utf8(b"Kreacher #90"),
		// 		utf8(b"Kreacher #91"),
		// 		utf8(b"Kreacher #92"),
		// 		utf8(b"Kreacher #93"),
		// 		utf8(b"Kreacher #94"),
		// 		utf8(b"Kreacher #95"),
		// 		utf8(b"Kreacher #96"),
		// 		utf8(b"Kreacher #97"),
		// 		utf8(b"Kreacher #98"),
		// 		utf8(b"Kreacher #99"),
		// 		utf8(b"Kreacher #100"),
		// 		utf8(b"Kreacher #101"),
		// 		utf8(b"Kreacher #102"),
		// 		utf8(b"Kreacher #103"),
		// 		utf8(b"Kreacher #104"),
		// 		utf8(b"Kreacher #105"),
		// 		utf8(b"Kreacher #106"),
		// 		utf8(b"Kreacher #107"),
		// 		utf8(b"Kreacher #108"),
		// 		utf8(b"Kreacher #109"),
		// 		utf8(b"Kreacher #110"),
		// 		utf8(b"Kreacher #111"),
		// 		utf8(b"Kreacher #112"),
		// 		utf8(b"Kreacher #113"),
		// 		utf8(b"Kreacher #114"),
		// 		utf8(b"Kreacher #115"),
		// 		utf8(b"Kreacher #116"),
		// 		utf8(b"Kreacher #117"),
		// 		utf8(b"Kreacher #118"),
		// 		utf8(b"Kreacher #119"),
		// 		utf8(b"Kreacher #120"),
		// 		utf8(b"Kreacher #121"),
		// 		utf8(b"Kreacher #122"),
		// 		utf8(b"Kreacher #123"),
		// 		utf8(b"Kreacher #124"),
		// 		utf8(b"Kreacher #125"),
		// 		utf8(b"Kreacher #126"),
		// 		utf8(b"Kreacher #127"),
		// 		utf8(b"Kreacher #128"),
		// 		utf8(b"Kreacher #129"),
		// 		utf8(b"Kreacher #130"),
		// 		utf8(b"Kreacher #131"),
		// 		utf8(b"Kreacher #132"),
		// 		utf8(b"Kreacher #133"),
		// 		utf8(b"Kreacher #134"),
		// 		utf8(b"Kreacher #135"),
		// 		utf8(b"Kreacher #136"),
		// 		utf8(b"Kreacher #137"),
		// 		utf8(b"Kreacher #138"),
		// 		utf8(b"Kreacher #139"),
		// 		utf8(b"Kreacher #140"),
		// 		utf8(b"Kreacher #141"),
		// 		utf8(b"Kreacher #142"),
		// 		utf8(b"Kreacher #143"),
		// 		utf8(b"Kreacher #144"),
		// 		utf8(b"Kreacher #145"),
		// 		utf8(b"Kreacher #146"),
		// 		utf8(b"Kreacher #147"),
		// 		utf8(b"Kreacher #148"),
		// 		utf8(b"Kreacher #149"),
		// 		utf8(b"Kreacher #150"),
		// 		utf8(b"Kreacher #151"),
		// 		utf8(b"Kreacher #152"),
		// 		utf8(b"Kreacher #153"),
		// 		utf8(b"Kreacher #154"),
		// 		utf8(b"Kreacher #155"),
		// 		utf8(b"Kreacher #156"),
		// 		utf8(b"Kreacher #157"),
		// 		utf8(b"Kreacher #158"),
		// 		utf8(b"Kreacher #159"),
		// 		utf8(b"Kreacher #160"),
		// 		utf8(b"Kreacher #161"),
		// 		utf8(b"Kreacher #162"),
		// 		utf8(b"Kreacher #163"),
		// 		utf8(b"Kreacher #164"),
		// 		utf8(b"Kreacher #165"),
		// 		utf8(b"Kreacher #166"),
		// 		utf8(b"Kreacher #167"),
		// 		utf8(b"Kreacher #168"),
		// 		utf8(b"Kreacher #169"),
		// 		utf8(b"Kreacher #170"),
		// 		utf8(b"Kreacher #171"),
		// 		utf8(b"Kreacher #172"),
		// 		utf8(b"Kreacher #173"),
		// 		utf8(b"Kreacher #174"),
		// 		utf8(b"Kreacher #175"),
		// 		utf8(b"Kreacher #176"),
		// 		utf8(b"Kreacher #177"),
		// 		utf8(b"Kreacher #178"),
		// 		utf8(b"Kreacher #179"),
		// 		utf8(b"Kreacher #180"),
		// 		utf8(b"Kreacher #181"),
		// 		utf8(b"Kreacher #182"),
		// 		utf8(b"Kreacher #183"),
		// 		utf8(b"Kreacher #184"),
		// 		utf8(b"Kreacher #185"),
		// 		utf8(b"Kreacher #186"),
		// 		utf8(b"Kreacher #187"),
		// 		utf8(b"Kreacher #188"),
		// 		utf8(b"Kreacher #189"),
		// 		utf8(b"Kreacher #190"),
		// 		utf8(b"Kreacher #191"),
		// 		utf8(b"Kreacher #192"),
		// 		utf8(b"Kreacher #193"),
		// 		utf8(b"Kreacher #194"),
		// 		utf8(b"Kreacher #195"),
		// 		utf8(b"Kreacher #196"),
		// 		utf8(b"Kreacher #197"),
		// 		utf8(b"Kreacher #198"),
		// 		utf8(b"Kreacher #199"),
		// 		utf8(b"Kreacher #200"),
		// 		utf8(b"Kreacher #201"),
		// 		utf8(b"Kreacher #202"),
		// 		utf8(b"Kreacher #203"),
		// 		utf8(b"Kreacher #204"),
		// 		utf8(b"Kreacher #205"),
		// 		utf8(b"Kreacher #206"),
		// 		utf8(b"Kreacher #207"),
		// 		utf8(b"Kreacher #208"),
		// 		utf8(b"Kreacher #209"),
		// 		utf8(b"Kreacher #210"),
		// 		utf8(b"Kreacher #211"),
		// 		utf8(b"Kreacher #212"),
		// 		utf8(b"Kreacher #213"),
		// 		utf8(b"Kreacher #214"),
		// 		utf8(b"Kreacher #215"),
		// 		utf8(b"Kreacher #216"),
		// 		utf8(b"Kreacher #217"),
		// 		utf8(b"Kreacher #218"),
		// 		utf8(b"Kreacher #219"),
		// 		utf8(b"Kreacher #220"),
		// 		utf8(b"Kreacher #221"),
		// 		utf8(b"Kreacher #222"),
		// 		utf8(b"Kreacher #223"),
		// 		utf8(b"Kreacher #224"),
		// 		utf8(b"Kreacher #225"),
		// 		utf8(b"Kreacher #226"),
		// 		utf8(b"Kreacher #227"),
		// 		utf8(b"Kreacher #228"),
		// 		utf8(b"Kreacher #229"),
		// 		utf8(b"Kreacher #230"),
		// 		utf8(b"Kreacher #231"),
		// 		utf8(b"Kreacher #232"),
		// 		utf8(b"Kreacher #233"),
		// 		utf8(b"Kreacher #234"),
		// 		utf8(b"Kreacher #235"),
		// 		utf8(b"Kreacher #236"),
		// 		utf8(b"Kreacher #237"),
		// 		utf8(b"Kreacher #238"),
		// 		utf8(b"Kreacher #239"),
		// 		utf8(b"Kreacher #240"),
		// 		utf8(b"Kreacher #241"),
		// 		utf8(b"Kreacher #242"),
		// 		utf8(b"Kreacher #243"),
		// 		utf8(b"Kreacher #244"),
		// 		utf8(b"Kreacher #245"),
		// 		utf8(b"Kreacher #246"),
		// 		utf8(b"Kreacher #247"),
		// 		utf8(b"Kreacher #248"),
		// 		utf8(b"Kreacher #249"),
		// 		utf8(b"Kreacher #250"),
		// 		utf8(b"Kreacher #251"),
		// 		utf8(b"Kreacher #252"),
		// 		utf8(b"Kreacher #253"),
		// 		utf8(b"Kreacher #254"),
		// 		utf8(b"Kreacher #255"),
		// 		utf8(b"Kreacher #256"),
		// 		utf8(b"Kreacher #257"),
		// 		utf8(b"Kreacher #258"),
		// 		utf8(b"Kreacher #259"),
		// 		utf8(b"Kreacher #260"),
		// 		utf8(b"Kreacher #261"),
		// 		utf8(b"Kreacher #262"),
		// 		utf8(b"Kreacher #263"),
		// 		utf8(b"Kreacher #264"),
		// 		utf8(b"Kreacher #265"),
		// 		utf8(b"Kreacher #266"),
		// 		utf8(b"Kreacher #267"),
		// 		utf8(b"Kreacher #268"),
		// 		utf8(b"Kreacher #269"),
		// 		utf8(b"Kreacher #270"),
		// 		utf8(b"Kreacher #271"),
		// 		utf8(b"Kreacher #272"),
		// 		utf8(b"Kreacher #273"),
		// 		utf8(b"Kreacher #274"),
		// 		utf8(b"Kreacher #275"),
		// 		utf8(b"Kreacher #276"),
		// 		utf8(b"Kreacher #277"),
		// 		utf8(b"Kreacher #278"),
		// 		utf8(b"Kreacher #279"),
		// 		utf8(b"Kreacher #280"),
		// 		utf8(b"Kreacher #281"),
		// 		utf8(b"Kreacher #282"),
		// 		utf8(b"Kreacher #283"),
		// 		utf8(b"Kreacher #284"),
		// 		utf8(b"Kreacher #285"),
		// 		utf8(b"Kreacher #286"),
		// 		utf8(b"Kreacher #287"),
		// 		utf8(b"Kreacher #288"),
		// 		utf8(b"Kreacher #289"),
		// 		utf8(b"Kreacher #290"),
		// 		utf8(b"Kreacher #291"),
		// 		utf8(b"Kreacher #292"),
		// 		utf8(b"Kreacher #293"),
		// 		utf8(b"Kreacher #294"),
		// 		utf8(b"Kreacher #295"),
		// 		utf8(b"Kreacher #296"),
		// 		utf8(b"Kreacher #297"),
		// 		utf8(b"Kreacher #298"),
		// 		utf8(b"Kreacher #299"),
		// 		utf8(b"Kreacher #300"),
		// 		utf8(b"Kreacher #301"),
		// 		utf8(b"Kreacher #302"),
		// 		utf8(b"Kreacher #303"),
		// 		utf8(b"Kreacher #304"),
		// 		utf8(b"Kreacher #305"),
		// 		utf8(b"Kreacher #306"),
		// 		utf8(b"Kreacher #307"),
		// 		utf8(b"Kreacher #308"),
		// 		utf8(b"Kreacher #309"),
		// 		utf8(b"Kreacher #310"),
		// 		utf8(b"Kreacher #311"),
		// 		utf8(b"Kreacher #312"),
		// 		utf8(b"Kreacher #313"),
		// 		utf8(b"Kreacher #314"),
		// 		utf8(b"Kreacher #315"),
		// 		utf8(b"Kreacher #316"),
		// 		utf8(b"Kreacher #317"),
		// 		utf8(b"Kreacher #318"),
		// 		utf8(b"Kreacher #319"),
		// 		utf8(b"Kreacher #320"),
		// 		utf8(b"Kreacher #321"),
		// 		utf8(b"Kreacher #322"),
		// 		utf8(b"Kreacher #323"),
		// 		utf8(b"Kreacher #324"),
		// 		utf8(b"Kreacher #325"),
		// 		utf8(b"Kreacher #326"),
		// 		utf8(b"Kreacher #327"),
		// 		utf8(b"Kreacher #328"),
		// 		utf8(b"Kreacher #329"),
		// 		utf8(b"Kreacher #330"),
		// 		utf8(b"Kreacher #331"),
		// 		utf8(b"Kreacher #332"),
		// 		utf8(b"Kreacher #333"),
		// 		utf8(b"Kreacher #334"),
		// 		utf8(b"Kreacher #335"),
		// 		utf8(b"Kreacher #336"),
		// 		utf8(b"Kreacher #337"),
		// 		utf8(b"Kreacher #338"),
		// 		utf8(b"Kreacher #339"),
		// 		utf8(b"Kreacher #340"),
		// 		utf8(b"Kreacher #341"),
		// 		utf8(b"Kreacher #342"),
		// 		utf8(b"Kreacher #343"),
		// 		utf8(b"Kreacher #344"),
		// 		utf8(b"Kreacher #345"),
		// 		utf8(b"Kreacher #346"),
		// 		utf8(b"Kreacher #347"),
		// 		utf8(b"Kreacher #348"),
		// 		utf8(b"Kreacher #349"),
		// 		utf8(b"Kreacher #350"),
		// 		utf8(b"Kreacher #351"),
		// 		utf8(b"Kreacher #352"),
		// 		utf8(b"Kreacher #353"),
		// 		utf8(b"Kreacher #354"),
		// 		utf8(b"Kreacher #355"),
		// 		utf8(b"Kreacher #356"),
		// 		utf8(b"Kreacher #357"),
		// 		utf8(b"Kreacher #358"),
		// 		utf8(b"Kreacher #359"),
		// 		utf8(b"Kreacher #360"),
		// 		utf8(b"Kreacher #361"),
		// 		utf8(b"Kreacher #362"),
		// 		utf8(b"Kreacher #363"),
		// 		utf8(b"Kreacher #364"),
		// 		utf8(b"Kreacher #365"),
		// 		utf8(b"Kreacher #366"),
		// 		utf8(b"Kreacher #367"),
		// 		utf8(b"Kreacher #368"),
		// 		utf8(b"Kreacher #369"),
		// 		utf8(b"Kreacher #370"),
		// 		utf8(b"Kreacher #371"),
		// 		utf8(b"Kreacher #372"),
		// 		utf8(b"Kreacher #373"),
		// 		utf8(b"Kreacher #374"),
		// 		utf8(b"Kreacher #375"),
		// 		utf8(b"Kreacher #376"),
		// 		utf8(b"Kreacher #377"),
		// 		utf8(b"Kreacher #378"),
		// 		utf8(b"Kreacher #379"),
		// 		utf8(b"Kreacher #380"),
		// 		utf8(b"Kreacher #381"),
		// 		utf8(b"Kreacher #382"),
		// 		utf8(b"Kreacher #383"),
		// 		utf8(b"Kreacher #384"),
		// 		utf8(b"Kreacher #385"),
		// 		utf8(b"Kreacher #386"),
		// 		utf8(b"Kreacher #387"),
		// 		utf8(b"Kreacher #388"),
		// 		utf8(b"Kreacher #389"),
		// 		utf8(b"Kreacher #390"),
		// 		utf8(b"Kreacher #391"),
		// 		utf8(b"Kreacher #392"),
		// 		utf8(b"Kreacher #393"),
		// 		utf8(b"Kreacher #394"),
		// 		utf8(b"Kreacher #395"),
		// 		utf8(b"Kreacher #396"),
		// 		utf8(b"Kreacher #397"),
		// 		utf8(b"Kreacher #398"),
		// 		utf8(b"Kreacher #399"),
		// 		utf8(b"Kreacher #400"),
		// 		utf8(b"Kreacher #401"),
		// 		utf8(b"Kreacher #402"),
		// 		utf8(b"Kreacher #403"),
		// 		utf8(b"Kreacher #404"),
		// 		utf8(b"Kreacher #405"),
		// 		utf8(b"Kreacher #406"),
		// 		utf8(b"Kreacher #407"),
		// 		utf8(b"Kreacher #408"),
		// 		utf8(b"Kreacher #409"),
		// 		utf8(b"Kreacher #410"),
		// 		utf8(b"Kreacher #411"),
		// 		utf8(b"Kreacher #412"),
		// 		utf8(b"Kreacher #413"),
		// 		utf8(b"Kreacher #414"),
		// 		utf8(b"Kreacher #415"),
		// 		utf8(b"Kreacher #416"),
		// 		utf8(b"Kreacher #417"),
		// 		utf8(b"Kreacher #418"),
		// 		utf8(b"Kreacher #419"),
		// 		utf8(b"Kreacher #420"),
		// 		utf8(b"Kreacher #421"),
		// 		utf8(b"Kreacher #422"),
		// 		utf8(b"Kreacher #423"),
		// 		utf8(b"Kreacher #424"),
		// 		utf8(b"Kreacher #425"),
		// 		utf8(b"Kreacher #426"),
		// 		utf8(b"Kreacher #427"),
		// 		utf8(b"Kreacher #428"),
		// 		utf8(b"Kreacher #429"),
		// 		utf8(b"Kreacher #430"),
		// 		utf8(b"Kreacher #431"),
		// 		utf8(b"Kreacher #432"),
		// 		utf8(b"Kreacher #433"),
		// 		utf8(b"Kreacher #434"),
		// 		utf8(b"Kreacher #435"),
		// 		utf8(b"Kreacher #436"),
		// 		utf8(b"Kreacher #437"),
		// 		utf8(b"Kreacher #438"),
		// 		utf8(b"Kreacher #439"),
		// 		utf8(b"Kreacher #440"),
		// 		utf8(b"Kreacher #441"),
		// 		utf8(b"Kreacher #442"),
		// 		utf8(b"Kreacher #443"),
		// 		utf8(b"Kreacher #444"),
		// 		utf8(b"Kreacher #445"),
		// 		utf8(b"Kreacher #446"),
		// 		utf8(b"Kreacher #447"),
		// 		utf8(b"Kreacher #448"),
		// 		utf8(b"Kreacher #449"),
		// 		utf8(b"Kreacher #450"),
		// 		utf8(b"Kreacher #451"),
		// 		utf8(b"Kreacher #452"),
		// 		utf8(b"Kreacher #453"),
		// 		utf8(b"Kreacher #454"),
		// 		utf8(b"Kreacher #455"),
		// 		utf8(b"Kreacher #456"),
		// 		utf8(b"Kreacher #457"),
		// 		utf8(b"Kreacher #458"),
		// 		utf8(b"Kreacher #459"),
		// 		utf8(b"Kreacher #460"),
		// 		utf8(b"Kreacher #461"),
		// 		utf8(b"Kreacher #462"),
		// 		utf8(b"Kreacher #463"),
		// 		utf8(b"Kreacher #464"),
		// 		utf8(b"Kreacher #465"),
		// 		utf8(b"Kreacher #466"),
		// 		utf8(b"Kreacher #467"),
		// 		utf8(b"Kreacher #468"),
		// 		utf8(b"Kreacher #469"),
		// 		utf8(b"Kreacher #470"),
		// 		utf8(b"Kreacher #471"),
		// 		utf8(b"Kreacher #472"),
		// 		utf8(b"Kreacher #473"),
		// 		utf8(b"Kreacher #474"),
		// 		utf8(b"Kreacher #475"),
		// 		utf8(b"Kreacher #476"),
		// 		utf8(b"Kreacher #477"),
		// 		utf8(b"Kreacher #478"),
		// 		utf8(b"Kreacher #479"),
		// 		utf8(b"Kreacher #480"),
		// 		utf8(b"Kreacher #481"),
		// 		utf8(b"Kreacher #482"),
		// 		utf8(b"Kreacher #483"),
		// 		utf8(b"Kreacher #484"),
		// 		utf8(b"Kreacher #485"),
		// 		utf8(b"Kreacher #486"),
		// 		utf8(b"Kreacher #487"),
		// 		utf8(b"Kreacher #488"),
		// 		utf8(b"Kreacher #489"),
		// 		utf8(b"Kreacher #490"),
		// 		utf8(b"Kreacher #491"),
		// 		utf8(b"Kreacher #492"),
		// 		utf8(b"Kreacher #493"),
		// 		utf8(b"Kreacher #494"),
		// 		utf8(b"Kreacher #495"),
		// 		utf8(b"Kreacher #496"),
		// 		utf8(b"Kreacher #497"),
		// 		utf8(b"Kreacher #498"),
		// 		utf8(b"Kreacher #499"),
		// 		utf8(b"Kreacher #500"),
		// 		utf8(b"Kreacher #501"),
		// 		utf8(b"Kreacher #502"),
		// 		utf8(b"Kreacher #503"),
		// 		utf8(b"Kreacher #504"),
		// 		utf8(b"Kreacher #505"),
		// 		utf8(b"Kreacher #506"),
		// 		utf8(b"Kreacher #507"),
		// 		utf8(b"Kreacher #508"),
		// 		utf8(b"Kreacher #509"),
		// 		utf8(b"Kreacher #510"),
		// 		utf8(b"Kreacher #511"),
		// 		utf8(b"Kreacher #512"),
		// 		utf8(b"Kreacher #513"),
		// 		utf8(b"Kreacher #514"),
		// 		utf8(b"Kreacher #515"),
		// 		utf8(b"Kreacher #516"),
		// 		utf8(b"Kreacher #517"),
		// 		utf8(b"Kreacher #518"),
		// 		utf8(b"Kreacher #519"),
		// 		utf8(b"Kreacher #520"),
		// 		utf8(b"Kreacher #521"),
		// 		utf8(b"Kreacher #522"),
		// 		utf8(b"Kreacher #523"),
		// 		utf8(b"Kreacher #524"),
		// 		utf8(b"Kreacher #525"),
		// 		utf8(b"Kreacher #526"),
		// 		utf8(b"Kreacher #527"),
		// 		utf8(b"Kreacher #528"),
		// 		utf8(b"Kreacher #529"),
		// 		utf8(b"Kreacher #530"),
		// 		utf8(b"Kreacher #531"),
		// 		utf8(b"Kreacher #532"),
		// 		utf8(b"Kreacher #533"),
		// 		utf8(b"Kreacher #534"),
		// 		utf8(b"Kreacher #535"),
		// 		utf8(b"Kreacher #536"),
		// 		utf8(b"Kreacher #537"),
		// 		utf8(b"Kreacher #538"),
		// 		utf8(b"Kreacher #539"),
		// 		utf8(b"Kreacher #540"),
		// 		utf8(b"Kreacher #541"),
		// 		utf8(b"Kreacher #542"),
		// 		utf8(b"Kreacher #543"),
		// 		utf8(b"Kreacher #544"),
		// 		utf8(b"Kreacher #545"),
		// 		utf8(b"Kreacher #546"),
		// 		utf8(b"Kreacher #547"),
		// 		utf8(b"Kreacher #548"),
		// 		utf8(b"Kreacher #549"),
		// 		utf8(b"Kreacher #550"),
		// 		utf8(b"Kreacher #551"),
		// 		utf8(b"Kreacher #552"),
		// 		utf8(b"Kreacher #553"),
		// 		utf8(b"Kreacher #554"),
		// 		utf8(b"Kreacher #555"),
		// 		utf8(b"Kreacher #556"),
		// 		utf8(b"Kreacher #557"),
		// 		utf8(b"Kreacher #558"),
		// 		utf8(b"Kreacher #559"),
		// 		utf8(b"Kreacher #560"),
		// 		utf8(b"Kreacher #561"),
		// 		utf8(b"Kreacher #562"),
		// 		utf8(b"Kreacher #563"),
		// 		utf8(b"Kreacher #564"),
		// 		utf8(b"Kreacher #565"),
		// 		utf8(b"Kreacher #566"),
		// 		utf8(b"Kreacher #567"),
		// 		utf8(b"Kreacher #568"),
		// 		utf8(b"Kreacher #569"),
		// 		utf8(b"Kreacher #570"),
		// 		utf8(b"Kreacher #571"),
		// 		utf8(b"Kreacher #572"),
		// 		utf8(b"Kreacher #573"),
		// 		utf8(b"Kreacher #574"),
		// 		utf8(b"Kreacher #575"),
		// 		utf8(b"Kreacher #576"),
		// 		utf8(b"Kreacher #577"),
		// 		utf8(b"Kreacher #578"),
		// 		utf8(b"Kreacher #579"),
		// 		utf8(b"Kreacher #580"),
		// 		utf8(b"Kreacher #581"),
		// 		utf8(b"Kreacher #582"),
		// 		utf8(b"Kreacher #583"),
		// 		utf8(b"Kreacher #584"),
		// 		utf8(b"Kreacher #585"),
		// 		utf8(b"Kreacher #586"),
		// 		utf8(b"Kreacher #587"),
		// 		utf8(b"Kreacher #588"),
		// 		utf8(b"Kreacher #589"),
		// 		utf8(b"Kreacher #590"),
		// 		utf8(b"Kreacher #591"),
		// 		utf8(b"Kreacher #592"),
		// 		utf8(b"Kreacher #593"),
		// 		utf8(b"Kreacher #594"),
		// 		utf8(b"Kreacher #595"),
		// 		utf8(b"Kreacher #596"),
		// 		utf8(b"Kreacher #597"),
		// 		utf8(b"Kreacher #598"),
		// 		utf8(b"Kreacher #599"),
		// 		utf8(b"Kreacher #600"),
		// 		utf8(b"Kreacher #601"),
		// 		utf8(b"Kreacher #602"),
		// 		utf8(b"Kreacher #603"),
		// 		utf8(b"Kreacher #604"),
		// 		utf8(b"Kreacher #605"),
		// 		utf8(b"Kreacher #606"),
		// 		utf8(b"Kreacher #607"),
		// 		utf8(b"Kreacher #608"),
		// 		utf8(b"Kreacher #609"),
		// 		utf8(b"Kreacher #610"),
		// 		utf8(b"Kreacher #611"),
		// 		utf8(b"Kreacher #612"),
		// 		utf8(b"Kreacher #613"),
		// 		utf8(b"Kreacher #614"),
		// 		utf8(b"Kreacher #615"),
		// 		utf8(b"Kreacher #616"),
		// 		utf8(b"Kreacher #617"),
		// 		utf8(b"Kreacher #618"),
		// 		utf8(b"Kreacher #619"),
		// 		utf8(b"Kreacher #620"),
		// 		utf8(b"Kreacher #621"),
		// 		utf8(b"Kreacher #622"),
		// 		utf8(b"Kreacher #623"),
		// 		utf8(b"Kreacher #624"),
		// 		utf8(b"Kreacher #625"),
		// 		utf8(b"Kreacher #626"),
		// 		utf8(b"Kreacher #627"),
		// 		utf8(b"Kreacher #628"),
		// 		utf8(b"Kreacher #629"),
		// 		utf8(b"Kreacher #630"),
		// 		utf8(b"Kreacher #631"),
		// 		utf8(b"Kreacher #632"),
		// 		utf8(b"Kreacher #633"),
		// 		utf8(b"Kreacher #634"),
		// 		utf8(b"Kreacher #635"),
		// 		utf8(b"Kreacher #636"),
		// 		utf8(b"Kreacher #637"),
		// 		utf8(b"Kreacher #638"),
		// 		utf8(b"Kreacher #639"),
		// 		utf8(b"Kreacher #640"),
		// 		utf8(b"Kreacher #641"),
		// 		utf8(b"Kreacher #642"),
		// 		utf8(b"Kreacher #643"),
		// 		utf8(b"Kreacher #644"),
		// 		utf8(b"Kreacher #645"),
		// 		utf8(b"Kreacher #646"),
		// 		utf8(b"Kreacher #647"),
		// 		utf8(b"Kreacher #648"),
		// 		utf8(b"Kreacher #649"),
		// 		utf8(b"Kreacher #650"),
		// 		utf8(b"Kreacher #651"),
		// 		utf8(b"Kreacher #652"),
		// 		utf8(b"Kreacher #653"),
		// 		utf8(b"Kreacher #654"),
		// 		utf8(b"Kreacher #655"),
		// 		utf8(b"Kreacher #656"),
		// 		utf8(b"Kreacher #657"),
		// 		utf8(b"Kreacher #658"),
		// 		utf8(b"Kreacher #659"),
		// 		utf8(b"Kreacher #660"),
		// 		utf8(b"Kreacher #661"),
		// 		utf8(b"Kreacher #662"),
		// 		utf8(b"Kreacher #663"),
		// 		utf8(b"Kreacher #664"),
		// 		utf8(b"Kreacher #665"),
		// 		utf8(b"Kreacher #666"),
		// 		utf8(b"Kreacher #667"),
		// 		utf8(b"Kreacher #668"),
		// 		utf8(b"Kreacher #669"),
		// 		utf8(b"Kreacher #670"),
		// 		utf8(b"Kreacher #671"),
		// 		utf8(b"Kreacher #672"),
		// 		utf8(b"Kreacher #673"),
		// 		utf8(b"Kreacher #674"),
		// 		utf8(b"Kreacher #675"),
		// 		utf8(b"Kreacher #676"),
		// 		utf8(b"Kreacher #677"),
		// 		utf8(b"Kreacher #678"),
		// 		utf8(b"Kreacher #679"),
		// 		utf8(b"Kreacher #680"),
		// 		utf8(b"Kreacher #681"),
		// 		utf8(b"Kreacher #682"),
		// 		utf8(b"Kreacher #683"),
		// 		utf8(b"Kreacher #684"),
		// 		utf8(b"Kreacher #685"),
		// 		utf8(b"Kreacher #686"),
		// 		utf8(b"Kreacher #687"),
		// 		utf8(b"Kreacher #688"),
		// 		utf8(b"Kreacher #689"),
		// 		utf8(b"Kreacher #690"),
		// 		utf8(b"Kreacher #691"),
		// 		utf8(b"Kreacher #692"),
		// 		utf8(b"Kreacher #693"),
		// 		utf8(b"Kreacher #694"),
		// 		utf8(b"Kreacher #695"),
		// 		utf8(b"Kreacher #696"),
		// 		utf8(b"Kreacher #697"),
		// 		utf8(b"Kreacher #698"),
		// 		utf8(b"Kreacher #699"),
		// 		utf8(b"Kreacher #700"),
		// 		utf8(b"Kreacher #701"),
		// 		utf8(b"Kreacher #702"),
		// 		utf8(b"Kreacher #703"),
		// 		utf8(b"Kreacher #704"),
		// 		utf8(b"Kreacher #705"),
		// 		utf8(b"Kreacher #706"),
		// 		utf8(b"Kreacher #707"),
		// 		utf8(b"Kreacher #708"),
		// 		utf8(b"Kreacher #709"),
		// 		utf8(b"Kreacher #710"),
		// 		utf8(b"Kreacher #711"),
		// 		utf8(b"Kreacher #712"),
		// 		utf8(b"Kreacher #713"),
		// 		utf8(b"Kreacher #714"),
		// 		utf8(b"Kreacher #715"),
		// 		utf8(b"Kreacher #716"),
		// 		utf8(b"Kreacher #717"),
		// 		utf8(b"Kreacher #718"),
		// 		utf8(b"Kreacher #719"),
		// 		utf8(b"Kreacher #720"),
		// 		utf8(b"Kreacher #721"),
		// 		utf8(b"Kreacher #722"),
		// 		utf8(b"Kreacher #723"),
		// 		utf8(b"Kreacher #724"),
		// 		utf8(b"Kreacher #725"),
		// 		utf8(b"Kreacher #726"),
		// 		utf8(b"Kreacher #727"),
		// 		utf8(b"Kreacher #728"),
		// 		utf8(b"Kreacher #729"),
		// 		utf8(b"Kreacher #730"),
		// 		utf8(b"Kreacher #731"),
		// 		utf8(b"Kreacher #732"),
		// 		utf8(b"Kreacher #733"),
		// 		utf8(b"Kreacher #734"),
		// 		utf8(b"Kreacher #735"),
		// 		utf8(b"Kreacher #736"),
		// 		utf8(b"Kreacher #737"),
		// 		utf8(b"Kreacher #738"),
		// 		utf8(b"Kreacher #739"),
		// 		utf8(b"Kreacher #740"),
		// 		utf8(b"Kreacher #741"),
		// 		utf8(b"Kreacher #742"),
		// 		utf8(b"Kreacher #743"),
		// 		utf8(b"Kreacher #744"),
		// 		utf8(b"Kreacher #745"),
		// 		utf8(b"Kreacher #746"),
		// 		utf8(b"Kreacher #747"),
		// 		utf8(b"Kreacher #748"),
		// 		utf8(b"Kreacher #749"),
		// 		utf8(b"Kreacher #750"),
		// 		utf8(b"Kreacher #751"),
		// 		utf8(b"Kreacher #752"),
		// 		utf8(b"Kreacher #753"),
		// 		utf8(b"Kreacher #754"),
		// 		utf8(b"Kreacher #755"),
		// 		utf8(b"Kreacher #756"),
		// 		utf8(b"Kreacher #757"),
		// 		utf8(b"Kreacher #758"),
		// 		utf8(b"Kreacher #759"),
		// 		utf8(b"Kreacher #760"),
		// 		utf8(b"Kreacher #761"),
		// 		utf8(b"Kreacher #762"),
		// 		utf8(b"Kreacher #763"),
		// 		utf8(b"Kreacher #764"),
		// 		utf8(b"Kreacher #765"),
		// 		utf8(b"Kreacher #766"),
		// 		utf8(b"Kreacher #767"),
		// 		utf8(b"Kreacher #768"),
		// 		utf8(b"Kreacher #769"),
		// 		utf8(b"Kreacher #770"),
		// 		utf8(b"Kreacher #771"),
		// 		utf8(b"Kreacher #772"),
		// 		utf8(b"Kreacher #773"),
		// 		utf8(b"Kreacher #774"),
		// 		utf8(b"Kreacher #775"),
		// 		utf8(b"Kreacher #776"),
		// 	];


		//let token_names = vector<String> [utf8(b"Kreacher #15")];//, utf8(b"Kreacher #2"), utf8(b"Kreacher #3"), ];

		// pond::lilypad_v2::assert_lilypad_exists(@kreacher _owner);
		// pond::lilypad_v2::make_tokens_burnable(
		// 	sender,
		// 	collection_name,
		// 	token_names,
		// );


		/*
		while (vector::length(&token_names) > 0) {
			let token_name = vector::pop_back(&mut token_names);
			let token_data_id = token::create_token_data_id(@kreacher_resource_address, collection_name, token_name);
			let property_version = token::get_tokendata_largest_property_version(@kreacher_resource_address, token_data_id);
			let token_id = token::create_token_id(token_data_id, property_version);

			let token_property_map = token::get_property_map(@kreacher _owner, token_id);
			let burnable = property_map::read_bool(&token_property_map, &utf8(BURNABLE_BY_CREATOR));
			assert!(burnable, TOKEN_DID_NOT_BECOME_BURNABLE);



			//pond::bash_colors::print_key_value_as_string(b"token name", token_name);
			//pond::bash_colors::print_key_value(*std::string::bytes(&token_name), pond::bash_colors::bool_to_string_as_string(burnable));
		}
		*/

	}
}

//# view --address Bob  --resource 0x1::coin::CoinStore<0x1::aptos_coin::AptosCoin>
