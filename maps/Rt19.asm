	const_def 2 ; object constants
	const R19_FRUIT_TREE
	const R19_X_SPCL_DEF
	const R19_X_SPECIAL
	const R19_PP_UP
	const R19_NUGGET
	const R19_RARE_CANDY
	const R19_LURE_BALL
	const R19_PKMN_BREEDERF
	const R19_PKMN_BREEDERM
	const R19_LADY
	const R19_DEPOT_AGENT_1
	const R19_DEPOT_AGENT_2
	const R19_MAID
	const R19_BAKER
	const R19_FAKE_JUNIPER

Rt19_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerMaidR19:
	trainer MAID, MAID_R19, EVENT_BEAT_MAID_R19, MaidR19SeenText, MaidR19BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_MAID_SOPHIE
	opentext
	checkflag ENGINE_SOPHIE_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_MAID_SOPHIE
	iftrue .NumberAccepted
	checkevent EVENT_SOPHIE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext MaidR19AfterText
	buttonsound
	setevent EVENT_SOPHIE_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_MAID_SOPHIE
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_SOPHIE
	trainertotext MAID, MAID_R19, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext MaidR19BeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight4
	checkmapscene SEASIDE_CAVE_CHAMBER
	ifequal SCENE_FINISHED, .LoadFight3
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight2
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight1
; Fight0
	loadtrainer MAID, MAID_R19
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight1
	loadtrainer MAID, SOPHIE_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight2
	loadtrainer MAID, SOPHIE_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight3
	loadtrainer MAID, SOPHIE_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight4
	loadtrainer MAID, SOPHIE_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_SOPHIE_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	scall .GiftText
	scall .GiveGift
	ifequal FALSE, .PackIsFull
	end
	
.AskNumber1:
	jumpstd asknumber1f
	end
	
.AskNumber2:
	jumpstd asknumber2f
	end

.RegisteredNumber:
	jumpstd registerednumberf
	end

.NumberAccepted:
	jumpstd numberacceptedf
	end

.NumberDeclined:
	jumpstd numberdeclinedf
	end

.PhoneFull:
	jumpstd phonefullf
	end

.Rematch:
	jumpstd rematchf
	end

.GiftText:
	jumpstd giftf
	end

.PackIsFull:
	jumpstd packfullf
	end
	
.GiveGift:
	rematchgift HIDDENGROTTO_TIER_2

TrainerPkmnBreederFR19:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_R19, EVENT_BEAT_PKMN_BREEDERF_R19, PkmnBreederFR19SeenText, PkmnBreederFR19BeatenText, 0, .Script

.Script:
	opentext
	checkjustbattled
	iftrue .RematchText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RematchText
	writetext PkmnBreederFR19SeenText
	waitbutton
	closetext
	winlosstext PkmnBreederFR19BeatenText, 0
	setlasttalked R19_PKMN_BREEDERF
	loadtrainer PKMN_BREEDERF, PKMN_BREEDERF_R19
	startbattle
	reloadmapafterbattle
	opentext
; fallthrough
.RematchText
	writetext PkmnBreederFR19AfterText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

TrainerPkmnBreederMR19:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_R19, EVENT_BEAT_PKMN_BREEDERM_R19, PkmnBreederMR19SeenText, PkmnBreederMR19BeatenText, 0, .Script

.Script:
	opentext
	checkjustbattled
	iftrue .RematchText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .RematchText
	writetext PkmnBreederMR19SeenText
	waitbutton
	closetext
	winlosstext PkmnBreederMR19BeatenText, 0
	setlasttalked R19_PKMN_BREEDERM
	loadtrainer PKMN_BREEDERM, PKMN_BREEDERM_R19
	startbattle
	reloadmapafterbattle
	opentext
; fallthrough
.RematchText
	writetext PkmnBreederMR19AfterText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	end

TrainerLadyR19:
	trainer LADY, LADY_R19, EVENT_BEAT_LADY_R19, LadyR19SeenText, LadyR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LadyR19AfterText
	waitbutton
	closetext
	end

TrainerDepotAgent1R19:
	trainer DEPOT_AGENT, DEPOT_AGENT_R19_1, EVENT_BEAT_DEPOT_AGENT_R19_1, DepotAgent1R19SeenText, DepotAgent1R19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DepotAgent1R19AfterText
	waitbutton
	closetext
	end

TrainerDepotAgent2R19:
	trainer DEPOT_AGENT, DEPOT_AGENT_R19_2, EVENT_BEAT_DEPOT_AGENT_R19_2, DepotAgent2R19SeenText, DepotAgent2R19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DepotAgent2R19AfterText
	waitbutton
	closetext
	end

