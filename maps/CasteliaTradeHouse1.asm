	const_def 2 ; object constants
	const CASTELIATRADEHOUSE1_COOLTRAINER_F

CasteliaTradeHouse1_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaTradeHouse1Script:
	faceplayer
	opentext
	trade NPC_TRADE_CASTELIA_1
	waitbutton
	closetext
	end

CasteliaTradeHouse1BookshelfScript:
	jumpstd magazinebookshelf

CasteliaTradeHouse1Stairs:
	jumpstd apartmentstairs

CasteliaTradeHouse1_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  5, CASTELIA_CITY_NORTH, 10
	warp_event  7,  6, CASTELIA_CITY_NORTH, 11

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2,  1, BGEVENT_READ, CasteliaTradeHouse1BookshelfScript
	bg_event  7,  0, BGEVENT_READ, CasteliaTradeHouse1Stairs

	db 1 ; object events
	object_event  1,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaTradeHouse1Script, -1
	