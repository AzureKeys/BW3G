	const_def 2 ; object constants
	const MISTRALTONCAVE3F_BOULDER_1
	const MISTRALTONCAVE3F_BOULDER_2
	const MISTRALTONCAVE3F_RARE_CANDY
	const MISTRALTONCAVE3F_IRON
	const MISTRALTONCAVE3F_TM_STONE_EDGE
	const MISTRALTONCAVE3F_YELLOW_SHARD
	const MISTRALTONCAVE3F_GREEN_SHARD

MistraltonCave3F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
	checkevent EVENT_MISTRALTON_CAVE_3F_BOULDER_1
	iffalse .check2
	changeblock 14, 12, $6f ; boulder in pit
.check2
	checkevent EVENT_MISTRALTON_CAVE_3F_BOULDER_2
	iffalse .done
	changeblock 10, 18, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 2, MISTRALTONCAVE3F_BOULDER_1, .Boulder1
	stonetable 3, MISTRALTONCAVE3F_BOULDER_2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave3FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE3F_BOULDER_1
	changeblock 14, 12, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave3FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE3F_BOULDER_2
	changeblock 10, 18, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end
	
MistraltonCave3FRareCandy:
	itemball RARE_CANDY
	
MistraltonCave3FIron:
	itemball IRON
	
MistraltonCave3FTMStoneEdge:
	itemball TM_STONE_EDGE
	
MistraltonCave3FGreenShard:
	itemball GREEN_SHARD
	
MistraltonCave3FYellowShard:
	itemball YELLOW_SHARD
	
MistraltonCave3FElixer:
	hiddenitem ELIXER, EVENT_MISTRALTON_CAVE_ELIXER
	
MistraltonCave3FUltraBall:
	hiddenitem ULTRA_BALL, EVENT_MISTRALTON_CAVE_ULTRA_BALL
	
MistraltonCave3FBoulder:
	jumpstd strengthboulder
	
MistraltonCave3FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

MistraltonCave3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 15, 23, MISTRALTON_CAVE_2F, 2
	warp_event 15, 12, MISTRALTON_CAVE_3F, 1
	warp_event 11, 18, MISTRALTON_CAVE_3F, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  6, 10, BGEVENT_ITEM, MistraltonCave3FElixer
	bg_event  3, 21, BGEVENT_ITEM, MistraltonCave3FUltraBall
	
	db 7 ; object events
	object_event 15, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave3FBoulder, EVENT_MISTRALTON_CAVE_3F_BOULDER_1
	object_event 13, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave3FBoulder, EVENT_MISTRALTON_CAVE_3F_BOULDER_2
	object_event 25,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave3FRareCandy, EVENT_MISTRALTON_CAVE_RARE_CANDY
	object_event  7,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave3FIron, EVENT_MISTRALTON_CAVE_IRON
	object_event  5,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, MistraltonCave3FTMStoneEdge, EVENT_MISTRALTON_CAVE_TM_STONE_EDGE
	object_event 16,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave3FYellowShard, EVENT_MISTRALTON_CAVE_YELLOW_SHARD
	object_event  6, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave3FGreenShard, EVENT_MISTRALTON_CAVE_GREEN_SHARD
	