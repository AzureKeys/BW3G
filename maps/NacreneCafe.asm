	const_def 2 ; object constants
	const NACRENECAFE_CLERK
	const NACRENECAFE_POKEFAN_F
	const NACRENECAFE_SUPER_NERD

NacreneCafe_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NacreneCafeClerkScript:
	opentext
	writetext NacreneCafeAskDrinkText
	loadmenu NacreneCafeMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
.NoDrinkSelected:
	writetext NacreneCafeComeAgainText
	waitbutton
	closetext
	end
	
.FreshWater:
	writetext NacreneCafeAskWaterText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoDrinkSelected
	checkmoney YOUR_MONEY, 200
	ifequal HAVE_LESS, .NoMoney
	giveitem FRESH_WATER
	iffalse .NoRoom
	takemoney YOUR_MONEY, 200
	jump .GotDrink
	
.SodaPop:
	writetext NacreneCafeAskSodaText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoDrinkSelected
	checkmoney YOUR_MONEY, 300
	ifequal HAVE_LESS, .NoMoney
	giveitem SODA_POP
	iffalse .NoRoom
	takemoney YOUR_MONEY, 300
	jump .GotDrink
	
.Lemonade:
	writetext NacreneCafeAskLemonadeText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoDrinkSelected
	checkmoney YOUR_MONEY, 350
	ifequal HAVE_LESS, .NoMoney
	giveitem LEMONADE
	iffalse .NoRoom
	takemoney YOUR_MONEY, 350
	; fallthrough
.GotDrink
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext NacreneCafeGiveDrinkText
	buttonsound
	itemnotify
	closetext
	end
	
.NoMoney
	writetext NacreneCafeNoMoneyText
	waitbutton
	closetext
	end
	
.NoRoom
	writetext NacreneCafeNoRoomText
	waitbutton
	closetext
	end

NacreneCafeMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 1, 18, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER ¥200@"
	db "SODA POP    ¥300@"
	db "LEMONADE    ¥350@"
	db "CANCEL@"

NacreneCafePokefanFScript:
	jumptextfaceplayer NacreneCafePokefanFText

NacreneCafeSuperNerdScript:
	jumptextfaceplayer NacreneCafeSuperNerdText

NacreneCafeAskDrinkText:
	text "Hi, welcome to"
	line "NACRENE CAFE!"

	para "Would you like to"
	line "buy a drink?"
	done

NacreneCafeAskWaterText:
	text "Okay, one FRESH"
	line "WATER. That'll be"
	cont "¥200."

	para "Is that okay?"
	done

NacreneCafeAskSodaText:
	text "Okay, one SODA"
	line "POP. That'll be"
	cont "¥300."

	para "Is that okay?"
	done

NacreneCafeAskLemonadeText:
	text "Okay, one"
	line "LEMONADE. That'll"
	cont "be ¥350."

	para "Is that okay?"
	done

NacreneCafeGiveDrinkText:
	text "Thanks! Enjoy"
	line "your drink!"
	done

NacreneCafeComeAgainText:
	text "Okay, come again!"
	done

NacreneCafeNoMoneyText:
	text "It looks like you"
	line "don't have enough"
	cont "money for that."
	done

NacreneCafeNoRoomText:
	text "You have no room"
	line "for this!"
	done

NacreneCafePokefanFText:
	text "The CAFE offers"
	line "different kinds"
	cont "of drinks."

	para "Even #MON love"
	line "them!"
	done

NacreneCafeSuperNerdText:
	text "NACRENE CITY may"
	line "not be as big as"

	para "some of the other"
	line "cities in UNOVA,"

	para "but we more than"
	line "make up for it in"
	cont "atmosphere!"
	done

NacreneCafe_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NACRENE_CITY, 6
	warp_event  3,  7, NACRENE_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  7,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NacreneCafeClerkScript, -1
	object_event  4,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NacreneCafePokefanFScript, -1
	object_event  6,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NacreneCafeSuperNerdScript, -1
