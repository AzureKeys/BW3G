	const_def 2 ; object constants
	const R5TRUCK_POKEFAN_M

Rt5Truck_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt5TruckBerryManScript:
	faceplayer
	opentext
	checkflag ENGINE_BERRY_MAN
	iftrue .AlreadyGotBerry
	writetext Rt5TruckGiveBerryText
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
	setflag ENGINE_BERRY_MAN
.AlreadyGotBerry
	writetext Rt5TruckComeBackText
	waitbutton
	closetext
	end

Rt5TruckGiveBerryText:
	text "Cooking with"
	line "BERRIES is very"
	
	para "healthy! Even"
	line "#MON love them!"
	
	para "Here, have a"
	line "BERRY for your"
	cont "#MON."
	done

Rt5TruckComeBackText:
	text "Come back tomorrow"
	line "for another BERRY!"
	done

Rt5Truck_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  5, R_5, 5
	warp_event  3,  5, R_5, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Rt5TruckBerryManScript, -1
	