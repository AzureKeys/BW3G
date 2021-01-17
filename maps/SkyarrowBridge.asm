	const_def 2 ; object constants
	const SKYARROWBRIDGE_GENTLEMAN
	const SKYARROWBRIDGE_LASS
	const SKYARROWBRIDGE_YOUNGSTER

SkyarrowBridge_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SkyarrowGentlemanScript:
	jumptextfaceplayer SkyarrowGentlemanText

SkyarrowLassScript:
	jumptextfaceplayer SkyarrowLassText

SkyarrowYoungsterScript:
	jumptextfaceplayer SkyarrowYoungsterText
	
SkyarrowGentlemanText:
	text "I'm glad to see"
	line "the bridge is"
	cont "back open."
	
	para "Now I can make my"
	line "important meeting"
	cont "in the city."
	done
	
SkyarrowLassText:
	text "I love to look"
	line "over the railing"
	cont "of the bridge!"
	
	para "The sea is so"
	line "vast! It's"
	cont "dizzying!"
	done
	
SkyarrowYoungsterText:
	text "I heard something"
	line "is going on in"
	cont "the forest!"
	done

SkyarrowBridge_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  8, CASTELIA_BRIDGE_GATE, 3
	warp_event  4,  9, CASTELIA_BRIDGE_GATE, 4
	warp_event 33,  8, PINWHEEL_BRIDGE_GATE, 3
	warp_event 33,  9, PINWHEEL_BRIDGE_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 10,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, SkyarrowGentlemanScript, -1
	object_event 21,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SkyarrowLassScript, -1
	object_event 30,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, SkyarrowYoungsterScript, -1
	