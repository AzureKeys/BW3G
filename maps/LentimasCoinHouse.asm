	const_def 2 ; object constants
	const LENTIMASCOINHOUSE_GRAMPS

LentimasCoinHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasCoinHouseGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_AMULET_COIN
	iftrue .alreadybought
	writetext LentimasCoinHouseAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse LentimasCoinHouse_NoSale
	checkmoney YOUR_MONEY, 1000
	ifequal HAVE_LESS, LentimasCoinHouse_NoMoney
	writetext LentimasCoinHouseGiveText
	buttonsound
	verbosegiveitem AMULET_COIN
	iffalse .noroom
	setevent EVENT_GOT_AMULET_COIN
	takemoney YOUR_MONEY, 1000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
.alreadybought
	writetext LentimasCoinHouseBoughtText
	waitbutton
.noroom
	closetext
	end
	
LentimasCoinHouse_NoSale:
	writetext LentimasCoinHouseNoSaleText
	waitbutton
	closetext
	end
	
LentimasCoinHouse_NoMoney:
	writetext LentimasCoinHouseNoMoneyText
	waitbutton
	closetext
	end

LentimasCoinHouseAskText:
	text "Please, young"
	line "trainer, could you"

	para "spare ¥1000 for an"
	line "old man?"
	done

LentimasCoinHouseNoSaleText:
	text "Ah, that's too"
	line "bad…"
	done

LentimasCoinHouseNoMoneyText:
	text "Oh dear, it looks"
	line "like money's tight"
	cont "for you too."
	done

LentimasCoinHouseGiveText:
	text "Oh, thank you!"
	line "I must thank you"
	cont "somehow."
	
	para "Here, take this"
	line "coin with you."
	
	para "Maybe it will"
	line "bring you luck!"
	done

LentimasCoinHouseBoughtText:
	text "Thank you for"
	line "your generosity,"
	cont "young trainer."
	
	para "May luck smile on"
	line "you!"
	done

LentimasCoinHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, LENTIMAS_TOWN, 1
	warp_event  4,  7, LENTIMAS_TOWN, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasCoinHouseGrampsScript, -1
	