	const_def 2 ; object constants
	const DREAMYARD_BOULDER
	const DREAMYARD_MOON_STONE
	const DREAMYARD_LEVEL_BALL
	const DREAMYARD_PP_UP
	const DREAMYARD_WIDE_LENS
	const DREAMYARD_TM_DAZZLINGLEAM
	const DREAMYARD_YOUNGSTER
	const DREAMYARD_SCHOOLBOY
	const DREAMYARD_SCHOOLGIRL

Dreamyard_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
; There are no battles or warps that would load the map from the upper level
; So always set event to lower level on map load
	clearevent EVENT_DREAMYARD_UPPER_LEVEL
	checkevent EVENT_DREAMYARD_BOULDER
	iffalse .done
	changeblock 10, 20, $55 ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 3, DREAMYARD_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext DreamyardBoulderFellText
	waitbutton
	disappear DREAMYARD_BOULDER
	changeblock 10, 20, $55 ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
DreamyardUpperLevelScript:
	checkevent EVENT_DREAMYARD_UPPER_LEVEL
	iftrue .done
	changeblock 10,  0, $87
	changeblock 14,  0, $87
	changeblock 16,  0, $87
	changeblock 18,  0, $87
	changeblock 20,  0, $87
	changeblock 12,  2, $84
	changeblock 12,  4, $88
	changeblock 12,  6, $86
	changeblock 12,  8, $86
	setevent EVENT_DREAMYARD_UPPER_LEVEL
.done
	end
	
DreamyardLowerLevelScript:
	checkevent EVENT_DREAMYARD_UPPER_LEVEL
	iffalse .done
	changeblock 10,  0, $6B
	changeblock 14,  0, $6B
	changeblock 16,  0, $6B
	changeblock 18,  0, $6B
	changeblock 20,  0, $6B
	changeblock 12,  2, $71
	changeblock 12,  4, $75
	changeblock 12,  6, $82
	changeblock 12,  8, $81
	clearevent EVENT_DREAMYARD_UPPER_LEVEL
.done
	end

TrainerYoungsterDreamyard:
	trainer YOUNGSTER, YOUNGSTER_DREAMYARD, EVENT_BEAT_YOUNGSTER_DREAMYARD, YoungsterDreamyardSeenText, YoungsterDreamyardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterDreamyardAfterText
	waitbutton
	closetext
	end

TrainerSchoolboyDreamyard:
	trainer SCHOOLBOY_D, SCHOOLBOY_DREAMYARD, EVENT_BEAT_SCHOOLBOY_DREAMYARD, SchoolboyDreamyardSeenText, SchoolboyDreamyardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyDreamyardAfterText
	waitbutton
	closetext
	end

TrainerSchoolgirlDreamyard:
	trainer SCHOOLGIRL, SCHOOLGIRL_DREAMYARD, EVENT_BEAT_SCHOOLGIRL_DREAMYARD, SchoolgirlDreamyardSeenText, SchoolgirlDreamyardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolgirlDreamyardAfterText
	waitbutton
	closetext
	end
	
DreamyardBoulder:
	jumpstd strengthboulder
	
DreamyardMoonStone:
	itemball MOON_STONE
	
DreamyardLevelBall:
	itemball LEVEL_BALL
	
DreamyardPPUp:
	itemball PP_UP
	
DreamyardWideLens:
	itemball WIDE_LENS
	
DreamyardTMDazzlingleam:
	itemball TM_DAZZLINGLEAM
	
DreamyardMaxPotion:
	hiddenitem MAX_POTION, EVENT_DREAMYARD_MAX_POTION
	
DreamyardRevive:
	hiddenitem REVIVE, EVENT_DREAMYARD_REVIVE
	
YoungsterDreamyardSeenText:
	text "..."
	done

YoungsterDreamyardBeatenText:
	text "..."
	done

YoungsterDreamyardAfterText:
	text "..."
	done
	
SchoolboyDreamyardSeenText:
	text "..."
	done

SchoolboyDreamyardBeatenText:
	text "..."
	done

SchoolboyDreamyardAfterText:
	text "..."
	done
	
SchoolgirlDreamyardSeenText:
	text "..."
	done

SchoolgirlDreamyardBeatenText:
	text "..."
	done

SchoolgirlDreamyardAfterText:
	text "..."
	done
	
DreamyardBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

Dreamyard_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event  1, 16, STRIATON_CITY, 7
	warp_event  1, 17, STRIATON_CITY, 8
	warp_event 10, 21, DREAMYARD, 1
	warp_event 13, 24, DREAMYARD_B1F, 1
	warp_event 13, 25, DREAMYARD_B1F, 2
	warp_event 37, 28, DREAMYARD_B1F, 3
	warp_event 37, 29, DREAMYARD_B1F, 4
	warp_event 37,  4, DREAMYARD_B1F, 5
	warp_event 37,  5, DREAMYARD_B1F, 6

	db 4 ; coord events
	coord_event 23,  6, SCENE_DEFAULT, DreamyardUpperLevelScript
	coord_event 22,  6, SCENE_DEFAULT, DreamyardLowerLevelScript
	coord_event 23,  7, SCENE_DEFAULT, DreamyardLowerLevelScript
	coord_event 24,  6, SCENE_DEFAULT, DreamyardLowerLevelScript

	db 2 ; bg events
	bg_event 18, 13, BGEVENT_ITEM, DreamyardMaxPotion
	bg_event  6, 27, BGEVENT_ITEM, DreamyardRevive
	
	db 9 ; object events
	object_event 10, 20, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DreamyardBoulder, EVENT_DREAMYARD_BOULDER
	object_event 27, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardMoonStone, EVENT_DREAMYARD_MOON_STONE
	object_event 25,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardLevelBall, EVENT_DREAMYARD_LEVEL_BALL
	object_event 22, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardPPUp, EVENT_DREAMYARD_PP_UP
	object_event  9,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardWideLens, EVENT_DREAMYARD_WIDE_LENS
	object_event 12,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, DreamyardTMDazzlingleam, EVENT_DREAMYARD_TM_DAZZLINGLEAM
	object_event 29, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungsterDreamyard, -1
	object_event 25, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyDreamyard, -1
	object_event 16,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSchoolgirlDreamyard, -1
	