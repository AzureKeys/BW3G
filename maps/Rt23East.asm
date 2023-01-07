	const_def 2 ; object constants
	const R23_OFFICER1
	const R23_OFFICER2
	const R23_OFFICER3
	const R23_OFFICER4
	const R23_OFFICER5
	const R23_OFFICER6
	const R23_ULTRA_BALL
	const R23_HP_UP
	const R23_PP_UP
	const R23_REPEAT_BALL
	const R23_HEART_SCALE
	const R23_GREEN_SHARD
	const R23_ACE_TRAINERM_1
	const R23_ACE_TRAINERF_1

Rt23East_MapScripts:
	db 7 ; scene scripts
	scene_script .DummyScene0 ; SCENE_R23_SHOWED_NONE
	scene_script .DummyScene1 ; SCENE_R23_SHOWED_SPOOKY
	scene_script .DummyScene2 ; SCENE_R23_SHOWED_INSECT
	scene_script .DummyScene3 ; SCENE_R23_SHOWED_TOXIC
	scene_script .DummyScene4 ; SCENE_R23_SHOWED_BASIC
	scene_script .DummyScene5 ; SCENE_R23_SHOWED_GARNISH
	scene_script .DummyScene6 ; SCENE_R23_SHOWED_JET

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.DummyScene6:
	end
	
.SetTiles:
	checkevent EVENT_R_23_LOWER
	iffalse .done
	changeblock 12, 14, $48 ; 
	changeblock 12, 16, $4c ; 
	changeblock 12, 18, $54 ; 
	changeblock 14, 14, $49 ; 
	changeblock 14, 16, $4a ; 
	changeblock 14, 18, $50 ; 
.done
	return
	
R23LowerScript:
	checkevent EVENT_R_23_LOWER
	iftrue .done
	changeblock 12, 14, $48 ; 
	changeblock 12, 16, $4c ; 
	changeblock 12, 18, $54 ; 
	changeblock 14, 14, $49 ; 
	changeblock 14, 16, $4a ; 
	changeblock 14, 18, $50 ; 
	setevent EVENT_R_23_LOWER
.done
	end
	
R23UpperScript:
	checkevent EVENT_R_23_LOWER
	iffalse .done
	changeblock 12, 14, $42 ; 
	changeblock 12, 16, $53 ; 
	changeblock 12, 18, $55 ; 
	changeblock 14, 14, $43 ; 
	changeblock 14, 16, $47 ; 
	changeblock 14, 18, $56 ; 
	clearevent EVENT_R_23_LOWER
.done
	end

R23Badge1Script:
	turnobject PLAYER, LEFT
	turnobject R23_OFFICER1, RIGHT
	opentext
	writetext R23Officer1StopText
	checkflag ENGINE_SPOOKYBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer1HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_SPOOKY
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23Movement1
	end

R23Badge2Script:
	turnobject PLAYER, RIGHT
	turnobject R23_OFFICER2, LEFT
	opentext
	writetext R23Officer2StopText
	checkflag ENGINE_INSECTBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer2HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_INSECT
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23Movement1
	end

R23Badge3Script:
	turnobject PLAYER, UP
	turnobject R23_OFFICER3, DOWN
	opentext
	writetext R23Officer3StopText
	checkflag ENGINE_TOXICBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer3HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_TOXIC
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23Movement2
	end

R23Badge4Script:
	turnobject PLAYER, UP
	turnobject R23_OFFICER4, DOWN
	opentext
	writetext R23Officer4StopText
	checkflag ENGINE_BASICBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer4HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_BASIC
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23Movement1
	end

R23Badge5Script:
	turnobject PLAYER, LEFT
	turnobject R23_OFFICER5, RIGHT
	opentext
	writetext R23Officer5StopText
	checkflag ENGINE_GARNISHBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer5HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_GARNISH
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23Movement1
	end

R23Badge6Script:
	turnobject PLAYER, UP
	turnobject R23_OFFICER6, DOWN
	opentext
	writetext R23Officer6StopText
	checkflag ENGINE_JETBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer6HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_JET
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23Movement3
	end

R23Officer1Script:
	faceplayer
	opentext
	checkscene
	ifnotequal SCENE_R23_SHOWED_NONE, .showed
	writetext R23Officer1StopText
	checkflag ENGINE_SPOOKYBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer1HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_SPOOKY
	end
	
