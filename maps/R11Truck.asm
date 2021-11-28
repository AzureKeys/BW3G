	const_def 2 ; object constants
	const R11TRUCK_SUPER_NERD

Rt11Truck_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RockCollectorScript:
	faceplayer
	opentext
	checkflag ENGINE_ROCK_COLLECTOR
	iftrue .AlreadyGotRock
	writetext RockCollectorIntroText
	special PlaceMoneyTopRight
	yesorno
	iffalse .no_sale
	checkmoney YOUR_MONEY, 2000
	ifequal HAVE_LESS, .no_money
	checkcode VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday
;Sunday
	verbosegiveitem EVERSTONE
	iffalse .no_room
	jump .GotRock
.Monday
	verbosegiveitem DAMP_ROCK
	iffalse .no_room
	jump .GotRock
.Tuesday
	verbosegiveitem SMOOTH_ROCK
	iffalse .no_room
	jump .GotRock
.Wednesday
	verbosegiveitem ICY_ROCK
	iffalse .no_room
	jump .GotRock
.Thursday
	verbosegiveitem HEAT_ROCK
	iffalse .no_room
	jump .GotRock
.Friday
	verbosegiveitem KINGS_ROCK
	iffalse .no_room
	jump .GotRock
.Saturday
	verbosegiveitem HARD_STONE
	iffalse .no_room
.GotRock
	takemoney YOUR_MONEY, 2000
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_ROCK_COLLECTOR
.AlreadyGotRock
	writetext RockCollectorComeBackText
	waitbutton
	closetext
	end

.no_sale
	writetext RockCollectorNoSaleText
	waitbutton
	closetext
	end

.no_money
	writetext RockCollectorNoMoneyText
	waitbutton
	closetext
	end

.no_room
	closetext
	end

RockCollectorIntroText:
	text "Hi there, they"
	line "call me the ROCK"
	cont "COLLECTOR."
	
	para "I've gathered rare"
	line "rocks and stones"
	cont "from all over!"
	
	para "For just ¥2000,"
	line "I'll sell you a"
	
	para "rock from my"
	line "collection."
	
	para "How about it?"
	done

RockCollectorComeBackText:
	text "I'll sell you a"
	line "different rock if"
	
	para "you come back"
	line "tomorrow!"
	done

RockCollectorNoSaleText:
	text "Are you sure?"
	line "You won't find a"
	
	para "rock like this"
	line "anywhere else!"
	done

RockCollectorNoMoneyText:
	text "Uh-oh, looks like"
	line "you don't have the"
	cont "money for it."
	done

Rt11Truck_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  5, R_11, 5
	warp_event  3,  5, R_11, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RockCollectorScript, -1
	