	const_def 2 ; object constants

IcirrusCitySouth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcirrusCitySouth_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 13,  3, ICIRRUS_CITY_SOUTH, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	