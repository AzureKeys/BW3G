	const_def 2 ; object constants
	const NIMBASASUBWAY_OFFICER
	const NIMBASASUBWAY_GENTLEMAN

NimbasaSubway_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene:
	end

NimbasaSubwayOfficerScript:
	faceplayer
	opentext
	writetext NimbasaSubwayAskRideText
	yesorno
	iffalse .DecidedNotToRide
	checkitem PASS
	iffalse .PassNotInBag
	writetext NimbasaSubwayHavePassText
	waitbutton
	closetext
	applymovement NIMBASASUBWAY_OFFICER, NimbasaSubwayOfficerMovement
	applymovement PLAYER, NimbasaSubwayPlayerMovement
	writebyte TRUE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.MovementBoardTheTrain:
	turn_head DOWN
	step_end

.PassNotInBag:
	writetext NimbasaSubwayNoPassText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext NimbasaSubwayRefusedText
	waitbutton
	closetext
	end

Script_ArriveFromAspertia:
	;playmusic MUSIC_NIMBASA_CITY
	applymovement NIMBASASUBWAY_OFFICER, NimbasaSubwayOfficerMovement
	applymovement PLAYER, NimbasaSubwayArrivedMovement
	applymovement NIMBASASUBWAY_OFFICER, NimbasaSubwayOfficerResetMovement
	opentext
	writetext NimbasaSubwayArrivedText
	waitbutton
	closetext
	end

NimbasaSubwayGentlemanScript:
	jumptextfaceplayer NimbasaSubwayGentlemanText

NimbasaSubwayOfficerMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

NimbasaSubwayOfficerResetMovement:
	step LEFT
	step DOWN
	step DOWN
	step_end

NimbasaSubwayPlayerMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

NimbasaSubwayArrivedMovement:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

NimbasaSubwayAskRideText:
	text "We'll soon depart"
	line "for ASPERTIA."

	para "Are you coming"
	line "aboard?"
	done

NimbasaSubwayHavePassText:
	text "May I see your"
	line "rail PASS, please?"

	para "OK. Right this"
	line "way, please."
	done

NimbasaSubwayNoPassText:
	text "Sorry. You don't"
	line "have a rail PASS."
	done

NimbasaSubwayRefusedText:
	text "We hope to see you"
	line "again!"
	done

NimbasaSubwayArrivedText:
	text "We have arrived in"
	line "NIMBASA."

	para "We hope to see you"
	line "again."
	done

NimbasaSubwayGentlemanText:
	text "This used to be a"
	line "BATTLE SUBWAY."

	para "But the need grew"
	line "for a regular"
	cont "subway to take"

	para "people and #MON"
	line "to far corners of"
	cont "UNOVA."
	done

NimbasaSubway_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  8, 17, NIMBASA_CITY, 12
	warp_event  9, 17, NIMBASA_CITY, 14
	warp_event  6,  5, ASPERTIA_SUBWAY, 2
	warp_event 11,  5, ASPERTIA_SUBWAY, 1

	db 1 ; coord events
	coord_event 11,  6, SCENE_DEFAULT, Script_ArriveFromAspertia

	db 0 ; bg events

	db 2 ; object events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaSubwayOfficerScript, -1
	object_event 11, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaSubwayGentlemanScript, -1
