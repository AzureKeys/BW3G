	const_def 2 ; object constants
	const ASPERTIASUBWAY_OFFICER
	const ASPERTIASUBWAY_GYM_GUY
	const ASPERTIASUBWAY_LASS
	;const ASPERTIASUBWAY_GUARD1
	;const ASPERTIASUBWAY_GUARD2

AspertiaSubway_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene:
	end

AspertiaSubwayOfficerScript:
	faceplayer
	opentext
	writetext AspertiaSubwayRideText
	yesorno
	iffalse .DecidedNotToRide
	checkitem PASS
	iffalse .PassNotInBag
	writetext AspertiaSubwayHavePassText
	waitbutton
	closetext
	applymovement ASPERTIASUBWAY_OFFICER, AspertiaSubwayOfficerMovement
	applymovement PLAYER, AspertiaSubwayPlayerMovement
	writebyte FALSE
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
	writetext AspertiaSubwayNoPassText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext AspertiaSubwayRefusedText
	waitbutton
	closetext
	end

Script_ArriveFromNimbasa:
	;playmusic MUSIC_ASPERTIA_CITY
	applymovement ASPERTIASUBWAY_OFFICER, AspertiaSubwayOfficerMovement
	applymovement PLAYER, AspertiaSubwayArriveMovement
	applymovement ASPERTIASUBWAY_OFFICER, AspertiaSubwayOfficerResetMovement
	opentext
	writetext AspertiaSubwayArrivedText
	waitbutton
	closetext
	end

AspertiaSubwayGymGuyScript:
	jumptextfaceplayer AspertiaSubwayGymGuyText

AspertiaSubwayLassScript:
	jumptextfaceplayer AspertiaSubwayLassText
	
; AspertiaSubwayBlockerScript:
	; jumptextfaceplayer AspertiaSubwayBlockerText

AspertiaSubwayOfficerMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

AspertiaSubwayOfficerResetMovement:
	step LEFT
	step DOWN
	step DOWN
	step_end

AspertiaSubwayPlayerMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

AspertiaSubwayArriveMovement:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

; AspertiaSubwayBlockerText:
	; text "Woah there, bucko."
	; line "The rest of the"
	; cont "game's not"
	; cont "finished yet."

	; para "This is as far"
	; line "as you can go."
	; done

AspertiaSubwayRideText:
	text "We'll soon depart"
	line "for NIMBASA."

	para "Are you coming on"
	line "board?"
	done

AspertiaSubwayHavePassText:
	text "May I see your"
	line "rail PASS, please?"

	para "OK. Right this"
	line "way, please."
	done

AspertiaSubwayNoPassText:
	text "Sorry, but you"
	line "don't have a PASS."
	done

AspertiaSubwayRefusedText:
	text "We hope to see you"
	line "again."
	done

AspertiaSubwayArrivedText:
	text "We have arrived in"
	line "ASPERTIA."

	para "We hope to see you"
	line "again."
	done

AspertiaSubwayGymGuyText:
	text "Whew…"

	para "How many times"
	line "have I gone back"

	para "and forth between"
	line "ASPERTIA and"
	cont "NIMBASA?"
	done

AspertiaSubwayLassText:
	text "Hi. Do you have a"
	line "RAIL PASS? I have"

	para "one. All the peo-"
	line "ple in ASPERTIA"

	para "who ride the sub-"
	line "way have PASSES."
	done

AspertiaSubway_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  6,  5, NIMBASA_SUBWAY, 4
	warp_event 11,  5, NIMBASA_SUBWAY, 3
	warp_event  8, 17, ASPERTIA_CITY, 1
	warp_event  9, 17, ASPERTIA_CITY, 1

	db 1 ; coord events
	coord_event 11,  6, SCENE_DEFAULT, Script_ArriveFromNimbasa

	db 0 ; bg events

	db 3 ; object events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AspertiaSubwayOfficerScript, -1
	object_event 10, 14, SPRITE_GYM_GUY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AspertiaSubwayGymGuyScript, -1
	object_event  6, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AspertiaSubwayLassScript, -1
	;object_event  8, 17, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaSubwayBlockerScript, -1
	;object_event  9, 17, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaSubwayBlockerScript, -1
	