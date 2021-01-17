	const_def 2 ; object constants
	const R13UNDELLAGATE_POKEFAN_F
	const R13UNDELLAGATE_FISHER

Rt13UndellaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt13UndellaGatePokefanFScript:
	jumptextfaceplayer Rt13UndellaGatePokefanFText

Rt13UndellaGateFisherScript:
	jumptextfaceplayer Rt13UndellaGateFisherText

Rt13UndellaGatePokefanFText:
	text "I like the #MON"
	line "Lullaby they play"
	cont "on the radio."
	done

Rt13UndellaGateFisherText:
	text "I wonder how many"
	line "kinds of #MON"

	para "there are in the"
	line "world."

	para "We now know of"
	line "over 600 #-"
	cont "MON!"
	done

Rt13UndellaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, R_13, 2
	warp_event  5,  0, R_13, 3
	warp_event  4,  7, UNDELLA_TOWN, 1
	warp_event  5,  7, UNDELLA_TOWN, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, Rt13UndellaGatePokefanFScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Rt13UndellaGateFisherScript, -1
