	const_def 2 ; object constants
	const NIMBASANAMERATER_NAME_RATER

NimbasaNameRater_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

NimbasaNameRaterBookshelf:
	jumpstd difficultbookshelf

NimbasaNameRaterRadio:
	;jumpstd radio2
	end

NimbasaNameRater_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NIMBASA_CITY, 13
	warp_event  3,  7, NIMBASA_CITY, 13

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, NimbasaNameRaterBookshelf
	bg_event  1,  1, BGEVENT_READ, NimbasaNameRaterBookshelf
	bg_event  7,  1, BGEVENT_READ, NimbasaNameRaterRadio

	db 1 ; object events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NimbasaNameRater, -1
