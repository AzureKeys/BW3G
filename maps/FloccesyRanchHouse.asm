	const_def 2 ; object constants
	const FLOCCESYRANCHHOUSE_POKEFAN_M
	const FLOCCESYRANCHHOUSE_POKEFAN_F

FloccesyRanchHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PokefanM_DairyFarmer:
	faceplayer
	opentext
	checkflag ENGINE_GOT_MILK_TODAY
	iftrue FarmerMScript_Milking
	writetext FarmerMText_BuyMilk
	special PlaceMoneyTopRight
	loadmenu FloccesyRanchMilkMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .one
	ifequal 2, .six
	jump FarmerMScript_NoSale
	
.one
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, FarmerMScript_NoMoney
	giveitem MOOMOO_MILK
	iffalse FarmerMScript_NoRoom
	takemoney YOUR_MONEY, 500
	jump .bought
	
.six
	checkmoney YOUR_MONEY, 3000
	ifequal HAVE_LESS, FarmerMScript_NoMoney
	giveitem MOOMOO_MILK, 6
	iffalse FarmerMScript_NoRoom
	takemoney YOUR_MONEY, 3000
	
.bought
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_GOT_MILK_TODAY
	writetext FarmerMText_GotMilk
	buttonsound
	itemnotify
	closetext
	end

FloccesyRanchMilkMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "ONE  500@"
	db "SIX 3000@"
	db "CANCEL@"

FarmerMScript_NoMoney:
	writetext FarmerMText_NoMoney
	waitbutton
	closetext
	end

FarmerMScript_NoRoom:
	writetext FarmerMText_NoRoom
	waitbutton
	closetext
	end

FarmerMScript_NoSale:
	writetext FarmerMText_NoSale
	waitbutton
	closetext
	end

FarmerMScript_Milking:
	writetext FarmerMText_Milking
	waitbutton
	closetext
	end

PokefanF_SnoreFarmer:
	jumptextfaceplayer FarmerFText

FarmhouseBookshelf:
	jumpstd picturebookshelf

FarmerMText_BuyMilk:
	text "How'd you like my"
	line "MOOMOO MILK?"

	para "It's my pride and"
	line "joy, there."

	para "Give it to #MON"
	line "to restore HP!"

	para "I'll give it to ya"
	line "fer just ¥500."
	
	para "You want jus' one,"
	line "or a case o' six?"
	done

FarmerMText_GotMilk:
	text "Here ya go!"
	line "Drink up'n enjoy!"
	done

FarmerMText_NoMoney:
	text "Sorry, there."
	line "No cash, no sale!"
	done

FarmerMText_NoRoom:
	text "I reckon yer"
	line "PACK's full."
	done

FarmerMText_NoSale:
	text "You don't want it?"
	line "Come again, hear?"
	done

FarmerMText_Milking:
	text "I best go do my"
	line "milkin'."
	done

FarmerFText:
	text "Our milk goes out"
	line "all over UNOVA."
	done

FloccesyRanchHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, FLOCCESY_RANCH, 1
	warp_event  3,  7, FLOCCESY_RANCH, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, FarmhouseBookshelf
	bg_event  1,  1, BGEVENT_READ, FarmhouseBookshelf

	db 2 ; object events
	object_event  3,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokefanM_DairyFarmer, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PokefanF_SnoreFarmer, -1