TrainerBakerR19:
	trainer BAKER, BAKER_R19, EVENT_BEAT_BAKER_R19, BakerR19SeenText, BakerR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BakerR19AfterText
	waitbutton
	closetext
	end
	
R19FruitTree:
	fruittree FRUITTREE_R_19
	
R19HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_19, HIDDENGROTTO_TIER_2
	
R19XSpclDef:
	itemball X_SP_DEF
	
R19XSpecial:
	itemball X_SPECIAL
	
R19PPUp:
	itemball PP_UP
	
R19Nugget:
	itemball NUGGET
	
R19RareCandy:
	itemball RARE_CANDY
	
R19LureBall:
	itemball LURE_BALL
	
PkmnBreederFR19SeenText:
	text "We are totally in"
	line "sync! I will teach"
	
	para "you all about"
	line "#MON breeders!"
	done

PkmnBreederFR19BeatenText:
	text "In fact, we"
	line "learned all about"
	cont "you!"
	done

PkmnBreederFR19AfterText:
	text "Listen carefully…"
	line "You may hear the"
	
	para "sound of breathing"
	line "#MON."
	
	para "If you want to"
	line "have another"
	
	para "battle, come talk"
	line "to me again!"
	done
	
PkmnBreederMR19SeenText:
	text "I'm always"
	line "patrolling this"
	cont "area!"
	done

PkmnBreederMR19BeatenText:
	text "I couldn't take"
	line "advantage of the"
	cont "terrain!"
	done

PkmnBreederMR19AfterText:
	text "Something changes"
	line "here every day, so"

	para "it's always fun"
	line "to patrol!"
	
	para "Come and see me if"
	line "you want another"
	cont "battle!"
	done
	
LadyR19SeenText:
	text "Are you beautiful"
	line "as a trainer?"
	cont "Surprise me!"
	done

LadyR19BeatenText:
	text "…Strong and"
	line "beautiful! You"
	cont "captivated me!"
	done

LadyR19AfterText:
	text "Your #MON were"
	line "truly beautiful"
	cont "too!"
	done
	
DepotAgent1R19SeenText:
	text "This is the battle"
	line "train! All aboard!"
	done

DepotAgent1R19BeatenText:
	text "You're the non-"
	line "stop express line!"
	done

DepotAgent1R19AfterText:
	text "Have you taken the"
	line "subway in NIMBASA"
	cont "CITY?"
	done
	
DepotAgent2R19SeenText:
	text "Hmmm… I don't know"
	line "what to do…"
	done

DepotAgent2R19BeatenText:
	text "I knew I'd lose…"
	done

DepotAgent2R19AfterText:
	text "You looked strong."

	para "I was afraid to"
	line "take you on…"
	done
	
MaidR19SeenText:
	text "I'm a sailor man!"

	para "But I'm training"
	line "#MON, so I can"
	cont "become the CHAMP!"
	done

MaidR19BeatenText:
	text "My lack of train-"
	line "ing is obvious…"
	done

MaidR19AfterText:
	text "BADGES prove that"
	line "you've beaten GYM"
	cont "LEADERS."

	para "No wonder you're"
	line "so good!"
	done
	
BakerR19SeenText:
	text "Step right up and"
	line "take a look!"
	done

BakerR19BeatenText:
	text "Yow! That's hot!"
	done

BakerR19AfterText:
	text "The greatest fire-"
	line "breather in UNOVA,"
	cont "that's me."

	para "But not the best"
	line "trainer…"
	done

Rt19_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  5, 21, R_19_ASPERTIA_GATE, 1
	warp_event  6, 21, R_19_ASPERTIA_GATE, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event 13, 13, BGEVENT_UP, R19HiddenGrotto
	bg_event 14, 13, BGEVENT_UP, R19HiddenGrotto

	db 15 ; object events
	object_event 23, 11, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R19FruitTree, -1
	object_event 12, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R19XSpclDef, EVENT_R_19_X_SPCL_DEF
	object_event 23, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R19XSpecial, EVENT_R_19_X_SPECIAL
	object_event 32, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R19PPUp, EVENT_R_19_PP_UP
	object_event 28,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R19Nugget, EVENT_R_19_NUGGET
	object_event 40, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R19RareCandy, EVENT_R_19_RARE_CANDY
	object_event 13,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R19LureBall, EVENT_R_19_LURE_BALL
	object_event  9, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnBreederFR19, -1
	object_event 33, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPkmnBreederMR19, -1
	object_event 21, 13, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLadyR19, -1
	object_event 20, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerDepotAgent1R19, -1
	object_event 30, 12, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerDepotAgent2R19, -1
	object_event 18, 18, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerMaidR19, -1
	object_event 26, 17, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBakerR19, -1
	object_event 42, 16, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_FLOCCESY_TOWN_JUNIPER
	