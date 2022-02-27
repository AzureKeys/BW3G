	const_def 2 ; object constants
	const R19_FRUIT_TREE
	const R19_X_SPCL_DEF
	const R19_X_SPECIAL
	const R19_PP_UP
	const R19_NUGGET
	const R19_RARE_CANDY
	const R19_LURE_BALL
	const R19_YOUNGSTER
	const R19_BIRD_KEEPER
	const R19_BEAUTY
	const R19_FISHER
	const R19_SAILOR
	const R19_SUPER_NERD
	const R19_FIREBREATHER
	const R19_FAKE_JUNIPER

Rt19_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSailorR19:
	trainer SAILOR, SAILOR_R19, EVENT_BEAT_SAILOR_R19, SailorR19SeenText, SailorR19BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_SAILOR_STANLEY
	opentext
	checkflag ENGINE_STANLEY_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_SAILOR_STANLEY
	iftrue .NumberAccepted
	checkevent EVENT_STANLEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext SailorR19AfterText
	buttonsound
	setevent EVENT_STANLEY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SAILOR_STANLEY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_STANLEY
	trainertotext SAILOR, SAILOR_R19, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext SailorR19BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight2
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight1
; Fight0
	loadtrainer SAILOR, SAILOR_R19
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_STANLEY_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer SAILOR, STANLEY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_STANLEY_READY_FOR_REMATCH
	end
.LoadFight2
	loadtrainer SAILOR, STANLEY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_STANLEY_READY_FOR_REMATCH
	end
	
.AskNumber1:
	jumpstd asknumber1m
	end
	
.AskNumber2:
	jumpstd asknumber2m
	end

.RegisteredNumber:
	jumpstd registerednumberm
	end

.NumberAccepted:
	jumpstd numberacceptedm
	end

.NumberDeclined:
	jumpstd numberdeclinedm
	end

.PhoneFull:
	jumpstd phonefullm
	end

.Rematch:
	jumpstd rematchm
	end

TrainerYoungsterR19:
	trainer YOUNGSTER_D, YOUNGSTER_R19, EVENT_BEAT_YOUNGSTER_R19, YoungsterR19SeenText, YoungsterR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterR19AfterText
	waitbutton
	closetext
	end

TrainerBirdKeeperR19:
	trainer BIRD_KEEPER, BIRD_KEEPER_R19, EVENT_BEAT_BIRD_KEEPER_R19, BirdKeeperR19SeenText, BirdKeeperR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperR19AfterText
	waitbutton
	closetext
	end

TrainerBeautyR19:
	trainer BEAUTY, BEAUTY_R19, EVENT_BEAT_BEAUTY_R19, BeautyR19SeenText, BeautyR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyR19AfterText
	waitbutton
	closetext
	end

TrainerFisherR19:
	trainer FISHER_D, FISHER_R19, EVENT_BEAT_FISHER_R19, FisherR19SeenText, FisherR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherR19AfterText
	waitbutton
	closetext
	end

TrainerSuperNerdR19:
	trainer SUPER_NERD, SUPER_NERD_R19, EVENT_BEAT_SUPER_NERD_R19, SuperNerdR19SeenText, SuperNerdR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdR19AfterText
	waitbutton
	closetext
	end

TrainerFirebreatherR19:
	trainer FIREBREATHER, FIREBREATHER_R19, EVENT_BEAT_FIREBREATHER_R19, FirebreatherR19SeenText, FirebreatherR19BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherR19AfterText
	waitbutton
	closetext
	end
	
R19FruitTree:
	fruittree FRUITTREE_R_19
	
R19HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_19
	
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
	
YoungsterR19SeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

YoungsterR19BeatenText:
	text "Ouch, ouch, ouch!"
	done

YoungsterR19AfterText:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done
	
BirdKeeperR19SeenText:
	text "You there!"
	line "Want to battle?"
	done

BirdKeeperR19BeatenText:
	text "Down and out…"
	done

BirdKeeperR19AfterText:
	text "You're strong."

	para "You obviously must"
	line "have trained hard."
	done
	
BeautyR19SeenText:
	text "I'm raising my"
	line "#MON. Want to"
	cont "battle with me?"
	done

BeautyR19BeatenText:
	text "Ack! I lost that"
	line "one…"
	done

BeautyR19AfterText:
	text "If you have a"
	line "specific #MON"

	para "that you want to"
	line "raise, put it out"

	para "first, then switch"
	line "it right away."

	para "That's how to do"
	line "it."
	done
	
FisherR19SeenText:
	text "Patience is the"
	line "key to both fish-"
	cont "ing and #MON."
	done

FisherR19BeatenText:
	text "Gwaaah!"
	done

FisherR19AfterText:
	text "I'm too impatient"
	line "for fishing…"
	done
	
SailorR19SeenText:
	text "I'm a sailor man!"

	para "But I'm training"
	line "#MON, so I can"
	cont "become the CHAMP!"
	done

SailorR19BeatenText:
	text "My lack of train-"
	line "ing is obvious…"
	done

SailorR19AfterText:
	text "BADGES prove that"
	line "you've beaten GYM"
	cont "LEADERS."

	para "No wonder you're"
	line "so good!"
	done
	
SuperNerdR19SeenText:
	text "Hmmm… I don't know"
	line "what to do…"
	done

SuperNerdR19BeatenText:
	text "I knew I'd lose…"
	done

SuperNerdR19AfterText:
	text "You looked strong."

	para "I was afraid to"
	line "take you on…"
	done
	
FirebreatherR19SeenText:
	text "Step right up and"
	line "take a look!"
	done

FirebreatherR19BeatenText:
	text "Yow! That's hot!"
	done

FirebreatherR19AfterText:
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
	object_event  9, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR19, -1
	object_event 33, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperR19, -1
	object_event 21, 13, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyR19, -1
	object_event 20, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerFisherR19, -1
	object_event 18, 18, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorR19, -1
	object_event 30, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdR19, -1
	object_event 26, 17, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherR19, -1
	object_event 42, 16, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_FLOCCESY_TOWN_JUNIPER
	