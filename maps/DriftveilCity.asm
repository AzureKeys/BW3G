	const_def 2 ; object constants
	const DRIFTVEILCITY_GUARD_1
	const DRIFTVEILCITY_GUARD_2
	const DRIFTVEILCITY_GUARD_3
	const DRIFTVEILCITY_GRUNT_1
	const DRIFTVEILCITY_GRUNT_2
	const DRIFTVEILCITY_MERCHANT_1
	const DRIFTVEILCITY_MERCHANT_2
	const DRIFTVEILCITY_MERCHANT_3
	const DRIFTVEILCITY_LASS
	const DRIFTVEILCITY_YOUNGSTER
	const DRIFTVEILCITY_GRAMPS
	const DRIFTVEILCITY_LASS2
	const DRIFTVEILCITY_REPEAT_BALL
	const DRIFTVEILCITY_HEART_SCALE

DriftveilCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_DRIFTVEIL
	return

DriftveilMerchant1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_MARKET, MART_MERCHANT_1
	closetext
	end

DriftveilMerchant2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_MARKET, MART_MERCHANT_2
	closetext
	end
	
DriftveilMerchant3Script:
	faceplayer
	opentext
	checkevent EVENT_DRIFTVEIL_THUNDERSTONE
	iffalse .purchase
	checkevent EVENT_DRIFTVEIL_RAZOR_FANG
	iffalse .purchase
	writetext DriftveilMerchantEmptyText
	waitbutton
	closetext
	end
	
.purchase:
	writetext DriftveilMerchantBuyText
	special PlaceMoneyTopRight
	checkevent EVENT_DRIFTVEIL_THUNDERSTONE
	iftrue .FangOnly
	checkevent EVENT_DRIFTVEIL_RAZOR_FANG
	iftrue .ThunderstoneOnly
	
	loadmenu DriftveilBothMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ChooseThunderstone
	ifequal 2, .ChooseRazorFang
	jump DriftveilNoItemSelectedScript
.FangOnly
	loadmenu DriftveilFangMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ChooseRazorFang
	jump DriftveilNoItemSelectedScript
.ThunderstoneOnly
	loadmenu DriftveilThunderstoneMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ChooseThunderstone
	jump DriftveilNoItemSelectedScript
	
.ChooseThunderstone
	checkmoney YOUR_MONEY, 2100
	ifequal HAVE_LESS, DriftveilNoMoneyScript
	giveitem THUNDERSTONE
	iffalse DriftveilNoRoomScript
	takemoney YOUR_MONEY, 2100
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	buttonsound
	itemnotify
	writetext DriftveilMerchantThanksText
	waitbutton
	closetext
	setevent EVENT_DRIFTVEIL_THUNDERSTONE
	end
	
.ChooseRazorFang
	checkmoney YOUR_MONEY, 3000
	ifequal HAVE_LESS, DriftveilNoMoneyScript
	giveitem RAZOR_FANG
	iffalse DriftveilNoRoomScript
	takemoney YOUR_MONEY, 3000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	buttonsound
	itemnotify
	writetext DriftveilMerchantThanksText
	waitbutton
	closetext
	setevent EVENT_DRIFTVEIL_RAZOR_FANG
	end
	
DriftveilNoItemSelectedScript:
	writetext DriftveilMerchantComeAgainText
	waitbutton
	closetext
	end
	
DriftveilNoMoneyScript:
	writetext DriftveilMerchantNoMoneyText
	waitbutton
	closetext
	end
	
DriftveilNoRoomScript:
	writetext DriftveilMerchantNoRoomText
	waitbutton
	closetext
	end

DriftveilBothMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 19, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "THUNDERSTONE¥2100@"
	db "RAZOR FANG  ¥3000@"
	db "CANCEL@"

DriftveilFangMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 19, TEXTBOX_Y - 3
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "RAZOR FANG  ¥3000@"
	db "CANCEL@"

DriftveilThunderstoneMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 19, TEXTBOX_Y - 3
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "THUNDERSTONE¥2100@"
	db "CANCEL@"
	
DriftveilGuardScript:
	jumptextfaceplayer DriftveilGuardText
	
DriftveilGruntScript:
	faceplayer
	opentext
	writetext DriftveilGruntText
	waitbutton
	closetext
	turnobject DRIFTVEILCITY_GRUNT_1, RIGHT
	turnobject DRIFTVEILCITY_GRUNT_2, RIGHT
	end
	
DriftveilLassScript:
	jumptextfaceplayer DriftveilLassText
	
DriftveilYoungsterScript:
	checkevent EVENT_DRIFTVEIL_BLOCKER
	iftrue .open
	jumptextfaceplayer DriftveilYoungsterText
.open
	jumptextfaceplayer DriftveilYoungster2Text
	
DriftveilGrampsScript:
	checkevent EVENT_DRIFTVEIL_BLOCKER
	iftrue .open
	jumptextfaceplayer DriftveilGrampsText
.open
	jumptextfaceplayer DriftveilGramps2Text
	
