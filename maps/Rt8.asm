	const_def 2 ; object constants

Rt8_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt8_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 41, 11, TUBELINE_BRIDGE, 1
	warp_event 41, 12, TUBELINE_BRIDGE, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	