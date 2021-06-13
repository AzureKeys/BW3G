	const_def 2 ; object constants
	const R23_DUMMY_OFFICER
	const R23_OFFICER7

Rt23West_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

R23Badge7Script:
	turnobject PLAYER, LEFT
	turnobject R23_OFFICER7, RIGHT
	opentext
	writetext R23Officer7StopText
	checkflag ENGINE_RISINGBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer7HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end
	
.nobadge
	waitbutton
	closetext
	applymovement PLAYER, R23WestMovement
	end

R23Officer7Script:
	faceplayer
	opentext
	checkscene
	ifequal SCENE_FINISHED, .showed
	writetext R23Officer7StopText
	checkflag ENGINE_RISINGBADGE
	iffalse .nobadge
	buttonsound
	waitsfx
	writetext R23Officer7HaveBadgeText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end
	
.nobadge
	waitbutton
	closetext
	end
	
.showed
	writetext R23Officer7HaveBadgeText
	waitbutton
	closetext
	end
	
R23WestMovement:
	step DOWN
	step_end

R23Officer7StopText:
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
	line "LEGENDBADGE."
	done
	
R23Officer7HaveBadgeText:
	text "Oh, that is the"
	line "LEGENDBADGE!"
	
	para "You may pass."
	done

Rt23West_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 1 ; coord events
	coord_event  7,  4, SCENE_DEFAULT, R23Badge7Script

	db 0 ; bg events

	db 2 ; object events
	object_event 14,  8, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event  6,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R23Officer7Script, -1
	