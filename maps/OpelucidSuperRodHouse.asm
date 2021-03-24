	const_def 2 ; object constants
	const OPELUCIDSUPERRODHOUSE_FISHING_GURU

OpelucidSuperRodHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OpelucidSuperRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .AlreadyGotItem
	writetext OfferSuperRodText
	yesorno
	iffalse .DontWantIt
	writetext GiveSuperRodText
	buttonsound
	verbosegiveitem SUPER_ROD
	writetext GaveSuperRodText
	waitbutton
	closetext
	setevent EVENT_GOT_SUPER_ROD
	end

.DontWantIt:
	writetext DontWantSuperRodText
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext HaveSuperRodText
	waitbutton
	closetext
	end
	
OfferSuperRodText:
	text "Fishing is great,"
	line "but to catch the"

	para "best fish, you"
	line "need the best rod."

	para "Do you have what"
	line "it takes to be a"
	cont "pro angler?"
	done

GiveSuperRodText:
	text "Yeah, that's the"
	line "spirit!"

	para "Now you can be a"
	line "pro too!"
	done

GaveSuperRodText:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "your ROD."
	done

DontWantSuperRodText:
	text "Oh. That's rather"
	line "disappointing…"
	done

HaveSuperRodText:
	text "Yo, kid. How are"
	line "they biting?"
	done

OpelucidSuperRodHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, OPELUCID_CITY, 7
	warp_event  3,  7, OPELUCID_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OpelucidSuperRodGuru, -1
