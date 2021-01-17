	const_def 2 ; object constants
	const R2ACCUMULAGATE_OFFICER

Rt2AccumulaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R2AccumulaGateOfficerScript:
	jumptextfaceplayer R2AccumulaGateOfficerText

R2AccumulaGateOfficerText:
	text "You're working on"
	line "a #DEX? That's"

	para "really something."
	line "Don't give up!"
	done

Rt2AccumulaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, R_2, 2
	warp_event  0,  5, R_2, 3
	warp_event  9,  4, ACCUMULA_TOWN, 1
	warp_event  9,  5, ACCUMULA_TOWN, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, R2AccumulaGateOfficerScript, -1
