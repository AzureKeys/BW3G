	const_def 2 ; object constants
	const VICTORYROADPOKECENTER_NURSE
	const VICTORYROADPOKECENTER_CLERK
	const VICTORYROADPOKECENTER_COOLTRAINER_M
	const VICTORYROADPOKECENTER_RANGER_F

VictoryRoadPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VictoryRoadPokecenterNurseScript:
	jumpstd pokecenternurse

VictoryRoadPokecenterClerkScript:
	jumpstd scalingmart

VictoryRoadPokecenterCooltrainerMScript:
	jumptextfaceplayer VictoryRoadPokecenterCooltrainerMText

VictoryRoadPokecenterRangerFScript:
	jumptextfaceplayer VictoryRoadPokecenterRangerFText
	
VictoryRoadPokecenterCooltrainerMText:
	text "Thanks to my #-"
	line "MON, I've collect-"
	cont "ed 8 GYM BADGEs!"
	
	para "But I'm too afraid"
	line "to go further. I'm"
	
	para "stuck at VICTORY"
	line "ROAD."
	done
	
VictoryRoadPokecenterRangerFText:
	text "First of all, go"
	line "through this long"
	
	para "and difficult"
	line "VICTORY ROAD."
	
	para "Then, defeat even"
	line "one of the ELITE"
	
	para "FOUR. Increase"
	line "what you can do"
	
	para "little by little,"
	line "and get close to"
	cont "the Champion!"
	done

VictoryRoadPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, VICTORY_ROAD_ENTRANCE_NORTH, 5
	warp_event  5,  9, VICTORY_ROAD_ENTRANCE_NORTH, 5

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadPokecenterClerkScript, -1
	object_event  1,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VictoryRoadPokecenterCooltrainerMScript, -1
	object_event  8,  4, SPRITE_RANGER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VictoryRoadPokecenterRangerFScript, -1
	