.nobadge
	waitbutton
	closetext
	end
	
.showed
	writetext R23Officer1HaveBadgeText
	waitbutton
	closetext
	end

R23Officer2Script:
	faceplayer
	opentext
	checkscene
	ifnotequal SCENE_R23_SHOWED_SPOOKY, .showed
	writetext R23Officer2StopText
	checkflag ENGINE_INSECTBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer2HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_INSECT
	end
	
.nobadge
	waitbutton
	closetext
	end
	
.showed
	writetext R23Officer2HaveBadgeText
	waitbutton
	closetext
	end
	
R23Officer3Script:
	jumptextfaceplayer R23Officer3HaveBadgeText
	
R23Officer4Script:
	jumptextfaceplayer R23Officer4HaveBadgeText
	
R23Officer5Script:
	jumptextfaceplayer R23Officer5HaveBadgeText

R23Officer6Script:
	faceplayer
	opentext
	checkscene
	ifnotequal SCENE_R23_SHOWED_GARNISH, .showed
	writetext R23Officer6StopText
	checkflag ENGINE_JETBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer6HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_R23_SHOWED_JET
	end
	
.nobadge
	waitbutton
	closetext
	end
	
.showed
	writetext R23Officer6HaveBadgeText
	waitbutton
	closetext
	end

TrainerAceTrainerM1R23:
	trainer ACE_TRAINERM, ACE_TRAINERM_R23_1, EVENT_BEAT_ACE_TRAINERM_R23_1, AceTrainerM1R23SeenText, AceTrainerM1R23BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerM1R23AfterText
	waitbutton
	closetext
	end

TrainerAceTrainerF1R23:
	trainer ACE_TRAINERF_D, ACE_TRAINERF_R23_1, EVENT_BEAT_ACE_TRAINERF_R23_1, AceTrainerF1R23SeenText, AceTrainerF1R23BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerF1R23AfterText
	waitbutton
	closetext
	end
	
R23HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_23, HIDDENGROTTO_TIER_3
	
R23UltraBall:
	itemball ULTRA_BALL
	
R23HPUp:
	itemball HP_UP
	
R23PPUp:
	itemball PP_UP
	
R23RepeatBall:
	itemball REPEAT_BALL
	
R23HeartScale:
	itemball HEART_SCALE
	
R23GreenShard:
	itemball GREEN_SHARD
	
R23YellowShard:
	hiddenitem YELLOW_SHARD, EVENT_R23_YELLOW_SHARD
	
R23Movement1:
	step DOWN
	step_end
	
R23Movement2:
	step LEFT
	step_end
	
R23Movement3:
	step RIGHT
	step_end

R23Officer1StopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#MON LEAGUE."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #MON"
	line "LEAGUE GYM BADGES"
	cont "may enter."
	
	para "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "SPOOKYBADGE."
	done
	
R23Officer1HaveBadgeText:
	text "Oh, that is the"
	line "SPOOKYBADGE!"
	
	para "You may pass."
	done

R23Officer2StopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#MON LEAGUE."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #MON"
	line "LEAGUE GYM BADGES"
	cont "may enter."
	
	para "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "INSECTBADGE."
	done
	
R23Officer2HaveBadgeText:
	text "Oh, that is the"
	line "INSECTBADGE!"
	
	para "You may pass."
	done

R23Officer3StopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#MON LEAGUE."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #MON"
	line "LEAGUE GYM BADGES"
	cont "may enter."
	
	para "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "TOXICBADGE."
	done
	
R23Officer3HaveBadgeText:
	text "Oh, that is the"
	line "TOXICBADGE!"
	
	para "You may pass."
	done

R23Officer4StopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#MON LEAGUE."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #MON"
	line "LEAGUE GYM BADGES"
	cont "may enter."
	
	para "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "BASICBADGE."
	done
	
R23Officer4HaveBadgeText:
	text "Oh, that is the"
	line "BASICBADGE!"
	
	para "You may pass."
	done

R23Officer5StopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#MON LEAGUE."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #MON"
	line "LEAGUE GYM BADGES"
	cont "may enter."
	
	para "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "GARNISHBADGE."
	done
	
R23Officer5HaveBadgeText:
	text "Oh, that is the"
	line "GARNISHBADGE!"
	
	para "You may pass."
	done

