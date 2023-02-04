	const_def 2 ; object constants

TwistMountainB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TwistMountainB1F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  3, 15, TWIST_MOUNTAIN_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	