	const_def 2 ; object constants
	const ASPERTIABLACKBELTHOUSE_BLACK_BELT

AspertiaBlackbeltHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AspertiaBlackbeltHouseMan:
	faceplayer
	opentext
	checkevent EVENT_GOT_FOCUS_BAND
	iftrue .GotBand
	writetext AspertiaBlackbeltHouseGiveBandText
	buttonsound
	verbosegiveitem FOCUS_BAND
	iffalse .NoRoom
	setevent EVENT_GOT_FOCUS_BAND
.GotBand:
	writetext AspertiaBlackbeltHouseGaveBandText
	waitbutton
.NoRoom:
	closetext
	end

AspertiaBlackbeltHouseGiveBandText:
	text "Hm? Are you"
	line "training to become"
	cont "a master?"

	para "You must steel"
	line "your resolve and"
	cont "clear your focus!"
	
	para "Here, take this!"
	done

AspertiaBlackbeltHouseGaveBandText:
	text "If your #MON"
	line "wears that band,"
	
	para "it may give it the"
	line "focus to survive"

	para "an attack that"
	line "would otherwise"
	cont "take it out."
	
	para "Wear it with"
	line "pride!"
	done

AspertiaBlackbeltHouseBookshelf:
	jumpstd difficultbookshelf

AspertiaBlackbeltHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ASPERTIA_CITY, 2
	warp_event  3,  7, ASPERTIA_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AspertiaBlackbeltHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, AspertiaBlackbeltHouseBookshelf

	db 1 ; object events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AspertiaBlackbeltHouseMan, -1
