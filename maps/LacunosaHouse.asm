	const_def 2 ; object constants
	const LACUNOSAHOUSE_GIRL1
	const LACUNOSAHOUSE_GIRL2

LacunosaHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LacunosaHouseGirl1Script:
	faceplayer
	opentext
	checkevent EVENT_LACUNOSA_HOUSE_BERRY_1
	iftrue .GotBerry
	writetext LacunosaHouseGiveBerryText
	buttonsound
	verbosegiveitem PSNCUREBERRY
	iffalse .NoRoom
	setevent EVENT_LACUNOSA_HOUSE_BERRY_1
.GotBerry:
	writetext LacunosaHouseCheckBerriesText
	waitbutton
.NoRoom:
	closetext
	end

LacunosaHouseGirl2Script:
	faceplayer
	opentext
	checkevent EVENT_LACUNOSA_HOUSE_BERRY_2
	iftrue .GotBerry
	writetext LacunosaHouseGiveBerryText
	buttonsound
	verbosegiveitem PRZCUREBERRY
	iffalse .NoRoom
	setevent EVENT_LACUNOSA_HOUSE_BERRY_2
.GotBerry:
	writetext LacunosaHouseCheckBerriesText
	waitbutton
.NoRoom:
	closetext
	end

LacunosaHouseBookshelf:
	jumpstd magazinebookshelf

LacunosaHouseGiveBerryText:
	text "You know, #MON"
	line "eat BERRIES."

	para "Different BERRIES"
	line "help #MON in"
	cont "different ways."

	para "Here. I'll share"
	line "one with you!"
	done

LacunosaHouseCheckBerriesText:
	text "Check trees for"
	line "BERRIES. They just"
	cont "drop right off."
	done

LacunosaHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, LACUNOSA_TOWN, 3
	warp_event  3,  7, LACUNOSA_TOWN, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, LacunosaHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, LacunosaHouseBookshelf

	db 2 ; object events
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LacunosaHouseGirl1Script, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LacunosaHouseGirl2Script, -1
