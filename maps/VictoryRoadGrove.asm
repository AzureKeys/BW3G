	const_def 2 ; object constants
	const VICTORYROADGROVE_MAX_REVIVE
	const VICTORYROADGROVE_BRIGHTPOWDER
	const VICTORYROADGROVE_ACE_TRAINERM
	const VICTORYROADGROVE_ACE_TRAINERF

VictoryRoadGrove_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerAceTrainerMVictoryRoadGrove:
	trainer ACE_TRAINERM_D, ACE_TRAINERM_VICTORY_ROAD_EXT_2, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_EXT_2, AceTrainerMVictoryRoadGroveSeenText, AceTrainerMVictoryRoadGroveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMVictoryRoadGroveAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerFVictoryRoadGrove:
	trainer ACE_TRAINERF, ACE_TRAINERF_VICTORY_ROAD_EXT_1, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_EXT_1, AceTrainerFVictoryRoadGroveSeenText, AceTrainerFVictoryRoadGroveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFVictoryRoadGroveAfterText
	waitbutton
	closetext
	end
	
VictoryRoadGroveMaxRevive:
	itemball MAX_REVIVE
	
VictoryRoadGroveBrightPowder:
	itemball BRIGHTPOWDER
	
AceTrainerMVictoryRoadGroveSeenText:
	text "..."
	done

AceTrainerMVictoryRoadGroveBeatenText:
	text "..."
	done

AceTrainerMVictoryRoadGroveAfterText:
	text "..."
	done
	
AceTrainerFVictoryRoadGroveSeenText:
	text "..."
	done

AceTrainerFVictoryRoadGroveBeatenText:
	text "..."
	done

AceTrainerFVictoryRoadGroveAfterText:
	text "..."
	done

VictoryRoadGrove_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 13, 24, VICTORY_ROAD_CAVE_1F, 5
	warp_event 14, 24, VICTORY_ROAD_CAVE_1F, 6
	warp_event  5,  5, VICTORY_ROAD_OUTDOOR_1F, 7
	warp_event  6,  5, VICTORY_ROAD_OUTDOOR_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 17,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadGroveMaxRevive, EVENT_VICTORY_ROAD_INT_MAX_REVIVE_1
	object_event  5, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadGroveBrightPowder, EVENT_VICTORY_ROAD_INT_BRIGHTPOWDER
	object_event 11, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerMVictoryRoadGrove, -1
	object_event 11, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerFVictoryRoadGrove, -1
	