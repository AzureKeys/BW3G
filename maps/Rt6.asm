	const_def 2 ; object constants
	const R6_FRUIT_TREE
	const R6_HYPER_POTION
	const R6_ELIXER
	const R6_TINYMUSHROOM
	const R6_BIG_MUSHROOM
	const R6_TM_CALM_MIND
	const R6_AMOONGUSS_1
	const R6_AMOONGUSS_2
	const R6_AMOONGUSS_3
	const R6_YOUNGSTER
	const R6_LASS_1
	const R6_LASS_2
	const R6_PICNICKER
	const R6_CAMPER
	const R6_POKEFAN_F
	const R6_SCIENTIST_M
	const R6_SCIENTIST_F

Rt6_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AmoongussScript1:
	opentext
	writetext AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R6_AMOONGUSS_1
	reloadmapafterbattle
	end

AmoongussScript2:
	opentext
	writetext AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R6_AMOONGUSS_2
	reloadmapafterbattle
	end

AmoongussScript3:
	opentext
	writetext AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R6_AMOONGUSS_3
	reloadmapafterbattle
	end

TrainerYoungsterR6:
	trainer YOUNGSTER, YOUNGSTER_R6, EVENT_BEAT_YOUNGSTER_R6, YoungsterR6SeenText, YoungsterR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterR6AfterText
	waitbutton
	closetext
	end

TrainerLass1R6:
	trainer LASS, LASS_R6_1, EVENT_BEAT_LASS_R6_1, Lass1R6SeenText, Lass1R6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass1R6AfterText
	waitbutton
	closetext
	end

TrainerLass2R6:
	trainer LASS_D, LASS_R6_2, EVENT_BEAT_LASS_R6_2, Lass2R6SeenText, Lass2R6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass2R6AfterText
	waitbutton
	closetext
	end

TrainerPicnickerR6:
	trainer PICNICKER_D, PICNICKER_R6, EVENT_BEAT_PICNICKER_R6, PicnickerR6SeenText, PicnickerR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerR6AfterText
	waitbutton
	closetext
	end

TrainerCamperR6:
	trainer CAMPER_D, CAMPER_R6, EVENT_BEAT_CAMPER_R6, CamperR6SeenText, CamperR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperR6AfterText
	waitbutton
	closetext
	end

TrainerPokefanFR6:
	trainer POKEFANF, POKEFANF_R6, EVENT_BEAT_POKEFANF_R6, PokefanFR6SeenText, PokefanFR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanFR6AfterText
	waitbutton
	closetext
	end

TrainerScientistMR6:
	trainer SCIENTIST_M, SCIENTISTM_R6, EVENT_BEAT_SCIENTISTM_R6, ScientistMR6SeenText, ScientistMR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMR6AfterText
	waitbutton
	closetext
	end

TrainerScientistFR6:
	trainer SCIENTIST_F, SCIENTISTF_R6, EVENT_BEAT_SCIENTISTF_R6, ScientistFR6SeenText, ScientistFR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFR6AfterText
	waitbutton
	closetext
	end
	
R6FruitTree:
	fruittree FRUITTREE_R_6
	
R6HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_6
	
R6HyperPotion:
	itemball HYPER_POTION
	
R6Elixer:
	itemball ELIXER
	
R6TinyMushroom:
	itemball TINYMUSHROOM
	
R6BigMushroom:
	itemball BIG_MUSHROOM
	
R6TMCalmMind:
	itemball TM_CALM_MIND

R6Sign:
	jumptext R6SignText

R6LabSign:
	jumptext R6LabText

R6ChargestoneSign:
	jumptext R6ChargestoneText
	
YoungsterR6SeenText:
	text "Lots of #MON"
	line "come out after it"
	cont "rains!"
	done

YoungsterR6BeatenText:
	text "Hey!"
	done

YoungsterR6AfterText:
	text "I love seeing all"
	line "the #MON!"
	done
	
Lass1R6SeenText:
	text "There are some"
	line "#MON that can"
	
	para "disguise them-"
	line "selves!"
	done

Lass1R6BeatenText:
	text "I lost…"
	done

Lass1R6AfterText:
	text "Be careful when"
	line "checking for"
	cont "items!"
	done
	
