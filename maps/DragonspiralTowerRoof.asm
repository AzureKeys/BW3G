	const_def 2 ; object constants
	const DRAGONSPIRALTOWERROOF_DRAYDEN
	const DRAGONSPIRALTOWERROOF_ZINZOLIN
	const DRAGONSPIRALTOWERROOF_JUNIPER
	const DRAGONSPIRALTOWERROOF_SHADOW_1
	const DRAGONSPIRALTOWERROOF_SHADOW_2
	const DRAGONSPIRALTOWERROOF_SHADOW_3
	const DRAGONSPIRALTOWERROOF_GENESECT_1
	const DRAGONSPIRALTOWERROOF_GENESECT_2

DragonspiralTowerRoof_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
DragonspiralTowerRoofScript1:
	applymovement PLAYER, DragonspiralTowerRoofArriveMovement1
	jump DragonspiralTowerRoofScript
	
DragonspiralTowerRoofScript2:
	applymovement PLAYER, DragonspiralTowerRoofArriveMovement2
	; fallthrough
	
DragonspiralTowerRoofScript:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext 
	writetext DragonspiralTowerRoofIntroText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, DragonspiralTowerRoofStepUpMovement
	special FadeOutMusic
	pause 15
	playsound SFX_SHINE
	waitsfx
	playsound SFX_SHINE
	waitsfx
	pause 15
	playsound SFX_BOOT_PC
	appear DRAGONSPIRALTOWERROOF_GENESECT_2
	disappear DRAGONSPIRALTOWERROOF_GENESECT_1
	waitsfx
	pause 15
	opentext
	writetext DragonspiralTowerRoofCryText
	cry GENESECT
	waitbutton
	closetext
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, DOWN
	opentext
	writetext DragonspiralTowerRoofPoweredOnText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_SHADOW_2
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_2, DragonspiralTowerRoofTeleportInMovement
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_SHADOW_3
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_3, DragonspiralTowerRoofTeleportInMovement
	playsound SFX_WARP_TO
	appear DRAGONSPIRALTOWERROOF_JUNIPER
	applymovement DRAGONSPIRALTOWERROOF_JUNIPER, DragonspiralTowerRoofTeleportInMovement
	pause 30
	showemote EMOTE_SHOCK, DRAGONSPIRALTOWERROOF_DRAYDEN, 10
	opentext
	writetext DragonspiralTowerRoofJuniperRevealText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, DragonspiralTowerRoofDraydenApproachMovement
	pause 30
	follow DRAGONSPIRALTOWERROOF_DRAYDEN, DRAGONSPIRALTOWERROOF_JUNIPER
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, DragonspiralTowerRoofDraydenRetreatMovement
	stopfollow
	turnobject DRAGONSPIRALTOWERROOF_DRAYDEN, UP
	turnobject DRAGONSPIRALTOWERROOF_JUNIPER, UP
	opentext
	writetext DragonspiralTowerRoofTimeForBattleText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, DragonspiralTowerRoofStepDownMovement
	opentext
	writetext DragonspiralTowerRoofStartBattleText
	waitbutton
	closetext
	winlosstext DragonspiralTowerRoofBattleWinText, 0
	setlasttalked DRAGONSPIRALTOWERROOF_ZINZOLIN
	loadtrainer ZINZOLIN, ZINZOLIN2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	pause 15
	opentext
	writetext DragonspiralTowerRoofAfterBattleText
	waitbutton
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_1, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_2, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_SHADOW_3, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, LEFT
	writetext DragonspiralTowerRoofBetrayalRevealText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_3, DragonspiralTowerRoofShadow3Movement
	turnobject DRAGONSPIRALTOWERROOF_ZINZOLIN, UP
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_2, DragonspiralTowerRoofShadow2Movement
	applymovement DRAGONSPIRALTOWERROOF_SHADOW_1, DragonspiralTowerRoofShadow1Movement
	opentext
	writetext DragonspiralTowerRoofShadowBetrayalText
	waitbutton
	closetext
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear DRAGONSPIRALTOWERROOF_SHADOW_1
	disappear DRAGONSPIRALTOWERROOF_SHADOW_2
	disappear DRAGONSPIRALTOWERROOF_SHADOW_3
	disappear DRAGONSPIRALTOWERROOF_GENESECT_2
	pause 15
	special FadeInQuickly
	playmapmusic
	pause 15
	opentext
	writetext DragonspiralTowerRoofZinzolinFreakoutText
	waitbutton
	closetext
	applymovement DRAGONSPIRALTOWERROOF_ZINZOLIN, DragonspiralTowerRoofZinzolinLeaveMovement
	disappear DRAGONSPIRALTOWERROOF_ZINZOLIN
	pause 30
	applymovement PLAYER, DragonspiralTowerRoofStepDownMovement
	turnobject DRAGONSPIRALTOWERROOF_JUNIPER, RIGHT
	turnobject DRAGONSPIRALTOWERROOF_DRAYDEN, LEFT
	opentext
	writetext DragonspiralTowerRoofJuniperThanksText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement DRAGONSPIRALTOWERROOF_JUNIPER, DragonspiralTowerRoofTeleportOutMovement
	disappear DRAGONSPIRALTOWERROOF_JUNIPER
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, DragonspiralTowerRoofDraydenAfterMovement
	turnobject PLAYER, LEFT
	opentext
	writetext DragonspiralTowerRoofDraydenThanksText
	buttonsound
	verbosegiveitem DRAGON_FANG
	iffalse .no_room
	setevent EVENT_GOT_DRAGON_FANG
	jump .got_item
