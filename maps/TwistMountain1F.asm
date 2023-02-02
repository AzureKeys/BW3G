	const_def 2 ; object constants

TwistMountain1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TwistMountain1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 29, 11, ICIRRUS_CITY_SOUTH, 3
	warp_event 17,  3, TWIST_MOUNTAIN_2F, 1
	warp_event 13, 21, TWIST_MOUNTAIN_2F, 2
	; warp_event 23, 17, TWIST_MOUNTAIN_OUTSIDE, 1
	; warp_event 21, 25, TWIST_MOUNTAIN_OUTSIDE, 1
	; warp_event  3, 31, TWIST_MOUNTAIN_OUTSIDE, 1
	; warp_event  3,  7, TWIST_MOUNTAIN_OUTSIDE, 1
	; warp_event  9,  3, TWIST_MOUNTAIN_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	