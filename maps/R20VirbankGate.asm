	const_def 2 ; object constants
	const R20VIRBANKGATE_OFFICER

Rt20VirbankGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R20VirbankGateOfficerScript:
	jumptextfaceplayer R20VirbankGateOfficerText

R20VirbankGateOfficerText:
	text "VIRBANK CITY is a"
	line "bustling burg."

	para "Be careful around"
	line "the construction!"
	done

Rt20VirbankGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, R_20, 1
	warp_event  0,  5, R_20, 2
	warp_event  9,  4, VIRBANK_CITY, 4
	warp_event  9,  5, VIRBANK_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, R20VirbankGateOfficerScript, -1
