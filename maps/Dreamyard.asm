	const_def 2 ; object constants
	const DREAMYARD_BOULDER

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
	
DreamyardBoulder:
	jumpstd strengthboulder
	
DreamyardBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

Dreamyard_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  1, 16, STRIATON_CITY, 7
	warp_event  1, 17, STRIATON_CITY, 8
	warp_event 10, 21, DREAMYARD, 1

	db 4 ; coord events
	coord_event 23,  6, SCENE_DEFAULT, DreamyardUpperLevelScript
	coord_event 22,  6, SCENE_DEFAULT, DreamyardLowerLevelScript
	coord_event 23,  7, SCENE_DEFAULT, DreamyardLowerLevelScript
	coord_event 24,  6, SCENE_DEFAULT, DreamyardLowerLevelScript

	db 0 ; bg events
	
	db 1 ; object events
	object_event 10, 20, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DreamyardBoulder, EVENT_DREAMYARD_BOULDER
	