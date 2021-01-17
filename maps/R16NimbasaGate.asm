	const_def 2 ; object constants
	const R16NIMBASAGATE_OFFICER
	const R16NIMBASAGATE_COOLTRAINER_F

Rt16NimbasaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt16NimbasaGateOfficerScript:
	jumptextfaceplayer Rt16NimbasaGateOfficerText

Rt16NimbasaGateCooltrainerFScript:
	jumptextfaceplayer Rt16NimbasaGateCooltrainerFText

Rt16NimbasaGateOfficerText:
	text "NIMBASA CITY is"
	line "a bustling burg!"
	
	para "Stay out of"
	line "trouble, now!"
	done

Rt16NimbasaGateCooltrainerFText:
	text "There are a lot"
	line "of shops in"
	cont "NIMBASA CITY!"
	done

Rt16NimbasaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, NIMBASA_CITY, 1
	warp_event  0,  5, NIMBASA_CITY, 2
	warp_event  9,  4, R_16, 3
	warp_event  9,  5, R_16, 4

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Rt16NimbasaGateOfficerScript, -1
	object_event  1,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Rt16NimbasaGateCooltrainerFScript, -1
