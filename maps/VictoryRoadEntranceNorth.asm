	const_def 2 ; object constants
	const VICTORYROADENTRANCENORTH_BADGE_7_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_6_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_5_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_4_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_3_DUMMY

VictoryRoadEntranceNorth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
VictoryRoadSign:
	jumptext VictoryRoadSignText
	
VictoryRoadSignText:
	text "VICTORY ROAD"
	line "ahead."
	done

VictoryRoadEntranceNorth_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  6,  4, VICTORY_ROAD_CAVE_1F, 1
	warp_event  7,  4, VICTORY_ROAD_CAVE_1F, 2
	warp_event  8,  4, VICTORY_ROAD_CAVE_1F, 3
	warp_event  9,  4, VICTORY_ROAD_CAVE_1F, 4
	warp_event 15,  5, VICTORY_ROAD_POKECENTER_1F, 1

	db 0 ; coord events
	
	db 1 ; bg events
	bg_event 10,  7, BGEVENT_READ, VictoryRoadSign
	
	db 5 ; object events
	object_event 18, 26, SPRITE_BADGE_7, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 22, 26, SPRITE_BADGE_6, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 26, 26, SPRITE_BADGE_5, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 30, 26, SPRITE_BADGE_4, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 34, 26, SPRITE_BADGE_3, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	