	const_def 2 ; object constants
	const GIANTCHASM_TM_PSYCHIC

GiantChasmRooms_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GiantChasmTMPsychic:
	itemball TM_PSYCHIC_M
	
GiantChasmRooms_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  9, 19, GIANT_CHASM_1F, 4
	warp_event  9, 23, GIANT_CHASM_B1F, 1
	warp_event  9, 11, GIANT_CHASM_B1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  8,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, GiantChasmTMPsychic, EVENT_GIANT_CHASM_TM_PSYCHIC
	