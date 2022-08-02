	const_def 2 ; object constants
	const R5NIMBASAGATE_OFFICER

Rt5NimbasaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt5NimbasaGateOfficerScript:
	jumptextfaceplayer Rt5NimbasaGateOfficerText

Rt5NimbasaGateOfficerText:
	text "There are athletes"
	line "and performers"

	para "that gather on"
	line "ROUTE 5."
	done

Rt5NimbasaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, R_5, 3
	warp_event  0,  5, R_5, 4
	warp_event  9,  4, NIMBASA_CITY, 7
	warp_event  9,  5, NIMBASA_CITY, 8

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Rt5NimbasaGateOfficerScript, -1
