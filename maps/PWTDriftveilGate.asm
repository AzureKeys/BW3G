	const_def 2 ; object constants
	const PWTDRIFTVEILGATE_OFFICER

PWTDriftveilGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PwtDriftveilGateOfficerScript:
	jumptextfaceplayer PwtDriftveilGateOfficerText

PwtDriftveilGateOfficerText:
	text "The #MON WORLD"
	line "TOUNAMENT brings"
	
	para "in the best"
	line "trainers in UNOVA!"
	done

PWTDriftveilGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, DRIFTVEIL_CITY, 1
	warp_event  5,  0, DRIFTVEIL_CITY, 2
	warp_event  4,  7, PWT_OUTSIDE, 4
	warp_event  5,  7, PWT_OUTSIDE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PwtDriftveilGateOfficerScript, -1
	