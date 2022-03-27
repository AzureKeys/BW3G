	const_def 2 ; object constants
	const DRAGONSPIRALTOWER5F_PP_MAX
	const DRAGONSPIRALTOWER5F_MAX_REVIVE
	const DRAGONSPIRALTOWER5F_NUGGET

DragonspiralTower5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
DragonspiralPPMax:
	itemball PP_MAX
	
DragonspiralMaxRevive:
	itemball MAX_REVIVE
	
DragonspiralNugget:
	itemball NUGGET

DragonspiralTower5F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  8, 19, DRAGONSPIRAL_TOWER_4F, 3
	warp_event  9, 19, DRAGONSPIRAL_TOWER_4F, 4
	warp_event  8,  0, DRAGONSPIRAL_TOWER_6F, 1
	warp_event  9,  0, DRAGONSPIRAL_TOWER_6F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 3 ; object events
	object_event 16,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralPPMax, EVENT_DRAGONSPIRAL_PP_MAX
	object_event 10,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralMaxRevive, EVENT_DRAGONSPIRAL_MAX_REVIVE
	object_event  3, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralNugget, EVENT_DRAGONSPIRAL_NUGGET
	