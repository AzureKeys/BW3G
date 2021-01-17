	const_def 2 ; object constants
	const GIANTCHASM_INFER
	const GIANTCHASM_PARLYZHEAL

GiantChasm1F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
GiantChasm_MeetInferScene:
	special FadeOutMusic
	pause 15
	opentext
	writetext GiantChasmInferText_Phone
	waitbutton
	closetext
	showemote EMOTE_SHOCK, GIANTCHASM_INFER, 15
	turnobject GIANTCHASM_INFER, RIGHT
	opentext
	writetext GiantChasmInferText_Leave
	waitbutton
	closetext
	playsound SFX_RUN
	applymovement GIANTCHASM_INFER, GiantChasmInferMovement
	pause 15
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	setscene SCENE_FINISHED
	disappear GIANTCHASM_INFER
	special RestartMapMusic
	end

GiantChasm1FPrzHeal:
	itemball PARLYZ_HEAL
	
GiantChasm1FFullHeal:
	hiddenitem FULL_HEAL, EVENT_GIANT_CHASM_1F_FULL_HEAL

GiantChasmInferMovement:
	big_step LEFT
	big_step LEFT
	step_end
	
GiantChasmInferText_Phone:
	text "Yes, I have the"
	line "package. I"
	
	para "managed to snag"
	line "it from the GYM"
	
	para "while the LEADER"
	line "was away. I don't"
	
	para "think the GYM"
	line "LEADER followed"
	cont "me."
	done
	
GiantChasmInferText_Leave:
	text "Hey, you!"
	
	para "Get out of here!"
	line "Forget what you"
	cont "saw here!"
	done
	
GiantChasm1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 15,  3, R_22, 1
	warp_event  7, 17, R_13, 1
	warp_event  3,  1, R_23, 1
	warp_event 11,  2, GIANT_CHASM_ROOMS, 1

	db 1 ; coord events
	coord_event 13, 17, SCENE_DEFAULT, GiantChasm_MeetInferScene

	db 1 ; bg events
	bg_event  5, 14, BGEVENT_ITEM, GiantChasm1FFullHeal

	db 2 ; object events
	object_event 10, 17, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, -1, EVENT_GIANT_CHASM_INFER
	object_event  2, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasm1FPrzHeal, EVENT_GIANT_CHASM_1F_PARLYZ_HEAL
