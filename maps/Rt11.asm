	const_def 2 ; object constants

Rt11_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt11_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 37, 12, R_11_VILLAGE_BRIDGE_GATE, 3
	warp_event 37, 13, R_11_VILLAGE_BRIDGE_GATE, 4
	warp_event  4, 12, R_11_OPELUCID_GATE, 1
	warp_event  4, 13, R_11_OPELUCID_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	