	const_def 2 ; object constants
	const CASTELIACITYSTREETS_CONE_VENDOR
	const CASTELIACITYSTREETS_REST_MAN
	const CASTELIACITYSTREETS_CHEREN
	const CASTELIACITYSTREETS_YOUNGSTER
	const CASTELIACITYSTREETS_TEACHER
	const CASTELIACITYSTREETS_LASS
	const CASTELIACITYSTREETS_COOLTRAINERM

CasteliaCityStreets_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_CASTELIA_CHEREN
	scene_script .DummyScene2 ; SCENE_CASTELIA_NOTHING

	db 0 ; callbacks
	
.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
CherenAppears:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_CHEREN_THEME
	appear CASTELIACITYSTREETS_CHEREN
	applymovement CASTELIACITYSTREETS_CHEREN, CasteliaCherenAppearMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext CasteliaCherenIntroText
	waitbutton
	closetext
	addcellnum PHONE_CHEREN
	opentext
	writetext GotCherensNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	writetext CasteliaCherenNimbasaText
	waitbutton
	closetext
	applymovement CASTELIACITYSTREETS_CHEREN, CasteliaCherenDisappearMovement
	disappear CASTELIACITYSTREETS_CHEREN
	clearevent EVENT_NIMBASA_PARK_OUTSIDE_CHEREN
	setmapscene NIMBASA_PARK_OUTSIDE, SCENE_NIMBASA_PARK_OUTSIDE_CHEREN
	setscene SCENE_CASTELIA_NOTHING
	special FadeOutMusic
	pause 15
	playmusic MUSIC_CASTELIA_CITY
	playmapmusic
	end

CasteliaconeVendorScript:
	opentext
	checkflag ENGINE_GOT_CASTELIACONE_TODAY
	iftrue Casteliacone_AlreadyBought
	writetext CasteliaconeBuyText
	special PlaceMoneyTopRight
	loadmenu CasteliaconeVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .one
	ifequal 2, .dozen
	jump Casteliacone_NoSale
	
.one
	checkmoney YOUR_MONEY, 100
	ifequal HAVE_LESS, Casteliacone_NoMoney
	giveitem CASTELIACONE
	iffalse Casteliacone_NoRoom
	takemoney YOUR_MONEY, 100
	jump .bought
	
.dozen
	checkmoney YOUR_MONEY, 1200
	ifequal HAVE_LESS, Casteliacone_NoMoney
	giveitem CASTELIACONE, 12
	iffalse Casteliacone_NoRoom
	takemoney YOUR_MONEY, 1200
	
.bought
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_GOT_CASTELIACONE_TODAY
	writetext CasteliaconeBoughtText
	buttonsound
	itemnotify
	closetext
	end

CasteliaconeVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 12, TEXTBOX_Y - 2
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "ONE    100@"
	db "DOZEN 1200@"
	db "CANCEL@"

Casteliacone_AlreadyBought:
	writetext CasteliaconeAlreadyBoughtText
	waitbutton
	closetext
	end

Casteliacone_NoMoney:
	writetext CasteliaconeNoMoneyText
	waitbutton
	closetext
	end

Casteliacone_NoRoom:
	writetext CasteliaconeNoRoomText
	waitbutton
	closetext
	end

Casteliacone_NoSale:
	writetext CasteliaconeNoSaleText
	waitbutton
	closetext
	end
	
CasteliaRestManScript:
	opentext
	checkevent EVENT_GOT_TM_REST
	iftrue .GotRest
	writetext CasteliaGiveRestText
	buttonsound
	verbosegiveitem TM_REST
	setevent EVENT_GOT_TM_REST
	closetext
	end
	
.GotRest:
	writetext CasteliaGaveRestText
	waitbutton
	closetext
	end
	
CasteliaStreetsYoungsterTextScript:
	jumptextfaceplayer CasteliaStreetsYoungsterText
	
CasteliaStreetsTeacherTextScript:
	jumptextfaceplayer CasteliaStreetsTeacherText
	
CasteliaStreetsLassTextScript:
	jumptextfaceplayer CasteliaStreetsLassText
	
CasteliaStreetsCooltrainerMTextScript:
	jumptextfaceplayer CasteliaStreetsCooltrainerMText
	
CasteliaBlackglasses:
	hiddenitem BLACKGLASSES, EVENT_CASTELIA_CITY_BLACKGLASSES
	
CasteliaBikeSign:
	jumptext CasteliaBikeSignText

CasteliaMassageSign:
	jumptext CasteliaMassageSignText

CasteliaGameFreakSign:
	jumptext CasteliaGameFreakSignText

CasteliaConeSign:
	jumptext CasteliaConeSignText
	
CasteliaCherenAppearMovement:
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
CasteliaCherenDisappearMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
CasteliaCherenIntroText:
	text "Oh, excuse me,"
	line "are you <PLAY_G>?"
	
	para "My name is CHEREN."
	line "I'm a friend of"
	cont "the PROF."
	
	para "I've been invest-"
	line "igating the recent"
	
	para "appearances of a"
	line "group claiming to"
	cont "be TEAM PLASMA."
	
	para "They were a terror"
	line "group that was"
	cont "disbanded a few"
	cont "years ago."
	
	para "Oh? You've already"
	line "had a run-in with"
	cont "them?"
	
	para "Perhaps you could"
	line "be of assistance."
	
	para "Here, register my"
	line "number in your"
	cont "X-TRANSCIEVER."
	done
	
