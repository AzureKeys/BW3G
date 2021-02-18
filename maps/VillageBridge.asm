	const_def 2 ; object constants
	const VILLAGEBRIDGE_CABLE_LEFT_1
	const VILLAGEBRIDGE_CABLE_LEFT_2
	const VILLAGEBRIDGE_CABLE_RIGHT_1
	const VILLAGEBRIDGE_CABLE_RIGHT_2

VillageBridge_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VillageBridge_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 61, 18, R_12_VILLAGE_BRIDGE_GATE, 3
	warp_event 61, 19, R_12_VILLAGE_BRIDGE_GATE, 4
	;warp_event  4, 18, CASTELIA_BRIDGE_GATE, 3
	;warp_event  4, 19, CASTELIA_BRIDGE_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 30, 11, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 30, 15, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 35, 11, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 35, 15, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	