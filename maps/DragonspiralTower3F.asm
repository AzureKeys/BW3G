	const_def 2 ; object constants
	const DRAGONSPIRALTOWER3F_REVIVE
	const DRAGONSPIRALTOWER3F_IRON
	const DRAGONSPIRALTOWER3F_ZOOM_LENS
	const DRAGONSPIRALTOWER3F_RYOKU

DragonspiralTower3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerDragonspiralTowerRyoku:
	trainer RYOKU, RYOKU2, EVENT_BEAT_RYOKU_2, DragonspiralTowerRyokuSeenText, DragonspiralTowerRyokuBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DragonspiralTowerRyokuAfterText
	waitbutton
	closetext
	end
	
DragonspiralRevive:
	itemball REVIVE
	
DragonspiralIron:
	itemball IRON
	
DragonspiralZoomLens:
	itemball ZOOM_LENS
	
DragonspiralTowerRyokuSeenText:
	text "..."
	done
	
DragonspiralTowerRyokuBeatenText:
	text "..."
	done
	
DragonspiralTowerRyokuAfterText:
	text "..."
	done

DragonspiralTower3F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 12, 14, DRAGONSPIRAL_TOWER_2F, 3
	warp_event 12, 15, DRAGONSPIRAL_TOWER_2F, 4
	warp_event  2,  2, DRAGONSPIRAL_TOWER_4F, 1
	warp_event  2,  3, DRAGONSPIRAL_TOWER_4F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 4 ; object events
	object_event  9,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralRevive, EVENT_DRAGONSPIRAL_REVIVE
	object_event 14,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralIron, EVENT_DRAGONSPIRAL_IRON
	object_event  8,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralZoomLens, EVENT_DRAGONSPIRAL_ZOOM_LENS
	object_event  1,  4, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTowerRyoku, EVENT_DRAGONSPIRAL_TOWER_SAGES
	