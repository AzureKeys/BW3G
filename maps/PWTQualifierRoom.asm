	const_def 2 ; object constants
	const PWTQUALIFIERROOM_COOLTRAINER_M
	const PWTQUALIFIERROOM_COOLTRAINER_F
	const PWTQUALIFIERROOM_RECEPTIONIST

PWTQualifierRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .Enter ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks
	
.DummyScene:
	end

.Enter:
	priorityjump .PwtQualifierRoomEnter
	end
	
.PwtQualifierRoomEnter:
	applymovement PLAYER, PwtQualifierRoomPlayerEnterMovement
	pause 15
	playsound SFX_ENTER_DOOR
	waitsfx
	appear PWTQUALIFIERROOM_COOLTRAINER_M
	applymovement PWTQUALIFIERROOM_COOLTRAINER_M, PwtQualifierRoomEnemyEnterMovement
	opentext
	writetext PwtQualifierRoomFirstBattleText
	waitbutton
	closetext
	applymovement PLAYER, PwtQualifierRoomPlayerStepUpMovement
	applymovement PWTQUALIFIERROOM_COOLTRAINER_M, PwtQualifierRoomEnemyStepUpMovement
	opentext
	writetext PwtQualifierRoomCooltrainerMBattleText
	waitbutton
	closetext
	winlosstext PwtQualifierRoomCooltrainerMWinText, 0
	setlasttalked PWTQUALIFIERROOM_COOLTRAINER_M
	loadtrainer COOLTRAINERM, COOLTRAINERM_PWT
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, PwtQualifierRoomPlayerStepBackMovement
	applymovement PWTQUALIFIERROOM_COOLTRAINER_M, PwtQualifierRoomEnemyExitMovement
	disappear PWTQUALIFIERROOM_COOLTRAINER_M
	playsound SFX_ENTER_DOOR
	waitsfx
	opentext
	writetext PwtQualifierRoomFirstWinText
	waitbutton
	closetext
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, PwtQualifierRoomReceptionistApproachMovement
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	waitsfx
	special HealParty
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, PwtQualifierRoomReceptionistReturnMovement
	playsound SFX_ENTER_DOOR
	waitsfx
	appear PWTQUALIFIERROOM_COOLTRAINER_F
	applymovement PWTQUALIFIERROOM_COOLTRAINER_F, PwtQualifierRoomEnemyEnterMovement
	opentext
	writetext PwtQualifierRoomSecondBattleText
	waitbutton
	closetext
	applymovement PLAYER, PwtQualifierRoomPlayerStepUpMovement
	applymovement PWTQUALIFIERROOM_COOLTRAINER_F, PwtQualifierRoomEnemyStepUpMovement
	opentext
	writetext PwtQualifierRoomCooltrainerFBattleText
	waitbutton
	closetext
	winlosstext PwtQualifierRoomCooltrainerFWinText, 0
	setlasttalked PWTQUALIFIERROOM_COOLTRAINER_F
	loadtrainer COOLTRAINERF_D, COOLTRAINERF_PWT
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, PwtQualifierRoomPlayerStepBackMovement
	applymovement PWTQUALIFIERROOM_COOLTRAINER_F, PwtQualifierRoomEnemyExitMovement
	disappear PWTQUALIFIERROOM_COOLTRAINER_F
	playsound SFX_ENTER_DOOR
	waitsfx
	opentext
	writetext PwtQualifierRoomSecondWinText
	waitbutton
	closetext
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, PwtQualifierRoomReceptionistApproachMovement
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	waitsfx
	applymovement PWTQUALIFIERROOM_RECEPTIONIST, PwtQualifierRoomReceptionistReturnMovement
	opentext
	writetext PwtQualifierRoomLeaveText
	waitbutton
	closetext
	setevent EVENT_FINISHED_PWT_QUALIFIER
	setscene SCENE_FINISHED
	applymovement PLAYER, PwtQualifierRoomPlayerExitMovement
	warpcheck
	end
	
PwtQualifierRoomPlayerEnterMovement:
	step UP
	step LEFT
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end
	
PwtQualifierRoomEnemyEnterMovement:
	step UP
	step RIGHT
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end
	
PwtQualifierRoomPlayerStepUpMovement:
	step RIGHT
	step_end
	
PwtQualifierRoomEnemyStepUpMovement:
	step LEFT
	step_end
	
PwtQualifierRoomPlayerStepBackMovement:
	step LEFT
	turn_head RIGHT
	step_end
	
PwtQualifierRoomReceptionistApproachMovement:
	step LEFT
	step DOWN
	step_end
	
PwtQualifierRoomReceptionistReturnMovement:
	step UP
	step RIGHT
	turn_head DOWN
	step_end
	
PwtQualifierRoomPlayerExitMovement:
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step_end
	
PwtQualifierRoomEnemyExitMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step_end
	
PwtQualifierRoomFirstBattleText:
	text "The qualifier will"
	line "determine the"
	
	para "contestants for"
	line "the #MON WORLD"
	cont "TOURNAMENT."
	
	para "Applicants, please"
	line "begin your battle."
	done
	
PwtQualifierRoomFirstWinText:
	text "Congratulations,"
	line "I'll now heal your"
	
	para "#MON, then the"
	line "next applicant"
	cont "will enter."
	done
	
PwtQualifierRoomSecondBattleText:
	text "This match will"
	line "determine which"
	
	para "contestant will"
	line "qualify for the"
	
	para "#MON WORLD"
	line "TOURNAMENT."
	
	para "Applicants, please"
	line "begin your battle."
	done
	
PwtQualifierRoomSecondWinText:
	text "Congratulations!"
	line "You've qualified"
	
	para "for the WORLD"
	line "TOURNAMENT!"
	
	para "First, I'll heal"
	line "your #MON."
	done
	
PwtQualifierRoomLeaveText:
	text "Please enter the"
	line "room down the hall"
	
	para "and join the"
	line "others who've"
	cont "qualified."
	done
	
PwtQualifierRoomCooltrainerMBattleText:
	text "The #MON WORLD"
	line "TOURNAMENT brings"
	cont "great trainers"
	cont "from all over!"
	
	para "There's no way I'm"
	line "missing out!"
	done
	
PwtQualifierRoomCooltrainerMWinText:
	text "Not good enough!"
	done
	
PwtQualifierRoomCooltrainerFBattleText:
	text "You're the last"
	line "one I need to beat"
	cont "to make it into"
	cont "the tournament."
	
	para "I'm taking you"
	line "down!"
	done
	
PwtQualifierRoomCooltrainerFWinText:
	text "It… It can't be!"
	done

PWTQualifierRoom_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  3,  7, PWT_HALLWAY, 3

	db 0 ; coord events

	db 0 ; bg events
	
	db 3 ; object events
	object_event  4,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_QUALIFIER_ROOM_COOLTRAINER_M
	object_event  4,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_QUALIFIER_ROOM_COOLTRAINER_F
	object_event  3,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, -1
	