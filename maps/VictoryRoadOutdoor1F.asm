	const_def 2 ; object constants

VictoryRoadOutdoor1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VictoryRoadOutdoor1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  7,  5, VICTORY_ROAD_CAVE_2F, 1
	warp_event 25,  7, VICTORY_ROAD_CAVE_2F, 2
	warp_event 39,  7, VICTORY_ROAD_CAVE_2F, 3
	warp_event 45, 18, VICTORY_ROAD_CAVE_1F, 7
	warp_event 54, 17, VICTORY_ROAD_CAVE_1F, 8
	warp_event 55, 17, VICTORY_ROAD_CAVE_1F, 9
	warp_event  6, 20, VICTORY_ROAD_GROVE, 3
	warp_event  7, 20, VICTORY_ROAD_GROVE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	