	const_def 2 ; object constants

MistraltonCave2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MistraltonCave2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  3, 15, MISTRALTON_CAVE_1F, 2
	warp_event 15,  7, MISTRALTON_CAVE_3F, 1
	warp_event  9, 18, MISTRALTON_CAVE_2F, 1
	warp_event 19, 10, MISTRALTON_CAVE_2F, 1
	warp_event 11, 12, MISTRALTON_CAVE_2F, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	