	const_def 2 ; object constants

DragonspiralTower5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTower5F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  8, 19, DRAGONSPIRAL_TOWER_4F, 3
	warp_event  9, 19, DRAGONSPIRAL_TOWER_4F, 4
	warp_event  8,  0, DRAGONSPIRAL_TOWER_6F, 1
	warp_event  9,  0, DRAGONSPIRAL_TOWER_6F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	