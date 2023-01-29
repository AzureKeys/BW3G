	const_def 2 ; object constants
	const MEMBERSROOM_CLERK_1
	const MEMBERSROOM_CLERK_2
	const MEMBERSROOM_CHEREN
	const MEMBERSROOM_MARLON
	const MEMBERSROOM_ROOD
	const MEMBERSROOM_ALDER
	const MEMBERSROOM_IRIS
	const MEMBERSROOM_CAITLIN
	const MEMBERSROOM_CYNTHIA
	const MEMBERSROOM_HUGH
	const MEMBERSROOM_ELESA
	const MEMBERSROOM_BIANCA

MembersRoom_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .AppearPeople
	
.AppearPeople:
; Bianca appears if we beat Nate/Rosa, but not Hilbert/Hilda
	checkevent EVENT_BEAT_HILBERT_HILDA
	iftrue .DisappearBianca
	checkevent EVENT_BEAT_NATE_ROSA
	iffalse .DisappearBianca
	appear MEMBERSROOM_BIANCA
	jump .HandleElesa
.DisappearBianca
	disappear MEMBERSROOM_BIANCA
	
.HandleElesa
; Elesa appears if we beat Caitlin/Cynthia, Rood, Hugh, Alder, & Iris
; but haven't yet beaten Nate/Rosa
	checkevent EVENT_BEAT_NATE_ROSA
	iftrue .DisappearElesa
	checkevent EVENT_BEAT_CYNTHIA
	iffalse .DisappearElesa
	checkevent EVENT_BEAT_ROOD ; Must beat Hugh before Rood
	iffalse .DisappearElesa
	checkevent EVENT_BEAT_ALDER
	iffalse .DisappearElesa
	checkevent EVENT_BEAT_IRIS
	iffalse .DisappearElesa
	appear MEMBERSROOM_ELESA
	jump .HandleRood
.DisappearElesa
	disappear MEMBERSROOM_ELESA
	
.HandleRood
; If we beat Hugh, but haven't triggered the Rood fight,
; then Rood appears regardless of day
	checkevent EVENT_ROOD_READY_FOR_BATTLE
	iftrue .DisappearRood
	checkevent EVENT_BEAT_HUGH
	iffalse .DisappearRood
	appear MEMBERSROOM_ROOD
	jump .CheckDay
.DisappearRood
	disappear MEMBERSROOM_ROOD
	
.CheckDay
	checkcode VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SUNDAY, .Sunday
; else
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	jump .done
	
.Monday
	appear MEMBERSROOM_ROOD
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	jump .done
	
.Tuesday
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	checkevent EVENT_BEAT_HUGH
	iftrue .AppearHugh
	disappear MEMBERSROOM_HUGH
	jump .done
.AppearHugh
	appear MEMBERSROOM_HUGH
	jump .done
	
.Wednesday
	appear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	jump .done
	
.Thursday
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_IRIS
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	checkevent EVENT_BEAT_CYNTHIA
	iftrue .AppearCynthia
	disappear MEMBERSROOM_CYNTHIA
	jump .done
.AppearCynthia
	appear MEMBERSROOM_CYNTHIA
	variablesprite SPRITE_MEMBERS_ROOM_BROWN, SPRITE_CYNTHIA
	special LoadUsedSpritesGFX
	jump .done
	
.Friday
	appear MEMBERSROOM_IRIS
	variablesprite SPRITE_MEMBERS_ROOM_BLUE, SPRITE_IRIS
	special LoadUsedSpritesGFX
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_MARLON
	disappear MEMBERSROOM_CAITLIN
	jump .done
	
.Sunday
	disappear MEMBERSROOM_HUGH
	disappear MEMBERSROOM_ALDER
	disappear MEMBERSROOM_CYNTHIA
	disappear MEMBERSROOM_IRIS
	iftrue .AppearCaitlin
	disappear MEMBERSROOM_CAITLIN
	appear MEMBERSROOM_MARLON
	variablesprite SPRITE_MEMBERS_ROOM_BLUE, SPRITE_MARLON
	special LoadUsedSpritesGFX
	jump .done
	
.AppearCaitlin
	appear MEMBERSROOM_CAITLIN
	variablesprite SPRITE_MEMBERS_ROOM_BROWN, SPRITE_CAITLIN
	special LoadUsedSpritesGFX
	disappear MEMBERSROOM_MARLON
