	const_def 2 ; object constants
	const DRAGONSPIRALTOWER4F_DRAGON_SCALE

DragonspiralTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
DragonspiralDragonScale:
	itemball DRAGON_SCALE

DragonspiralTower4F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 15,  8, DRAGONSPIRAL_TOWER_3F, 3
	warp_event 15,  9, DRAGONSPIRAL_TOWER_3F, 4
	warp_event  6,  0, DRAGONSPIRAL_TOWER_5F, 1
	warp_event  7,  0, DRAGONSPIRAL_TOWER_5F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event 12,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralDragonScale, EVENT_DRAGONSPIRAL_DRAGON_SCALE
	