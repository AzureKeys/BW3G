	const_def 2 ; object constants
	const ACCUMULAHOUSE_TWIN_1
	const ACCUMULAHOUSE_TWIN_2
	const ACCUMULAHOUSE_TWIN_3

AccumulaHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
AccumulaHouseTwin1Script:
	faceplayer
	opentext
	checkevent EVENT_ACCUMULA_TOWN_FIRE_STONE
	iftrue .gotstone
	writetext AccumulaHouseTwin1Text
	buttonsound
	yesorno
	iffalse .declined
	checkitem SODA_POP
	iffalse .donthave
	writetext AccumulaHouseGiveText
	buttonsound
	verbosegiveitem FIRE_STONE
	iffalse .noroom
	takeitem SODA_POP
	setevent EVENT_ACCUMULA_TOWN_FIRE_STONE
.noroom
	closetext
	end
	
.gotstone
	writetext AccumulaHouseGaveText
	waitbutton
	closetext
	end
	
.declined
	writetext AccumulaHouseDeclinedText
	waitbutton
	closetext
	end
	
.donthave
	writetext AccumulaHouseDontHaveText
	waitbutton
	closetext
	end
	
AccumulaHouseTwin2Script:
	faceplayer
	opentext
	checkevent EVENT_ACCUMULA_TOWN_WATER_STONE
	iftrue .gotstone
	writetext AccumulaHouseTwin2Text
	buttonsound
	yesorno
	iffalse .declined
	checkitem FRESH_WATER
	iffalse .donthave
	writetext AccumulaHouseGiveText
	buttonsound
	verbosegiveitem WATER_STONE
	iffalse .noroom
	takeitem FRESH_WATER
	setevent EVENT_ACCUMULA_TOWN_WATER_STONE
.noroom
	closetext
	end
	
.gotstone
	writetext AccumulaHouseGaveText
	waitbutton
	closetext
	end
	
.declined
	writetext AccumulaHouseDeclinedText
	waitbutton
	closetext
	end
	
.donthave
	writetext AccumulaHouseDontHaveText
	waitbutton
	closetext
	end
	
AccumulaHouseTwin3Script:
	faceplayer
	opentext
	checkevent EVENT_ACCUMULA_TOWN_LEAF_STONE
	iftrue .gotstone
	writetext AccumulaHouseTwin3Text
	buttonsound
	yesorno
	iffalse .declined
	checkitem LEMONADE
	iffalse .donthave
	writetext AccumulaHouseGiveText
	buttonsound
	verbosegiveitem LEAF_STONE
	iffalse .noroom
	takeitem LEMONADE
	setevent EVENT_ACCUMULA_TOWN_LEAF_STONE
.noroom
	closetext
	end
	
.gotstone
	writetext AccumulaHouseGaveText
	waitbutton
	closetext
	end
	
.declined
	writetext AccumulaHouseDeclinedText
	waitbutton
	closetext
	end
	
.donthave
	writetext AccumulaHouseDontHaveText
	waitbutton
	closetext
	end

AccumulaHouseBookshelf:
	jumpstd magazinebookshelf
	
AccumulaHouseTwin1Text:
	text "I'm thirsty, do"
	line "you have some"
	cont "SODA POP?"
	done
	
AccumulaHouseTwin2Text:
	text "I'm thirsty, do"
	line "you have some"
	cont "FRESH WATER?"
	done
	
AccumulaHouseTwin3Text:
	text "I'm thirsty, do"
	line "you have some"
	cont "LEMONADE?"
	done
	
AccumulaHouseGiveText:
	text "Thanks! Here,"
	line "have this!"
	done
	
AccumulaHouseGaveText:
	text "Thanks for the"
	line "drink!"
	done
	
AccumulaHouseDeclinedText:
	text "Aww, please?"
	done
	
AccumulaHouseDontHaveText:
	text "Hey, you don't"
	line "have any!"
	done

AccumulaHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ACCUMULA_TOWN, 5
	warp_event  3,  7, ACCUMULA_TOWN, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AccumulaHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, AccumulaHouseBookshelf

	db 3 ; object events
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AccumulaHouseTwin1Script, -1
	object_event  4,  2, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AccumulaHouseTwin2Script, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaHouseTwin3Script, -1
	