	const_def 2 ; object constants
	const STRIATONTRADEHOUSE_POKEFAN_F

StriatonTradeHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

StriatonTradeHouseScript:
	faceplayer
	opentext
	trade NPC_TRADE_STRIATON
	waitbutton
	closetext
	end

StriatonTradeHouseBookshelfScript:
	jumpstd magazinebookshelf

StriatonTradeHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, STRIATON_CITY, 2
	warp_event  3,  7, STRIATON_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, StriatonTradeHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, StriatonTradeHouseBookshelfScript

	db 1 ; object events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StriatonTradeHouseScript, -1
	