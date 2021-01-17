	const_def 2 ; object constants
	const MISTRALTONAIRPORT_RECEPTIONIST
	const MISTRALTONAIRPORT_POKEFANF
	const MISTRALTONAIRPORT_OFFICER
	const MISTRALTONAIRPORT_TEACHER

MistraltonAirport_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
MistraltonAirportReceptionistScript:
	jumptextfaceplayer MistraltonAirportReceptionistText
	
MistraltonAirportTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_AMULET_COIN
	iftrue .gotcoin
	writetext MistraltonAirportAskMoneyText
	special PlaceMoneyTopRight
	yesorno
	iffalse .refused
	checkmoney YOUR_MONEY, 5000
	ifequal HAVE_LESS, .nomoney
	writetext MistraltonAirportThanksText
	buttonsound
	verbosegiveitem AMULET_COIN
	iffalse .noroom
	setevent EVENT_GOT_AMULET_COIN
	takemoney YOUR_MONEY, 5000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
.gotcoin
	writetext MistraltonAirportGotCoinText
	waitbutton
.noroom
	closetext
	end
	
.refused
	writetext MistraltonAirportRefusedMoneyText
	waitbutton
	closetext
	end
	
.nomoney
	writetext MistraltonAirportNoMoneyText
	waitbutton
	closetext
	end
	
	
MistraltonAirportPokefanFScript:
	jumptextfaceplayer MistraltonAirportPokefanFText
	
MistraltonAirportOfficerScript:
	jumptextfaceplayer MistraltonAirportOfficerText

MistraltonAirportReceptionistText:
	text "Welcome to the"
	line "MISTRALTON CITY"
	cont "airport."
	
	para "You will need a"
	line "BOARDINGPASS if"
	cont "you want to take"
	cont "the plane."
	done
	
MistraltonAirportAskMoneyText:
	text "Please, could you"
	line "spare some money?"
	
	para "I just need ¥5000,"
	line "would you please"
	cont "lend it to me?"
	done
	
MistraltonAirportRefusedMoneyText:
	text "Really? Kids"
	line "these days are so"
	cont "stingy…"
	done
	
MistraltonAirportNoMoneyText:
	text "Hey! You don't"
	line "even have that"
	cont "much!"
	done
	
MistraltonAirportThanksText:
	text "Thank you so much!"
	line "I must thank you"
	cont "somehow."
	
	para "Here, take this"
	line "coin with you."
	
	para "Maybe it will"
	line "bring you luck!"
	done
	
MistraltonAirportGotCoinText:
	text "Thank you for"
	line "your generosity!"
	done

MistraltonAirportPokefanFText:
	text "I'm planning my"
	line "trip to LENTIMAS"
	cont "TOWN."
	
	para "It will be nice to"
	line "spend some time"
	cont "out in the"
	cont "mountains."
	done

MistraltonAirportOfficerText:
	text "We mostly ship out"
	line "cargo planes, but"
	cont "You can take a"
	
	para "passenger flight"
	line "if you have a"
	cont "BOARDINGPASS."
	done

MistraltonAirport_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6, 11, MISTRALTON_CITY, 7
	warp_event  7, 11, MISTRALTON_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  7,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonAirportReceptionistScript, -1
	object_event  3,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MistraltonAirportPokefanFScript, -1
	object_event 10,  9, SPRITE_OFFICER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonAirportOfficerScript, -1
	object_event 12,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MistraltonAirportTeacherScript, -1
	