	const_def 2 ; object constants
	const UNDELLAOLDRODHOUSE_FISHING_GURU

UndellaOldRodHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

UndellaOldRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .AlreadyGotItem
	writetext OfferOldRodText
	yesorno
	iffalse .DontWantIt
	writetext GiveOldRodText
	buttonsound
	verbosegiveitem OLD_ROD
	writetext GaveOldRodText
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.DontWantIt:
	writetext DontWantOldRodText
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext HaveOldRodText
	waitbutton
	closetext
	end
	
OfferOldRodText:
	text "This town is a"
	line "great fishing"
	cont "spot."

	para "How about"
	line "you?"

	para "Would you like one"
	line "of my RODS?"
	done

GiveOldRodText:
	text "Heh, that's good"
	line "to hear."

	para "Now you're an"
	line "angler too!"
	done

GaveOldRodText:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "your ROD."
	done

DontWantOldRodText:
	text "Oh. That's rather"
	line "disappointing…"
	done

HaveOldRodText:
	text "Yo, kid. How are"
	line "they biting?"
	done

UndellaOldRodHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, UNDELLA_TOWN, 3
	warp_event  3,  7, UNDELLA_TOWN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, UndellaOldRodGuru, -1
