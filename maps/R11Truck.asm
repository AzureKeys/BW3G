	const_def 2 ; object constants
	const R11TRUCK_POKEFAN_M

Rt11Truck_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt11TruckBerryManScript:
	faceplayer
	opentext
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGotBerry
	writetext Rt11TruckGiveBerryText
	buttonsound
	checkcode VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday
;Sunday
	verbosegiveitem BURNT_BERRY
	jump .GotBerry
.Monday
	verbosegiveitem MINT_BERRY
	jump .GotBerry
.Tuesday
	verbosegiveitem PSNCUREBERRY
	jump .GotBerry
.Wednesday
	verbosegiveitem ICE_BERRY
	jump .GotBerry
.Thursday
	verbosegiveitem PRZCUREBERRY
	jump .GotBerry
.Friday
	verbosegiveitem BITTER_BERRY
	jump .GotBerry
.Saturday
	verbosegiveitem MYSTERYBERRY
.GotBerry
	setflag ENGINE_DAISYS_GROOMING
.AlreadyGotBerry
	writetext Rt11TruckComeBackText
	waitbutton
	closetext
	end

Rt11TruckGiveBerryText:
	text "Cooking with"
	line "BERRIES is very"
	
	para "healthy! Even"
	line "#MON love them!"
	
	para "Here, have a"
	line "BERRY for your"
	cont "#MON."
	done

Rt11TruckComeBackText:
	text "Come back tomorrow"
	line "for another BERRY!"
	done

Rt11Truck_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  5, R_11, 5
	warp_event  3,  5, R_11, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Rt11TruckBerryManScript, -1
	