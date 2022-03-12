	const_def 2 ; object constants

DragonspiralTowerRoof_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTowerRoof_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6, 16, DRAGONSPIRAL_TOWER_6F, 3
	warp_event  6, 17, DRAGONSPIRAL_TOWER_6F, 4

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	