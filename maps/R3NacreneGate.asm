	const_def 2 ; object constants
	const R3NACRENEGATE_OFFICER

Rt3NacreneGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R3NacreneGateOfficerScript:
	jumptextfaceplayer R3NacreneGateOfficerText

R3NacreneGateOfficerText:
	text "Have you been to"
	line "the DAY CARE on"
	cont "ROUTE 3?"

	para "It's a convenient"
	line "place to leave"
	cont "your #MON."
	done

Rt3NacreneGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, NACRENE_CITY, 7
	warp_event  0,  5, NACRENE_CITY, 8
	warp_event  9,  4, R_3, 1
	warp_event  9,  5, R_3, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R3NacreneGateOfficerScript, -1
