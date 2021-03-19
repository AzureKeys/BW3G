	const_def 2 ; object constants
	const R11VILLAGEBRIDGEGATE_OFFICER

Rt11VillageBridgeGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R11VillageBridgeGateOfficerScript:
	jumptextfaceplayer R11VillageBridgeGateOfficerText
	
R11VillageBridgeGateOfficerText:
	text "The bridge has"
	line "finally been"
	cont "fixed!"
	
	para "Go on ahead."
	done

Rt11VillageBridgeGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  4, VILLAGE_BRIDGE, 3
	warp_event  9,  5, VILLAGE_BRIDGE, 4
	warp_event  0,  4, R_11, 1
	warp_event  0,  5, R_11, 2

	db 0 ; coord events
	
	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, R11VillageBridgeGateOfficerScript, -1
	