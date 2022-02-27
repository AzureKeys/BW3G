	const_def 2 ; object constants

DraydensHouse1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DraydensHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  9, OPELUCID_CITY, 11
	warp_event  5,  9, OPELUCID_CITY, 11
	warp_event  5,  0, DRAYDENS_HOUSE_2F, 1
	
	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	