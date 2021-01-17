	const_def 2 ; object constants
	const ACCUMULATRADEHOUSE_TWIN

AccumulaTradeHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AccumulaTradeHouseScript:
	faceplayer
	opentext
	trade NPC_TRADE_ACCUMULA
	waitbutton
	closetext
	end

AccumulaTradeHouseBookshelfScript:
	jumpstd magazinebookshelf

AccumulaTradeHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ACCUMULA_TOWN, 6
	warp_event  3,  7, ACCUMULA_TOWN, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AccumulaTradeHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, AccumulaTradeHouseBookshelfScript

	db 1 ; object events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AccumulaTradeHouseScript, -1
	