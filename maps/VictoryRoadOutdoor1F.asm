	const_def 2 ; object constants

VictoryRoadOutdoor1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VictoryRoadOutdoor1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7,  5, VICTORY_ROAD_CAVE_2F, 1
	warp_event 25,  7, VICTORY_ROAD_CAVE_2F, 2
	warp_event 39,  7, VICTORY_ROAD_CAVE_2F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	