	const_def 2 ; object constants
	const CELESTIALTOWERROOF_TM_SHADOW_BALL

CelestialTowerRoof_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CelestialTowerRoofTMShadowBall:
	itemball TM_SHADOW_BALL

CelestialTowerRoof_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 15,  6, CELESTIAL_TOWER, 11
	warp_event 15,  7, CELESTIAL_TOWER, 12

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  8,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, CelestialTowerRoofTMShadowBall, EVENT_CELESTIAL_TM_SHADOW_BALL
	