R23Officer6StopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#MON LEAGUE."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #MON"
	line "LEAGUE GYM BADGES"
	cont "may enter."
	
	para "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "JETBADGE."
	done
	
R23Officer6HaveBadgeText:
	text "Oh, that is the"
	line "JETBADGE!"
	
	para "You may pass."
	done
	
AceTrainerM1R23SeenText:
	text "Our battle will"
	line "surely be worth a"
	
	para "page in the book"
	line "of your journey!"
	done

AceTrainerM1R23BeatenText:
	text "If only I could've"
	line "won, I would have"
	
	para "made an impression"
	line "on you."
	done

AceTrainerM1R23AfterText:
	text "To be remembered"
	line "by someone… That"
	
	para "may be what it"
	line "means to be alive."
	done
	
AceTrainerF1R23SeenText:
	text "I can see the plea"
	line "in my #MON's"
	
	para "eyes. To fight!"
	line "And to win!"
	done

AceTrainerF1R23BeatenText:
	text "The eyes of your"
	line "#MON are"
	
	para "glimmering with"
	line "strength!"
	done

AceTrainerF1R23AfterText:
	text "I can see the plea"
	line "in my #MON's"
	
	para "eyes. They're say-"
	line "ing, Get back up!"
	cont "I'm okay!"
	done

Rt23East_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 25, 43, GIANT_CHASM_1F, 3
	warp_event 18, 40, R_23_GATE, 3
	warp_event 18, 41, R_23_GATE, 4
	warp_event 13, 40, R_23_GATE, 1
	warp_event 13, 41, R_23_GATE, 2
	warp_event 25,  5, R_23_HOUSE, 1

	db 18 ; coord events
	coord_event 25, 44, -1, R23UpperScript
	coord_event  1, 10, -1, R23UpperScript
	coord_event  1, 11, -1, R23UpperScript
	coord_event 19, 11, -1, R23UpperScript
	coord_event 20, 11, -1, R23UpperScript
	coord_event 19, 14, -1, R23LowerScript
	coord_event 20, 14, -1, R23LowerScript
	coord_event 13, 35, SCENE_R23_SHOWED_NONE, R23Badge1Script
	coord_event 14, 35, SCENE_R23_SHOWED_NONE, R23Badge1Script
	coord_event 15, 35, SCENE_R23_SHOWED_NONE, R23Badge1Script
	coord_event 15, 30, SCENE_R23_SHOWED_SPOOKY, R23Badge2Script
	coord_event 14, 30, SCENE_R23_SHOWED_SPOOKY, R23Badge2Script
	coord_event 23, 26, SCENE_R23_SHOWED_INSECT, R23Badge3Script
	coord_event 23, 27, SCENE_R23_SHOWED_INSECT, R23Badge3Script
	coord_event 23, 20, SCENE_R23_SHOWED_TOXIC, R23Badge4Script
	coord_event 13, 12, SCENE_R23_SHOWED_BASIC, R23Badge5Script
	coord_event 14, 12, SCENE_R23_SHOWED_BASIC, R23Badge5Script
	coord_event  4, 11, SCENE_R23_SHOWED_GARNISH, R23Badge6Script

	db 3 ; bg events
	bg_event  7, 41, BGEVENT_UP, R23HiddenGrotto
	bg_event  8, 41, BGEVENT_UP, R23HiddenGrotto
	bg_event 25, 31, BGEVENT_ITEM, R23YellowShard

	db 14 ; object events
	object_event 12, 35, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer1Script, -1
	object_event 16, 30, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer2Script, -1
	object_event 23, 25, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer3Script, -1
	object_event 23, 18, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer4Script, -1
	object_event 12, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer5Script, -1
	object_event  4, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer6Script, -1
	object_event 19, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R23UltraBall, EVENT_R23_ULTRA_BALL
	object_event  5, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R23HPUp, EVENT_R23_HP_UP
	object_event  9, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R23PPUp, EVENT_R23_PP_UP
	object_event 14, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R23RepeatBall, EVENT_R23_REPEAT_BALL
	object_event 16, 46, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R23HeartScale, EVENT_R23_HEART_SCALE
	object_event  7, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R23GreenShard, EVENT_R23_GREEN_SHARD
	object_event 15, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerM1R23, -1
	object_event  8, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerF1R23, -1
	