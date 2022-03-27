	const_def 2 ; object constants
	const DRAGONSPIRALTOWER6F_MAX_ELIXER

DragonspiralTower6F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
DragonspiralMaxElixer:
	itemball MAX_ELIXER
	
DragonspiralRedShard:
	hiddenitem RED_SHARD, EVENT_DRAGONSPIRAL_RED_SHARD
	
DragonspiralBlueShard:
	hiddenitem BLUE_SHARD, EVENT_DRAGONSPIRAL_BLUE_SHARD
	
DragonspiralYellowShard:
	hiddenitem YELLOW_SHARD, EVENT_DRAGONSPIRAL_YELLOW_SHARD
	
DragonspiralGreenShard:
	hiddenitem GREEN_SHARD, EVENT_DRAGONSPIRAL_GREEN_SHARD

DragonspiralTower6F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9, 17, DRAGONSPIRAL_TOWER_5F, 3
	warp_event  9, 16, DRAGONSPIRAL_TOWER_5F, 4
	warp_event  3, 16, DRAGONSPIRAL_TOWER_ROOF, 1
	warp_event  3, 17, DRAGONSPIRAL_TOWER_ROOF, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event 10, 12, BGEVENT_ITEM, DragonspiralRedShard
	bg_event 15, 10, BGEVENT_ITEM, DragonspiralBlueShard
	bg_event 10,  8, BGEVENT_ITEM, DragonspiralYellowShard
	bg_event 15,  6, BGEVENT_ITEM, DragonspiralGreenShard
	
	db 1 ; object events
	object_event 12,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralMaxElixer, EVENT_DRAGONSPIRAL_MAX_ELIXER
	