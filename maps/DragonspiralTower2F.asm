	const_def 2 ; object constants
	const DRAGONSPIRALTOWER2F_BOULDER
	const DRAGONSPIRALTOWER2F_ELIXER
	const DRAGONSPIRALTOWER2F_FULL_RESTORE
	const DRAGONSPIRALTOWER2F_GIALLO

DragonspiralTower2F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.DummyScene0:
	end
	
.SetTiles:
	checkevent EVENT_DRAGONSPIRAL_TOWER_UPPER_LEVEL
	iffalse .check_boulder
	changeblock  2,  4, $A8
	changeblock  4,  4, $A9
	changeblock  6,  4, $AA
	changeblock  8,  4, $A9
	changeblock 10,  4, $AA
	changeblock 12,  4, $A9
	changeblock 14,  4, $AB
.check_boulder
	checkevent EVENT_DRAGONSPIRAL_TOWER_2F_BOULDER
	iffalse .done
	changeblock  6, 10, $11
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 5, DRAGONSPIRALTOWER2F_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext DragonspiralBoulderFellText
	waitbutton
	disappear DRAGONSPIRALTOWER2F_BOULDER
	changeblock  6, 10, $11
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end
	
DragonspiralTower2FUpperLevelScript:
	checkevent EVENT_DRAGONSPIRAL_TOWER_UPPER_LEVEL
	iftrue .done
	changeblock  2,  4, $A8
	changeblock  4,  4, $A9
	changeblock  6,  4, $AA
	changeblock  8,  4, $A9
	changeblock 10,  4, $AA
	changeblock 12,  4, $A9
	changeblock 14,  4, $AB
	setevent EVENT_DRAGONSPIRAL_TOWER_UPPER_LEVEL
.done
	end
	
DragonspiralTower2FLowerLevelScript:
	checkevent EVENT_DRAGONSPIRAL_TOWER_UPPER_LEVEL
	iffalse .done
	changeblock  2,  4, $A6
	changeblock  4,  4, $9D
	changeblock  6,  4, $9C
	changeblock  8,  4, $9D
	changeblock 10,  4, $9C
	changeblock 12,  4, $9D
	changeblock 14,  4, $A0
	clearevent EVENT_DRAGONSPIRAL_TOWER_UPPER_LEVEL
.done
	end

TrainerDragonspiralTowerGiallo:
	trainer GIALLO, GIALLO2, EVENT_BEAT_GIALLO_2, DragonspiralTowerGialloSeenText, DragonspiralTowerGialloBeatenText, 0, .Script

.Script:
	opentext
	writetext DragonspiralTowerGialloAfterText
	waitbutton
	closetext
	end
	
DragonspiralBoulder:
	jumpstd strengthboulder
	
DragonspiralElixer:
	itemball ELIXER
	
DragonspiralFullRestore:
	itemball FULL_RESTORE
	
DragonspiralTowerGialloSeenText:
	text "So, you've come."
	line "We, the SAGEs of"
	
	para "TEAM PLASMA shall"
	line "defeat you here!"
	done
	
DragonspiralTowerGialloBeatenText:
	text "Y-you!"
	done
	
DragonspiralTowerGialloAfterText:
	text "Those in accord"
	line "with fate are pre-"
	cont "served, and those"
	
	para "who rebel against"
	line "fate perish!"
	done
	
DragonspiralBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

DragonspiralTower2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  8, 21, DRAGONSPIRAL_TOWER_1F, 3
	warp_event  9, 21, DRAGONSPIRAL_TOWER_1F, 4
	warp_event  2,  8, DRAGONSPIRAL_TOWER_3F, 1
	warp_event  2,  9, DRAGONSPIRAL_TOWER_3F, 2
	warp_event  6, 11, DRAGONSPIRAL_TOWER_2F, 1

	db 8 ; coord events
	coord_event  6, 10, SCENE_DEFAULT, DragonspiralTower2FUpperLevelScript
	coord_event  5, 11, SCENE_DEFAULT, DragonspiralTower2FUpperLevelScript
	coord_event 15, 10, SCENE_DEFAULT, DragonspiralTower2FUpperLevelScript
	coord_event  6, 12, SCENE_DEFAULT, DragonspiralTower2FLowerLevelScript
	coord_event  7, 11, SCENE_DEFAULT, DragonspiralTower2FLowerLevelScript
	coord_event  7, 12, SCENE_DEFAULT, DragonspiralTower2FLowerLevelScript
	coord_event 14, 10, SCENE_DEFAULT, DragonspiralTower2FLowerLevelScript
	coord_event 15, 11, SCENE_DEFAULT, DragonspiralTower2FLowerLevelScript

	db 0 ; bg events
	
	db 4 ; object events
	object_event  6, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonspiralBoulder, EVENT_DRAGONSPIRAL_TOWER_2F_BOULDER
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralElixer, EVENT_DRAGONSPIRAL_ELIXER
	object_event  4, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralFullRestore, EVENT_DRAGONSPIRAL_FULL_RESTORE
	object_event  2,  7, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTowerGiallo, EVENT_DRAGONSPIRAL_TOWER_SAGES
	