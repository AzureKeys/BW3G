	const_def 2 ; object constants
	const SHOPPINGMALLNINE_CLERK_1
	const SHOPPINGMALLNINE_CLERK_2
	const SHOPPINGMALLNINE_CLERK_3
	const SHOPPINGMALLNINE_CLERK_4
	const SHOPPINGMALLNINE_CLERK_5
	const SHOPPINGMALLNINE_RECEPTIONIST

ShoppingMallNine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ShoppingMallNineReceptionistScript:
	jumptext MallReceptionistText

ShoppingMallNineClerk1Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MALL_1
	closetext
	end

ShoppingMallNineClerk2Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MALL_2
	closetext
	end

ShoppingMallNineClerk3Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MALL_3
	closetext
	end

ShoppingMallNineClerk4Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MALL_4
	closetext
	end

ShoppingMallNineClerk5Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MALL_5
	closetext
	end
	
MallVendingMachine:
	opentext
	writetext MallVendingText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
	closetext
	end

.FreshWater:
	checkmoney YOUR_MONEY, 200
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, 200
	itemtotext FRESH_WATER, MEM_BUFFER_0
	jump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, 300
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, 300
	itemtotext SODA_POP, MEM_BUFFER_0
	jump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, 350
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, 350
	itemtotext LEMONADE, MEM_BUFFER_0
	jump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext MallVendingClangText
	buttonsound
	itemnotify
	jump .Start

.NotEnoughMoney:
	writetext MallVendingNoMoneyText
	waitbutton
	jump .Start

.NotEnoughSpace:
	writetext MallVendingNoSpaceText
	waitbutton
	jump .Start

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER  ¥200@"
	db "SODA POP     ¥300@"
	db "LEMONADE     ¥350@"
	db "CANCEL@"
	
MallVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

MallVendingClangText:
	text "Clang! A can of"
	line "@"
	text_ram wStringBuffer3
	text_start
	cont "popped out!"
	done

MallVendingNoMoneyText:
	text "Oops, not enough"
	line "money."
	done

MallVendingNoSpaceText:
	text "There's no more"
	line "room for stuff."
	done

MallReceptionistText:
	text "Hi, welcome to"
	line "SHOPPING MALL"
	cont "NINE!"
	
	para "General wares are"
	line "on the 1st level."
	
	para "#BALLs and TMs"
	line "are on the 2nd"
	cont "level."
	
	para "Supplements and"
	line "stones can be"
	cont "purchased on the"
	cont "3rd level."
	
	para "Please enjoy your"
	line "stay!"
	done

ShoppingMallNine_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  8, 27, R_9, 6
	warp_event  9, 27, R_9, 7

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14,  1, BGEVENT_UP, MallVendingMachine
	bg_event 15,  1, BGEVENT_UP, MallVendingMachine

	db 6 ; object events
	object_event  1, 14, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShoppingMallNineClerk1Script, -1
	object_event  4,  8, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, ShoppingMallNineClerk2Script, -1
	object_event 13,  8, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ShoppingMallNineClerk3Script, -1
	object_event  1,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, ShoppingMallNineClerk4Script, -1
	object_event  3,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ShoppingMallNineClerk5Script, -1
	object_event  8, 21, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShoppingMallNineReceptionistScript, -1
	