	const_def 2 ; object constants
	const LENTIMASCLAWHOUSE_GRAMPS

LentimasClawHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasClawHouseGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue .alreadybought
	writetext LentimasClawHouseAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse LentimasClawHouse_NoSale
	checkmoney YOUR_MONEY, 1000
	ifequal HAVE_LESS, LentimasClawHouse_NoMoney
	writetext LentimasClawHouseGiveText
	buttonsound
	verbosegiveitem QUICK_CLAW
	iffalse .noroom
	setevent EVENT_GOT_QUICK_CLAW
	takemoney YOUR_MONEY, 1000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
.alreadybought
	writetext LentimasClawHouseBoughtText
	waitbutton
.noroom
	closetext
	end
	
LentimasClawHouse_NoSale:
	writetext LentimasClawHouseNoSaleText
	waitbutton
	closetext
	end
	
LentimasClawHouse_NoMoney:
	writetext LentimasClawHouseNoMoneyText
	waitbutton
	closetext
	end

LentimasClawHouseAskText:
	text "Please, young"
	line "trainer, could you"

	para "spare ¥1000 for an"
	line "old man?"
	done

LentimasClawHouseNoSaleText:
	text "Ah, that's too"
	line "bad…"
	done

LentimasClawHouseNoMoneyText:
	text "Oh dear, it looks"
	line "like money's tight"
	cont "for you too."
	done

LentimasClawHouseGiveText:
	text "Oh, thank you!"
	line "Here, take this"
	cont "as thanks."
	done

LentimasClawHouseBoughtText:
	text "Give that claw to"
	line "your #MON."

	para "Sometimes, it may"
	line "move first in"
	cont "battle."
	done

LentimasClawHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, LENTIMAS_TOWN, 1
	warp_event  4,  7, LENTIMAS_TOWN, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasClawHouseGrampsScript, -1
	