	const_def 2 ; object constants
	const CASTELIAPORT_FERRY_MAN

CasteliaPort_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene ; SCENE_PORT_NOTHING
	scene_script .Arrive ; SCENE_PORT_ARRIVED

	db 0 ; callbacks

.DummyScene:
	end

.Arrive:
	priorityjump .ArriveFromVirbank
	end

.ArriveFromVirbank:
	;playmusic MUSIC_ASPERTIA_CITY
	applymovement PLAYER, CasteliaPortShowPersonMovement
	applymovement CASTELIAPORT_FERRY_MAN, CasteliaPortFerryManMovement
	applymovement PLAYER, CasteliaPortArriveMovement
	applymovement CASTELIAPORT_FERRY_MAN, CasteliaPortFerryManResetMovement
	opentext
	writetext CasteliaPortArrivedText
	waitbutton
	closetext
	setscene SCENE_PORT_NOTHING
	end

CasteliaPortFerryManScript:
	faceplayer
	opentext
	writetext CasteliaPortRideText
	yesorno
	iffalse .DecidedNotToRide
	checkitem S_S_TICKET
	iffalse .TicketNotInBag
	writetext CasteliaPortHaveTicketText
	waitbutton
	closetext
	applymovement PLAYER, CasteliaPortFerryPlayerMovement1
	applymovement CASTELIAPORT_FERRY_MAN, CasteliaPortFerryManMovement
	applymovement PLAYER, CasteliaPortFerryPlayerMovement2
	setmapscene VIRBANK_PORT, SCENE_PORT_ARRIVED
	; writebyte TRUE
	; special Ferry
	applymovement PLAYER, CasteliaPortHidePersonMovement
	warpcheck
	newloadmap MAPSETUP_TRAIN
	;wait 20
	end

.TicketNotInBag:
	writetext CasteliaPortNoTicketText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext CasteliaPortRefusedText
	waitbutton
	closetext
	end

CasteliaPortFerryPlayerMovement1:
	step RIGHT
	turn_head LEFT
	step_end

CasteliaPortArriveMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

CasteliaPortFerryPlayerMovement2:
	step LEFT
	step LEFT
	step LEFT
	step_end

CasteliaPortFerryManMovement:
	step RIGHT
	step UP
	turn_head DOWN
	step_end

CasteliaPortFerryManResetMovement:
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end
	
CasteliaPortShowPersonMovement:
	turn_head RIGHT
	show_person
	step_end

CasteliaPortHidePersonMovement:
	hide_person
	step_end

CasteliaPortHaveTicketText:
	text "Just let me check"
	line "your FERRY TICKET."

	para "OK. Come on board!"
	done

CasteliaPortArrivedText:
	text "We've made land"
	line "in CASTELIA."

	para "Come ride with us"
	line "again!"
	done

CasteliaPortRideText:
	text "We'll soon set"
	line "sail for VIRBANK."

	para "Are you coming on"
	line "board?"
	done

CasteliaPortNoTicketText:
	text "Sorry, but you"
	line "don't have a"
	cont "FERRY TICKET."
	done

CasteliaPortRefusedText:
	text "Ah, well come"
	line "again."
	done

CasteliaPort_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  9,  5, CASTELIA_CITY_SOUTH, 15
	warp_event  9,  4, CASTELIA_CITY_SOUTH, 13
	warp_event  0,  2, FERRY_LEFT, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  1,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaPortFerryManScript, -1
	