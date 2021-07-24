	const_def 2 ; object constants

MistraltonCave3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MistraltonCave3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 15, 23, MISTRALTON_CAVE_2F, 2
	warp_event 15, 12, MISTRALTON_CAVE_3F, 1
	warp_event 11, 18, MISTRALTON_CAVE_3F, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
	