	const_def 2 ; object constants

VictoryRoadCastleOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VictoryRoadCastleOutside_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  3, 15, VICTORY_ROAD_OUTDOOR_2F, 9

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	