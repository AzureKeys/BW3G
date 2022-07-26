	const_def 2 ; object constants
	const VILLAGEBRIDGE_CABLE_LEFT_1
	const VILLAGEBRIDGE_CABLE_LEFT_2
	const VILLAGEBRIDGE_CABLE_RIGHT_1
	const VILLAGEBRIDGE_CABLE_RIGHT_2
	const VILLAGEBRIDGE_FRUIT_TREE
	const VILLAGEBRIDGE_CALCIUM
	const VILLAGEBRIDGE_QUICK_BALL
	const VILLAGEBRIDGE_CARBOS
	const VILLAGEBRIDGE_RARE_CANDY
	const VILLAGEBRIDGE_HEART_SCALE
	const VILLAGEBRIDGE_MUSICIAN
	const VILLAGEBRIDGE_SMASHER_1
	const VILLAGEBRIDGE_SMASHER_2
	const VILLAGEBRIDGE_LINEBACKER
	const VILLAGEBRIDGE_HOOPSTER_1
	const VILLAGEBRIDGE_HOOPSTER_2

VillageBridge_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end
	
.SetTiles:
	checkevent EVENT_VILLAGE_BRIDGE_LOWER
	iffalse .done
	changeblock 28, 14, $a0
	changeblock 30, 14, $a1
	changeblock 32, 14, $b5
	changeblock 34, 14, $a2
	changeblock 36, 14, $a3
	changeblock 28, 16, $b3
	changeblock 30, 16, $a4
	changeblock 32, 16, $b1
	changeblock 34, 16, $a7
	changeblock 36, 16, $e3
	changeblock 28, 18, $ac
	changeblock 30, 18, $ad
	changeblock 32, 18, $b5
	changeblock 34, 18, $ae
	changeblock 36, 18, $af
.done
	return
	
VillageBridgeLowerScript:
	checkevent EVENT_VILLAGE_BRIDGE_LOWER
	iftrue .done
	changeblock 28, 14, $a0
	changeblock 30, 14, $a1
	changeblock 32, 14, $b5
	changeblock 34, 14, $a2
	changeblock 36, 14, $a3
	changeblock 28, 16, $b3
	changeblock 30, 16, $a4
	changeblock 32, 16, $b1
	changeblock 34, 16, $a7
	changeblock 36, 16, $e3
	changeblock 28, 18, $ac
	changeblock 30, 18, $ad
	changeblock 32, 18, $b5
	changeblock 34, 18, $ae
	changeblock 36, 18, $af
	setevent EVENT_VILLAGE_BRIDGE_LOWER
.done
	end
	
VillageBridgeUpperScript:
	checkevent EVENT_VILLAGE_BRIDGE_LOWER
	iffalse .done
	changeblock 28, 14, $9c
	changeblock 30, 14, $9d
	changeblock 32, 14, $b4
	changeblock 34, 14, $9e
	changeblock 36, 14, $9f
	changeblock 28, 16, $56
	changeblock 30, 16, $a5
	changeblock 32, 16, $b0
	changeblock 34, 16, $a6
	changeblock 36, 16, $56
	changeblock 28, 18, $a8
	changeblock 30, 18, $a9
	changeblock 32, 18, $b4
	changeblock 34, 18, $aa
	changeblock 36, 18, $ab
	clearevent EVENT_VILLAGE_BRIDGE_LOWER
.done
	end

TrainerMusicianVillageBridge:
	trainer MUSICIAN, MUSICIAN_VILLAGE_BRIDGE, EVENT_BEAT_MUSICIAN_VILLAGE_BRIDGE, MusicianVillageBridgeSeenText, MusicianVillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MusicianVillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerSmasher1VillageBridge:
	trainer SMASHER, SMASHER_VILLAGE_BRIDGE_1, EVENT_BEAT_SMASHER_VILLAGE_BRIDGE_1, Smasher1VillageBridgeSeenText, Smasher1VillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Smasher1VillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerSmasher2VillageBridge:
	trainer SMASHER, SMASHER_VILLAGE_BRIDGE_2, EVENT_BEAT_SMASHER_VILLAGE_BRIDGE_2, Smasher2VillageBridgeSeenText, Smasher2VillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Smasher2VillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerLinebackerVillageBridge:
	trainer LINEBACKER, LINEBACKER_VILLAGE_BRIDGE, EVENT_BEAT_LINEBACKER_VILLAGE_BRIDGE, LinebackerVillageBridgeSeenText, LinebackerVillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LinebackerVillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerHoopster1VillageBridge:
	trainer HOOPSTER, HOOPSTER_VILLAGE_BRIDGE_1, EVENT_BEAT_HOOPSTER_VILLAGE_BRIDGE_1, Hoopster1VillageBridgeSeenText, Hoopster1VillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hoopster1VillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerHoopster2VillageBridge:
	trainer HOOPSTER, HOOPSTER_VILLAGE_BRIDGE_2, EVENT_BEAT_HOOPSTER_VILLAGE_BRIDGE_2, Hoopster2VillageBridgeSeenText, Hoopster2VillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hoopster2VillageBridgeAfterText
	waitbutton
	closetext
	end
	
