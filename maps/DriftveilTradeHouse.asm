	const_def 2 ; object constants
	const DRIFTVEILTRADEHOUSE_BUG_CATCHER

DriftveilTradeHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DriftveilTradeHouseScript:
	faceplayer
	opentext
	trade NPC_TRADE_DRIFTVEIL
	waitbutton
	closetext
	end

DriftveilTradeHouseBookshelfScript:
	jumpstd magazinebookshelf

DriftveilTradeHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, DRIFTVEIL_CITY, 12
	warp_event  3,  7, DRIFTVEIL_CITY, 12

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, DriftveilTradeHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, DriftveilTradeHouseBookshelfScript

	db 1 ; object events
	object_event  2,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DriftveilTradeHouseScript, -1
	