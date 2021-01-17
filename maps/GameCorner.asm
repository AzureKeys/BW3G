	const_def 2 ; object constants
	const GAMECORNER_CLERK
	const GAMECORNER_RECEPTIONIST1
	const GAMECORNER_RECEPTIONIST2
	const GAMECORNER_PHARMACIST1
	const GAMECORNER_PHARMACIST2
	const GAMECORNER_POKEFAN_M1
	const GAMECORNER_COOLTRAINER_M
	const GAMECORNER_POKEFAN_F
	const GAMECORNER_COOLTRAINER_F
	const GAMECORNER_GENTLEMAN
	const GAMECORNER_POKEFAN_M2

GameCorner_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GameCornerCoinVendorScript:
	jumpstd gamecornercoinvendor

GameCornerVendor1Script:
	faceplayer
	opentext
	writetext GameCornerPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCornerPrizeVendor_NoCoinCaseScript
	writetext GameCornerPrizeVendorWhichPrizeText
GameCornerVendor1_LoopScript:
	special DisplayCoinCaseBalance
	loadmenu GameCornerVendor1MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .MoonStone
	ifequal 2, .IceStone
	ifequal 3, .ShellStone
	jump GameCornerPrizeVendor_CancelPurchaseScript

.MoonStone:
	checkcoins 500
	ifequal HAVE_LESS, GameCornerPrizeVendor_NotEnoughCoinsScript
	itemtotext MOON_STONE, MEM_BUFFER_0
	scall GameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse GameCornerPrizeVendor_CancelPurchaseScript
	giveitem MOON_STONE
	iffalse GameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins 500
	jump GameCornerVendor1_FinishScript

.IceStone:
	checkcoins 700
	ifequal HAVE_LESS, GameCornerPrizeVendor_NotEnoughCoinsScript
	itemtotext ICE_STONE, MEM_BUFFER_0
	scall GameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse GameCornerPrizeVendor_CancelPurchaseScript
	giveitem ICE_STONE
	iffalse GameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins 700
	jump GameCornerVendor1_FinishScript

.ShellStone:
	checkcoins 1000
	ifequal HAVE_LESS, GameCornerPrizeVendor_NotEnoughCoinsScript
	itemtotext SHELL_STONE, MEM_BUFFER_0
	scall GameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse GameCornerPrizeVendor_CancelPurchaseScript
	giveitem SHELL_STONE
	iffalse GameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins 1000
	jump GameCornerVendor1_FinishScript

GameCornerPrizeVendor_ConfirmPurchaseScript:
	writetext GameCornerPrizeVendorConfirmPrizeText
	yesorno
	end

GameCornerVendor1_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrizeVendorHereYouGoText
	waitbutton
	jump GameCornerVendor1_LoopScript

GameCornerPrizeVendor_NotEnoughCoinsScript:
	writetext GameCornerPrizeVendorNeedMoreCoinsText
	waitbutton
	closetext
	end

GameCornerPrizeMonVendor_NoRoomForPrizeScript:
	writetext GameCornerPrizeVendorNoMoreRoomText
	waitbutton
	closetext
	end

GameCornerPrizeVendor_CancelPurchaseScript:
	writetext GameCornerPrizeVendorQuitText
	waitbutton
	closetext
	end

GameCornerPrizeVendor_NoCoinCaseScript:
	writetext GameCornerPrizeVendorNoCoinCaseText
	waitbutton
	closetext
	end

GameCornerVendor1MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 18, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "MOON STONE   500@"
	db "ICE STONE    700@"
	db "SHELL STONE 1000@"
	db "CANCEL@"

GameCornerVendor2Script:
	faceplayer
	opentext
	writetext GameCornerPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GameCornerPrizeVendor_NoCoinCaseScript
	writetext GameCornerPrizeVendorWhichPrizeText
GameCornerVendor2_LoopScript:
	special DisplayCoinCaseBalance
	loadmenu GameCornerVendor2MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Eviolite
	ifequal 2, .MetalCoat
	ifequal 3, .LifeOrb
	jump GameCornerPrizeVendor_CancelPurchaseScript

.Eviolite:
	checkcoins 1500
	ifequal HAVE_LESS, GameCornerPrizeVendor_NotEnoughCoinsScript
	itemtotext EVIOLITE, MEM_BUFFER_0
	scall GameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse GameCornerPrizeVendor_CancelPurchaseScript
	giveitem EVIOLITE
	iffalse GameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins 1500
	jump GameCornerVendor2_FinishScript

.MetalCoat:
	checkcoins 2000
	ifequal HAVE_LESS, GameCornerPrizeVendor_NotEnoughCoinsScript
	itemtotext METAL_COAT, MEM_BUFFER_0
	scall GameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse GameCornerPrizeVendor_CancelPurchaseScript
	giveitem METAL_COAT
	iffalse GameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins 2000
	jump GameCornerVendor2_FinishScript

.LifeOrb:
	checkcoins 2500
	ifequal HAVE_LESS, GameCornerPrizeVendor_NotEnoughCoinsScript
	itemtotext LIFE_ORB, MEM_BUFFER_0
	scall GameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse GameCornerPrizeVendor_CancelPurchaseScript
	giveitem LIFE_ORB
	iffalse GameCornerPrizeMonVendor_NoRoomForPrizeScript
	takecoins 2500
	jump GameCornerVendor2_FinishScript

GameCornerVendor2MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "EVIOLITE   1500@"
	db "METAL COAT 2000@"
	db "LIFE ORB   2500@"
	db "CANCEL@"