.no_room
	writetext DragonspiralTowerRoofDraydenNoRoomText
	buttonsound
.got_item
	writetext DragonspiralTowerRoofDraydenLeaveText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement DRAGONSPIRALTOWERROOF_DRAYDEN, DragonspiralTowerRoofTeleportOutMovement
	disappear DRAGONSPIRALTOWERROOF_DRAYDEN
	setevent EVENT_FINISHED_DRAGONSPIRAL_TOWER
	setevent EVENT_OPELUCID_CITY_IRIS
	setscene SCENE_FINISHED
	end
	
DragonspiralTowerRoofArriveMovement1:
	step UP
	step RIGHT
	step UP
	step UP
	step_end
	
DragonspiralTowerRoofArriveMovement2:
	step UP
	step UP
	step UP
	step_end
	
DragonspiralTowerRoofDraydenApproachMovement:
	big_step LEFT
	big_step UP
	big_step UP
	big_step UP
	step_end
	
DragonspiralTowerRoofDraydenRetreatMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
DragonspiralTowerRoofShadow1Movement:
	step UP
	step UP
	step UP
	turn_head DOWN
	step_end
	
DragonspiralTowerRoofShadow2Movement:
	step UP
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	turn_head DOWN
	step_end
	
DragonspiralTowerRoofShadow3Movement:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step DOWN
	step_end
	
DragonspiralTowerRoofZinzolinLeaveMovement:
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end
	
DragonspiralTowerRoofDraydenAfterMovement:
	step UP
	turn_head LEFT
	step_end
	
DragonspiralTowerRoofStepUpMovement:
	step UP
	step_end
	
DragonspiralTowerRoofStepDownMovement:
	step DOWN
	step_end
	
DragonspiralTowerRoofTeleportInMovement:
	teleport_to
	step_end
	
DragonspiralTowerRoofTeleportOutMovement:
	teleport_from
	step_end
	
DragonspiralTowerRoofIntroText:
	text "..."
	done
	
DragonspiralTowerRoofPoweredOnText:
	text "..."
	done
	
DragonspiralTowerRoofJuniperRevealText:
	text "..."
	done
	
DragonspiralTowerRoofTimeForBattleText:
	text "..."
	done
	
DragonspiralTowerRoofStartBattleText:
	text "..."
	done
	
DragonspiralTowerRoofBattleWinText:
	text "..."
	done
	
DragonspiralTowerRoofAfterBattleText:
	text "..."
	done
	
DragonspiralTowerRoofBetrayalRevealText:
	text "..."
	done
	
DragonspiralTowerRoofShadowBetrayalText:
	text "..."
	done
	
DragonspiralTowerRoofZinzolinFreakoutText:
	text "..."
	done
	
DragonspiralTowerRoofJuniperThanksText:
	text "..."
	done
	
DragonspiralTowerRoofDraydenThanksText:
	text "..."
	done
	
DragonspiralTowerRoofDraydenNoRoomText:
	text "..."
	done
	
DragonspiralTowerRoofDraydenLeaveText:
	text "..."
	done
	
DragonspiralTowerRoofCryText:
	text "SEEEEEECT!"
	done

DragonspiralTowerRoof_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6, 16, DRAGONSPIRAL_TOWER_6F, 3
	warp_event  6, 17, DRAGONSPIRAL_TOWER_6F, 4

	db 2 ; coord events
	coord_event  8, 14, SCENE_DEFAULT, DragonspiralTowerRoofScript1
	coord_event  9, 14, SCENE_DEFAULT, DragonspiralTowerRoofScript2

	db 0 ; bg events
	
	db 8 ; object events
	object_event  8, 12, SPRITE_DRAYDEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_DRAYDEN
	object_event  9, 10, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_ZINZOLIN
	object_event  7,  8, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_JUNIPER
	object_event  8, 11, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_1
	object_event  6,  9, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	object_event  8,  9, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_SHADOW_2
	object_event  9,  8, SPRITE_GENESECT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_1
	object_event  9,  8, SPRITE_GENESECT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, 0, EVENT_DRAGONSPIRAL_TOWER_ROOF_GENESECT_2
	