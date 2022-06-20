	const_def 2 ; object constants
	const R23WEST_DUMMY_OFFICER
	const R23WEST_OFFICER7
	const R23WEST_BOULDER_1
	const R23WEST_BOULDER_2
	const R23WEST_BOULDER_3
	const R23WEST_BOULDER_4
	const R23WEST_BOULDER_5

Rt23West_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.DummyScene0:
	end

.DummyScene1:
	end
	
.SetTiles:
	checkevent EVENT_R23_WEST_UPPER_LEVEL
	iffalse .boulders
	changeblock 58,  8, $6a ; 
	changeblock 58, 10, $6a ; 
	changeblock 58, 12, $02 ; 
	changeblock 48,  6, $75 ; 
	changeblock 50,  6, $a8 ; 
	changeblock 52,  6, $a8 ; 
	changeblock 54,  6, $a8 ; 
	changeblock 56,  6, $6f ; 
	
.boulders
	checkevent EVENT_R23_BOULDER_1
	iffalse .check2
	changeblock 28, 14, $97 ; boulder in pit
.check2
	checkevent EVENT_R23_BOULDER_2
	iffalse .check3
	changeblock 20, 18, $93 ; boulder in pit
.check3
	checkevent EVENT_R23_BOULDER_3
	iffalse .check4
	changeblock 24, 16, $97 ; boulder in pit
.check4
	checkevent EVENT_R23_BOULDER_4
	iffalse .check5
	changeblock 28, 18, $99 ; boulder in pit
.check5
	checkevent EVENT_R23_BOULDER_5
	iffalse .done
	changeblock 40, 18, $93 ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 1, R23WEST_BOULDER_1, .Boulder1
	stonetable 2, R23WEST_BOULDER_2, .Boulder2
	stonetable 3, R23WEST_BOULDER_3, .Boulder3
	stonetable 4, R23WEST_BOULDER_4, .Boulder4
	stonetable 5, R23WEST_BOULDER_5, .Boulder5
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext R23WestBoulderFellText
	waitbutton
	disappear R23WEST_BOULDER_1
	changeblock 28, 14, $97 ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext R23WestBoulderFellText
	waitbutton
	disappear R23WEST_BOULDER_2
	changeblock 20, 18, $93 ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder3:
	pause 30
	scall .FX
	opentext
	writetext R23WestBoulderFellText
	waitbutton
	disappear R23WEST_BOULDER_3
	changeblock 24, 16, $97 ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder4:
	pause 30
	scall .FX
	opentext
	writetext R23WestBoulderFellText
	waitbutton
	disappear R23WEST_BOULDER_4
	changeblock 28, 18, $99 ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder5:
	pause 30
	scall .FX
	opentext
	writetext R23WestBoulderFellText
	waitbutton
	disappear R23WEST_BOULDER_5
	changeblock 40, 18, $93 ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
R23WestUpperScript:
	checkevent EVENT_R23_WEST_UPPER_LEVEL
	iftrue .done
	changeblock 58,  8, $6a ; 
	changeblock 58, 10, $6a ; 
	changeblock 58, 12, $02 ; 
	changeblock 48,  6, $75 ; 
	changeblock 50,  6, $a8 ; 
	changeblock 52,  6, $a8 ; 
	changeblock 54,  6, $a8 ; 
	changeblock 56,  6, $6f ; 
	setevent EVENT_R23_WEST_UPPER_LEVEL
.done
	end
	
R23WestLowerScript:
	checkevent EVENT_R23_WEST_UPPER_LEVEL
	iffalse .done
	changeblock 58,  8, $68 ; 
	changeblock 58, 10, $69 ; 
	changeblock 58, 12, $6b ; 
	changeblock 48,  6, $74 ; 
	changeblock 50,  6, $6d ; 
	changeblock 52,  6, $6d ; 
	changeblock 54,  6, $6d ; 
	changeblock 56,  6, $6e ; 
	clearevent EVENT_R23_WEST_UPPER_LEVEL
.done
	end
	
R23WestBoulder:
	jumpstd strengthboulder

R23Badge7Script:
	turnobject PLAYER, LEFT
	turnobject R23WEST_OFFICER7, RIGHT
	opentext
	writetext R23Officer7StopText
	checkflag ENGINE_RISINGBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer7HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23WestMovement
	end

R23Officer7Script:
	faceplayer
	opentext
	checkscene
	ifequal SCENE_FINISHED, .showed
	writetext R23Officer7StopText
	checkflag ENGINE_RISINGBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer7HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end
	
.nobadge
	waitbutton
	closetext
	end
	
.showed
	writetext R23Officer7HaveBadgeText
	waitbutton
	closetext
	end
	
R23WestMovement:
	step DOWN
	step_end

R23Officer7StopText:
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
	line "LEGENDBADGE."
	done
	
R23Officer7HaveBadgeText:
	text "Oh, that is the"
	line "LEGENDBADGE!"
	
	para "You may pass."
	done
	
R23WestBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

Rt23West_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 28, 15, R_23_WEST, 6
	warp_event 20, 18, R_23_WEST, 6
	warp_event 24, 17, R_23_WEST, 6
	warp_event 29, 18, R_23_WEST, 6
	warp_event 40, 18, R_23_WEST, 6
	warp_event 29, 12, R_23_WEST, 6
	warp_event 52,  4, VICTORY_ROAD_ENTRANCE, 1
	warp_event 53,  4, VICTORY_ROAD_ENTRANCE, 2

	db 8 ; coord events
	coord_event 53,  4, SCENE_DEFAULT, R23Badge7Script
	coord_event 52,  4, SCENE_DEFAULT, R23Badge7Script
	coord_event 41, 15, -1, R23WestUpperScript
	coord_event 42, 15, -1, R23WestUpperScript
	coord_event 41, 17, -1, R23WestLowerScript
	coord_event 42, 17, -1, R23WestLowerScript
	coord_event 64, 10, -1, R23WestLowerScript
	coord_event 64, 11, -1, R23WestLowerScript

	db 0 ; bg events

	db 7 ; object events
	object_event 70, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 51,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer7Script, -1
	object_event 28, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R23WestBoulder, EVENT_R23_BOULDER_1
	object_event 19, 18, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R23WestBoulder, EVENT_R23_BOULDER_2
	object_event 22, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R23WestBoulder, EVENT_R23_BOULDER_3
	object_event 28, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R23WestBoulder, EVENT_R23_BOULDER_4
	object_event 34, 17, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R23WestBoulder, EVENT_R23_BOULDER_5
	