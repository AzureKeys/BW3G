	const_def 2 ; object constants
	const R3_ULTRA_BALL
	const R3_SUPER_REPEL
	const R3_RARE_CANDY
	const R3_MAX_ETHER
	const R3_COOLTRAINERM
	const R3_COOLTRAINERF_1
	const R3_COOLTRAINERF_2
	const R3_FISHER_1
	const R3_FISHER_2
	const R3_PSYCHIC
	const R3_GENTLEMAN
	const R3_GRAMPS

Rt3_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .EggCheckCallback

.EggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_R3
	return

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_R3
	return
	
R3DayCareManScript_Outside:
	faceplayer
	opentext
	special DayCareManOutside
	waitbutton
	closetext
	ifequal TRUE, .end_fail
	clearflag ENGINE_DAY_CARE_MAN_HAS_EGG
	checkcode VAR_FACING
	ifequal RIGHT, .right_movement
	applymovement R3_GRAMPS, R3GrampsUpMovement
	playsound SFX_ENTER_DOOR
	disappear R3_GRAMPS
.end_fail
	end

.right_movement
	applymovement R3_GRAMPS, R3GrampsRightMovement
	playsound SFX_ENTER_DOOR
	disappear R3_GRAMPS
	end

TrainerCooltrainerF1R3:
	trainer COOLTRAINERF, COOLTRAINERF_R3_1, EVENT_BEAT_COOLTRAINERF_R3_1, CooltrainerF1R3SeenText, CooltrainerF1R3BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_COOLTRAINER_ARIANA
	opentext
	checkflag ENGINE_ARIANA_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_COOLTRAINER_ARIANA
	iftrue .NumberAccepted
	checkevent EVENT_ARIANA_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext CooltrainerF1R3AfterText
	buttonsound
	setevent EVENT_ARIANA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_COOLTRAINER_ARIANA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_ARIANA
	trainertotext COOLTRAINERF, COOLTRAINERF_R3_1, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext CooltrainerF1R3BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight1
; Fight0
	loadtrainer COOLTRAINERF, COOLTRAINERF_R3_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARIANA_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer COOLTRAINERF, ARIANA_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ARIANA_READY_FOR_REMATCH
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

TrainerCooltrainerF2R3:
	trainer COOLTRAINERF_D, COOLTRAINERF_R3_2, EVENT_BEAT_COOLTRAINERF_R3_2, CooltrainerF2R3SeenText, CooltrainerF2R3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF2R3AfterText
	waitbutton
	closetext
	end

TrainerCooltrainerMR3:
	trainer COOLTRAINERM_D, COOLTRAINERM_R3, EVENT_BEAT_COOLTRAINERM_R3, CooltrainerMR3SeenText, CooltrainerMR3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMR3AfterText
	waitbutton
	closetext
	end

TrainerFisher1R3:
	trainer FISHER, FISHER_R3_1, EVENT_BEAT_FISHER_R3_1, Fisher1R3SeenText, Fisher1R3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher1R3AfterText
	waitbutton
	closetext
	end

TrainerFisher2R3:
	trainer FISHER_D, FISHER_R3_2, EVENT_BEAT_FISHER_R3_2, Fisher2R3SeenText, Fisher2R3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher2R3AfterText
	waitbutton
	closetext
	end

TrainerPsychicR3:
	trainer PSYCHIC_T, PSYCHIC_R3, EVENT_BEAT_PSYCHIC_R3, PsychicR3SeenText, PsychicR3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicR3AfterText
	waitbutton
	closetext
	end

TrainerGentlemanR3:
	trainer GENTLEMAN, GENTLEMAN_R3, EVENT_BEAT_GENTLEMAN_R3, GentlemanR3SeenText, GentlemanR3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanR3AfterText
	waitbutton
	closetext
	end
	
R3UltraBall:
	itemball ULTRA_BALL
	
R3SuperRepel:
	itemball SUPER_REPEL
	
R3RareCandy:
	itemball RARE_CANDY
	
R3MaxEther:
	itemball MAX_ETHER
	
R3HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_3
	
R3HPUp:
	hiddenitem HP_UP, EVENT_R3_HP_UP
	
R3WellspringSign:
	jumptext R3WellspringSignText
	
R3DayCareSign:
	jumptext R3DayCareSignText
	
