	const_def 2 ; object constants
	const VICTORYROADOUTDOOR2F_BOULDER
	const VICTORYROADOUTDOOR2F_VETERANM
	const VICTORYROADOUTDOOR2F_VETERANF
	const VICTORYROADOUTDOOR2F_ACE_TRAINERM
	const VICTORYROADOUTDOOR2F_ACE_TRAINERF
	const VICTORYROADOUTDOOR2F_SCIENTISTM
	const VICTORYROADOUTDOOR2F_SCIENTISTF
	const VICTORYROADOUTDOOR2F_BLACKBELT
	const VICTORYROADOUTDOOR2F_BATTLE_GIRL

VictoryRoadOutdoor2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_VICTORY_ROAD_OUTDOOR_BOULDER
	iffalse .done
	changeblock 18,  8, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable  7, VICTORYROADOUTDOOR2F_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadOutdoor2FBoulderFellText
	waitbutton
	disappear VICTORYROADOUTDOOR2F_BOULDER
	changeblock 18,  8, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
VictoryRoadOutdoor2FBoulder:
	jumpstd strengthboulder

TrainerVeteranMVictoryRoadOutdoor2F:
	trainer VETERANM, VETERANM_VICTORY_ROAD_EXT_2, EVENT_BEAT_VETERANM_VICTORY_ROAD_EXT_2, VeteranMVictoryRoadOutdoor2FSeenText, VeteranMVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranMVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerVeteranFVictoryRoadOutdoor2F:
	trainer VETERANF, VETERANF_VICTORY_ROAD_EXT_2, EVENT_BEAT_VETERANF_VICTORY_ROAD_EXT_2, VeteranFVictoryRoadOutdoor2FSeenText, VeteranFVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerMVictoryRoadOutdoor2F:
	trainer ACE_TRAINERM, ACE_TRAINERM_VICTORY_ROAD_EXT_1, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_EXT_1, AceTrainerMVictoryRoadOutdoor2FSeenText, AceTrainerMVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerFVictoryRoadOutdoor2F:
	trainer ACE_TRAINERF_D, ACE_TRAINERF_VICTORY_ROAD_EXT_2, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_EXT_2, AceTrainerFVictoryRoadOutdoor2FSeenText, AceTrainerFVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerScientistMVictoryRoadOutdoor2F:
	trainer SCIENTISTM, SCIENTISTM_VICTORY_ROAD_EXT, EVENT_BEAT_SCIENTISTM_VICTORY_ROAD_EXT, ScientistMVictoryRoadOutdoor2FSeenText, ScientistMVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerScientistFVictoryRoadOutdoor2F:
	trainer SCIENTISTF, SCIENTISTF_VICTORY_ROAD_EXT, EVENT_BEAT_SCIENTISTF_VICTORY_ROAD_EXT, ScientistFVictoryRoadOutdoor2FSeenText, ScientistFVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltVictoryRoadOutdoor2F:
	trainer BLACKBELT_T, BLACKBELT_VICTORY_ROAD_EXT, EVENT_BEAT_BLACKBELT_VICTORY_ROAD_EXT, BlackbeltVictoryRoadOutdoor2FSeenText, BlackbeltVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlVictoryRoadOutdoor2F:
	trainer BATTLE_GIRL, BATTLE_GIRL_VICTORY_ROAD_EXT, EVENT_BEAT_BATTLE_GIRL_VICTORY_ROAD_EXT, BattleGirlVictoryRoadOutdoor2FSeenText, BattleGirlVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end
	
VictoryRoadOutdoor2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done
	
VeteranMVictoryRoadOutdoor2FSeenText:
	text "..."
	done

VeteranMVictoryRoadOutdoor2FBeatenText:
	text "..."
	done

VeteranMVictoryRoadOutdoor2FAfterText:
	text "..."
	done
	
VeteranFVictoryRoadOutdoor2FSeenText:
	text "..."
	done

VeteranFVictoryRoadOutdoor2FBeatenText:
	text "..."
	done

VeteranFVictoryRoadOutdoor2FAfterText:
	text "..."
	done
	
AceTrainerMVictoryRoadOutdoor2FSeenText:
	text "..."
	done

AceTrainerMVictoryRoadOutdoor2FBeatenText:
	text "..."
	done

AceTrainerMVictoryRoadOutdoor2FAfterText:
	text "..."
	done
	
AceTrainerFVictoryRoadOutdoor2FSeenText:
	text "To battle in a"
	line "high-up place…"
	
	para "This is a perfect"
	line "situation for an"
	
	para "ACE TRAINER such"
	line "as I!"
	done

AceTrainerFVictoryRoadOutdoor2FBeatenText:
	text "To tell the truth…"
	line "I'm actually"
	cont "afraid of heights…"
	done

AceTrainerFVictoryRoadOutdoor2FAfterText:
	text "Overcoming one's"
	line "fears is an"
	
	para "important part of"
	line "being an ACE"
	cont "TRAINER!"
	
	para "But still, I hate"
	line "being up so high…"
	done
	
ScientistMVictoryRoadOutdoor2FSeenText:
	text "..."
	done

ScientistMVictoryRoadOutdoor2FBeatenText:
	text "..."
	done

ScientistMVictoryRoadOutdoor2FAfterText:
	text "..."
	done
	
ScientistFVictoryRoadOutdoor2FSeenText:
	text "..."
	done

ScientistFVictoryRoadOutdoor2FBeatenText:
	text "..."
	done

ScientistFVictoryRoadOutdoor2FAfterText:
	text "..."
	done
	
BlackbeltVictoryRoadOutdoor2FSeenText:
	text "..."
	done

BlackbeltVictoryRoadOutdoor2FBeatenText:
	text "..."
	done

BlackbeltVictoryRoadOutdoor2FAfterText:
	text "..."
	done
	
BattleGirlVictoryRoadOutdoor2FSeenText:
	text "..."
	done

BattleGirlVictoryRoadOutdoor2FBeatenText:
	text "..."
	done

BattleGirlVictoryRoadOutdoor2FAfterText:
	text "..."
	done

VictoryRoadOutdoor2F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  9, 34, VICTORY_ROAD_CAVE_2F, 4
	warp_event 37, 34, VICTORY_ROAD_CAVE_2F, 5
	warp_event 17, 14, VICTORY_ROAD_CAVE_2F, 6
	warp_event 29, 12, VICTORY_ROAD_CAVE_3F, 1
	warp_event 17, 20, VICTORY_ROAD_CAVE_3F, 2
	warp_event 19,  1, VICTORY_ROAD_CAVE_3F, 3
	warp_event 18,  8, VICTORY_ROAD_OUTDOOR_2F, 8
	warp_event 16,  8, VICTORY_ROAD_OUTDOOR_2F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 9 ; object events
	object_event 20,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadOutdoor2FBoulder, EVENT_VICTORY_ROAD_OUTDOOR_BOULDER
	object_event 18,  3, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerVeteranMVictoryRoadOutdoor2F, -1
	object_event 20,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranFVictoryRoadOutdoor2F, -1
	object_event  6, 31, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerMVictoryRoadOutdoor2F, -1
	object_event 35, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerFVictoryRoadOutdoor2F, -1
	object_event 29, 35, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistMVictoryRoadOutdoor2F, -1
	object_event 22, 15, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerScientistFVictoryRoadOutdoor2F, -1
	object_event 35, 26, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltVictoryRoadOutdoor2F, -1
	object_event  5, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBattleGirlVictoryRoadOutdoor2F, -1
	