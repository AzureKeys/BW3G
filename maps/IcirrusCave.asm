	const_def 2 ; object constants
	const ICIRRUSCAVE_TM_ICE_BEAM

IcirrusCave_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
IcirrusCaveTMIceBeam:
	itemball TM_ICE_BEAM

IcirrusCave_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  6, 35, ICIRRUS_CITY_NORTH, 5

	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event  7,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, IcirrusCaveTMIceBeam, EVENT_ICIRRUS_CAVE_TM_ICE_BEAM
	