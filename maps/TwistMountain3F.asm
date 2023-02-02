	const_def 2 ; object constants

TwistMountain3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TwistMountain3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  2, TWIST_MOUNTAIN_2F, 3
	warp_event 27,  9, TWIST_MOUNTAIN_2F, 4
	; warp_event 11,  7, TWIST_MOUNTAIN_OUTSIDE, 3
	; warp_event 19,  3, TWIST_MOUNTAIN_OUTSIDE, 1
	; warp_event  5, 19, TWIST_MOUNTAIN_OUTSIDE, 1
	; warp_event 13, 17, TWIST_MOUNTAIN_OUTSIDE, 1
	; warp_event 17, 11, TWIST_MOUNTAIN_OUTSIDE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	