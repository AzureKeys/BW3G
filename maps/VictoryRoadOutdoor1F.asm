	const_def 2 ; object constants
	const VICTORYROADOUTDOOR1F_NURSE
	const VICTORYROADOUTDOOR1F_BACKPACKERF
	const VICTORYROADOUTDOOR1F_VETERANF
	const VICTORYROADOUTDOOR1F_VETERANM

VictoryRoadOutdoor1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerNurseVictoryRoadOutdoor1F:
	faceplayer
	opentext
	checkevent EVENT_BEAT_NURSE_VICTORY_ROAD
	iftrue .beaten
	writetext VictoryRoadNurseIntroText
	waitbutton
	closetext
	winlosstext VictoryRoadNurseWinText, 0
	setlasttalked VICTORYROADOUTDOOR1F_NURSE
	loadtrainer NURSE, NURSE_VICTORY_ROAD
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NURSE_VICTORY_ROAD
	opentext
.beaten
	writetext VictoryRoadNurseHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerBackpackerFVictoryRoadOutdoor1F:
	trainer BACKPACKERF, BACKPACKERF_VICTORY_ROAD_EXT, EVENT_BEAT_BACKPACKERF_VICTORY_ROAD_EXT, BackpackerFVictoryRoadOutdoor1FSeenText, BackpackerFVictoryRoadOutdoor1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFVictoryRoadOutdoor1FAfterText
	waitbutton
	closetext
	end

TrainerVeteranFVictoryRoadOutdoor1F:
	trainer VETERANF, VETERANF_VICTORY_ROAD_EXT_1, EVENT_BEAT_VETERANF_VICTORY_ROAD_EXT_1, VeteranFVictoryRoadOutdoor1FSeenText, VeteranFVictoryRoadOutdoor1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFVictoryRoadOutdoor1FAfterText
	waitbutton
	closetext
	end

TrainerVeteranMVictoryRoadOutdoor1F:
	trainer VETERANM, VETERANM_VICTORY_ROAD_EXT_1, EVENT_BEAT_VETERANM_VICTORY_ROAD_EXT_1, VeteranMVictoryRoadOutdoor1FSeenText, VeteranMVictoryRoadOutdoor1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranMVictoryRoadOutdoor1FAfterText
	waitbutton
	closetext
	end
	
VictoryRoadNurseIntroText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
VictoryRoadNurseWinText:
	text "Ah, I see."
	done
	
VictoryRoadNurseHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
BackpackerFVictoryRoadOutdoor1FSeenText:
	text "..."
	done

BackpackerFVictoryRoadOutdoor1FBeatenText:
	text "..."
	done

BackpackerFVictoryRoadOutdoor1FAfterText:
	text "..."
	done
	
VeteranFVictoryRoadOutdoor1FSeenText:
	text "..."
	done

VeteranFVictoryRoadOutdoor1FBeatenText:
	text "..."
	done

VeteranFVictoryRoadOutdoor1FAfterText:
	text "..."
	done
	
VeteranMVictoryRoadOutdoor1FSeenText:
	text "..."
	done

VeteranMVictoryRoadOutdoor1FBeatenText:
	text "..."
	done

VeteranMVictoryRoadOutdoor1FAfterText:
	text "..."
	done

VictoryRoadOutdoor1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  7,  5, VICTORY_ROAD_CAVE_2F, 1
	warp_event 25,  7, VICTORY_ROAD_CAVE_2F, 2
	warp_event 39,  7, VICTORY_ROAD_CAVE_2F, 3
	warp_event 45, 18, VICTORY_ROAD_CAVE_1F, 7
	warp_event 54, 17, VICTORY_ROAD_CAVE_1F, 8
	warp_event 55, 17, VICTORY_ROAD_CAVE_1F, 9
	warp_event  6, 20, VICTORY_ROAD_GROVE, 3
	warp_event  7, 20, VICTORY_ROAD_GROVE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  6,  6, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerNurseVictoryRoadOutdoor1F, -1
	object_event 25, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerBackpackerFVictoryRoadOutdoor1F, -1
	object_event  8, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranFVictoryRoadOutdoor1F, -1
	object_event 49, 12, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerVeteranMVictoryRoadOutdoor1F, -1
	