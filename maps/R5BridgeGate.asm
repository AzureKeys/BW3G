	const_def 2 ; object constants
	const R5BRIDGEGATE_OFFICER

Rt5BridgeGate_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

Rt5BridgeGateBadgeScript:
	turnobject PLAYER, UP
	opentext
	checkevent EVENT_DRIFTVEIL_BLOCKER
	iftrue .openbridge
	writetext Rt5BridgeGateOfficerStopText
	waitbutton
	closetext
	applymovement PLAYER, Rt5BridgeGateMovement
	end
	
.openbridge
	writetext Rt5BridgeGateOfficerRaiseBridgeText
	waitbutton
	closetext
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	opentext
	writetext Rt5BridgeGateOfficerText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	setmapscene DRIFTVEIL_BRIDGE_GATE, SCENE_FINISHED
	end
	
Rt5BridgeGateOfficerScript:
	jumptextfaceplayer Rt5BridgeGateOfficerText
	
Rt5BridgeGateMovement:
	step RIGHT
	step_end

Rt5BridgeGateOfficerStopText:
	text "Sorry buddy, the"
	line "DRAWBRIDGE is"
	cont "raised right now."
	
	para "I would call and"
	line "ask for the BRIDGE"
	cont "to be lowered, but"
	
	para "the attendant in"
	line "DRIFTVEIL CITY"
	cont "isn't answering"
	cont "my calls."
	
	para "I wonder if"
	line "something is going"
	cont "on over there…"
	done
	
Rt5BridgeGateOfficerRaiseBridgeText:
	text "Oh, you want to"
	line "cross? Let me call"
	cont "the operator in"
	cont "DRIFTVEIL CITY."
	
	para "Okay, it will be"
	line "lowered now."
	done
	
Rt5BridgeGateOfficerText:
	text "The BRIDGE has"
	line "now been lowered."
	
	para "It will take you"
	line "to DRIFTVEIL CITY."
	done

Rt5BridgeGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  4, R_5, 1
	warp_event  9,  5, R_5, 2
	warp_event  0,  4, DRIFTVEIL_DRAWBRIDGE, 3
	warp_event  0,  5, DRIFTVEIL_DRAWBRIDGE, 4

	db 2 ; coord events
	coord_event  5,  4, SCENE_DEFAULT, Rt5BridgeGateBadgeScript
	coord_event  5,  5, SCENE_DEFAULT, Rt5BridgeGateBadgeScript

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Rt5BridgeGateOfficerScript, -1
	