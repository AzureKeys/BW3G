	const_def 2 ; object constants

TubelineBridge_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TubelineBridge_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  6, R_8, 1
	warp_event  0,  7, R_8, 2
	warp_event 17,  6, R_9, 1
	warp_event 17,  7, R_9, 2
	
	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	