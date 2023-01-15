	const_def 2 ; object constants
	const TUBELINEBRIDGE_TEACHER
	const TUBELINEBRIDGE_SOCIALITE

TubelineBridge_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TubelineBridgeTeacherScript:
	jumptextfaceplayer TubelineBridgeTeacherText
	
TubelineBridgeSocialiteScript:
	jumptextfaceplayer TubelineBridgeSocialiteText
	
TubelineBridgeTeacherText:
	text "It's so loud in"
	line "here! If I were a"
	
	para "#MON, I'd want"
	line "to have SOUNDPROOF"
	cont "as my ability!"
	done
	
TubelineBridgeSocialiteText:
	text "This TUBELINE"
	line "BRIDGE was No. 1"
	
	para "in the bridge"
	line "rankings in UNOVA."
	
	para "That means it's"
	line "the sturdiest!"
	done

TubelineBridge_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  6, R_8, 1
	warp_event  0,  7, R_8, 2
	warp_event 17,  6, R_9, 1
	warp_event 17,  7, R_9, 2
	
	db 0 ; coord events

	db 0 ; bg events
	
	db 2 ; object events
	object_event 12,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TubelineBridgeTeacherScript, -1
	object_event  3,  4, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TubelineBridgeSocialiteScript, -1
	