DriftveilLass2Script:
	jumptextfaceplayer DriftveilLass2Text
	
DriftveilSign:
	jumptext DriftveilSignText
	
DriftveilShelterSign:
	jumptext DriftveilShelterText
	
DriftveilRepeatBall:
	itemball REPEAT_BALL
	
DriftveilHeartScale:
	itemball HEART_SCALE
	
DriftveilMerchantEmptyText:
	text "Sorry kid, you"
	line "bought me out!"
	done
	
DriftveilMerchantBuyText:
	text "Hey kid, wanna"
	line "buy something?"
	done
	
DriftveilMerchantThanksText:
	text "Hey, thanks kid!"
	done
	
DriftveilMerchantComeAgainText:
	text "Alright, come back"
	line "later if you're"
	cont "interested."
	done
	
DriftveilMerchantNoMoneyText:
	text "Hey kid, are you"
	line "trying to rip me"
	cont "off? Scram!"
	done
	
DriftveilMerchantNoRoomText:
	text "You don't have"
	line "any room for that."
	done
	
DriftveilGuardText:
	text "Sorry, we're not"
	line "letting anyone"
	cont "past here."
	
	para "There's currently"
	line "an investigation"
	cont "in progress."
	done
	
DriftveilGruntText:
	text "Scram, kid! Can't"
	line "you see we're"
	cont "busy?"
	done
	
DriftveilLassText:
	text "Ever since the"
	line "WORLD TOURNAMENT"
	
	para "came to town, it's"
	line "been so busy here!"
	done
	
DriftveilYoungsterText:
	text "I wanted to cross"
	line "the DRAWBRIDGE"
	
	para "to get to NIMBASA"
	line "CITY, but some"
	
	para "suspicious guys"
	line "won't let me"
	cont "through!"
	done
	
DriftveilYoungster2Text:
	text "The guys at the"
	line "DRAWBRIDGE are"
	cont "gone now."
	
	para "I wonder where"
	line "they went."
	done
	
DriftveilGrampsText:
	text "The police are"
	line "out and about…"
	
	para "Something strange"
	line "is going on here…"
	done
	
DriftveilGramps2Text:
	text "It seems there was"
	line "some commotion at"
	cont "the #MON WORLD"
	cont "TOURNAMENT!"
	done
	
DriftveilLass2Text:
	text "The people in the"
	line "STONE EMPORIUM are"
	cont "crazy for gems!"
	done

DriftveilSignText:
	text "DRIFTVEIL CITY."
	
	para "A city of"
	line "billowing sails."
	done

DriftveilShelterText:
	text "DRIFTVEIL CITY"
	line "#MON shelter."
	done

DriftveilCity_MapEvents:
	db 0, 0 ; filler

	db 13 ; warp events
	warp_event 11, 35, PWT_DRIFTVEIL_GATE, 1
	warp_event 12, 35, PWT_DRIFTVEIL_GATE, 2
	warp_event 27, 17, DRIFTVEIL_FOSSIL_HOUSE, 1
	warp_event 19, 17, DRIFTVEIL_POKECENTER_1F, 1
	warp_event 45, 28, DRIFTVEIL_BRIDGE_GATE, 1
	warp_event 45, 29, DRIFTVEIL_BRIDGE_GATE, 2
	warp_event 27,  5, DRIFTVEIL_SHELTER, 1
	warp_event  4, 12, R_6, 4
	warp_event  4, 13, R_6, 5
	warp_event 34,  9, DRIFTVEIL_STONE_EMPORIUM, 1
	warp_event 35,  9, DRIFTVEIL_STONE_EMPORIUM, 2
	warp_event 10, 17, DRIFTVEIL_TRADE_HOUSE, 1
	warp_event 24, 25, DRIFTVEIL_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 12, 26, BGEVENT_READ, DriftveilSign
	bg_event 28,  6, BGEVENT_READ, DriftveilShelterSign
	
	db 14 ; object events
	object_event 14, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DriftveilGuardScript, EVENT_DRIFTVEIL_BLOCKER
	object_event 15, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DriftveilGuardScript, EVENT_DRIFTVEIL_BLOCKER
	object_event 16, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DriftveilGuardScript, EVENT_DRIFTVEIL_BLOCKER
	object_event 45, 28, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilGruntScript, EVENT_DRIFTVEIL_BLOCKER
	object_event 45, 29, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilGruntScript, EVENT_DRIFTVEIL_BLOCKER
	object_event  9, 24, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilMerchant1Script, -1
	object_event 11, 22, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilMerchant2Script, -1
	object_event  8, 22, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DriftveilMerchant3Script, -1
	object_event 15, 32, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DriftveilLassScript, -1
	object_event 16, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, DriftveilYoungsterScript, -1
	object_event 25, 19, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilGrampsScript, -1
	object_event 35, 13, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, DriftveilLass2Script, -1
	object_event 22, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DriftveilRepeatBall, EVENT_DRIFTVEIL_REPEAT_BALL
	object_event 38, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DriftveilHeartScale, EVENT_DRIFTVEIL_HEART_SCALE
	