; fallthrough
.done
	return

MembersRoomClerk1Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MEMBERS_1
	closetext
	end

MembersRoomClerk2Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MEMBERS_2
	closetext
	end
	
MembersRoomCherenScript:
	faceplayer
	opentext
	writetext MembersRoomCherenText
	waitbutton
	closetext
	checkcode VAR_FACING
	ifequal UP, .UpMovement
	applymovement MEMBERSROOM_CHEREN, MembersRoomCherenLeaveMovement1
	jump .moved
.UpMovement
	applymovement MEMBERSROOM_CHEREN, MembersRoomCherenLeaveMovement2
.moved
	playsound SFX_ENTER_DOOR
	disappear MEMBERSROOM_CHEREN
	setevent EVENT_ASPERTIA_CITY_BLOCKER
	waitsfx
	end
	
MembersRoomRoodScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_HUGH
	iftrue .BeatHugh
	checkevent EVENT_SPOKE_TO_ROOD_POSTGAME
	iftrue .AlreadySpoken
	writetext MembersRoomRoodInitialText
	waitbutton
	closetext
	setevent EVENT_SPOKE_TO_ROOD_POSTGAME
	end
	
.AlreadySpoken
	writetext MembersRoomRoodAlreadySpokenText
	waitbutton
	closetext
	end
	
.BeatHugh
	checkevent EVENT_BEAT_ROOD
	iftrue .AlreadyBeaten
	writetext MembersRoomRoodReadyForBattleText
	waitbutton
	closetext
	setevent EVENT_ROOD_READY_FOR_BATTLE
	end
	
.AlreadyBeaten
	writetext MembersRoomRoodAlreadyBeatenText
	waitbutton
	closetext
	end
	
MembersRoomAlderScript:
	faceplayer
	opentext
	checkevent EVENT_SPOKE_TO_ALDER_POSTGAME
	iftrue .AlreadySpoken
	writetext MembersRoomAlderInitialText
	waitbutton
	closetext
	setevent EVENT_SPOKE_TO_ALDER_POSTGAME
	end

.AlreadySpoken
	writetext MembersRoomAlderAlreadySpokenText
	waitbutton
	closetext
	end
	
MembersRoomElesaScript:
	faceplayer
	opentext
	writetext MembersRoomElesaText
	waitbutton
	closetext
	setevent EVENT_NATE_ROSA_READY_FOR_BATTLE
	end
	
MembersRoomBiancaScript:
	faceplayer
	opentext
	writetext MembersRoomBiancaText
	waitbutton
	closetext
	setevent EVENT_HILBERT_HILDA_READY_FOR_BATTLE
	end
	
MembersRoomMarlonScript:
	jumptextfaceplayer MembersRoomMarlonText
	
MembersRoomIrisScript:
	jumptextfaceplayer MembersRoomIrisText
	
MembersRoomCaitlinScript:
	jumptextfaceplayer MembersRoomCaitlinText
	
MembersRoomCynthiaScript:
	jumptextfaceplayer MembersRoomCynthiaText
	
MembersRoomHughScript:
	jumptextfaceplayer MembersRoomHughText
	
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
	
MembersRoomCherenLeaveMovement1:
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step_end
	
MembersRoomCherenLeaveMovement2:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end
	
MembersRoomCherenText:
	text "Oh, <PLAY_G>!"
	
	para "I heard about what"
	line "happened at the"
	cont "#MON LEAGUE."
	
	para "Congratulations on"
	line "becoming the"
	cont "Champion!"
	
	para "This area is an"
	line "exclusive spot"
	
	para "where Champions"
	line "and members of the"
	
	para "#MON LEAGUE"
	line "meet with each"
	cont "other."
	
	para "Hang around, and"
	line "you may just meet"
	
	para "some incredible"
	line "#MON trainers!"
	
	para "By the way, I"
	line "heard a rumor that"
	
	para "a strange #MON"
	line "was spotted at a"
	
	para "cave inside of"
	line "VICTORY ROAD."
	
	para "Perhaps you may"
	line "want to check it"
	cont "out."
	
	para "Anyway, I'd better"
	line "get back to my"
	
	para "GYM. It was nice"
	line "seeing you,"
	cont "<PLAY_G>."
	done
	
