	const_def 2 ; object constants
	const VICTORYROADCAVE1F_BOULDER_1
	const VICTORYROADCAVE1F_BOULDER_2

VictoryRoadCave1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.DummyScene0:
	end

.Boulders:
	checkevent EVENT_VICTORY_ROAD_RUINS_BOULDER_1
	iffalse .check2
	changeblock 10, 22, $7b ; boulder in pit
.check2
	checkevent EVENT_VICTORY_ROAD_RUINS_BOULDER_2
	iffalse .check_level
	changeblock 32, 10, $6f ; boulder in pit
.check_level
	checkevent EVENT_VICTORY_ROAD_CAVE_LOWER
	iffalse .done
	changeblock 16, 20, $7e ; bridge top left
	changeblock 18, 20, $7f ; bridge top right
	changeblock 16, 22, $82 ; bridge left
	changeblock 18, 22, $83 ; bridge right
	changeblock 16, 24, $86 ; bridge bot left
	changeblock 18, 24, $87 ; bridge bot right
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 10, VICTORYROADCAVE1F_BOULDER_1, .Boulder1
	stonetable 11, VICTORYROADCAVE1F_BOULDER_2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave1FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE1F_BOULDER_1
	changeblock 10, 22, $7b ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave1FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE1F_BOULDER_2
	changeblock 32, 10, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
VictoryRoadCave1FLowerScript:
	checkevent EVENT_VICTORY_ROAD_CAVE_LOWER
	iftrue .done
	changeblock 16, 20, $7e ; bridge top left
	changeblock 18, 20, $7f ; bridge top right
	changeblock 16, 22, $82 ; bridge left
	changeblock 18, 22, $83 ; bridge right
	changeblock 16, 24, $86 ; bridge bot left
	changeblock 18, 24, $87 ; bridge bot right
	setevent EVENT_VICTORY_ROAD_CAVE_LOWER
.done
	end
	
VictoryRoadCave1FUpperScript:
	checkevent EVENT_VICTORY_ROAD_CAVE_LOWER
	iffalse .done
	changeblock 16, 20, $36 ; bridge top left
	changeblock 18, 20, $3b ; bridge top right
	changeblock 16, 22, $3e ; bridge left
	changeblock 18, 22, $3e ; bridge right
	changeblock 16, 24, $42 ; bridge bot left
	changeblock 18, 24, $43 ; bridge bot right
	clearevent EVENT_VICTORY_ROAD_CAVE_LOWER
.done
	end
	
VictoryRoadCave1FBoulder:
	jumpstd strengthboulder
	
VictoryRoadCave1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

VictoryRoadCave1F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event 31, 36, VICTORY_ROAD_ENTRANCE, 3
	warp_event 32, 36, VICTORY_ROAD_ENTRANCE, 4
	warp_event 33, 36, VICTORY_ROAD_ENTRANCE, 5
	warp_event 34, 36, VICTORY_ROAD_ENTRANCE, 6
	warp_event  5,  8, VICTORY_ROAD_GROVE, 1
	warp_event  6,  8, VICTORY_ROAD_GROVE, 2
	warp_event 15,  1, VICTORY_ROAD_OUTDOOR_1F, 4
	warp_event 21,  2, VICTORY_ROAD_OUTDOOR_1F, 5
	warp_event 22,  2, VICTORY_ROAD_OUTDOOR_1F, 6
	warp_event 11, 22, VICTORY_ROAD_CAVE_1F, 1
	warp_event 32, 10, VICTORY_ROAD_CAVE_1F, 1

	db 12 ; coord events
	coord_event 14,  5, SCENE_DEFAULT, VictoryRoadCave1FLowerScript
	coord_event 16, 32, SCENE_DEFAULT, VictoryRoadCave1FLowerScript
	coord_event 14,  4, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 17, 32, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 31, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 32, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 33, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 34, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 21,  4, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 22,  4, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event  5, 10, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event  6, 10, SCENE_DEFAULT, VictoryRoadCave1FUpperScript

	db 0 ; bg events

	db 2 ; object events
	object_event 13, 23, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave1FBoulder, EVENT_VICTORY_ROAD_RUINS_BOULDER_1
	object_event 32,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave1FBoulder, EVENT_VICTORY_ROAD_RUINS_BOULDER_2
	