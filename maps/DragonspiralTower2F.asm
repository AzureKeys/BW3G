	const_def 2 ; object constants

DragonspiralTower2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTower2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  8, 21, DRAGONSPIRAL_TOWER_1F, 3
	warp_event  9, 21, DRAGONSPIRAL_TOWER_1F, 4
	warp_event  2,  8, DRAGONSPIRAL_TOWER_3F, 1
	warp_event  2,  9, DRAGONSPIRAL_TOWER_3F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	