MembersRoomRoodInitialText:
	text "Ah, <PLAY_G>!"
	line "It's me, ROOD, from"
	
	para "the shelter in"
	line "DRIFTVEIL CITY."
	
	para "I want to thank"
	line "you for your help."
	
	para "INFER came back"
	line "home the other"
	
	para "day. We may not"
	line "have reconciled"
	
	para "all of our differ-"
	line "ences yet, but at"
	
	para "least I know she"
	line "is safe."
	
	para "For that, I owe"
	line "you my deepest"
	cont "gratitude."
	
	para "You should come by"
	line "the shelter and"
	cont "visit sometime."
	done
	
MembersRoomRoodAlreadySpokenText:
	text "Ah, hello <PLAY_G>."
	line "How have you been?"
	
	para "You should come by"
	line "the shelter and"
	cont "visit sometime."
	done
	
MembersRoomRoodReadyForBattleText:
	text "Ah, <PLAY_G>, it's"
	line "good to see you."
	
	para "I was impressed"
	line "watching your"
	cont "battle with HUGH."
	
	para "I can tell you are"
	line "a truly compass-"
	cont "ionate #MON"
	cont "trainer."
	
	para "Although I dislike"
	line "battling, I under-"
	cont "stand how #MON"
	
	para "battles bring"
	line "people and #MON"
	cont "closer together."
	
	para "That is why I"
	line "would like to"
	
	para "have a #MON"
	line "battle with you."
	
	para "Please, meet me at"
	line "the shelter in"
	cont "DRIFTVEIL CITY."
	
	para "I am eager to see"
	line "your bond with"
	cont "your #MON."
	done
	
MembersRoomRoodAlreadyBeatenText:
	text "Ah, <PLAY_G>, it's"
	line "good to see you."
	
	para "Your skill in"
	line "raising #MON"
	cont "impresses me."
	
	para "If you don't mind,"
	line "I would like to"
	
	para "see the bond"
	line "between you and"
	cont "your #MON."
	
	para "Please, meet me at"
	line "the shelter in"
	cont "DRIFTVEIL CITY."
	
	para "I will be awaiting"
	line "your arrival."
	done
	
MembersRoomMarlonText:
	text "Yo, <PLAY_G>,"
	line "how's it hangin'?"
	
	para "A trainer like you"
	line "must always be"
	
	para "seekin' out a new"
	line "challenge, huh?"
	
	para "Well, I heard some"
	line "news that a"
	
	para "totally radical"
	line "trainer's been"
	
	para "stayin' in one of"
	line "the villas over in"
	cont "UNDELLA TOWN!"
	
	para "Who knows? Maybe"
	line "you're in for a"
	cont "rockin' battle!"
	done
	
MembersRoomAlderInitialText:
	text "Hm? I haven't seen"
	line "you around here"
	cont "before."
	
	para "The name's ALDER."
	line "I was the Champion"
	
	para "of the #MON"
	line "LEAGUE once,"
	
	para "though that was a"
	line "while ago now."
	
	para "I mostly keep to"
	line "my home in"
	
	para "FLOCCESY TOWN now,"
	line "and teach the"
	cont "local kids."
	
	para "You should come by"
	line "sometime! Maybe I"
	
	para "could even teach"
	line "you something!"
	done
	
MembersRoomAlderAlreadySpokenText:
	text "Hi, <PLAY_G>. Are"
	line "you keeping up"
	cont "your training?"
	
	para "You should come by"
	line "my dojo in"
	
	para "FLOCCESY TOWN"
	line "sometime. Maybe I"
	
	para "could even teach"
	line "you something!"
	done
	
MembersRoomIrisText:
	text "Hi, <PLAY_G>!"
	
	para "I really want to"
	line "see how strong you"
	
	para "are, now that you"
	line "beat the #MON"
	cont "LEAGUE!"
	
	para "I'll be waiting"
	line "for you at my"
	
	para "house in OPELUCID"
	line "CITY, if you want"
	cont "to battle!"
	done
	
