	const_def 2 ; object constants
	const R9OPELUCIDGATE_OFFICER

Rt9OpelucidGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R9OpelucidGateOfficerScript:
	jumptextfaceplayer R9OpelucidGateOfficerText
	
R9OpelucidGateOfficerText:
	text "The bridge has"
	line "finally been"
	cont "fixed!"
	
	para "Go on ahead."
	done

Rt9OpelucidGate_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9,  4, OPELUCID_CITY, 3
	warp_event  9,  5, OPELUCID_CITY, 4
	;warp_event  0,  4, R_9, 1
	;warp_event  0,  5, R_9, 2

	db 0 ; coord events
	
	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R9OpelucidGateOfficerScript, -1
	