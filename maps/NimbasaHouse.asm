	const_def 2 ; object constants
	const NIMBASAHOUSE_WOMAN

NimbasaHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaHouseWomanScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SOOTHE_BELL
	iftrue .GotBell
	writetext NimbasaHouseGiveBellText
	buttonsound
	verbosegiveitem CLEANSE_TAG
	iffalse .NoRoom
	setevent EVENT_GOT_SOOTHE_BELL
.GotBell:
	writetext NimbasaHouseGaveBellText
	waitbutton
.NoRoom:
	closetext
	end

NimbasaHouseBookshelf:
	jumpstd magazinebookshelf

NimbasaHouseGiveBellText:
	text "You're a #MON"
	line "trainer, right?"

	para "It must be scary"
	line "when wild #MON"
	cont "are always around."
	
	para "Here, have this."
	done

NimbasaHouseGaveBellText:
	text "Use that tag and"
	line "you'll be"
	
	para "protected from"
	line "wild #MON"
	cont "attacks."
	done

NimbasaHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NIMBASA_CITY, 11
	warp_event  3,  7, NIMBASA_CITY, 11

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, NimbasaHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, NimbasaHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NimbasaHouseWomanScript, -1
	