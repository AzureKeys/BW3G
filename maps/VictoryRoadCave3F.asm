	const_def 2 ; object constants
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
	
VeteranFVictoryRoadCave3FSeenText:
	text "..."
	done

VeteranFVictoryRoadCave3FBeatenText:
	text "..."
	done

VeteranFVictoryRoadCave3FAfterText:
	text "..."
	done

VictoryRoadCave3F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 19, 19, VICTORY_ROAD_OUTDOOR_2F, 4
	warp_event  7, 29, VICTORY_ROAD_OUTDOOR_2F, 5
	warp_event 15,  7, VICTORY_ROAD_OUTDOOR_2F, 6
	warp_event  7,  5, PKMN_LEAGUE_ENTRANCE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 15, 26, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranFVictoryRoadCave3F, -1
	