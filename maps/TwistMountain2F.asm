	const_def 2 ; object constants

TwistMountain2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TwistMountain2F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event 37,  1, TWIST_MOUNTAIN_1F, 2
	warp_event  5,  1, TWIST_MOUNTAIN_1F, 3
	warp_event 17,  3, TWIST_MOUNTAIN_3F, 1
	warp_event 31, 19, TWIST_MOUNTAIN_3F, 2
	warp_event  5, 13, TWIST_MOUNTAIN_OUTSIDE, 5
	warp_event 13, 13, TWIST_MOUNTAIN_OUTSIDE, 6
	warp_event 37, 13, TWIST_MOUNTAIN_OUTSIDE, 7
	warp_event 15, 21, TWIST_MOUNTAIN_OUTSIDE, 8
	warp_event 17, 29, TWIST_MOUNTAIN_OUTSIDE, 9
	warp_event 25, 25, TWIST_MOUNTAIN_OUTSIDE, 10
	warp_event 31,  1, TWIST_MOUNTAIN_GENESECT_ROOM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	