	const_def 2 ; object constants
	const R23_OFFICER1
	const R23_OFFICER2
	const R23_OFFICER3
	const R23_OFFICER4
	const R23_OFFICER5
	const R23_OFFICER6

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
	checkflag ENGINE_HIVEBADGE
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
	checkflag ENGINE_PLAINBADGE
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
	checkflag ENGINE_FOGBADGE
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
	checkflag ENGINE_STORMBADGE
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
	checkflag ENGINE_MINERALBADGE
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
	checkflag ENGINE_GLACIERBADGE
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
	checkflag ENGINE_HIVEBADGE
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
	checkflag ENGINE_PLAINBADGE
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
	checkflag ENGINE_GLACIERBADGE
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
	
R23HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_23
	
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

Rt23East_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 25, 43, GIANT_CHASM_1F, 3
	warp_event 18, 40, R_23_GATE, 3
	warp_event 18, 41, R_23_GATE, 4
	warp_event 13, 40, R_23_GATE, 1
	warp_event 13, 41, R_23_GATE, 2

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

	db 2 ; bg events
	bg_event  7, 41, BGEVENT_UP, R23HiddenGrotto
	bg_event  8, 41, BGEVENT_UP, R23HiddenGrotto

	db 6 ; object events
	object_event 12, 35, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer1Script, -1
	object_event 16, 30, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer2Script, -1
	object_event 23, 25, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer3Script, -1
	object_event 23, 18, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer4Script, -1
	object_event 12, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer5Script, -1
	object_event  4, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer6Script, -1
	