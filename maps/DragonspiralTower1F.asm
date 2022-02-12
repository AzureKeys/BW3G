	const_def 2 ; object constants

DragonspiralTower1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTower1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 17, DRAGONSPIRAL_TOWER_OUTSIDE, 3
	warp_event  3, 17, DRAGONSPIRAL_TOWER_OUTSIDE, 4

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	