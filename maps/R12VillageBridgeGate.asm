	const_def 2 ; object constants
	const R12VILLAGEBRIDGEGATE_OFFICER

Rt12VillageBridgeGate_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

R12VillageBridgeGateBridgeOutScript:
	turnobject PLAYER, UP
	opentext
	writetext R12VillageBridgeGateBridgeOutText
	waitbutton
	closetext
	applymovement PLAYER, R12VillageBridgeGateMovement
	end
	
R12VillageBridgeGateOfficerScript:
	jumptextfaceplayer R12VillageBridgeGateOfficerText
	
R12VillageBridgeGateMovement:
	step RIGHT
	step_end

R12VillageBridgeGateBridgeOutText:
	text "Wait! Sorry, the"
	line "VILLAGE BRIDGE"
	
	para "is closed off"
	line "right now."
	
	para "The path has been"
	line "flooded."
	
	para "It's going to"
	line "take some time"
	
	para "before the path"
	line "is cleared, so"
	cont "come back later."
	done
	
R12VillageBridgeGateOfficerText:
	text "The bridge has"
	line "finally been"
	cont "fixed!"
	
	para "Go on ahead."
	done

Rt12VillageBridgeGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  4, R_12, 1
	warp_event  9,  5, R_12, 2
	warp_event  0,  4, VILLAGE_BRIDGE, 1
	warp_event  0,  5, VILLAGE_BRIDGE, 2

	db 2 ; coord events
	coord_event  5,  4, SCENE_DEFAULT, R12VillageBridgeGateBridgeOutScript
	coord_event  5,  5, SCENE_DEFAULT, R12VillageBridgeGateBridgeOutScript

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, R12VillageBridgeGateOfficerScript, -1
	