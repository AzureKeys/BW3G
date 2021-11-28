	const_def 2 ; object constants
	const OPELUCIDCURIOSITYSHOP_MAN

OpelucidCuriosityShop_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CuriosityShopManScript:
	faceplayer
	opentext
	writetext CuriosityShopIntroText
	buttonsound
	checkcode VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday
;Sunday
	writetext CuriosityShopSundayText
	buttonsound
	writetext CuriosityShopAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .no_money
	giveitem SPELL_TAG
	iffalse .no_room
	jump .sale
.Monday
	writetext CuriosityShopMondayText
	buttonsound
	writetext CuriosityShopAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .no_money
	giveitem SILVERPOWDER
	iffalse .no_room
	jump .sale
.Tuesday
	writetext CuriosityShopTuesdayText
	buttonsound
	writetext CuriosityShopAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .no_money
	giveitem MAGNET
	iffalse .no_room
	jump .sale
.Wednesday
	writetext CuriosityShopWednesdayText
	buttonsound
	writetext CuriosityShopAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .no_money
	giveitem SOFT_SAND
	iffalse .no_room
	jump .sale
.Thursday
	writetext CuriosityShopThursdayText
	buttonsound
	writetext CuriosityShopAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .no_money
	giveitem POISON_BARB
	iffalse .no_room
	jump .sale
.Friday
	writetext CuriosityShopFridayText
	buttonsound
	writetext CuriosityShopAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .no_money
	giveitem SHARP_BEAK
	iffalse .no_room
	jump .sale
.Saturday
	writetext CuriosityShopSaturdayText
	buttonsound
	writetext CuriosityShopAskText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 10000
	ifequal HAVE_LESS, .no_money
	giveitem TWISTEDSPOON
	iffalse .no_room
; fallthrough	
.sale
	takemoney YOUR_MONEY, 10000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext CuriosityShopThanksText
	buttonsound
	itemnotify
	closetext
	end

.no_sale
	writetext CuriosityShopNoSaleText
	waitbutton
	closetext
	end

.no_money
	writetext CuriosityShopNoMoneyText
	waitbutton
	closetext
	end

.no_room
	writetext CuriosityShopNoRoomText
	waitbutton
	closetext
	end

CuriosityShopIntroText:
	text "Hey, welcome to"
	line "the OPELUCID CITY"
	cont "CURIOSITY SHOP."
	
	para "We got all kinds"
	line "of rare bargains!"
	done

CuriosityShopSundayText:
	text "Let's see…"
	line "Today's bargain is"
	
	para "this mysterious"
	line "SPELL TAG."
	done

CuriosityShopMondayText:
	text "Let's see…"
	line "Today's bargain is"
	
	para "this shiny SILVER"
	line "POWDER."
	done

CuriosityShopTuesdayText:
	text "Let's see…"
	line "Today's bargain is"
	
	para "this powerful"
	line "MAGNET."
	done

CuriosityShopWednesdayText:
	text "Let's see…"
	line "Today's bargain is"
	
	para "this pile of"
	line "SOFT SAND."
	done

CuriosityShopThursdayText:
	text "Let's see…"
	line "Today's bargain is"
	
	para "this deadly"
	line "POISON BARB."
	done

CuriosityShopFridayText:
	text "Let's see…"
	line "Today's bargain is"
	
	para "this razor SHARP"
	line "BEAK."
	done

CuriosityShopSaturdayText:
	text "Let's see…"
	line "Today's bargain is"
	
	para "this strangely"
	line "TWISTED SPOON."
	done

CuriosityShopThanksText:
	text "Hey thanks! Come"
	line "back another day,"
	
	para "we may have a"
	line "different bargain."
	done

CuriosityShopAskText:
	text "It can be yours"
	line "for the low price"
	cont "of just ¥10000."
	
	para "How 'bout it?"
	done

CuriosityShopNoSaleText:
	text "Ah, that's too"
	line "bad. Come back if"
	cont "you change your"
	cont "mind."
	done

CuriosityShopNoMoneyText:
	text "Hey, what are you"
	line "tryin' to pull?"
	
	para "You don't have the"
	cont "money for that!"
	done

CuriosityShopNoRoomText:
	text "Uh-oh, looks like"
	line "you don't have any"
	cont "room for it."
	done

OpelucidCuriosityShop_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, OPELUCID_CITY, 9
	warp_event  4,  7, OPELUCID_CITY, 9

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CuriosityShopManScript, -1
	