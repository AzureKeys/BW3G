	const_def 2 ; object constants
	const R7HOUSE_FISHER

Rt7House_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R7HouseGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_R_7_RAZOR_CLAW
	iftrue .alreadybought
	writetext R7HouseAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse R7House_NoSale
	checkmoney YOUR_MONEY, 5000
	ifequal HAVE_LESS, R7House_NoMoney
	verbosegiveitem RAZOR_CLAW
	iffalse .noroom
	setevent EVENT_GOT_R_7_RAZOR_CLAW
	takemoney YOUR_MONEY, 5000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
.alreadybought
	writetext R7HouseBoughtText
	waitbutton
.noroom
	closetext
	end
	
R7House_NoSale:
	writetext R7HouseNoSaleText
	waitbutton
	closetext
	end
	
R7House_NoMoney:
	writetext R7HouseNoMoneyText
	waitbutton
	closetext
	end

R7HouseBookshelf:
	jumpstd picturebookshelf

R7HouseAskText:
	text "Hey, you're a"
	line "trainer, right?"
	
	para "Wanna buy this"
	line "cool CLAW I found?"
	
	para "I'm sure it'll"
	line "be useful somehow."
	
	para "I'll give it to"
	line "you for ¥5000,"
	cont "how bout it?"
	done

R7HouseNoSaleText:
	text "Aw, c'mon, you're"
	line "missing out on a"
	cont "great deal!"
	done

R7HouseNoMoneyText:
	text "Hey! You don't"
	line "even have the"
	cont "money!"
	done

R7HouseBoughtText:
	text "Hey thanks! Hope"
	line "you get some use"
	cont "out of it!"
	done

Rt7House_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, R_7, 1
	warp_event  3,  7, R_7, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, R7HouseBookshelf
	bg_event  1,  1, BGEVENT_READ, R7HouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, R7HouseGuyScript, -1
	