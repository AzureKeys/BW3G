	const_def 2 ; object constants
	const FLOCCESYTRADEHOUSE_GIRL

FloccesyTradeHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

FloccesyTradeHouseScript:
	faceplayer
	opentext
	trade NPC_TRADE_FLOCCESY
	waitbutton
	closetext
	end

FloccesyTradeHouseBookshelfScript:
	jumpstd magazinebookshelf

FloccesyTradeHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, FLOCCESY_TOWN, 3
	warp_event  3,  7, FLOCCESY_TOWN, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, FloccesyTradeHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, FloccesyTradeHouseBookshelfScript

	db 1 ; object events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FloccesyTradeHouseScript, -1
	