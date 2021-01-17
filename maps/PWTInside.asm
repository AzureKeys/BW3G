	const_def 2 ; object constants
	const PWTINSIDE_BLOCKER
	const PWTINSIDE_RECEPTIONIST_1
	const PWTINSIDE_RECEPTIONIST_2
	const PWTINSIDE_YOUNGSTER
	const PWTINSIDE_COOLTRAINER_F

PWTInside_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene:
	end
	
PwtEnterFromBackScript:
	applymovement PWTINSIDE_BLOCKER, PwtInsideBlocker1Movement
	applymovement PLAYER, PwtInsidePlayerEnteringMovement
	applymovement PWTINSIDE_BLOCKER, PwtInsideBlocker2Movement
	end
	
PwtBlockerScript:
	opentext
	checkevent EVENT_FINISHED_PWT
	iftrue .over
	checkevent EVENT_FINISHED_PWT_QUALIFIER
	iftrue .gomain
	writetext PwtInsideQualifierText
	yesorno
	iffalse .declined
	writetext PwtInsideBackText
	waitbutton
	closetext
	jump .enterback
	
.gomain
	writetext PwtInsideResumeText
	yesorno
	iffalse .declined
	writetext PwtInsideBackText
	waitbutton
	closetext
	
.enterback
	applymovement PWTINSIDE_BLOCKER, PwtInsideBlocker1Movement
	applymovement PLAYER, PwtInsidePlayerExitingMovement
	setmapscene PWT_HALLWAY, SCENE_FINISHED
	warpcheck
	end
	
.declined
	writetext PwtInsideDeclinedText
	waitbutton
	closetext
	end
	
.over
	writetext PwtInsideOverText
	waitbutton
	closetext
	end
	
PwtReceptionist1Script:
	jumptextfaceplayer PwtInsideReceptionistGenericText
	
PwtReceptionist2Script:
	jumptextfaceplayer PwtInsideReceptionistGenericText
	
PwtYoungsterScript:
	jumptextfaceplayer PwtInsideYoungsterText
	
PwtCooltrainerFScript:
	jumptextfaceplayer PwtInsideCooltrainerFText
	
PwtInsidePlayerEnteringMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end
	
PwtInsidePlayerExitingMovement:
	step UP
	step UP
	step UP
	step UP
	step_end
	
PwtInsideBlocker1Movement:
	step UP
	step RIGHT
	turn_head LEFT
	step_end
	
PwtInsideBlocker2Movement:
	step LEFT
	step DOWN
	step_end
	
PwtInsideQualifierText:
	text "Hi, welcome to the"
	line "#MON WORLD"
	cont "TOURNAMENT!"
	
	para "We're accepting"
	line "applications for"
	cont "qualifiers now."
	
	para "Would you like"
	line "to enter?"
	done
	
PwtInsideResumeText:
	text "The #MON WORLD"
	line "TOURNAMENT is"
	cont "currently under-"
	cont "way."
	
	para "Would you like to"
	line "return to the"
	cont "event?"
	done
	
PwtInsideBackText:
	text "Okay, this way"
	line "please."
	done
	
PwtInsideDeclinedText:
	text "Very well, please"
	line "come again."
	done
	
PwtInsideOverText:
	text "I'm sorry, the"
	line "TOURNAMENT has"
	cont "concluded."
	
	para "We hope you come"
	line "again!"
	done
	
PwtInsideReceptionistGenericText:
	text "Hi, welcome to the"
	line "#MON WORLD"
	cont "TOURNAMENT!"
	
	para "If you want to"
	line "apply, see the"
	cont "receptionist."
	done
	
PwtInsideYoungsterText:
	text "My favorite to"
	line "watch is IRIS!"
	
	para "She used to be"
	line "the CHAMPION!"
	
	para "How can you beat"
	line "that?"
	done
	
PwtInsideCooltrainerFText:
	text "I tried to enter,"
	line "but I got beat in"
	cont "the qualifiers."
	
	para "It's tough!"
	done

PWTInside_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7, 11, PWT_OUTSIDE, 2
	warp_event  8, 11, PWT_OUTSIDE, 3
	warp_event  7,  0, PWT_HALLWAY, 1

	db 1 ; coord events
	coord_event  7,  1, SCENE_DEFAULT, PwtEnterFromBackScript

	db 0 ; bg events
	
	db 5 ; object events
	object_event  7,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PwtBlockerScript, -1
	object_event  2,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, PwtReceptionist1Script, -1
	object_event 13,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PwtReceptionist2Script, -1
	object_event  4,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PwtYoungsterScript, -1
	object_event 11,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, PwtCooltrainerFScript, -1
	