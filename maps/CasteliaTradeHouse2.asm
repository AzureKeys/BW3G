	const_def 2 ; object constants
	const CASTELIATRADEHOUSE2_COOLTRAINER_F

CasteliaTradeHouse2_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaTradeHouse2Script:
	faceplayer
	opentext
	trade NPC_TRADE_CASTELIA_2
	waitbutton
	closetext
	end

CasteliaTradeHouse2BookshelfScript:
	jumpstd magazinebookshelf

CasteliaTradeHouse2Stairs:
	jumpstd apartmentstairs

CasteliaTradeHouse2_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  5, CASTELIA_CITY_NORTH, 12
	warp_event  0,  6, CASTELIA_CITY_NORTH, 13

	db 0 ; coord events

	db 2 ; bg events
	bg_event  1,  0, BGEVENT_READ, CasteliaTradeHouse2Stairs
	bg_event  6,  1, BGEVENT_READ, CasteliaTradeHouse2BookshelfScript

	db 1 ; object events
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaTradeHouse2Script, -1
	