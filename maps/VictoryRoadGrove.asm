	const_def 2 ; object constants

VictoryRoadGrove_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VictoryRoadGrove_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 13, 24, VICTORY_ROAD_CAVE_1F, 5
	warp_event 14, 24, VICTORY_ROAD_CAVE_1F, 6
	warp_event  5,  5, VICTORY_ROAD_OUTDOOR_1F, 7
	warp_event  6,  5, VICTORY_ROAD_OUTDOOR_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	