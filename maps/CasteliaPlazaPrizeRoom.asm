	const_def 2 ; object constants
	const CASTELIAPLAZAPRIZEROOM_RECEPTIONIST1
	const CASTELIAPLAZAPRIZEROOM_RECEPTIONIST2
	const CASTELIAPLAZAPRIZEROOM_RANGER_F

CasteliaPlazaPrizeRoom_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CasteliaPlazaPrizeRoomVendor1Script:
	faceplayer
	opentext
	writetext CasteliaPlazaPrizeRoomVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CasteliaPlazaPrizeRoom_NoCoinCaseScript
	writetext CasteliaPlazaPrizeRoomVendorWhichPrizeText
	buttonsound
CasteliaPlazaPrizeRoomVendor1_LoopScript:
	special DisplayCoinCaseBalance
	loadmenu CasteliaPlazaPrizeRoomVendor1MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Clefairy
	ifequal 2, .Beldum
	ifequal 3, .Pinsir
	jump CasteliaPlazaPrizeRoom_CancelPurchaseScript

.Clefairy:
	checkcoins 300
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NotEnoughCoinsScript
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CasteliaPlazaPrizeRoom_NoRoomForPrizeScript
	pokenamemem CLEFAIRY, MEM_BUFFER_0
	scall CasteliaPlazaPrizeRoom_ConfirmPurchaseScript
	iffalse CasteliaPlazaPrizeRoom_CancelPurchaseScript
	writebyte CLEFAIRY
	special GameCornerPrizeMonCheckDex
	givepoke CLEFAIRY, 15
	takecoins 300
	jump CasteliaPlazaPrizeRoomVendor1_FinishScript

.Beldum:
	checkcoins 1000
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NotEnoughCoinsScript
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CasteliaPlazaPrizeRoom_NoRoomForPrizeScript
	pokenamemem BELDUM, MEM_BUFFER_0
	scall CasteliaPlazaPrizeRoom_ConfirmPurchaseScript
	iffalse CasteliaPlazaPrizeRoom_CancelPurchaseScript
	writebyte BELDUM
	special GameCornerPrizeMonCheckDex
	givepoke BELDUM, 15
	takecoins 1000
	jump CasteliaPlazaPrizeRoomVendor1_FinishScript

.Pinsir:
	checkcoins 1600
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NotEnoughCoinsScript
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CasteliaPlazaPrizeRoom_NoRoomForPrizeScript
	pokenamemem PINSIR, MEM_BUFFER_0
	scall CasteliaPlazaPrizeRoom_ConfirmPurchaseScript
	iffalse CasteliaPlazaPrizeRoom_CancelPurchaseScript
	writebyte PINSIR
	special GameCornerPrizeMonCheckDex
	givepoke PINSIR, 15
	takecoins 1600
	jump CasteliaPlazaPrizeRoomVendor1_FinishScript
	
CasteliaPlazaPrizeRoomVendor2Script:
	faceplayer
	opentext
	writetext CasteliaPlazaPrizeRoomVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CasteliaPlazaPrizeRoom_NoCoinCaseScript
	writetext CasteliaPlazaPrizeRoomVendorWhichPrizeText
	buttonsound
CasteliaPlazaPrizeRoomVendor2_LoopScript:
	special DisplayCoinCaseBalance
	loadmenu CasteliaPlazaPrizeRoomVendor2MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Litwick
	ifequal 2, .Axew
	ifequal 3, .Heracross
	jump CasteliaPlazaPrizeRoom_CancelPurchaseScript

.Litwick:
	checkcoins 300
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NotEnoughCoinsScript
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CasteliaPlazaPrizeRoom_NoRoomForPrizeScript
	pokenamemem LITWICK, MEM_BUFFER_0
	scall CasteliaPlazaPrizeRoom_ConfirmPurchaseScript
	iffalse CasteliaPlazaPrizeRoom_CancelPurchaseScript
	writebyte LITWICK
	special GameCornerPrizeMonCheckDex
	givepoke LITWICK, 15
	takecoins 300
	jump CasteliaPlazaPrizeRoomVendor2_FinishScript

.Axew:
	checkcoins 1000
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NotEnoughCoinsScript
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CasteliaPlazaPrizeRoom_NoRoomForPrizeScript
	pokenamemem AXEW, MEM_BUFFER_0
	scall CasteliaPlazaPrizeRoom_ConfirmPurchaseScript
	iffalse CasteliaPlazaPrizeRoom_CancelPurchaseScript
	writebyte AXEW
	special GameCornerPrizeMonCheckDex
	givepoke AXEW, 15
	takecoins 1000
	jump CasteliaPlazaPrizeRoomVendor2_FinishScript

