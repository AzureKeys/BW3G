	const_def 2 ; object constants
	const SKYARROWBRIDGE_GENTLEMAN
	const SKYARROWBRIDGE_LASS
	const SKYARROWBRIDGE_YOUNGSTER
	const SKYARROWBRIDGE_BRIDGE_RAIL_LEFT_1
	const SKYARROWBRIDGE_BRIDGE_RAIL_LEFT_2
	const SKYARROWBRIDGE_BRIDGE_RAIL_LEFT_3
	const SKYARROWBRIDGE_BRIDGE_RAIL_RIGHT_1
	const SKYARROWBRIDGE_BRIDGE_RAIL_RIGHT_2
	const SKYARROWBRIDGE_BRIDGE_RAIL_RIGHT_3

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
	line "important meetings"
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
	warp_event  4,  4, CASTELIA_BRIDGE_GATE, 5
	warp_event  4,  5, CASTELIA_BRIDGE_GATE, 6
	warp_event 45,  4, PINWHEEL_BRIDGE_GATE, 5
	warp_event 45,  5, PINWHEEL_BRIDGE_GATE, 6

	db 0 ; coord events

	db 0 ; bg events

	db 9 ; object events
	object_event 12,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, SkyarrowGentlemanScript, -1
	object_event 28,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SkyarrowLassScript, -1
	object_event 39,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, SkyarrowYoungsterScript, -1
	object_event 12,  6, SPRITE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 22,  6, SPRITE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 32,  6, SPRITE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 18,  6, SPRITE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 28,  6, SPRITE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	object_event 38,  6, SPRITE_CABLE, SPRITEMOVEDATA_BRIDGE_RAIL_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_3, 0, 0, -1
	