	const_def 2 ; object constants
	const CASTELIABIKESHOP_CLERK

CasteliaBikeShop_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext CasteliaBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext CasteliaBikeShopClerkAgreedText
	buttonsound
	waitsfx
	giveitem BICYCLE
	writetext BorrowedABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	;setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext CasteliaBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext CasteliaBikeShopClerkRefusedText
	waitbutton
	closetext
	end

CasteliaBikeShopBicycle:
	jumptext CasteliaBikeShopBicycleText

CasteliaBikeShopClerkIntroText:
	text "…sigh… Welcome to"
	line "CASTELIA CYCLES."

	para "We sell BICYCLES,"
	line "but they've gotten"

	para "much less popular"
	line "since RUNNING"
	cont "SHOES became about"
	cont "as fast as biking…"
	
	para "Will you take one"
	line "of our bikes and"
	
	para "ride it to drum"
	line "up sales?"
	done

CasteliaBikeShopClerkAgreedText:
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and I'll loan you"
	line "a BICYCLE."
	done

BorrowedABicycleText:
	text "<PLAYER> borrowed a"
	line "BICYCLE."
	done

CasteliaBikeShopClerkFirstRateBikesText:
	text "My BICYCLES are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done

CasteliaBikeShopClerkRefusedText:
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done

CasteliaBikeShopBicycleText:
	text "It's a shiny new"
	line "BICYCLE!"
	done

CasteliaBikeShop_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  6, CASTELIA_CITY_STREETS, 17
	warp_event  0,  7, CASTELIA_CITY_STREETS, 21

	db 0 ; coord events

	db 9 ; bg events
	bg_event  1,  2, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  4,  5, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  5,  5, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  2,  6, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  3,  6, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, CasteliaBikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, CasteliaBikeShopBicycle

	db 1 ; object events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaBikeShopClerkScript, -1
