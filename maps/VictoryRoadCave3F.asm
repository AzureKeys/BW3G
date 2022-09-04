	const_def 2 ; object constants

VictoryRoadCave3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VictoryRoadCave3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 19, 19, VICTORY_ROAD_OUTDOOR_2F, 4
	warp_event  7, 29, VICTORY_ROAD_OUTDOOR_2F, 5
	warp_event 15,  7, VICTORY_ROAD_OUTDOOR_2F, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	