CasteliaCherenNimbasaText:
	text "CHEREN: I'm pretty"
	line "good at determin-"
	cont "ing the happiness"
	cont "of a #MON."
	
	para "Call me if you'd"
	line "like me to tell"
	
	para "you how friendly"
	line "your #MON is"
	cont "toward you."
	
	para "I'm going to"
	line "NIMBASA CITY."
	
	para "I've heard reports"
	line "that TEAM PLASMA"
	
	para "has been up to"
	line "something at the"
	cont "old PARK…"
	
	para "Come and meet me"
	line "if you'd like to"
	cont "lend a hand."
	done

GotCherensNumberText:
	text "<PLAYER> got"
	line "CHEREN's phone"
	cont "number."
	done
	
CasteliaconeBuyText:
	text "Hi! Welcome to"
	line "CASTELIA CITY!"
	
	para "How would you like"
	line "to try a specialty"
	cont "CASTELIACONE?"
	
	para "It's just ¥100."
	
	para "You can buy just"
	line "one, or a dozen."
	
	para "How about it?"
	done
	
CasteliaconeBoughtText:
	text "That CASTELIACONE"
	line "can cure any"
	
	para "status condition"
	line "of a #MON!"
	done
	
CasteliaconeAlreadyBoughtText:
	text "Come back tomorrow"
	line "if you'd like"
	
	para "another"
	line "CASTELIACONE!"
	done
	
CasteliaconeNoSaleText:
	text "Oh, that's too"
	line "bad."
	done
	
CasteliaconeNoMoneyText:
	text "Uh-oh, looks like"
	line "you don't have"
	cont "enough money."
	done
	
CasteliaconeNoRoomText:
	text "You have no room"
	line "for this."
	done
	
CasteliaGiveRestText:
	text "…zzzzz…"
	
	para "…wha, huh?"
	
	para "Hey, I'm trying"
	line "to sleep here!"
	
	para "Take this and go"
	line "away…"
	done
	
CasteliaStreetsYoungsterText:
	text "I've been training"
	line "out in the desert"
	
	para "to take on the"
	line "GYM!"
	done
	
CasteliaStreetsTeacherText:
	text "Have you tried a"
	line "CASTELIACONE?"
	
	para "They're all the"
	line "rage!"
	done

CasteliaStreetsLassText:
	text "I love being"
	line "surrounded by tall"
	cont "buildings!"
	done

CasteliaStreetsCooltrainerMText:
	text "You're collecting"
	line "every single kind"
	cont "of #MON?"

	para "That must be quite"
	line "a challenge, but"
	cont "it sounds fun too."
	done
	
CasteliaGaveRestText:
	text "…zzzzz…"
	done
	
CasteliaBikeSignText:
	text "CASTELIA CYCLES."
	done
	
CasteliaMassageSignText:
	text "#MON massage"
	line "parlor."
	done
	
CasteliaGameFreakSignText:
	text "GAME FREAK HQ."
	done
	
CasteliaConeSignText:
	text "Tasty and refresh-"
	line "ing! Get your"
	cont "CASTELIACONE"
	cont "today!"
	done

CasteliaCityStreets_MapEvents:
	db 0, 0 ; filler

	db 22 ; warp events
	warp_event 13,  6, CASTELIA_CITY_NORTH, 2
	warp_event 14,  6, CASTELIA_CITY_NORTH, 3
	warp_event 21,  8, CASTELIA_CITY_NORTH, 4
	warp_event 22,  8, CASTELIA_CITY_NORTH, 5
	warp_event 29,  4, CASTELIA_CITY_NORTH, 6
	warp_event 30,  4, CASTELIA_CITY_NORTH, 7
	warp_event 39,  4, CASTELIA_CITY_NORTH, 8
	warp_event 40,  4, CASTELIA_CITY_NORTH, 9
	warp_event  5, 21, CASTELIA_CITY_SOUTH, 1
	warp_event  6, 21, CASTELIA_CITY_SOUTH, 2
	warp_event 21, 23, CASTELIA_CITY_SOUTH, 3
	warp_event 22, 23, CASTELIA_CITY_SOUTH, 4
	warp_event 35, 23, CASTELIA_CITY_SOUTH, 5
	warp_event 36, 23, CASTELIA_CITY_SOUTH, 6
	warp_event 47, 23, CASTELIA_CITY_SOUTH, 7
	warp_event 48, 23, CASTELIA_CITY_SOUTH, 8
	warp_event 35, 16, CASTELIA_BIKE_SHOP, 1
	warp_event 44, 16, CASTELIA_MASSAGE, 1
	warp_event 50, 17, CASTELIA_GAME_FREAK, 1
	warp_event  4, 15, CASTELIA_GYM, 1
	warp_event 35, 17, CASTELIA_BIKE_SHOP, 2
	warp_event 44, 17, CASTELIA_MASSAGE, 2

	db 1 ; coord events
	coord_event  4, 16, SCENE_CASTELIA_CHEREN, CherenAppears
	
	db 6 ; bg events
	bg_event 35, 15, BGEVENT_READ, CasteliaBikeSign
	bg_event 44, 15, BGEVENT_READ, CasteliaMassageSign
	bg_event 48, 18, BGEVENT_READ, CasteliaGameFreakSign
	bg_event 24, 13, BGEVENT_ITEM, CasteliaBlackglasses
	bg_event 25, 13, BGEVENT_ITEM, CasteliaBlackglasses
	bg_event 32, 17, BGEVENT_READ, CasteliaConeSign

	db 7 ; object events
	object_event 31, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaconeVendorScript, -1
	object_event 25, 12, SPRITE_SLEEPING_MAN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaRestManScript, -1
	object_event 10, 11, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_CASTELIA_CITY_CHEREN
	object_event 11, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaStreetsYoungsterTextScript, -1
	object_event 30,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaStreetsTeacherTextScript, -1
	object_event 34, 13, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaStreetsLassTextScript, -1
	object_event 41,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaStreetsCooltrainerMTextScript, -1
	