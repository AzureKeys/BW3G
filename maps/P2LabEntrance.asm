	const_def 2 ; object constants
	const P2LABENTRANCE_JUNIPER

P2LabEntrance_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_P2_LAB_ENTRANCE_DEFAULT
	scene_script .AfterGorm ; SCENE_P2_LAB_ENTRANCE_AFTER
	scene_script .DummyScene2 ; SCENE_P2_LAB_ENTRANCE_NOTHING

	db 0 ; callbacks

.DummyScene0:
	end

.AfterGorm:
	priorityjump .BeatenP2LabScene
	end

.DummyScene2:
	end
	
.BeatenP2LabScene:
	turnobject PLAYER, RIGHT
	moveobject P2LABENTRANCE_JUNIPER, 5, 7
	appear P2LABENTRANCE_JUNIPER
	turnobject P2LABENTRANCE_JUNIPER, LEFT
	opentext
	writetext P2LabEntranceJuniperAfterText
	waitbutton
	closetext
	applymovement P2LABENTRANCE_JUNIPER, P2LabEntranceJuniperMovement2
	disappear P2LABENTRANCE_JUNIPER
	setscene SCENE_P2_LAB_ENTRANCE_NOTHING
	setevent EVENT_BEAT_P2_LAB
	setevent EVENT_NUVEMA_LAB_BIANCA
	setevent EVENT_P2_LAB_GRUNTS
	specialphonecall SPECIALCALL_BIANCA_P2
	end
	
P2LabEntranceJuniperScript:
	turnobject PLAYER, UP
	turnobject P2LABENTRANCE_JUNIPER, DOWN
	opentext
	writetext P2LabEntranceJuniperIntroText
	waitbutton
	closetext
	applymovement P2LABENTRANCE_JUNIPER, P2LabEntranceJuniperMovement1
	playsound SFX_ENTER_DOOR
	disappear P2LABENTRANCE_JUNIPER
	waitsfx
	setscene SCENE_P2_LAB_ENTRANCE_NOTHING
	end

P2LabEntranceJuniperIntroText:
	text "JUNIPER: <PLAY_G>!"
	line "It's just as I"
	
	para "suspected, there's"
	line "a secret entrance."

	para "After TEAM PLASMA"
	line "was shut down, the"
	
	para "#MON LEAGUE"
	line "raided their labs"
	cont "and hideouts."
	
	para "They found some"
	line "pretty dangerous"
	cont "technology…"
	
	para "I wonder what TEAM"
	line "PLASMA could be"
	cont "after here…"
	
	para "Come on, <PLAY_G>,"
	line "let's go."
	done

P2LabEntranceJuniperAfterText:
	text "JUNIPER: Thanks"
	line "for your help,"
	cont "<PLAY_G>."

	para "I hope to meet you"
	line "again on your"
	cont "travels."
	done
	
P2LabEntranceJuniperMovement1:
	step RIGHT
	step_end
	
P2LabEntranceJuniperMovement2:
	step DOWN
	step DOWN
	step_end

P2LabEntrance_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  9, R_17, 3
	warp_event  5,  9, R_17, 3
	warp_event  9,  2, P2_LAB, 1

	db 1 ; coord events
	coord_event  8,  3, SCENE_P2_LAB_ENTRANCE_DEFAULT, P2LabEntranceJuniperScript

	db 0 ; bg events

	db 1 ; object events
	object_event  8,  2, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_ENTRANCE_JUNIPER
	