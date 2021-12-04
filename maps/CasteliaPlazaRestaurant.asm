	const_def 2 ; object constants
	const CASTELIAPLAZARESTAURANT_RECEPTIONIST
	const CASTELIAPLAZARESTAURANT_POKEFAN_M
	const CASTELIAPLAZARESTAURANT_BUENA
	const CASTELIAPLAZARESTAURANT_AMANITA
	const CASTELIAPLAZARESTAURANT_BLOCKER

CasteliaPlazaRestaurant_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CasteliaPlazaRestaurantAmanitaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_AMANITA
	iftrue .GotMon
	writetext CasteliaPlazaRestaurantAmanitaIntroText
	buttonsound
	yesorno
	iffalse .Declined
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext CasteliaPlazaRestaurantAmanitaThanksText
	buttonsound
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .GiveTepig
	checkevent EVENT_GOT_SNIVY
	iftrue .GiveOshawott
; GiveSnivy
	pokenamemem SNIVY, MEM_BUFFER_0
	writetext CasteliaPlazaRestaurantReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SNIVY, 10
	setevent EVENT_GOT_A_POKEMON_FROM_AMANITA
	jump .GotMon
.GiveTepig
	pokenamemem TEPIG, MEM_BUFFER_0
	writetext CasteliaPlazaRestaurantReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TEPIG, 10
	setevent EVENT_GOT_A_POKEMON_FROM_AMANITA
	jump .GotMon
.GiveOshawott
	pokenamemem OSHAWOTT, MEM_BUFFER_0
	writetext CasteliaPlazaRestaurantReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke OSHAWOTT, 10
	setevent EVENT_GOT_A_POKEMON_FROM_AMANITA
; fallthrough
.GotMon
	writetext CasteliaPlazaRestaurantAmanitaGotMonText
	waitbutton
	closetext
	end
	
.Declined
	writetext CasteliaPlazaRestaurantAmanitaDeclinedText
	waitbutton
	closetext
	end
	
.NoRoom
	writetext CasteliaPlazaRestaurantAmanitaNoRoomText
	waitbutton
	closetext
	end
	
CasteliaPlazaRestaurantBeautyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_ATTRACT
	iftrue .GotTM
	writetext CasteliaPlazaRestaurantBeautyIntroText
	buttonsound
	verbosegiveitem TM_ATTRACT
	setevent EVENT_GOT_TM_ATTRACT
.GotTM
	writetext CasteliaPlazaRestaurantBeautyGotTMText
	waitbutton
	closetext
	end

CasteliaPlazaRestaurantReceptionistScript:
	jumptextfaceplayer CasteliaPlazaRestaurantReceptionistText

CasteliaPlazaRestaurantPokefanMScript:
	jumptextfaceplayer CasteliaPlazaRestaurantPokefanMText

CasteliaPlazaRestaurantBlockerScript:
	jumptextfaceplayer CasteliaPlazaRestaurantBlockerText

CasteliaPlazaRestaurantElevatorButton:
	jumpstd elevatorbutton

CasteliaPlazaRestaurantReceivedMonText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CasteliaPlazaRestaurantAmanitaIntroText:
	text "Oh, hi! Are you a"
	line "#MON trainer?"
	
	para "My name's AMANITA."
	line "I set up the #-"
	
	para "MON storage system"
	line "here in UNOVA!"
	
	para "I live in STRIATON"
	line "CITY, but I travel"
	
	para "to CASTELIA often"
	line "for work."
	
	para "Listen! While I"
	line "was working on the"
	
	para "PC storage network"
	line "here, a #MON"
	
	para "suddenly came out"
	line "from the PC!"
	
	para "I've been keeping"
	line "it, but I don't"
	
	para "have time to care"
	line "for it properly."
	
	para "I think it would"
	line "be much happier"
	cont "with a trainer!"
	
	para "Would you take it"
	line "with you?"
	done

CasteliaPlazaRestaurantAmanitaThanksText:
	text "Oh, thank you!"
	
	para "I hope you take"
	line "good care of it!"
	done

CasteliaPlazaRestaurantAmanitaNoRoomText:
	text "Oh, you don't have"
	line "any room for"
	
	para "another #MON"
	line "right now."
	done

CasteliaPlazaRestaurantAmanitaDeclinedText:
	text "Oh, well that's"
	line "too bad. Come back"
	
	para "if you change your"
	line "mind."
	done

CasteliaPlazaRestaurantAmanitaGotMonText:
	text "Good luck on your"
	line "#MON journey,"
	cont "trainer!"
	done

CasteliaPlazaRestaurantBeautyIntroText:
	text "Oh! Your #MON"
	line "are so darling!"
	
	para "Here, you should"
	line "have this. It's"
	
	para "just perfect for"
	line "such cute #MON!"
	done

CasteliaPlazaRestaurantBeautyGotTMText:
	text "Teach your #MON"
	line "that TM, and they"
	
	para "will become just"
	line "irresistable!"
	done

CasteliaPlazaRestaurantReceptionistText:
	text "Welcome to the"
	line "CASTELIA PLAZA"
	cont "restaurant."
	
	para "We're sorry, you"
	line "will need to make"
	
	para "a reservation in"
	line "advance if you'd"
	cont "like to be served."
	done

CasteliaPlazaRestaurantPokefanMText:
	text "I went bust at the"
	line "slots. I'm flat"
	cont "broke!"
	
	para "I got frustrated"
	line "and threw out my"
	
	para "COIN CASE at the"
	line "docks."
	done

CasteliaPlazaRestaurantBlockerText:
	text "Sorry, the floors"
	line "beyond here are"
	
	para "for residents"
	line "only."
	done

CasteliaPlazaRestaurant_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 10,  0, CASTELIA_PLAZA_PRIZE_ROOM, 2
	warp_event 12,  0, CASTELIA_PLAZA_ELEVATOR, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13,  0, BGEVENT_READ, CasteliaPlazaRestaurantElevatorButton

	db 5 ; object events
	object_event  2,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaRestaurantReceptionistScript, -1
	object_event  2,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaRestaurantPokefanMScript, -1
	object_event  5,  9, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaRestaurantBeautyScript, -1
	object_event 11, 10, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaRestaurantAmanitaScript, -1
	object_event  7,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaRestaurantBlockerScript, -1
	