	const_def 2 ; object constants
	const R1R17GATE_OFFICER

Rt1Rt17Gate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R1R17GateOfficerScript:
	jumptextfaceplayer R1R17GateOfficerText

R1R17GateOfficerText:
	text "It's been a while"
	line "since someone's"
	cont "come this way!"

	para "Honestly, I enjoy"
	line "this quiet post."
	done

Rt1Rt17Gate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, R_17, 1
	warp_event  0,  5, R_17, 2
	warp_event  9,  4, R_1, 1
	warp_event  9,  5, R_1, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, R1R17GateOfficerScript, -1
