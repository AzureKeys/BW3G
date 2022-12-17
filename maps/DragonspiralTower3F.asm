	const_def 2 ; object constants
	const DRAGONSPIRALTOWER3F_REVIVE
	const DRAGONSPIRALTOWER3F_IRON
	const DRAGONSPIRALTOWER3F_LIGHT_CLAY
	const DRAGONSPIRALTOWER3F_RYOKU

DragonspiralTower3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerDragonspiralTowerRyoku:
	trainer RYOKU, RYOKU2, EVENT_BEAT_RYOKU_2, DragonspiralTowerRyokuSeenText, DragonspiralTowerRyokuBeatenText, 0, .Script

.Script:
	opentext
	writetext DragonspiralTowerRyokuAfterText
	waitbutton
	closetext
	end
	
DragonspiralRevive:
	itemball REVIVE
	
DragonspiralIron:
	itemball IRON
	
DragonspiralLightClay:
	itemball LIGHT_CLAY
	
DragonspiralTowerRyokuSeenText:
	text "I… I will once"
	line "again test how"
	
	para "much power you"
	line "have. I will see"
	
	para "if you can stand"
	line "up to TEAM PLASMA!"
	done
	
DragonspiralTowerRyokuBeatenText:
	text "I- I can't…"
	done
	
DragonspiralTowerRyokuAfterText:
	text "I've done every-"
	line "thing in my power."
	
	para "I can only do my"
	line "best and leave the"
	cont "rest up to fate."
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
	object_event  8,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonspiralLightClay, EVENT_DRAGONSPIRAL_LIGHT_CLAY
	object_event  1,  4, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerDragonspiralTowerRyoku, EVENT_DRAGONSPIRAL_TOWER_SAGES
	