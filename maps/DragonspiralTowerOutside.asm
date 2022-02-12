	const_def 2 ; object constants

DragonspiralTowerOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DragonspiralTowerOutside_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  6, 18, ICIRRUS_CITY_NORTH, 2
	warp_event  7, 18, ICIRRUS_CITY_NORTH, 3
	warp_event  6,  5, DRAGONSPIRAL_TOWER_1F, 1
	warp_event  7,  5, DRAGONSPIRAL_TOWER_1F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	