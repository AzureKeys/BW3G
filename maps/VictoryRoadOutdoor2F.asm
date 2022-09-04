	const_def 2 ; object constants
	const VICTORYROADOUTDOOR2F_BOULDER

VictoryRoadOutdoor2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_VICTORY_ROAD_OUTDOOR_BOULDER
	iffalse .done
	changeblock 18,  8, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable  7, VICTORYROADOUTDOOR2F_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadOutdoor2FBoulderFellText
	waitbutton
	disappear VICTORYROADOUTDOOR2F_BOULDER
	changeblock 18,  8, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
VictoryRoadOutdoor2FBoulder:
	jumpstd strengthboulder
	
VictoryRoadOutdoor2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

VictoryRoadOutdoor2F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  9, 34, VICTORY_ROAD_CAVE_2F, 4
	warp_event 37, 34, VICTORY_ROAD_CAVE_2F, 5
	warp_event 17, 14, VICTORY_ROAD_CAVE_2F, 6
	warp_event 29, 12, VICTORY_ROAD_CAVE_3F, 1
	warp_event 17, 20, VICTORY_ROAD_CAVE_3F, 2
	warp_event 19,  1, VICTORY_ROAD_CAVE_3F, 3
	warp_event 18,  8, VICTORY_ROAD_OUTDOOR_2F, 8
	warp_event 16,  8, VICTORY_ROAD_OUTDOOR_2F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 20,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadOutdoor2FBoulder, EVENT_VICTORY_ROAD_OUTDOOR_BOULDER
	