MembersRoomCaitlinText:
	text "Hmf…"
	
	para "You've interrupted"
	line "my nap…"
	
	para "Oh, it's you. That"
	line "trainer from"
	cont "before."
	
	para "You were a satis-"
	line "fying challenge"
	
	para "the last time we"
	line "battled. If you'd"
	
	para "like another"
	line "match, you can"
	
	para "find me at my"
	line "villa in UNDELLA"
	cont "TOWN."
	
	para "Just don't make it"
	line "a bore."
	done
	
MembersRoomCynthiaText:
	text "Oh, <PLAY_G>, it's"
	line "you! I've been"
	
	para "traveling UNOVA,"
	line "looking for strong"
	
	para "#MON trainers"
	line "to challenge."
	
	para "How good to have"
	line "run into you here!"
	
	para "If you'd like to"
	line "challenge me"
	
	para "again, you can"
	line "come visit me at"
	
	para "CAITLIN's villa in"
	line "UNDELLA TOWN,"
	
	para "where I've been"
	line "staying."
	
	para "I look forward to"
	line "battling you!"
	done
	
MembersRoomHughText:
	text "Hey, <PLAY_G>!"
	
	para "I've been thinking"
	line "on what I need to"
	
	para "become stronger,"
	line "and I'm ready to"
	
	para "test out what I've"
	line "come up with. You"
	
	para "should come meet"
	line "me at the shelter"
	
	para "in DRIFTVEIL CITY,"
	line "and I'll show you"
	cont "what I've learned."
	done
	
MembersRoomElesaText:
	text "Oh, <PLAY_G>, is"
	line "it? You're the"
	
	para "new champion,"
	line "right?"
	
	para "I'm ELESA, of the"
	line "ELITE FOUR."
	
	para "Listen, I was"
	line "paying a visit to"
	
	para "my hometown in"
	line "NIMBASA CITY, when"
	
	para "I ran into a"
	line "trainer I remember"
	
	para "challenging back"
	line "when I was a GYM"
	cont "LEADER there."
	
	para "They were young,"
	line "but they certainly"
	
	para "left an impression"
	line "on me!"
	
	para "You may be able to"
	line "find them hanging"
	
	para "around at the old"
	line "PARK, where my GYM"
	cont "used to be."
	done
	
MembersRoomBiancaText:
	text "Oh, <PLAY_G>, it's"
	line "good to see you!"
	
	para "You've certainly"
	line "gotten much"
	
	para "stronger as a"
	line "#MON trainer"
	
	para "than when we first"
	line "met!"
	
	para "speaking of which…"
	
	para "An old friend of"
	line "mine stopped by to"
	cont "visit today!"
	
	para "They're staying in"
	line "NUVEMA TOWN for a"
	
	para "while, if you want"
	line "to go and say hi!"
	
	para "Tell them the"
	line "PROF. sent you!"
	cont "Hee hee!"
	done
	
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

	db 12 ; object events
	object_event  2,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MembersRoomClerk1Script, -1
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MembersRoomClerk2Script, -1
	object_event  8,  4, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MembersRoomCherenScript, EVENT_MEMBERS_ROOM_CHEREN
	object_event 11,  6, SPRITE_MEMBERS_ROOM_BLUE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MembersRoomMarlonScript, EVENT_MEMBERS_ROOM_MARLON
	object_event  2,  6, SPRITE_ROOD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MembersRoomRoodScript, EVENT_MEMBERS_ROOM_ROOD
	object_event 11,  3, SPRITE_ALDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MembersRoomAlderScript, EVENT_MEMBERS_ROOM_ALDER
	object_event  7,  2, SPRITE_MEMBERS_ROOM_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MembersRoomIrisScript, EVENT_MEMBERS_ROOM_IRIS
	object_event 11,  4, SPRITE_MEMBERS_ROOM_BROWN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MembersRoomCaitlinScript, EVENT_MEMBERS_ROOM_CAITLIN
	object_event  1,  4, SPRITE_MEMBERS_ROOM_BROWN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MembersRoomCynthiaScript, EVENT_MEMBERS_ROOM_CYNTHIA
	object_event  8,  3, SPRITE_HUGH, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MembersRoomHughScript, EVENT_MEMBERS_ROOM_HUGH
	object_event 10,  2, SPRITE_ELESA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MembersRoomElesaScript, EVENT_MEMBERS_ROOM_ELESA
	object_event  5,  4, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MembersRoomBiancaScript, EVENT_MEMBERS_ROOM_BIANCA
	