VillageBridgeFruitTree:
	fruittree FRUITTREE_VILLAGE_BRIDGE
	
VillageBridgeCalcium:
	itemball CALCIUM
	
VillageBridgeQuickBall:
	itemball QUICK_BALL
	
VillageBridgeCarbos:
	itemball CARBOS
	
VillageBridgeRareCandy:
	itemball RARE_CANDY
	
VillageBridgeHeartScale:
	itemball HEART_SCALE
	
VillageBridgePPMax:
	hiddenitem PP_MAX, EVENT_VILLAGE_BRIDGE_PP_MAX
	
VillageBridgeFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VILLAGE_BRIDGE_FULL_RESTORE
	
VillageBridgeBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_VILLAGE_BRIDGE_BIG_MUSHROOM
	
VillageBridgeMaxEther:
	hiddenitem MAX_ETHER, EVENT_VILLAGE_BRIDGE_MAX_ETHER
	
MusicianVillageBridgeSeenText:
	text "Hum fiercely! My"
	line "battle song!"
	
	para "Battle fiercely!"
	line "My #MON!"
	done

MusicianVillageBridgeBeatenText:
	text "Hm… I guess"
	line "strumming instead"
	
	para "of tapping would"
	line "be best…"
	done

MusicianVillageBridgeAfterText:
	text "Your song is truly"
	line "inspirational!"
	done
	
Smasher1VillageBridgeSeenText:
	text "..."
	done

Smasher1VillageBridgeBeatenText:
	text "..."
	done

Smasher1VillageBridgeAfterText:
	text "..."
	done
	
Smasher2VillageBridgeSeenText:
	text "..."
	done

Smasher2VillageBridgeBeatenText:
	text "..."
	done

Smasher2VillageBridgeAfterText:
	text "..."
	done
	
LinebackerVillageBridgeSeenText:
	text "..."
	done

LinebackerVillageBridgeBeatenText:
	text "..."
	done

LinebackerVillageBridgeAfterText:
	text "..."
	done
	
Hoopster1VillageBridgeSeenText:
	text "..."
	done

Hoopster1VillageBridgeBeatenText:
	text "..."
	done

Hoopster1VillageBridgeAfterText:
	text "..."
	done
	
Hoopster2VillageBridgeSeenText:
	text "..."
	done

Hoopster2VillageBridgeBeatenText:
	text "..."
	done

Hoopster2VillageBridgeAfterText:
	text "..."
	done

VillageBridge_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 61, 20, R_12_VILLAGE_BRIDGE_GATE, 3
	warp_event 61, 21, R_12_VILLAGE_BRIDGE_GATE, 4
	warp_event  4, 20, R_11_VILLAGE_BRIDGE_GATE, 1
	warp_event  4, 21, R_11_VILLAGE_BRIDGE_GATE, 2

	db 16 ; coord events
	coord_event 61, 19, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 60, 20, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 60, 21, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 61, 22, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event  4, 19, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event  5, 20, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event  5, 21, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event  4, 22, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 20, 30, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 20, 31, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 21, 30, SCENE_DEFAULT, VillageBridgeLowerScript
	coord_event 21, 31, SCENE_DEFAULT, VillageBridgeLowerScript
	coord_event 44, 30, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 44, 31, SCENE_DEFAULT, VillageBridgeUpperScript
	coord_event 43, 30, SCENE_DEFAULT, VillageBridgeLowerScript
	coord_event 43, 31, SCENE_DEFAULT, VillageBridgeLowerScript

	db 5 ; bg events
	bg_event 22,  7, BGEVENT_ITEM, VillageBridgePPMax
	bg_event 38, 14, BGEVENT_ITEM, VillageBridgeFullRestore
	bg_event  4, 31, BGEVENT_ITEM, VillageBridgeBigMushroom
	bg_event 54, 28, BGEVENT_ITEM, VillageBridgeMaxEther
	bg_event 55, 28, BGEVENT_ITEM, VillageBridgeMaxEther

	db 16 ; object events
	object_event 30, 13, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 30, 17, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 35, 13, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 35, 17, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event  6,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VillageBridgeFruitTree, -1
	object_event 32,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeCalcium, EVENT_VILLAGE_BRIDGE_CALCIUM
	object_event 26,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeQuickBall, EVENT_VILLAGE_BRIDGE_QUICK_BALL
	object_event 56, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeCarbos, EVENT_VILLAGE_BRIDGE_CARBOS
	object_event 55,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeRareCandy, EVENT_VILLAGE_BRIDGE_RARE_CANDY
	object_event 38, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeHeartScale, EVENT_VILLAGE_BRIDGE_HEART_SCALE
	object_event 22, 28, SPRITE_MUSICIAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMusicianVillageBridge, -1
	object_event 45, 28, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSmasher1VillageBridge, -1
	object_event 54, 31, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSmasher2VillageBridge, -1
	object_event 29, 23, SPRITE_LINEBACKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerLinebackerVillageBridge, -1
	object_event 11,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerHoopster1VillageBridge, -1
	object_event 15,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerHoopster2VillageBridge, -1
	