	const_def 2 ; object constants
	const LENTIMASAIRPORT_RECEPTIONIST

LentimasAirport_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene:
	end
	
LentimasAirportReceptionistScript:
	faceplayer
	opentext
	writetext LentimasAirportRideText
	yesorno
	iffalse .DecidedNotToRide
	checkitem BOARDINGPASS
	iffalse .PassNotInBag
	writetext LentimasAirportHavePassText
	waitbutton
	closetext
	applymovement LENTIMASAIRPORT_RECEPTIONIST, LentimasAirportReceptionistMovement
	applymovement PLAYER, LentimasAirportPlayerMovement
	applymovement PLAYER, .MovementBoardThePlane
	warpcheck
	newloadmap MAPSETUP_TRAIN
	end

.MovementBoardThePlane:
	hide_person
	step_end

.PassNotInBag:
	writetext LentimasAirportNoPassText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext LentimasAirportRefusedText
	waitbutton
	closetext
	end

Script_ArriveFromMistralton:
	applymovement PLAYER, LentimasAirportShowPersonMovement
	applymovement LENTIMASAIRPORT_RECEPTIONIST, LentimasAirportReceptionistArriveMovement
	applymovement PLAYER, LentimasAirportArriveMovement
	applymovement LENTIMASAIRPORT_RECEPTIONIST, LentimasAirportReceptionistResetMovement
	opentext
	writetext LentimasAirportArrivedText
	waitbutton
	closetext
	end
	
LentimasAirportShowPersonMovement:
	show_person
	step_end

LentimasAirportReceptionistMovement:
	step UP
	step LEFT
	turn_head RIGHT
	step_end

LentimasAirportReceptionistArriveMovement:
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end

LentimasAirportReceptionistResetMovement:
	step RIGHT
	step UP
	turn_head DOWN
	step_end

LentimasAirportPlayerMovement:
	step UP
	step UP
	step UP
	step_end

LentimasAirportArriveMovement:
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

LentimasAirportRideText:
	text "Welcome to the"
	line "LENTIMAS TOWN"
	cont "airport."
	
	para "We offer flights"
	line "to MISTRALTON"
	cont "CITY."
	
	para "Are you coming"
	line "on board?"
	done

LentimasAirportNoPassText:	
	text "Sorry, you'll need"
	line "a BOARDINGPASS if"
	cont "you want to take"
	cont "the plane."
	done

LentimasAirportRefusedText:	
	text "Please come back"
	line "if you'd like to"
	
	para "take a flight to"
	line "MISTRALTON CITY."
	done

LentimasAirportHavePassText:	
	text "Okay, let me check"
	line "your BOARDINGPASS…"
	
	para "Okay, right this"
	line "way!"
	done

LentimasAirportArrivedText:	
	text "Thank you for"
	line "flying MISTRALTON"
	cont "AIRWAYS."
	
	para "Enjoy your trip!"
	done

LentimasAirport_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  7, LENTIMAS_TOWN, 5
	warp_event  5,  7, LENTIMAS_TOWN, 5
	warp_event  5,  0, PLANE_LEFT, 1

	db 1 ; coord events
	coord_event  5,  1, SCENE_DEFAULT, Script_ArriveFromMistralton

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, LentimasAirportReceptionistScript, -1
	