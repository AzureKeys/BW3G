	const_def 2 ; object constants
	const MISTRALTONAIRPORT_RECEPTIONIST
	const MISTRALTONAIRPORT_POKEFANF
	const MISTRALTONAIRPORT_OFFICER
	const MISTRALTONAIRPORT_TEACHER

MistraltonAirport_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene:
	end
	
MistraltonAirportReceptionistScript:
	faceplayer
	opentext
	writetext MistraltonAirportRideText
	yesorno
	iffalse .DecidedNotToRide
	checkitem BOARDINGPASS
	iffalse .PassNotInBag
	writetext MistraltonAirportHavePassText
	waitbutton
	closetext
	applymovement MISTRALTONAIRPORT_RECEPTIONIST, MistraltonAirportReceptionistMovement
	applymovement PLAYER, MistraltonAirportPlayerMovement
	applymovement PLAYER, .MovementBoardThePlane
	warpcheck
	newloadmap MAPSETUP_TRAIN
	end

.MovementBoardThePlane:
	hide_person
	step_end

.PassNotInBag:
	writetext MistraltonAirportNoPassText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext MistraltonAirportRefusedText
	waitbutton
	closetext
	end

Script_ArriveFromLentimas:
	applymovement PLAYER, MistraltonAirportShowPersonMovement
	applymovement MISTRALTONAIRPORT_RECEPTIONIST, MistraltonAirportReceptionistArriveMovement
	applymovement PLAYER, MistraltonAirportArriveMovement
	applymovement MISTRALTONAIRPORT_RECEPTIONIST, MistraltonAirportReceptionistResetMovement
	opentext
	writetext MistraltonAirportArrivedText
	waitbutton
	closetext
	end
	
MistraltonAirportTeacherScript:
	faceplayer
	opentext
	writetext MistraltonAirportAskHeartScaleText
	yesorno
	iffalse .refused
	checkitem HEART_SCALE
	iffalse .no_scale
	writetext MistraltonAirportThanksText
	buttonsound
	random 4
	ifequal 0, .red
	ifequal 1, .blue
	ifequal 2, .yellow
	verbosegiveitem GREEN_SHARD
	iffalse .noroom
	jump .take_scale
.red
	verbosegiveitem RED_SHARD
	iffalse .noroom
	jump .take_scale
.blue
	verbosegiveitem BLUE_SHARD
	iffalse .noroom
	jump .take_scale
.yellow
	verbosegiveitem YELLOW_SHARD
	iffalse .noroom
.take_scale
	takeitem HEART_SCALE
	writetext MistraltonAirportGaveScaleText
	waitbutton
.noroom
	closetext
	end
	
.refused
	writetext MistraltonAirportRefusedScaleText
	waitbutton
	closetext
	end
	
.no_scale
	writetext MistraltonAirportNoScaleText
	waitbutton
	closetext
	end
	
MistraltonAirportPokefanFScript:
	jumptextfaceplayer MistraltonAirportPokefanFText
	
MistraltonAirportOfficerScript:
	jumptextfaceplayer MistraltonAirportOfficerText
	
MistraltonAirportShowPersonMovement:
	show_person
	step_end

MistraltonAirportReceptionistMovement:
	step UP
	step LEFT
	turn_head RIGHT
	step_end

MistraltonAirportReceptionistArriveMovement:
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end

MistraltonAirportReceptionistResetMovement:
	step RIGHT
	step UP
	turn_head DOWN
	step_end

MistraltonAirportPlayerMovement:
	step UP
	step UP
	step UP
	step_end

MistraltonAirportArriveMovement:
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

MistraltonAirportRideText:
	text "Welcome to the"
	line "MISTRALTON CITY"
	cont "airport."
	
	para "We offer flights"
	line "to LENTIMAS TOWN."
	
	para "Are you coming"
	line "on board?"
	done

MistraltonAirportNoPassText:	
	text "Sorry, you'll need"
	line "a BOARDINGPASS if"
	cont "you want to take"
	cont "the plane."
	done

MistraltonAirportRefusedText:	
	text "Please come back"
	line "if you'd like to"
	
	para "take a flight to"
	line "LENTIMAS TOWN."
	done

MistraltonAirportHavePassText:	
	text "Okay, let me check"
	line "your BOARDINGPASS…"
	
	para "Okay, right this"
	line "way!"
	done

MistraltonAirportArrivedText:	
	text "Thank you for"
	line "flying MISTRALTON"
	cont "AIRWAYS."
	
	para "Enjoy your trip!"
	done
	
MistraltonAirportAskHeartScaleText:
	text "Hi, I'm looking"
	line "for HEART SCALES!"
	
	para "If you have a"
	line "HEART SCALE, would"
	
	para "you mind giving it"
	line "to me in exchange"
	cont "for a SHARD?"
	done
	
MistraltonAirportRefusedScaleText:
	text "Aww, that's too"
	line "bad…"
	done
	
MistraltonAirportNoScaleText:
	text "Oh, it looks like"
	line "you don't have any"
	cont "HEART SCALEs!"
	done
	
MistraltonAirportThanksText:
	text "Okay, you can have"
	line "this in return!"
	done
	
MistraltonAirportGaveScaleText:
	text "<PLAY_G> handed"
	line "over one HEART"
	cont "SCALE."
	
	para "Thanks! If you"
	line "bring me another"
	
	para "HEART SCALE, I'll"
	line "give you another"
	cont "SHARD in return!"
	done

MistraltonAirportPokefanFText:
	text "I'm planning my"
	line "trip to LENTIMAS"
	cont "TOWN."
	
	para "It will be nice to"
	line "spend some time"
	
	para "out in the"
	line "mountains."
	done

MistraltonAirportOfficerText:
	text "We mostly ship out"
	line "cargo planes, but"
	cont "You can take a"
	
	para "passenger flight"
	line "if you have a"
	cont "BOARDINGPASS."
	done

MistraltonAirport_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  6, 11, MISTRALTON_CITY, 7
	warp_event  7, 11, MISTRALTON_CITY, 7
	warp_event  7,  4, PLANE_RIGHT, 1

	db 1 ; coord events
	coord_event  7,  5, SCENE_DEFAULT, Script_ArriveFromLentimas

	db 0 ; bg events

	db 4 ; object events
	object_event  7,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonAirportReceptionistScript, -1
	object_event  3,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MistraltonAirportPokefanFScript, -1
	object_event 10,  9, SPRITE_OFFICER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonAirportOfficerScript, -1
	object_event 12,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MistraltonAirportTeacherScript, -1
	