	const_def 2 ; object constants
	const VIRBANKSTATEXPHOUSE_COOLTRAINER_M

VirbankStatExpHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
VirbankStatExpHousePharmacistScript:
	end

VirbankStatExpHouseBookshelf:
	jumpstd picturebookshelf

VirbankStatExpHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VIRBANK_CITY, 2
	warp_event  3,  7, VIRBANK_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, VirbankHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, VirbankHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankHousePharmacistScript, -1
	