.Heracross:
	checkcoins 1600
	ifequal HAVE_LESS, CasteliaPlazaPrizeRoom_NotEnoughCoinsScript
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CasteliaPlazaPrizeRoom_NoRoomForPrizeScript
	pokenamemem HERACROSS, MEM_BUFFER_0
	scall CasteliaPlazaPrizeRoom_ConfirmPurchaseScript
	iffalse CasteliaPlazaPrizeRoom_CancelPurchaseScript
	writebyte HERACROSS
	special GameCornerPrizeMonCheckDex
	givepoke HERACROSS, 15
	takecoins 1600
	jump CasteliaPlazaPrizeRoomVendor2_FinishScript

CasteliaPlazaPrizeRoom_ConfirmPurchaseScript:
	writetext CasteliaPlazaPrizeRoomConfirmPrizeText
	yesorno
	end

CasteliaPlazaPrizeRoom_NotEnoughCoinsScript:
	writetext CasteliaPlazaPrizeRoomNeedMoreCoinsText
	waitbutton
	closetext
	end

CasteliaPlazaPrizeRoom_NoRoomForPrizeScript:
	writetext CasteliaPlazaPrizeRoomNoMoreRoomText
	waitbutton
	closetext
	end

CasteliaPlazaPrizeRoom_CancelPurchaseScript:
	writetext CasteliaPlazaPrizeRoomQuitText
	waitbutton
	closetext
	end

CasteliaPlazaPrizeRoom_NoCoinCaseScript:
	writetext CasteliaPlazaPrizeRoomNoCoinCaseText
	waitbutton
	closetext
	end

CasteliaPlazaPrizeRoomVendor1_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomHereYouGoText
	waitbutton
	jump CasteliaPlazaPrizeRoomVendor1_LoopScript

CasteliaPlazaPrizeRoomVendor1MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 14, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "CLEFAIRY 300@"
	db "BELDUM  1000@"
	db "PINSIR  1600@"
	db "CANCEL@"

CasteliaPlazaPrizeRoomVendor2_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CasteliaPlazaPrizeRoomHereYouGoText
	waitbutton
	jump CasteliaPlazaPrizeRoomVendor2_LoopScript

CasteliaPlazaPrizeRoomVendor2MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 16, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "LITWICK    300@"
	db "AXEW      1000@"
	db "HERACROSS 1600@"
	db "CANCEL@"

CasteliaPlazaPrizeRoomRangerFScript:
	jumptextfaceplayer CasteliaPlazaPrizeRoomRangerFText

CasteliaPlazaPrizeRoomElevatorButton:
	jumpstd elevatorbutton

CasteliaPlazaPrizeRoomVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done

CasteliaPlazaPrizeRoomVendorWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

CasteliaPlazaPrizeRoomConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
	line "Is that right?"
	done

CasteliaPlazaPrizeRoomHereYouGoText:
	text "Here you go!"
	done

CasteliaPlazaPrizeRoomNeedMoreCoinsText:
	text "Sorry! You need"
	line "more coins."
	done

CasteliaPlazaPrizeRoomNoMoreRoomText:
	text "Sorry. You can't"
	line "carry any more."
	done

CasteliaPlazaPrizeRoomQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

CasteliaPlazaPrizeRoomNoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

CasteliaPlazaPrizeRoomRangerFText:
	text "I've been eyeing"
	line "that PINSIR and"
	
	para "HERACROSS, but"
	line "they're so"
	cont "expensive!"
	
	para "Maybe if I had"
	line "them, I could join"
	cont "BURGH's GYM…"
	done

CasteliaPlazaPrizeRoom_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  8,  0, CASTELIA_PLAZA_GAME_CORNER, 1
	warp_event 11,  0, CASTELIA_PLAZA_RESTAURANT, 1
	warp_event 14,  0, CASTELIA_PLAZA_ELEVATOR, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 15,  0, BGEVENT_READ, CasteliaPlazaPrizeRoomElevatorButton

	db 3 ; object events
	object_event  1,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaPrizeRoomVendor1Script, -1
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaPrizeRoomVendor2Script, -1
	object_event  9,  4, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaPrizeRoomRangerFScript, -1
	