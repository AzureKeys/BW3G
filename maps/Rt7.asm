	const_def 2 ; object constants
	const R7_FRUIT_TREE
	const R7_ULTRA_BALL
	const R7_PP_UP
	const R7_MAX_ETHER
	const R7_AMOONGUSS_1
	const R7_AMOONGUSS_2
	const R7_BIRD_KEEPER
	const R7_BACKPACKERF
	const R7_NURSERY_AIDE
	const R7_SCHOOL_KIDF
	const R7_PSYCHIC

Rt7_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R7AmoongussScript1:
	opentext
	writetext R7AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R7_AMOONGUSS_1
	reloadmapafterbattle
	end

R7AmoongussScript2:
	opentext
	writetext R7AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R7_AMOONGUSS_2
	reloadmapafterbattle
	end

TrainerPsychicR7:
	trainer PSYCHIC_T_F, PSYCHIC_R7, EVENT_BEAT_PSYCHIC_R7, PsychicR7SeenText, PsychicR7BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_PSYCHIC_MARLA
	opentext
	checkflag ENGINE_MARLA_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_PSYCHIC_MARLA
	iftrue .NumberAccepted
	checkevent EVENT_MARLA_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext PsychicR7AfterText
	buttonsound
	setevent EVENT_MARLA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_PSYCHIC_MARLA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_MARLA
	trainertotext PSYCHIC_T_F, PSYCHIC_R7, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext PsychicR7BeatenText, 0
	;checkevent EVENT_
	;iftrue .LoadFight1
; Fight0
	loadtrainer PSYCHIC_T_F, PSYCHIC_R7
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_MARLA_READY_FOR_REMATCH
	end
; .LoadFight1
	; loadtrainer PSYCHIC_T_F, MARLA_REMATCH_1
	; startbattle
	; reloadmapafterbattle
	; clearflag ENGINE_MARLA_READY_FOR_REMATCH
	; end
	
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

TrainerSchoolKidFR7:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_R7, EVENT_BEAT_SCHOOL_KIDF_R7, SchoolKidFR7SeenText, SchoolKidFR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidFR7AfterText
	waitbutton
	closetext
	end

TrainerBackpackerFR7:
	trainer BACKPACKERF, BACKPACKERF_R7, EVENT_BEAT_BACKPACKERF_R7, BackpackerFR7SeenText, BackpackerFR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFR7AfterText
	waitbutton
	closetext
	end

TrainerNurseryAideR7:
	trainer NURSERY_AIDE, NURSERY_AIDE_R7, EVENT_BEAT_NURSERY_AIDE_R7, NurseryAideR7SeenText, NurseryAideR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NurseryAideR7AfterText
	waitbutton
	closetext
	end

TrainerBirdKeeperR7:
	trainer BIRD_KEEPER, BIRD_KEEPER_R7, EVENT_BEAT_BIRD_KEEPER_R7, BirdKeeperR7SeenText, BirdKeeperR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperR7AfterText
	waitbutton
	closetext
	end
	
R7FruitTree:
	fruittree FRUITTREE_R_7
	
R7HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_7
	
R7UltraBall:
	itemball ULTRA_BALL
	
R7PPUp:
	itemball PP_UP
	
R7MaxEther:
	itemball MAX_ETHER

R7Sign:
	jumptext R7SignText

R7TowerSign:
	jumptext R7TowerSignText
	
SchoolKidFR7SeenText:
	text "The TOWER's so"
	line "tall. I wonder"
	cont "what's at the top."
	done

SchoolKidFR7BeatenText:
	text "Yowch!"
	done

SchoolKidFR7AfterText:
	text "I'm not strong"
	line "enough to climb"
	cont "it."
	done
	
BackpackerFR7SeenText:
	text "Raising #MON is"
	line "my passion. What's"
	cont "yours?"
	done

BackpackerFR7BeatenText:
	text "Oh no, my #MON!"
	done

BackpackerFR7AfterText:
	text "Your passion must"
	line "be #MON"
	cont "battles!"
	done
	
NurseryAideR7SeenText:
	text "The GYM LEADER"
	line "often comes to"
	
	para "train at the"
	line "CELESTIAL TOWER."
	done

NurseryAideR7BeatenText:
	text "You're good!"
	done

NurseryAideR7AfterText:
	text "Maybe I should"
	line "start training"
	cont "there too."
	done
	
BirdKeeperR7SeenText:
	text "I'm training to"
	line "join the gym!"
	done

BirdKeeperR7BeatenText:
	text "Too fast!"
	done

BirdKeeperR7AfterText:
	text "I guess I need"
	line "more training…"
	done
	
PsychicR7SeenText:
	text "Shh… I'm"
	line "meditating."
	done

PsychicR7BeatenText:
	text "…!"
	done

PsychicR7AfterText:
	text "What? Sorry, I"
	line "dozed off…"
	done

R7AmoongussText:
	text "Ooong!"
	done

R7SignText:
	text "ROUTE 7."
	line "North to"
	cont "CELESTIAL TOWER."
	done

R7TowerSignText:
	text "CELESTIAL TOWER."
	
	para "Purify your"
	line "spirit."
	done

Rt7_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  5, 27, R_7_HOUSE, 1
	warp_event 10,  5, CELESTIAL_TOWER_1F, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 21, 49, BGEVENT_READ, R7Sign
	bg_event  9,  7, BGEVENT_READ, R7TowerSign
	bg_event  9, 27, BGEVENT_UP, R7HiddenGrotto
	bg_event 10, 27, BGEVENT_UP, R7HiddenGrotto

	db 11 ; object events
	object_event 18, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R7FruitTree, -1
	object_event  8, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7UltraBall, EVENT_R_7_ULTRA_BALL
	object_event 23, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7PPUp, EVENT_R_7_PP_UP
	object_event 17, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7MaxEther, EVENT_R_7_MAX_ETHER
	object_event 16, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R7AmoongussScript1, EVENT_R_7_AMOONGUSS_1
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R7AmoongussScript2, EVENT_R_7_AMOONGUSS_2
	object_event  9, 45, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBackpackerFR7, -1
	object_event 18, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerNurseryAideR7, -1
	object_event 13, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidFR7, -1
	object_event  4, 39, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperR7, -1
	object_event 16, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicR7, -1
	