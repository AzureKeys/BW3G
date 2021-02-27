	const_def 2 ; object constants
	const R7_FRUIT_TREE
	const R7_ULTRA_BALL
	const R7_PP_UP
	const R7_MAX_ETHER
	const R7_AMOONGUSS_1
	const R7_AMOONGUSS_2
	const R7_BIRD_KEEPER
	const R7_LASS_1
	const R7_LASS_2
	const R7_YOUNGSTER
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

TrainerYoungsterR7:
	trainer YOUNGSTER_D, YOUNGSTER_R7_1, EVENT_BEAT_YOUNGSTER_R7_1, YoungsterR7SeenText, YoungsterR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterR7AfterText
	waitbutton
	closetext
	end

TrainerLass1R7:
	trainer LASS, LASS_R7_1, EVENT_BEAT_LASS_R7_1, Lass1R7SeenText, Lass1R7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass1R7AfterText
	waitbutton
	closetext
	end

TrainerLass2R7:
	trainer LASS_D, LASS_R7_2, EVENT_BEAT_LASS_R7_2, Lass2R7SeenText, Lass2R7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass2R7AfterText
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

TrainerPsychicR7:
	trainer PSYCHIC_T_F, PSYCHIC_R7, EVENT_BEAT_PSYCHIC_R7, PsychicR7SeenText, PsychicR7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicR7AfterText
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
	
YoungsterR7SeenText:
	text "The TOWER's so"
	line "tall. I wonder"
	cont "what's at the top."
	done

YoungsterR7BeatenText:
	text "Yowch!"
	done

YoungsterR7AfterText:
	text "I'm not strong"
	line "enough to climb"
	cont "it."
	done
	
Lass1R7SeenText:
	text "Raising #MON is"
	line "my passion. What's"
	cont "yours?"
	done

Lass1R7BeatenText:
	text "Oh no, my #MON!"
	done

Lass1R7AfterText:
	text "Your passion must"
	line "be #MON"
	cont "battles!"
	done
	
Lass2R7SeenText:
	text "The GYM LEADER"
	line "often comes to"
	
	para "train at the"
	line "CELESTIAL TOWER."
	done

Lass2R7BeatenText:
	text "You're good!"
	done

Lass2R7AfterText:
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
	object_event  9, 45, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerLass1R7, -1
	object_event 18, 27, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerLass2R7, -1
	object_event 13, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR7, -1
	object_event  4, 39, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperR7, -1
	object_event 16, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicR7, -1
	