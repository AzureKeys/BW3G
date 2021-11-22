	const_def 2 ; object constants
	const HUMILAUTRADEHOUSE_YOUNGSTER

HumilauTradeHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HumilauTradeHouseScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .nopoke
	trade NPC_TRADE_HUMILAU
	waitbutton
	closetext
	end
	
.nopoke
	writetext HumilauTradeHouseNoPokeText
	waitbutton
	closetext
	end

HumilauTradeHouseBookshelfScript:
	jumpstd magazinebookshelf

HumilauTradeHouseRadioScript:
	opentext
	writetext HumilauTradeHouseRadioText4
	pause 45
	closetext
	end

HumilauTradeHouseNoPokeText:
	text "Hi, I'm looking to"
	line "trade #MON."
	
	para "Oh, you don't have"
	line "any #MON?"
	cont "That's too bad."
	done

HumilauTradeHouseRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

HumilauTradeHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, HUMILAU_CITY, 7
	warp_event  3,  7, HUMILAU_CITY, 7

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, HumilauTradeHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, HumilauTradeHouseBookshelfScript
	bg_event  7,  1, BGEVENT_READ, HumilauTradeHouseRadioScript

	db 1 ; object events
	object_event  2,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, HumilauTradeHouseScript, -1
	