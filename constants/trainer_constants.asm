trainerclass: MACRO
	enum \1
const_value = 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
	enum_start
CHRIS EQU __enum__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BILL
	const PHONECONTACT_CHEREN
	const PHONECONTACT_BIANCA
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA

	trainerclass FALKNER ; 1
	const FALKNER1

	trainerclass WHITNEY ; 2
	const WHITNEY1

	trainerclass BUGSY ; 3
	const BUGSY1

	trainerclass MORTY ; 4
	const MORTY1

	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9
	const RIVAL1_1_CHIKORITA
	const RIVAL1_1_CYNDAQUIL
	const RIVAL1_1_TOTODILE
	const RIVAL1_2_CHIKORITA
	const RIVAL1_2_CYNDAQUIL
	const RIVAL1_2_TOTODILE
	const RIVAL1_3_CHIKORITA
	const RIVAL1_3_CYNDAQUIL
	const RIVAL1_3_TOTODILE
	const RIVAL1_4_CHIKORITA
	const RIVAL1_4_CYNDAQUIL
	const RIVAL1_4_TOTODILE
	const RIVAL1_5_CHIKORITA
	const RIVAL1_5_CYNDAQUIL
	const RIVAL1_5_TOTODILE

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass CAL ; c
	const CAL1
	const CAL2
	const CAL3

	trainerclass BRUNO ; d
	const BRUNO1

	trainerclass KAREN ; e
	const KAREN1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST_M ; 14
	const SCIENTISTM_VIRBANK_COMPLEX
	const SCIENTISTM_P2
	const SCIENTISTM_CASTELIA_SEWERS
	const SCIENTISTM_R6
	const SCIENTISTM_CHARGESTONE
	const SCIENTIST_M_VRE
	
	trainerclass SCIENTIST_F
	const SCIENTISTF_VIRBANK_COMPLEX_1
	const SCIENTISTF_VIRBANK_COMPLEX_2
	const SCIENTISTF_CASTELIA_SEWERS
	const SCIENTISTF_R6
	const SCIENTISTF_CHARGESTONE
	const SCIENTIST_F_VRE

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16
	const YOUNGSTER_R13
	const YOUNGSTER_R6
	const YOUNGSTER_R7_2
	const DAN_REMATCH_1
	const DAN_REMATCH_2
	const DAN_REMATCH_3
	const DAN_REMATCH_4
	const JOEY3
	const WARREN
	const JIMMY
	const OWEN
	const JASON
	const JOEY4
	const JOEY5
	
	trainerclass YOUNGSTER_D
	const YOUNGSTER_R14
	const YOUNGSTER_LOSTLORN
	const YOUNGSTER_R5
	const YOUNGSTER_R19
	const YOUNGSTER_R7_1

	trainerclass SCHOOLBOY ; 17
	const SCHOOLBOY_R14
	const SCHOOLBOY_R16
	const SCHOOLBOY_R20_1
	const SCHOOLBOY_R20_2
	const SCHOOLBOY_R1
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const CHAD1
	const NATE
	const RICKY
	const JACK2
	const JACK3
	const ALAN2
	const ALAN3
	const CHAD2
	const CHAD3
	const JACK4
	const JACK5
	const ALAN4
	const ALAN5
	const CHAD4
	const KIPP
	
	trainerclass SCHOOLBOY_D
	const SCHOOLBOY_R13
	const SCHOOLBOY_OUTSKIRTS
	const SCHOOLBOY_R20_3
	const SCHOOLBOY_R20_4
	const SCHOOLBOY_ASPERTIA_GYM
	
	trainerclass SCHOOLGIRL
	const SCHOOLGIRL_REVERSAL
	const SCHOOLGIRL_R16
	const SCHOOLGIRL_R20_1
	const SCHOOLGIRL_ASPERTIA_GYM
	
	trainerclass SCHOOLGIRL_D
	const SCHOOLGIRL_R14
	const SCHOOLGIRL_LOSTLORN
	const SCHOOLGIRL_R20_2
	const SCHOOLGIRL_R20_3
	const SCHOOLGIRL_R1
	const SCHOOLGIRL_CELESTIAL_TOWER

	trainerclass BIRD_KEEPER ; 18
	const BIRD_KEEPER_OUTSKIRTS
	const BIRD_KEEPER_R16
	const BIRD_KEEPER_R4
	const BIRD_KEEPER_R19
	const BIRD_KEEPER_R7
	const BIRD_KEEPER_MISTRALTON_GYM_1
	const BIRD_KEEPER_MISTRALTON_GYM_2
	const BIRD_KEEPER_MISTRALTON_GYM_3
	const BIRD_KEEPER_MISTRALTON_GYM_4
	const BIRD_KEEPER_MISTRALTON_GYM_5
	const BOB
	const JOSE1
	const PETER
	const JOSE2
	const PERRY
	const BRET
	const JOSE3
	const VANCE2
	const VANCE3

	trainerclass LASS ; 19
	const LASS_R13
	const LASS_LOSTLORN
	const LASS_DESERT_1
	const LASS_RELIC_PASSAGE
	const LASS_R6_1
	const LASS_R7_1
	const LAURA
	const SHANNON
	const MICHELLE
	const DANA1
	const ELLEN
	const CONNIE2
	const CONNIE3
	const DANA2
	const DANA3
	const DANA4
	const DANA5
	
	trainerclass LASS_D
	const LASS_REVERSAL
	const LASS_R16
	const LASS_DESERT_2
	const LASS_PINWHEEL
	const LASS_R1
	const LASS_R6_2
	const LASS_R7_2

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b
	const COOLTRAINERM_R2
	const COOLTRAINERM_GIANT_CHASM
	const COOLTRAINERM_PWT
	const COOLTRAINERM_CHARGESTONE_1
	const MIKE
	const GAVEN1
	const GAVEN2
	const RYAN
	const JAKE
	const GAVEN3
	const BLAKE
	const BRIAN
	const ERICK
	const ANDY
	const TYLER
	const SEAN
	const KEVIN
	const STEVE
	const ALLEN
	const NICK
	
	trainerclass COOLTRAINERM_D
	const COOLTRAINERM_R3
	const COOLTRAINERM_R18
	const COOLTRAINERM_CHARGESTONE_2

	trainerclass COOLTRAINERF ; 1c
	const COOLTRAINERF_R3_1
	const COOLTRAINERF_GIANT_CHASM_1
	const COOLTRAINERF_CHARGESTONE_1
	const LOLA
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const BETH1
	const REENA1
	const MEGAN
	const BETH2
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const BETH3
	const REENA2
	const REENA3
	const CARA
	
	trainerclass COOLTRAINERF_D
	const COOLTRAINERF_R3_2
	const COOLTRAINERF_R2
	const COOLTRAINERF_R18
	const COOLTRAINERF_GIANT_CHASM_2
	const COOLTRAINERF_PWT
	const COOLTRAINERF_CHARGESTONE_2

	trainerclass BEAUTY ; 1d
	const BEAUTY_R19
	const BEAUTY_R2
	const JULIE
	const JACLYN
	const BRENDA
	const CASSIE
	const CAROLINE
	const CARLENE
	const JESSICA
	const RACHAEL
	const ANGELICA
	const KENDRA
	const VERONICA
	const JULIA
	const THERESA
	const VALERIE
	const OLIVIA
	
	trainerclass BEAUTY_D
	const BEAUTY_R4
	const BEAUTY_CELESTIAL_TOWER

	trainerclass POKEMANIAC ; 1e
	const POKEMANIAC_R5
	const POKEMANIAC_R2
	const POKEMANIAC_GIANT_CHASM_1
	const POKEMANIAC_GIANT_CHASM_2
	const POKEMANIAC_CHARGESTONE
	const BRENT1
	const RON
	const ETHAN
	const BRENT2
	const BRENT3
	const ISSAC
	const DONALD
	const ZACH
	const BRENT4
	const MILLER

	trainerclass GRUNTM ; 1f
	const GRUNTM_REVERSAL
	const GRUNTM_LOSTLORN
	const GRUNTM_NIMBASA_1
	const GRUNTM_NIMBASA_2
	const GRUNTM_NIMBASA_3
	const GRUNTM_NIMBASA_4
	const GRUNTM_NIMBASA_5
	const GRUNTM_VIRBANK_COMPLEX_1
	const GRUNTM_VIRBANK_COMPLEX_2
	const GRUNTM_VIRBANK_COMPLEX_3
	const GRUNTM_P2_1
	const GRUNTM_P2_2
	const GRUNTM_SEASIDE_CAVE_1
	const GRUNTM_SEASIDE_CAVE_2
	const GRUNTM_SEASIDE_CAVE_3
	const GRUNTM_CASTELIA_SEWERS_1
	const GRUNTM_CASTELIA_SEWERS_2
	const GRUNTM_CASTELIA_SEWERS_3
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22
	const GRUNTM_23
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26
	const GRUNTM_27
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30
	const GRUNTM_31

	trainerclass GENTLEMAN ; 20
	const GENTLEMAN_R3
	const GENTLEMAN_CELESTIAL_TOWER
	const GREGORY
	const VIRGIL
	const ALFRED

	trainerclass SKIER ; 21
	const ROXANNE
	const CLARISSA

	trainerclass TEACHER ; 22
	const TEACHER_R20
	const HILLARY
	const SHIRLEY

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const DON
	const BUG_CATCHER_R13
	const ED
	const BUG_CATCHER_LOSTLORN_1
	const BUG_CATCHER_LOSTLORN_2
	const BUG_CATCHER_BENNY
	const JOSH
	const BUG_CATCHER_R4
	const BUG_CATCHER_PINWHEEL_1
	const BUG_CATCHER_PINWHEEL_2
	const BUG_CATCHER_PINWHEEL_3
	const BUG_CATCHER_PINWHEEL_4
	const BUG_CATCHER_PINWHEEL_5
	const BUG_CATCHER_R1
	const ARNIE3
	const WADE4
	const WADE5
	const ARNIE4
	const ARNIE5
	const WAYNE

	trainerclass FISHER ; 25
	const FISHER_R4_1
	const FISHER_R3_1
	const FISHER_R17_1
	const KYLE
	const HENRY
	const MARVIN
	const TULLY1
	const ANDRE
	const RAYMOND
	const WILTON1
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const RALPH2
	const RALPH3
	const TULLY2
	const TULLY3
	const WILTON2
	const SCOTT
	const WILTON3
	const RALPH4
	const RALPH5
	const TULLY4
	
	trainerclass FISHER_D
	const FISHER_R4_2
	const FISHER_R19
	const FISHER_R3_2
	const FISHER_R17_2
	const FISHER_R21

	trainerclass SWIMMERM ; 26
	const SWIMMER_M_HUMILAU_GYM
	const SWIMMER_M_R17_1
	const SWIMMER_M_R21_1
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const PATON
	const DARYL
	const WALTER
	const TONY
	const JEROME
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const LEWIS
	const PARKER
	
	trainerclass SWIMMERM_D
	const SWIMMER_M_R17_2
	const SWIMMER_M_R21_2

	trainerclass SWIMMERF ; 27
	const SWIMMER_F_R17_1
	const SWIMMER_F_R21_1
	const SWIMMER_F_R21_2
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const LISA
	const JILL
	const MARY
	const KATIE
	const DAWN
	const TARA
	const NICOLE
	const LORI
	const JODY
	const NIKKI
	const DIANA
	const BRIANA
	
	trainerclass SWIMMERF_D
	const SWIMMER_F_HUMILAU_GYM
	const SWIMMER_F_R17_2
	const SWIMMER_F_R21_3

	trainerclass SAILOR ; 28
	const SAILOR_R19
	const HUEY1
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const HUEY2
	const HUEY3
	const HUEY4

	trainerclass SUPER_NERD ; 29
	const SUPER_NERD_R5_1
	const SUPER_NERD_R5_2
	const SUPER_NERD_R19
	const SUPER_NERD_R2
	const DAVE
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const RUSS
	const NORTON
	const HUGH
	const MARKUS

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_CHIKORITA
	const RIVAL2_1_CYNDAQUIL
	const RIVAL2_1_TOTODILE
	const RIVAL2_2_CHIKORITA
	const RIVAL2_2_CYNDAQUIL
	const RIVAL2_2_TOTODILE

	trainerclass GUITARIST ; 2b
	const GUITARIST_VIRBANK_GYM_1
	const GUITARIST_VIRBANK_GYM_2
	const GUITARIST_VIRBANK_GYM_3
	const GUITARIST_VIRBANK_GYM_4
	const GUITARIST_CHARGESTONE_1
	const GUITARIST_CHARGESTONE_2

	trainerclass HIKER ; 2c
	const HIKER_REVERSAL_1
	const HIKER_WELLSPRING
	const HIKER_R18
	const HIKER_RELIC_PASSAGE_1
	const HIKER_CHARGESTONE_2
	const BENJAMIN
	const ERIK
	const MICHAEL
	const PARRY1
	const TIMOTHY
	const BAILEY
	const ANTHONY3
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const PARRY2
	const PARRY3
	const ANTHONY4
	const ANTHONY5

	trainerclass HIKER_D ; 2c
	const HIKER_REVERSAL_2
	const HIKER_OUTSKIRTS
	const HIKER_DESERT
	const HIKER_RELIC_PASSAGE_2
	const HIKER_RELIC_PASSAGE_3
	const HIKER_CHARGESTONE_1
	const HIKER_CHARGESTONE_3

	trainerclass BIKER ; 2d
	const BIKER_BENNY
	const BIKER_R16
	const BIKER_R5
	const BIKER_R4
	const ZEKE
	const CHARLES
	const RILEY
	const JOEL
	const GLENN

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f
	const DUNCAN
	const EDDIE
	const COREY

	trainerclass FIREBREATHER ; 30
	const FIREBREATHER_OUTSKIRTS
	const FIREBREATHER_DESERT
	const FIREBREATHER_R19
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE

	trainerclass JUGGLER ; 31
	const IRWIN1
	const FRITZ
	const HORTON
	const IRWIN2
	const IRWIN3
	const IRWIN4

	trainerclass BLACKBELT_T ; 32
	const BLACKBELT_REVERSAL
	const BLACKBELT_OUTSKIRTS
	const BLACKBELT_WELLSPRING_1
	const BLACKBELT_WELLSPRING_2
	const BLACKBELT_R18
	const BLACKBELT_SEASIDE_CAVE_1
	const BLACKBELT_SEASIDE_CAVE_2
	const KENJI3
	const WAI
	
	trainerclass BATTLE_GIRL
	const BATTLE_GIRL_REVERSAL
	const BATTLE_GIRL_WELLSPRING
	const BATTLE_GIRL_R1
	const BATTLE_GIRL_R18
	const BATTLE_GIRL_R21
	const BATTLE_GIRL_SEASIDE_CAVE_1
	const BATTLE_GIRL_SEASIDE_CAVE_2
	const BATTLE_GIRL_CHARGESTONE

	trainerclass EXECUTIVEM ; 33
	const EXECUTIVEM_1
	const EXECUTIVEM_2
	const EXECUTIVEM_3
	const EXECUTIVEM_4

	trainerclass PSYCHIC_T ; 34
	const PSYCHIC_R5
	const PSYCHIC_RELIC_CASTLE_2
	const PSYCHIC_R3
	const PSYCHIC_RELIC_PASSAGE
	const PSYCHIC_CELESTIAL_TOWER_1
	const JARED
	const RODNEY
	
	trainerclass PSYCHIC_T_F ; 34
	const PSYCHIC_RELIC_CASTLE_1
	const PSYCHIC_RELIC_CASTLE_3
	const PSYCHIC_PINWHEEL
	const PSYCHIC_R7
	const PSYCHIC_CELESTIAL_TOWER_2

	trainerclass PICNICKER ; 35
	const PICNICKER_R14
	const PICNICKER_LOSTLORN
	const PICNICKER_DESERT
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const GINA2
	const ERIN1
	const LIZ2
	const LIZ3
	const HEIDI
	const EDNA
	const GINA3
	const TIFFANY1
	const TIFFANY2
	const ERIN2
	const TANYA
	const TIFFANY3
	const ERIN3
	const LIZ4
	const LIZ5
	const GINA4
	const GINA5
	const TIFFANY4
	
	trainerclass PICNICKER_D
	const PICNICKER_REVERSAL
	const PICNICKER_OUTSKIRTS
	const PICNICKER_R4
	const PICNICKER_R2
	const PICNICKER_RELIC_PASSAGE
	const PICNICKER_R6

	trainerclass CAMPER ; 36
	const CAMPER_REVERSAL
	const CAMPER_RELIC_PASSAGE
	const ELLIOT
	const BARRY
	const LLOYD
	const DEAN
	const SID
	const HARVEY
	const DALE
	const TED
	const TODD2
	const TODD3
	const THOMAS
	const LEROY
	const DAVID
	const JOHN
	const JERRY
	const SPENCER
	const TODD4
	const TODD5
	const QUENTIN
	
	trainerclass CAMPER_D
	const CAMPER_R14
	const CAMPER_DESERT
	const CAMPER_R6

	trainerclass EXECUTIVEF ; 37
	const EXECUTIVEF_1
	const EXECUTIVEF_2

	trainerclass SAGE ; 38
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const LI
	const GAKU
	const MASA
	const KOJI

	trainerclass MEDIUM ; 39
	const MARTHA
	const GRACE
	const BETHANY
	const MARGRET
	const ETHEL
	const REBECCA
	const DORIS

	trainerclass BOARDER ; 3a
	const RONALD
	const BRAD
	const DOUGLAS

	trainerclass POKEFANM ; 3b
	const POKEFANM_R4
	const WILLIAM
	const POKEFANM_DESERT
	const POKEFANM_CASTELIA_SEWERS
	const POKEFANM_CELESTIAL_TOWER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const DEREK2
	const DEREK3
	const ALEX
	const REX
	const ALLAN

	trainerclass KIMONO_GIRL ; 3c
	const NAOKO1
	const NAOKO2
	const SAYO
	const ZUKI
	const KUNI
	const MIKI

	trainerclass TWINS ; 3d
	const TWINS_R2
	const TWINS_R1
	const TWINS_R7
	const AMYANDMAY2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2

	trainerclass POKEFANF ; 3e
	const POKEFANF_R5
	const POKEFANF_R6
	const POKEFANF_CELESTIAL_TOWER
	const BEVERLY3
	const GEORGIA
	const JAIME

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41
	const OFFICER_R4_1
	const OFFICER_R4_2
	const OFFICER_R2

	trainerclass GRUNTF ; 42
	const GRUNTF_LOSTLORN
	const GRUNTF_NIMBASA_1
	const GRUNTF_NIMBASA_2
	const GRUNTF_NIMBASA_3
	const GRUNTF_NIMBASA_4
	const GRUNTF_NIMBASA_5
	const GRUNTF_VIRBANK_COMPLEX_1
	const GRUNTF_VIRBANK_COMPLEX_2
	const GRUNTF_P2_1
	const GRUNTF_P2_2
	const GRUNTF_SEASIDE_CAVE_1
	const GRUNTF_SEASIDE_CAVE_2
	const GRUNTF_SEASIDE_CAVE_3
	const GRUNTF_CASTELIA_SEWERS_1
	const GRUNTF_CASTELIA_SEWERS_2
	const GRUNTF_CASTELIA_SEWERS_3

	trainerclass MYSTICALMAN ; 43
	const EUSINE
	
	trainerclass DOCTOR
	const DOCTOR_OUTSKIRTS
	const DOCTOR_R17
	
	trainerclass NURSE
	const NURSE_DESERT
	const NURSE_SEASIDE_CAVE
	const NURSE_RELIC_PASSAGE
	const NURSE_CHARGESTONE
	const NURSE_CELESTIAL_TOWER
	
	trainerclass HEX_MANIAC
	const HEX_MANIAC_LENTIMAS_GYM_1
	const HEX_MANIAC_LENTIMAS_GYM_2
	const HEX_MANIAC_LENTIMAS_GYM_3
	const HEX_MANIAC_LENTIMAS_GYM_4
	const HEX_MANIAC_DESERT
	const HEX_MANIAC_PINWHEEL
	const HEX_MANIAC_RELIC_PASSAGE
	const HEX_MANIAC_CELESTIAL_TOWER_1
	const HEX_MANIAC_CELESTIAL_TOWER_2
	const HEX_MANIAC_CELESTIAL_TOWER_3
	
	trainerclass HARLEQUIN
	const HARLEQUIN_CASTELIA_GYM_1
	const HARLEQUIN_CASTELIA_GYM_2
	const HARLEQUIN_CASTELIA_GYM_3
	const HARLEQUIN_CASTELIA_GYM_4
	const HARLEQUIN_CASTELIA_GYM_5
	const HARLEQUIN_R7
	
	trainerclass VETERAN
	const VETERAN_SEASIDE_CAVE
	const VETERAN_CHARGESTONE
	
	trainerclass WAITER
	const WAITER_STRIATON_GYM_1
	const WAITER_STRIATON_GYM_2
	
	trainerclass WAITRESS
	const WAITRESS_STRIATON_GYM_1
	const WAITRESS_STRIATON_GYM_2
	const WAITRESS_STRIATON_GYM_3
	
	trainerclass MARLON
	const MARLON1
	
	trainerclass SHAUNTAL
	const SHAUNTAL1
	
	trainerclass BURGH
	const BURGH1
	
	trainerclass ROXIE
	const ROXIE1
	
	trainerclass CHEREN
	const CHEREN1
	
	trainerclass CILAN
	const CILAN1
	
	trainerclass SKYLA
	const SKYLA1
	
	trainerclass DRAYDEN
	const DRAYDEN1
	
	trainerclass BIANCA
	const BIANCA1
	
	trainerclass GIALLO
	const GIALLO1
	
	trainerclass BRONIUS
	const BRONIUS1
	
	trainerclass RYOKU
	const RYOKU1
	
	trainerclass GORM
	const GORM1
	
	trainerclass MYSTERYMAN
	const VIO
	
	trainerclass INFER
	const INFER1_SNIVY
	const INFER1_TEPIG
	const INFER1_OSHAWOTT
	const INFER2_SNIVY
	const INFER2_TEPIG
	const INFER2_OSHAWOTT
	const INFER3_SNIVY
	const INFER3_TEPIG
	const INFER3_OSHAWOTT
	const INFER4_SNIVY
	const INFER4_TEPIG
	const INFER4_OSHAWOTT
	const INFER5_SNIVY
	const INFER5_TEPIG
	const INFER5_OSHAWOTT

KRIS EQU __enum__
NUM_TRAINER_CLASSES EQU __enum__
