	const_def 2 ; object constants
	const NACRENEOUTSKIRT_YOUNGSTER

NacreneOutskirt_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
NacreneOutskirtYoungsterScript:
	jumptextfaceplayer NacreneOutskirtYoungsterText
	
NacreneOutskirtYoungsterText:
	text "There are cops in"
	line "the forest. They"
	
	para "wouldn't let me"
	line "through!"
	done

NacreneOutskirt_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  8, PINWHEEL_FOREST, 2
	warp_event  3,  9, PINWHEEL_FOREST, 3

	db 0 ; coord events
	
	db 0 ; bg events

	db 1 ; object events
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NacreneOutskirtYoungsterScript, -1
	