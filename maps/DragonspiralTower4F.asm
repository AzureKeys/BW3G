	const_def 2 ; object constants

DragonspiralTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTower4F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 15,  8, DRAGONSPIRAL_TOWER_3F, 3
	warp_event 15,  9, DRAGONSPIRAL_TOWER_3F, 4
	warp_event  6,  0, DRAGONSPIRAL_TOWER_5F, 1
	warp_event  7,  0, DRAGONSPIRAL_TOWER_5F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	