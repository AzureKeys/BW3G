	const_def 2 ; object constants
	const R23GATE_OFFICER

Rt23Gate_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

R23GateBadgeScript:
	turnobject PLAYER, UP
	opentext
	writetext R23GateOfficerStopText
	checkflag ENGINE_WAVEBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23GateOfficerHaveBadgeText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23GateMovement
	end
	
R23GateOfficerScript:
	jumptextfaceplayer R23GateOfficerHaveBadgeText
	
R23GateMovement:
	step RIGHT
	step_end

R23GateOfficerStopText:
	text "Stop! Ahead lies"
	line "the path to the"
	cont "#MON LEAGUE."
	
	para "Only those who"
	line "have collected"
	
	para "all 8 #MON"
	line "LEAGUE GYM BADGES"
	cont "may enter."
	
	para "You cannot pass"
	line "here unless you"
	
	para "have the"
	line "WAVEBADGE."
	done
	
R23GateOfficerHaveBadgeText:
	text "Oh, that is the"
	line "WAVEBADGE!"
	
	para "You may pass."
	done

Rt23Gate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, R_23_EAST, 4
	warp_event  0,  5, R_23_EAST, 5
	warp_event  9,  4, R_23_EAST, 2
	warp_event  9,  5, R_23_EAST, 3

	db 2 ; coord events
	coord_event  5,  4, SCENE_DEFAULT, R23GateBadgeScript
	coord_event  5,  5, SCENE_DEFAULT, R23GateBadgeScript

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23GateOfficerScript, -1
	