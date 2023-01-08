	const_def 2 ; object constants

NsRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NsRoom_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  0,  4, VICTORY_ROAD_CASTLE_OUTSIDE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	