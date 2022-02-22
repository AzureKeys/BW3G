	const_def 2 ; object constants

DragonspiralTower6F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTower6F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9, 17, DRAGONSPIRAL_TOWER_5F, 3
	warp_event  9, 16, DRAGONSPIRAL_TOWER_5F, 4
	; warp_event  3, 16, DRAGONSPIRAL_TOWER_ROOF, 1
	; warp_event  3, 17, DRAGONSPIRAL_TOWER_ROOF, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	