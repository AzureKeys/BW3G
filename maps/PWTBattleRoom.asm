	const_def 2 ; object constants
	const PWTBATTLEROOM_RECEPTIONIST
	const PWTBATTLEROOM_BIANCA
	const PWTBATTLEROOM_INFER
	const PWTBATTLEROOM_VIO

PWTBattleRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .Enter ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.Enter:
	priorityjump .PwtBattleRoomEnter
	setscene SCENE_FINISHED
.DummyScene:
	end
	
.PwtBattleRoomEnter:
	applymovement PLAYER, PwtBattleRoomPlayerEnterMovement
	checkevent EVENT_PWT_BEAT_INFER
	iftrue .finalround
	checkevent EVENT_PWT_BEAT_BIANCA
	iftrue .secondround
	
	opentext
	writetext PwtBattleRoomFirstRoundText
	waitbutton
	closetext
	applymovement PLAYER, PwtBattleRoomPlayerStepUpMovement
	applymovement PWTBATTLEROOM_BIANCA, PwtBattleRoomEnemyStepUpMovement
	opentext
	writetext PwtBattleRoomBiancaBattleText
	waitbutton
	closetext
	winlosstext PwtBattleRoomBiancaWinText, 0
	setlasttalked PWTBATTLEROOM_BIANCA
	loadtrainer BIANCA, BIANCA1
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, PwtBattleRoomPlayerStepBackMovement
	applymovement PWTBATTLEROOM_BIANCA, PwtBattleRoomEnemyStepBackMovement
	opentext
	writetext PwtBattleRoomFirstWinText
	waitbutton
	closetext
	applymovement PWTBATTLEROOM_RECEPTIONIST, PwtBattleRoomReceptionistApproachMovement
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	waitsfx
	applymovement PWTBATTLEROOM_RECEPTIONIST, PwtBattleRoomReceptionistReturnMovement
	opentext
	writetext PwtBattleRoomLeaveText
	waitbutton
	closetext
	setevent EVENT_PWT_BEAT_BIANCA
	setmapscene PWT_BACK_ROOM, SCENE_PWT_BACK_ROOM_WIN_1
	applymovement PLAYER, PwtBattleRoomPlayerExitMovement
	warpcheck
	end
	
.secondround
	opentext
	writetext PwtBattleRoomSecondRoundText
	waitbutton
	closetext
	applymovement PLAYER, PwtBattleRoomPlayerStepUpMovement
	applymovement PWTBATTLEROOM_INFER, PwtBattleRoomEnemyStepUpMovement
	opentext
	writetext PwtBattleRoomInferBattleText
	waitbutton
	closetext
	winlosstext PwtBattleRoomInferWinText, 0
	setlasttalked PWTBATTLEROOM_INFER
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftrue .Snivy
	
	loadtrainer INFER, INFER5_OSHAWOTT
	startbattle
	reloadmapafterbattle
	jump .afterInfer
	
.Oshawott
	loadtrainer INFER, INFER5_SNIVY
	startbattle
	reloadmapafterbattle
	jump .afterInfer

.Snivy
	loadtrainer INFER, INFER5_TEPIG
	startbattle
	reloadmapafterbattle
	
.afterInfer
	applymovement PLAYER, PwtBattleRoomPlayerStepBackMovement
	applymovement PWTBATTLEROOM_INFER, PwtBattleRoomEnemyStepBackMovement
	opentext
	writetext PwtBattleRoomSecondWinText
	waitbutton
	closetext
	applymovement PWTBATTLEROOM_RECEPTIONIST, PwtBattleRoomReceptionistApproachMovement
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	waitsfx
	applymovement PWTBATTLEROOM_RECEPTIONIST, PwtBattleRoomReceptionistReturnMovement
	opentext
	writetext PwtBattleRoomLeaveText
	waitbutton
	closetext
	setevent EVENT_PWT_BEAT_INFER
	setmapscene PWT_BACK_ROOM, SCENE_PWT_BACK_ROOM_WIN_2
	applymovement PLAYER, PwtBattleRoomPlayerExitMovement
	warpcheck
	end
	
.finalround
	opentext
	writetext PwtBattleRoomFinalRoundText
	waitbutton
	closetext
	applymovement PLAYER, PwtBattleRoomPlayerStepUpMovement
	applymovement PWTBATTLEROOM_VIO, PwtBattleRoomEnemyStepUpMovement
	opentext
	writetext PwtBattleRoomVioBattleText
	waitbutton
	closetext
	winlosstext PwtBattleRoomVioWinText, 0
	setlasttalked PWTBATTLEROOM_VIO
	loadtrainer MYSTERYMAN, VIO
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, PwtBattleRoomPlayerStepBackMovement
	applymovement PWTBATTLEROOM_VIO, PwtBattleRoomEnemyStepBackMovement
	opentext
	writetext PwtBattleRoomFinalWinText
	waitbutton
	closetext
	applymovement PWTBATTLEROOM_RECEPTIONIST, PwtBattleRoomReceptionistApproachMovement
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	waitsfx
	applymovement PWTBATTLEROOM_RECEPTIONIST, PwtBattleRoomReceptionistReturnMovement
	opentext
	writetext PwtBattleRoomFinalLeaveText
	waitbutton
	closetext
	setmapscene PWT_BACK_ROOM, SCENE_PWT_BACK_ROOM_WIN_3
	applymovement PLAYER, PwtBattleRoomPlayerExitMovement
	warpcheck
	end
	
PwtBattleRoomPlayerEnterMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
PwtBattleRoomPlayerStepUpMovement:
	step RIGHT
	step_end
	
PwtBattleRoomEnemyStepUpMovement:
	step LEFT
	step_end
	
PwtBattleRoomPlayerStepBackMovement:
	step LEFT
	turn_head RIGHT
	step_end
	
PwtBattleRoomEnemyStepBackMovement:
	step RIGHT
	turn_head LEFT
	step_end
	
PwtBattleRoomReceptionistApproachMovement:
	step DOWN
	step LEFT
	step DOWN
	step_end
	
PwtBattleRoomReceptionistReturnMovement:
	step UP
	step RIGHT
	step UP
	turn_head DOWN
	step_end
	
PwtBattleRoomPlayerExitMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
PwtBattleRoomFirstRoundText:
	text "The winner of this"
	line "match will move on"
	cont "to the second"
	cont "round."
	
	para "Contestants,"
	line "prepare to"
	cont "battle!"
	done
	
PwtBattleRoomBiancaBattleText:
	text "BIANCA: Now I'll"
	line "get to see first"
	
	para "hand how strong of"
	line "a trainer you've"
	cont "become, <PLAY_G>!"
	done
	
PwtBattleRoomBiancaWinText:
	text "Oh! You are good!"
	done
	
PwtBattleRoomFirstWinText:
	text "BIANCA: Wow, you"
	line "are good! MARLON"
	
	para "sure was right to"
	line "pick you to be a"
	cont "#MON trainer!"
	
	para "RECEPTIONIST:"
	line "Congratulations,"
	cont "<PLAY_G>."
	
	para "Allow me to heal"
	line "your #MON."
	done
	
PwtBattleRoomLeaveText:
	text "Now then, please"
	line "exit back into the"
	
	para "competitors' room"
	line "until your next"
	cont "match."
	done
	
PwtBattleRoomSecondRoundText:
	text "The winner of this"
	line "match will move on"
	cont "to the final"
	cont "round."
	
	para "Contestants,"
	line "prepare to"
	cont "battle!"
	done
	
PwtBattleRoomInferBattleText:
	text "INFER: I've been"
	line "waiting for a"
	cont "rematch with you."
	
	para "This time, I'll"
	line "show you how"
	cont "strong I've"
	cont "become! Come on!"
	done
	
PwtBattleRoomInferWinText:
	text "No! How is it"
	line "still not enough!"
	done
	
PwtBattleRoomSecondWinText:
	text "INFER: Rrgh… This"
	line "is a fluke!"
	
	para "You may have won"
	line "today, but I will"
	cont "defeat you!"
	
	para "RECEPTIONIST:"
	line "Congratulations,"
	cont "<PLAY_G>."
	
	para "Allow me to heal"
	line "your #MON."
	done
	
PwtBattleRoomFinalRoundText:
	text "Congratulations to"
	line "both of you for"
	cont "making it to the"
	cont "final round!"
	
	para "The winner of this"
	line "match will be the"
	
	para "winner of the"
	line "#MON WORLD"
	cont "TOURNAMENT!"
	
	para "Contestants,"
	line "prepare to"
	cont "battle!"
	done
	
PwtBattleRoomVioBattleText:
	text "VIO: … … … …"
	done
	
PwtBattleRoomVioWinText:
	text "…!"
	done
	
PwtBattleRoomFinalWinText:
	text "Congratulations,"
	line "<PLAY_G>!"
	
	para "You've won the"
	line "#MON WORLD"
	cont "TOURNAMENT!"
	
	para "Allow me to heal"
	line "your #MON."
	done
	
PwtBattleRoomFinalLeaveText:
	text "Now then, please"
	line "exit back into the"
	
	para "competitors' room"
	line "to receive your"
	cont "prize!"
	done

PWTBattleRoom_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  0,  5, PWT_BACK_ROOM, 3

	db 0 ; coord events

	db 0 ; bg events
	
	db 4 ; object events
	object_event  9,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 11,  5, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BATTLE_ROOM_BIANCA
	object_event 11,  5, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BATTLE_ROOM_INFER
	object_event 11,  5, SPRITE_VIO, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_BATTLE_ROOM_VIO
	