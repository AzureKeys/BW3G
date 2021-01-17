	const_def 2 ; object constants
	const R7TRADEHOUSE_FISHER

Rt7TradeHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R7TradeHouseScript:
	faceplayer
	opentext
	trade NPC_TRADE_R_7
	waitbutton
	closetext
	end

R7TradeHouseBookshelfScript:
	jumpstd magazinebookshelf

Rt7TradeHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, R_7_NORTH, 1
	warp_event  3,  7, R_7_NORTH, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, R7TradeHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, R7TradeHouseBookshelfScript

	db 1 ; object events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, R7TradeHouseScript, -1
	