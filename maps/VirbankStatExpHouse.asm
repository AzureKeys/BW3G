	const_def 2 ; object constants
	const VIRBANKSTATEXPHOUSE_COOLTRAINER_M

VirbankStatExpHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
VirbankStatExpHouseCooltrainerMScript:
	end

VirbankStatExpHouseBookshelf:
	jumpstd picturebookshelf

VirbankStatExpHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VIRBANK_CITY, 6
	warp_event  3,  7, VIRBANK_CITY, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, VirbankStatExpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, VirbankStatExpHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankStatExpHouseCooltrainerMScript, -1
	