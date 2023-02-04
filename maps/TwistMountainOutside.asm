	const_def 2 ; object constants

TwistMountainOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TwistMountainOutside_MapEvents:
	db 0, 0 ; filler

	db 17 ; warp events
	warp_event 29, 13, TWIST_MOUNTAIN_1F, 4
	warp_event 31, 23, TWIST_MOUNTAIN_1F, 5
	warp_event 17, 13, TWIST_MOUNTAIN_1F, 6
	warp_event 19, 23, TWIST_MOUNTAIN_1F, 7
	warp_event 15,  7, TWIST_MOUNTAIN_2F, 5
	warp_event 25,  9, TWIST_MOUNTAIN_2F, 6
	warp_event 31,  7, TWIST_MOUNTAIN_2F, 7
	warp_event  6, 13, TWIST_MOUNTAIN_2F, 8
	warp_event 10, 23, TWIST_MOUNTAIN_2F, 9
	warp_event 31, 27, TWIST_MOUNTAIN_2F, 10
	warp_event 29,  1, TWIST_MOUNTAIN_3F, 3
	warp_event 37,  7, TWIST_MOUNTAIN_3F, 4
	warp_event 25, 35, TWIST_MOUNTAIN_3F, 5
	warp_event 37, 33, TWIST_MOUNTAIN_3F, 6
	warp_event 43, 19, TWIST_MOUNTAIN_3F, 7
	warp_event  6, 27, TWIST_MOUNTAIN_ENTRANCE, 3
	warp_event 14, 19, TWIST_MOUNTAIN_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	