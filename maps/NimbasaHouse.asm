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
	verbosegiveitem SOOTHE_BELL
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

	para "You seem like the"
	line "kind of trainer"
	
	para "who is kind to"
	line "your #MON."
	
	para "Here, have this."
	done

NimbasaHouseGaveBellText:
	text "Give that BELL to"
	line "your #MON, and"
	
	para "it will make them"
	line "happier!"
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
	