	const_def 2 ; object constants

OpelucidCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_OPELUCID
	return

OpelucidCity_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 49, 26, R_11_OPELUCID_GATE, 3
	warp_event 49, 27, R_11_OPELUCID_GATE, 4
	warp_event  4, 26, R_9_OPELUCID_GATE, 1
	warp_event  4, 27, R_9_OPELUCID_GATE, 2
	warp_event 25,  5, OPELUCID_MART, 1
	warp_event 33, 23, OPELUCID_POKECENTER_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	