GameCornerVendor2_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameCornerPrizeVendorHereYouGoText
	waitbutton
	jump GameCornerVendor2_LoopScript

GameCornerPharmacistScript:
	faceplayer
	opentext
	writetext GameCornerPharmacistText
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

GameCornerPokefanM1Script:
	faceplayer
	opentext
	writetext GameCornerPokefanM1Text
	waitbutton
	closetext
	turnobject GAMECORNER_POKEFAN_M1, RIGHT
	end

GameCornerCooltrainerMScript:
	faceplayer
	opentext
	writetext GameCornerCooltrainerMText
	waitbutton
	closetext
	turnobject GAMECORNER_COOLTRAINER_M, LEFT
	end

GameCornerPokefanFScript:
	faceplayer
	opentext
	writetext GameCornerPokefanFText
	waitbutton
	closetext
	turnobject GAMECORNER_POKEFAN_F, RIGHT
	end

GameCornerCooltrainerFScript:
	jumptextfaceplayer GameCornerCooltrainerFText

GameCornerGentlemanScript:
	faceplayer
	opentext
	writetext GameCornerGentlemanText
	waitbutton
	closetext
	turnobject GAMECORNER_GENTLEMAN, RIGHT
	end

GameCornerPokefanM2Script:
	jumptextfaceplayer GameCornerPokefanM2Text

GameCornerLeftTheirDrinkScript:
	jumptext GameCornerLeftTheirDrinkText

GameCornerSlotsMachineScript:
	random 6
	ifequal 0, GameCornerLuckySlotsMachineScript
	refreshscreen
	writebyte FALSE
	special SlotMachine
	closetext
	end

GameCornerLuckySlotsMachineScript:
	refreshscreen
	writebyte TRUE
	special SlotMachine
	closetext
	end

GameCornerCardFlipMachineScript:
	refreshscreen
	special CardFlip
	closetext
	end

GameCornerPrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done

GameCornerPrizeVendorWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

GameCornerPrizeVendorConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
	line "Is that right?"
	done

GameCornerPrizeVendorHereYouGoText:
	text "Here you go!"
	done

GameCornerPrizeVendorNeedMoreCoinsText:
	text "Sorry! You need"
	line "more coins."
	done

GameCornerPrizeVendorNoMoreRoomText:
	text "Sorry. You can't"
	line "carry any more."
	done

GameCornerPrizeVendorQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

GameCornerPrizeVendorNoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

GameCornerPharmacistText:
	text "I always play this"
	line "slot machine. It"

	para "pays out more than"
	line "others, I think."
	done

GameCornerPokefanM1Text:
	text "I just love this"
	line "new slot machine."
	done

GameCornerCooltrainerMText:
	text "Life is a gamble."
	line "I'm going to flip"
	cont "cards till I drop!"
	done

GameCornerPokefanFText:
	text "Card flip…"

	para "I prefer it over"
	line "the slots because"

	para "it's easier to"
	line "figure the odds."

	para "But the payout is"
	line "much lower."
	done

GameCornerCooltrainerFText:
	text "I won't quit until"
	line "I win!"
	done

GameCornerGentlemanText:
	text "I used an ICE"
	line "STONE on my #-"
	cont "MON."

	para "It was hard to get"
	line "enough coins for"

	para "it, but it was"
	line "worth it."
	done

GameCornerPokefanM2Text:
	text "I couldn't win at"
	line "the slots, and I"

	para "blew it on card"
	line "flipping…"

	para "I got so furious,"
	line "I tossed out my"

	para "COIN CASE in"
	line "town…"
	done

GameCornerLeftTheirDrinkText:
	text "Someone left their"
	line "drink."

	para "It smells sweet."
	done

GameCorner_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 13, VIRBANK_CITY, 3
	warp_event  3, 13, VIRBANK_CITY, 3

	db 0 ; coord events

	db 31 ; bg events
	bg_event  6,  6, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  6,  8, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  6, 11, BGEVENT_RIGHT, GameCornerSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, GameCornerLuckySlotsMachineScript
	bg_event  7,  8, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, GameCornerSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event 12,  7, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event 12,  8, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event 12,  9, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event 12, 10, BGEVENT_READ, GameCornerSlotsMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, GameCornerSlotsMachineScript
	bg_event 13,  6, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 13,  7, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 13,  8, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 13,  9, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 13, 10, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 13, 11, BGEVENT_LEFT, GameCornerCardFlipMachineScript
	bg_event 18,  6, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 18,  7, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 18,  8, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 18,  9, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 18, 10, BGEVENT_READ, GameCornerCardFlipMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, GameCornerCardFlipMachineScript
	bg_event 12,  1, BGEVENT_LEFT, GameCornerLeftTheirDrinkScript

	db 11 ; object events
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameCornerCoinVendorScript, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameCornerVendor1Script, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, GameCornerVendor2Script, -1
	object_event  8,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameCornerPharmacistScript, -1
	object_event  8,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, NITE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameCornerPharmacistScript, -1
	object_event 11, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GameCornerPokefanM1Script, -1
	object_event 14,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, GameCornerCooltrainerMScript, -1
	object_event 17,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, GameCornerPokefanFScript, -1
	object_event 10,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GameCornerCooltrainerFScript, -1
	object_event  5, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, GameCornerGentlemanScript, -1
	object_event  2,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GameCornerPokefanM2Script, -1
	