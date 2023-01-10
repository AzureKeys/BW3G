	const_def 2 ; object constants
	const VICTORYROADCAVE3F_PP_UP
	const VICTORYROADCAVE3F_VETERANF

VictoryRoadCave3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerVeteranFVictoryRoadCave3F:
	trainer VETERANF, VETERANF_VICTORY_ROAD_INT_2, EVENT_BEAT_VETERANF_VICTORY_ROAD_INT_2, VeteranFVictoryRoadCave3FSeenText, VeteranFVictoryRoadCave3FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFVictoryRoadCave3FAfterText
	waitbutton
	closetext
	end
	
VictoryRoadCave3FPPUp:
	itemball PP_UP
	
VictoryRoadCave3FNugget:
	hiddenitem NUGGET, EVENT_VICTORY_ROAD_INT_NUGGET
	
VictoryRoadCave3FFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VICTORY_ROAD_INT_FULL_RESTORE_2
	
VeteranFVictoryRoadCave3FSeenText:
	text "All I want are"
	line "powerful #MON!"
	done

VeteranFVictoryRoadCave3FBeatenText:
	text "I can't comprehend"
	line "this! How could my"
	cont "#MON lose?"
	done

VeteranFVictoryRoadCave3FAfterText:
	text "All I want are"
	line "powerful #MON!"
	
	para "Only a #MON"
	line "that understands"
	
	para "that can become"
	line "one of my"
	cont "partners!"
	done

VictoryRoadCave3F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 19, 19, VICTORY_ROAD_OUTDOOR_2F, 4
	warp_event  7, 29, VICTORY_ROAD_OUTDOOR_2F, 5
	warp_event 15,  7, VICTORY_ROAD_OUTDOOR_2F, 6
	warp_event  7,  5, PKMN_LEAGUE_ENTRANCE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  4, 23, BGEVENT_ITEM, VictoryRoadCave3FNugget
	bg_event 19, 14, BGEVENT_ITEM, VictoryRoadCave3FFullRestore

	db 2 ; object events
	object_event  5, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave3FPPUp, EVENT_VICTORY_ROAD_INT_PP_UP
	object_event 15, 26, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranFVictoryRoadCave3F, -1
	