	const_def 2 ; object constants
	const DRAGONSPIRALTOWER4F_DRAGON_SCALE
	const DRAGONSPIRALTOWER4F_BRONIUS

DragonspiralTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerDragonspiralTowerBronius:
	trainer BRONIUS, BRONIUS2, EVENT_BEAT_BRONIUS_2, DragonspiralTowerBroniusSeenText, DragonspiralTowerBroniusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DragonspiralTowerBroniusAfterText
	waitbutton
	closetext
	end
	
DragonspiralDragonScale:
	itemball DRAGON_SCALE
	
DragonspiralTowerBroniusSeenText:
	text "..."
	done
	
DragonspiralTowerBroniusBeatenText:
	text "..."
	done
	
DragonspiralTowerBroniusAfterText:
	text "..."
	done

DragonspiralTower4F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 15,  8, DRAGONSPIRAL_TOWER_3F, 3
	warp_event 15,  9, DRAGONSPIRAL_TOWER_3F, 4
	warp_event  6,  0, DRAGONSPIRAL_TOWER_5F, 1
	warp_event  7,  0, DRAGONSPIRAL_TOWER_5F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 2 ; object events
	object_event 12,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralDragonScale, EVENT_DRAGONSPIRAL_DRAGON_SCALE
	object_event  6,  2, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTowerBronius, EVENT_DRAGONSPIRAL_TOWER_SAGES
	