R3GrampsUpMovement:
	slow_step LEFT
	slow_step UP
	slow_step UP
	step_end
	
R3GrampsRightMovement:
	slow_step UP
	slow_step LEFT
	slow_step UP
	step_end
	
CooltrainerMR3SeenText:
	text "Hahahah!"
	done

CooltrainerMR3BeatenText:
	text "Hahaha-hachoo!"
	done

CooltrainerMR3AfterText:
	text "Hay fever is"
	line "making me sneeze!"
	cont "Ahahah-CHOO!"
	done
	
CooltrainerF1R3SeenText:
	text "Have you ever been"
	line "to a picnic?"

	para "They're so much"
	line "fun!"
	done

CooltrainerF1R3BeatenText:
	text "Ohhhh!"
	done

CooltrainerF1R3AfterText:
	text "We bake lots of"
	line "goodies and share"

	para "them all around."
	line "They're delicious!"
	done
	
CooltrainerF2R3SeenText:
	text "You like #MON,"
	line "don't you?"

	para "Me too!"
	done

CooltrainerF2R3BeatenText:
	text "I'd have to say"
	line "that's my loss."
	done

CooltrainerF2R3AfterText:
	text "Look what you did"
	line "to my #MON…"

	para "I won't forget"
	line "this…"
	done
	
Fisher1R3SeenText:
	text "Do you remember?"
	done

Fisher1R3BeatenText:
	text "Do you remember?"
	done

Fisher1R3AfterText:
	text "The tug you feel"
	line "on the ROD when"

	para "you hook a #-"
	line "MON…"

	para "That's the best"
	line "feeling ever for"
	cont "an angler like me."
	done
	
Fisher2R3SeenText:
	text "I feel so content,"
	line "fishing while lis-"
	cont "tening to some"
	cont "tunes on my radio."
	done

Fisher2R3BeatenText:
	text "My stupid radio"
	line "distracted me!"
	done

Fisher2R3AfterText:
	text "Have you checked"
	line "out UNOVA's radio"

	para "programs? We get a"
	line "good variety here."
	done
	
PsychicR3SeenText:
	text "…"
	done

PsychicR3BeatenText:
	text "…"
	done

PsychicR3AfterText:
	text "…"

	para "I lost while I had"
	line "my eyes closed…"
	done
	
GentlemanR3SeenText:
	text "I'll tell you a"
	line "secret."

	para "But first, we"
	line "battle!"
	done

GentlemanR3BeatenText:
	text "Oh, dang!"
	line "I lost that…"
	done

GentlemanR3AfterText:
	text "There are secrets"
	line "hidden in the"
	cont "WELLSPRING CAVE."
	done
	
R3WellspringSignText:
	text "WELLSPRING CAVE."
	
	para "Beware of wild"
	line "#MON!"
	done
	
R3DayCareSignText:
	text "DAY CARE."
	
	para "Let your #MON"
	line "play with us!"
	done

Rt3_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 34, R_3_NACRENE_GATE, 3
	warp_event  4, 35, R_3_NACRENE_GATE, 4
	warp_event 37,  5, R_3_DAY_CARE, 1
	warp_event  5,  5, WELLSPRING_CAVE_1F, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event  4,  6, BGEVENT_READ, R3WellspringSign
	bg_event 36,  6, BGEVENT_READ, R3DayCareSign
	bg_event  6, 12, BGEVENT_ITEM, R3HPUp
	bg_event 35, 23, BGEVENT_UP, R3HiddenGrotto

	db 12 ; object events
	object_event 36, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R3UltraBall, EVENT_R3_ULTRA_BALL
	object_event 20, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R3SuperRepel, EVENT_R3_SUPER_REPEL
	object_event 10, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R3RareCandy, EVENT_R3_RARE_CANDY
	object_event  7, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R3MaxEther, EVENT_R3_MAX_ETHER
	object_event 30, 27, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerMR3, -1
	object_event 10, 34, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerF1R3, -1
	object_event 25,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerF2R3, -1
	object_event 18, 32, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisher1R3, -1
	object_event 21, 36, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 0, TrainerFisher2R3, -1
	object_event 27, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicR3, -1
	object_event 13,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerGentlemanR3, -1
	object_event 38,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, R3DayCareManScript_Outside, EVENT_DAY_CARE_MAN_ON_R3
	