Lass2R6SeenText:
	text "What a lovely day"
	line "for a #MON"
	cont "battle!"
	done

Lass2R6BeatenText:
	text "Not so lovely…"
	done

Lass2R6AfterText:
	text "You must have"
	cont "trained hard!"
	done
	
PicnickerR6SeenText:
	text "This ROUTE is a"
	line "lousy spot for a"
	cont "picnic."
	
	para "The grass is all"
	line "wet!"
	done

PicnickerR6BeatenText:
	text "I got soaked!"
	done

PicnickerR6AfterText:
	text "At least the"
	line "puddles are fun to"
	cont "splash in!"
	done
	
CamperR6SeenText:
	text "I love stomping"
	line "in puddles!"
	done

CamperR6BeatenText:
	text "Woah!"
	done

CamperR6AfterText:
	text "I'm gonna go stomp"
	line "around to cheer"
	cont "myself up!"
	done
	
PokefanFR6SeenText:
	text "This ROUTE is such"
	line "a lovely stroll,"
	
	para "wouldn't you"
	line "agree?"
	done

PokefanFR6BeatenText:
	text "Oh dear…"
	done

PokefanFR6AfterText:
	text "Now I'll have to"
	line "take my #MON"
	cont "back to town…"
	done
	
ScientistMR6SeenText:
	text "ROUTE 6 is home to"
	line "a research lab."
	done

ScientistMR6BeatenText:
	text "Interesting!"
	done

ScientistMR6AfterText:
	text "We're always"
	line "looking for rare"
	cont "#MON!"
	done
	
ScientistFR6SeenText:
	text "I work at the"
	line "research lab here."
	
	para "Would you mind"
	line "showing me your"
	cont "#MON?"
	done

ScientistFR6BeatenText:
	text "So that's it…"
	done

ScientistFR6AfterText:
	text "Thank you for the"
	line "demonstration!"
	done

AmoongussText:
	text "Ooong!"
	done

R6SignText:
	text "ROUTE 6."
	line "West to CHARGE-"
	cont "STONE CAVE."
	done

R6LabText:
	text "ROUTE 6"
	line "Weather Lab."
	done

R6ChargestoneText:
	text "CHARGESTONE CAVE"
	line "ahead."
	
	para "Passage to"
	line "MISTRALTON CITY."
	done

Rt6_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 15, 17, R_6_HOUSE, 1
	warp_event 31, 21, R_6_LAB, 1
	warp_event  8,  3, CHARGESTONE_CAVE_1F, 1
	warp_event 46, 42, DRIFTVEIL_CITY, 8
	warp_event 46, 43, DRIFTVEIL_CITY, 9

	db 0 ; coord events

	db 5 ; bg events
	bg_event 43, 42, BGEVENT_READ, R6Sign
	bg_event 29, 21, BGEVENT_READ, R6LabSign
	bg_event  7, 13, BGEVENT_READ, R6ChargestoneSign
	bg_event 27, 33, BGEVENT_UP, R6HiddenGrotto
	bg_event 28, 33, BGEVENT_UP, R6HiddenGrotto

	db 17 ; object events
	object_event 27, 19, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R6FruitTree, -1
	object_event 37, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6HyperPotion, EVENT_R_6_HYPER_POTION
	object_event 44, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6Elixer, EVENT_R_6_ELIXER
	object_event 10, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6TinyMushroom, EVENT_R_6_TINYMUSHROOM
	object_event  4, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6BigMushroom, EVENT_R_6_BIG_MUSHROOM
	object_event 45, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R6TMCalmMind, EVENT_R_6_TM_CALM_MIND
	object_event  8, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmoongussScript1, EVENT_R_6_AMOONGUSS_1
	object_event 16, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmoongussScript2, EVENT_R_6_AMOONGUSS_2
	object_event 45, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmoongussScript3, EVENT_R_6_AMOONGUSS_3
	object_event 36, 32, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR6, -1
	object_event 43, 27, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerLass1R6, -1
	object_event 27, 37, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerLass2R6, -1
	object_event 44, 34, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerPicnickerR6, -1
	object_event 14, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerCamperR6, -1
	object_event  5, 24, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokefanFR6, -1
	object_event 24, 22, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistMR6, -1
	object_event 30, 22, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistFR6, -1
	