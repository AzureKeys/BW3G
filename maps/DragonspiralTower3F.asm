	const_def 2 ; object constants

DragonspiralTower3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTower3F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 12, 14, DRAGONSPIRAL_TOWER_2F, 3
	warp_event 12, 15, DRAGONSPIRAL_TOWER_2F, 4
	warp_event  2,  2, DRAGONSPIRAL_TOWER_4F, 1
	warp_event  2,  3, DRAGONSPIRAL_TOWER_4F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	