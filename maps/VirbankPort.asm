	const_def 2 ; object constants
	const VIRBANKPORT_FERRY_MAN

VirbankPort_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene ; SCENE_PORT_NOTHING
	scene_script .Arrive ; SCENE_PORT_ARRIVED

	db 0 ; callbacks

.DummyScene:
	end

.Arrive:
	priorityjump .ArriveFromCastelia
	end

.ArriveFromCastelia:
	;playmusic MUSIC_ASPERTIA_CITY
	applymovement PLAYER, VirbankPortShowPersonMovement
	applymovement VIRBANKPORT_FERRY_MAN, VirbankPortFerryManMovement
	applymovement PLAYER, VirbankPortArriveMovement
	applymovement VIRBANKPORT_FERRY_MAN, VirbankPortFerryManResetMovement
	opentext
	writetext VirbankPortArrivedText
	waitbutton
	closetext
	setscene SCENE_PORT_NOTHING
	end

VirbankPortFerryManScript:
	faceplayer
	opentext
	writetext VirbankPortRideText
	yesorno
	iffalse .DecidedNotToRide
	checkitem S_S_TICKET
	iffalse .TicketNotInBag
	writetext VirbankPortHaveTicketText
	waitbutton
	closetext
	applymovement PLAYER, VirbankPortFerryPlayerMovement1
	applymovement VIRBANKPORT_FERRY_MAN, VirbankPortFerryManMovement
	applymovement PLAYER, VirbankPortFerryPlayerMovement2
	setmapscene CASTELIA_PORT, SCENE_PORT_ARRIVED
	;writebyte FALSE
	;special Ferry
	applymovement PLAYER, VirbankPortHidePersonMovement
	warpcheck
	newloadmap MAPSETUP_TRAIN
	;wait 20
	end

.TicketNotInBag:
	writetext VirbankPortNoTicketText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext VirbankPortRefusedText
	waitbutton
	closetext
	end

VirbankPortFerryPlayerMovement1:
	step LEFT
	turn_head RIGHT
	step_end

VirbankPortArriveMovement:
	step LEFT
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end

VirbankPortFerryPlayerMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

VirbankPortFerryManMovement:
	step LEFT
	step UP
	turn_head DOWN
	step_end

VirbankPortFerryManResetMovement:
	step DOWN
	step RIGHT
	turn_head LEFT
	step_end
	
VirbankPortShowPersonMovement:
	turn_head LEFT
	show_person
	step_end

VirbankPortHidePersonMovement:
	hide_person
	step_end

VirbankPortHaveTicketText:
	text "Just let me check"
	line "your FERRY TICKET."

	para "OK. Come on board!"
	done

VirbankPortArrivedText:
	text "We've made land"
	line "in VIRBANK."

	para "Come ride with us"
	line "again!"
	done

VirbankPortRideText:
	text "We'll soon set"
	line "sail for CASTELIA."

	para "Are you coming on"
	line "board?"
	done

VirbankPortNoTicketText:
	text "Sorry, but you"
	line "don't have a"
	cont "FERRY TICKET."
	done

VirbankPortRefusedText:
	text "Ah, well come"
	line "again."
	done

VirbankPort_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  7, VIRBANK_CITY, 8
	warp_event  5,  7, VIRBANK_CITY, 8
	warp_event  9,  2, FERRY_RIGHT, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  8,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankPortFerryManScript, -1
	