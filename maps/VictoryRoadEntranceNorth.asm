	const_def 2 ; object constants
	const VICTORYROADENTRANCENORTH_BADGE_7_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_6_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_5_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_4_DUMMY
	const VICTORYROADENTRANCENORTH_BADGE_3_DUMMY
	const VICTORYROADENTRANCENORTH_PP_UP
	const VICTORYROADENTRANCENORTH_IRON
	const VICTORYROADENTRANCENORTH_RAZOR_FANG

VictoryRoadEntranceNorth_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VICTORY_ROAD
	return
	
VictoryRoadEntranceNorthPPUp:
	itemball PP_UP
	
VictoryRoadEntranceNorthIron:
	itemball IRON
	
VictoryRoadEntranceNorthRazorFang:
	itemball RAZOR_FANG
	
VictoryRoadEntranceNorthMaxEther:
	hiddenitem MAX_ETHER, EVENT_VICTORY_ROAD_ENTRANCE_MAX_ETHER
	
VictoryRoadEntranceNorthMaxPotion:
	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_ENTRANCE_MAX_POTION
	
VictoryRoadEntranceNorthBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_VICTORY_ROAD_ENTRANCE_BIG_MUSHROOM
	
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
	
	db 4 ; bg events
	bg_event 10,  7, BGEVENT_READ, VictoryRoadSign
	bg_event 22, 22, BGEVENT_ITEM, VictoryRoadEntranceNorthMaxEther
	bg_event 17, 16, BGEVENT_ITEM, VictoryRoadEntranceNorthMaxPotion
	bg_event 27, 18, BGEVENT_ITEM, VictoryRoadEntranceNorthBigMushroom
	
	db 8 ; object events
	object_event 18, 26, SPRITE_BADGE_7, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 22, 26, SPRITE_BADGE_6, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 26, 26, SPRITE_BADGE_5, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 30, 26, SPRITE_BADGE_4, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 34, 26, SPRITE_BADGE_3, SPRITEMOVEDATA_BADGE, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_3, 0, 0, -1
	object_event 23,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadEntranceNorthPPUp, EVENT_VICTORY_ROAD_ENTRANCE_PP_UP
	object_event 25, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadEntranceNorthIron, EVENT_VICTORY_ROAD_ENTRANCE_IRON
	object_event 45,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadEntranceNorthRazorFang, EVENT_VICTORY_ROAD_ENTRANCE_RAZOR_FANG
	