	const_def 2 ; object constants
	const VICTORYROADCAVE2F_BOULDER_1
	const VICTORYROADCAVE2F_BOULDER_2

VictoryRoadCave2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_VICTORY_ROAD_CAVE_BOULDER_1
	iffalse .check2
	changeblock 22, 32, $ab ; boulder in pit
.check2
	checkevent EVENT_VICTORY_ROAD_CAVE_BOULDER_2
	iffalse .done
	changeblock 24, 30, $ab ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable  9, VICTORYROADCAVE2F_BOULDER_1, .Boulder1
	stonetable 10, VICTORYROADCAVE2F_BOULDER_2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave2FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE2F_BOULDER_1
	changeblock 22, 32, $ab ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave2FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE2F_BOULDER_2
	changeblock 24, 30, $ab ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
VictoryRoadCave2FBoulder:
	jumpstd strengthboulder
	
VictoryRoadCave2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

VictoryRoadCave2F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  3, 47, VICTORY_ROAD_OUTDOOR_1F, 1
	warp_event 23, 49, VICTORY_ROAD_OUTDOOR_1F, 2
	warp_event 43, 47, VICTORY_ROAD_OUTDOOR_1F, 3
	warp_event  9, 29, VICTORY_ROAD_OUTDOOR_2F, 1
	warp_event 41, 29, VICTORY_ROAD_OUTDOOR_2F, 2
	warp_event 21,  3, VICTORY_ROAD_OUTDOOR_2F, 3
	warp_event 23, 27, VICTORY_ROAD_CAVE_2F, 8
	warp_event 15, 21, VICTORY_ROAD_CAVE_2F, 7
	warp_event 22, 33, VICTORY_ROAD_CAVE_2F, 11
	warp_event 25, 30, VICTORY_ROAD_CAVE_2F, 11
	warp_event 24, 33, VICTORY_ROAD_CAVE_2F, 11

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 22, 35, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave2FBoulder, EVENT_VICTORY_ROAD_CAVE_BOULDER_1
	object_event 24, 30, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave2FBoulder, EVENT_VICTORY_ROAD_CAVE_BOULDER_2
	