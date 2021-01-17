	const_def 2 ; object constants
	const ASPERTIAMOVEDELETERHOUSE_SUPER_NERD

AspertiaMoveDeleterHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoveDeleter:
	faceplayer
	opentext
	special MoveDeletion
	waitbutton
	closetext
	end

AspertiaMoveDeleterHouseBookshelf:
	jumpstd difficultbookshelf

AspertiaMoveDeleterHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ASPERTIA_CITY, 6
	warp_event  3,  7, ASPERTIA_CITY, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AspertiaMoveDeleterHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, AspertiaMoveDeleterHouseBookshelf

	db 1 ; object events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveDeleter, -1
