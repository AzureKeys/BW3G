	const_def 2 ; object constants
	const R13UNDELLAGATE_SOCIALITE
	const R13UNDELLAGATE_FISHER

Rt13UndellaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt13UndellaGateSocialiteScript:
	jumptextfaceplayer Rt13UndellaGateSocialiteText

Rt13UndellaGateFisherScript:
	jumptextfaceplayer Rt13UndellaGateFisherText

Rt13UndellaGateSocialiteText:
	text "Living out here by"
	line "the beach is so"
	
	para "pleasant. The"
	line "MARINE TUBE has"
	
	para "made it convenient"
	line "to travel quickly"
	cont "to HUMILAU CITY."
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
	object_event  6,  4, SPRITE_SOCIALITE, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Rt13UndellaGateSocialiteScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Rt13UndellaGateFisherScript, -1
