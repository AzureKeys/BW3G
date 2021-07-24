	const_def 2 ; object constants

MistraltonCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MistraltonCave1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  3,  3, R_6, 6
	warp_event 13,  9, MISTRALTON_CAVE_2F, 1
	warp_event  7, 12, MISTRALTON_CAVE_1F, 1
	warp_event 17, 18, MISTRALTON_CAVE_1F, 1
	warp_event  9,  4, MISTRALTON_CAVE_1F, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	