	const_def 2 ; object constants
	const VICTORYROADPOKECENTER_NURSE
	const VICTORYROADPOKECENTER_CLERK

VictoryRoadPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VictoryRoadPokecenterNurseScript:
	jumpstd pokecenternurse

VictoryRoadPokecenterClerkScript:
	jumpstd scalingmart

VictoryRoadPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, VICTORY_ROAD_ENTRANCE_NORTH, 5
	warp_event  5,  9, VICTORY_ROAD_ENTRANCE_NORTH, 5

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadPokecenterClerkScript, -1
	