	const_def 2 ; object constants

MembersRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
MembersRoomVendingMachine:
	opentext
	writetext MembersRoomVendingText
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
	writetext MembersRoomVendingClangText
	buttonsound
	itemnotify
	jump .Start

.NotEnoughMoney:
	writetext MembersRoomVendingNoMoneyText
	waitbutton
	jump .Start

.NotEnoughSpace:
	writetext MembersRoomVendingNoSpaceText
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
	
MembersRoomVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

MembersRoomVendingClangText:
	text "Clang! A can of"
	line "@"
	text_ram wStringBuffer3
	text_start
	cont "popped out!"
	done

MembersRoomVendingNoMoneyText:
	text "Oops, not enough"
	line "money."
	done

MembersRoomVendingNoSpaceText:
	text "There's no more"
	line "room for stuff."
	done

MembersRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6,  7, SHOPPING_MALL_NINE, 3
	warp_event  7,  7, SHOPPING_MALL_NINE, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  8,  1, BGEVENT_UP, MembersRoomVendingMachine
	bg_event  9,  1, BGEVENT_UP, MembersRoomVendingMachine

	db 0 ; object events
	