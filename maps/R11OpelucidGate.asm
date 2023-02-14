	const_def 2 ; object constants
	const R11OPELUCIDGATE_OFFICER

Rt11OpelucidGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R11OpelucidGateOfficerScript:
	jumptextfaceplayer R11OpelucidGateOfficerText
	
R11OpelucidGateOfficerText:
	text "Hello, trainer who"
	line "has come to"
	cont "OPELUCID CITY!"
	
	para "Or, if you're"
	line "going to ROUTE 11,"
	cont "please come again!"
	done

Rt11OpelucidGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  4, R_11, 3
	warp_event  9,  5, R_11, 4
	warp_event  0,  4, OPELUCID_CITY, 1
	warp_event  0,  5, OPELUCID_CITY, 2

	db 0 ; coord events
	
	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, R11OpelucidGateOfficerScript, -1
	