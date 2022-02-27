	const_def 2 ; object constants

DraydensHouse2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DraydensHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  4,  0, DRAYDENS_HOUSE_1F, 3
	
	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	