	const_def 2 ; object constants
	const NACRENEHOUSE_MAN

NacreneHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NacreneHouseManScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHARCOAL
	iftrue .GotCharcoal
	writetext NacreneHouseGiveCharcoalText
	buttonsound
	verbosegiveitem CHARCOAL
	iffalse .NoRoom
	setevent EVENT_GOT_CHARCOAL
.GotCharcoal
	writetext NacreneHouseGaveCharcoalText
	waitbutton
.NoRoom
	closetext
	end

NacreneHouseBookshelf:
	jumpstd magazinebookshelf

NacreneHouseGiveCharcoalText:
	text "Hi, did you come"
	line "to see my art?"

	para "NACRENE CITY has a"
	line "lively scene for"
	cont "local artists."
	
	para "Here, you should"
	line "try too, take"
	cont "this!"
	done

NacreneHouseGaveCharcoalText:
	text "FIRE type #MON"
	line "love CHARCOAL too."
	
	para "Give it to one to"
	line "hold, and you'll"
	cont "see, it'll become"
	cont "stronger!"
	done

NacreneHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NACRENE_CITY, 3
	warp_event  3,  7, NACRENE_CITY, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, NacreneHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, NacreneHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NacreneHouseManScript, -1
	