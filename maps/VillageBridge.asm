	const_def 2 ; object constants
	const VILLAGEBRIDGE_CABLE_LEFT_1
	const VILLAGEBRIDGE_CABLE_LEFT_2
	const VILLAGEBRIDGE_CABLE_RIGHT_1
	const VILLAGEBRIDGE_CABLE_RIGHT_2
	const VILLAGEBRIDGE_FRUIT_TREE
	const VILLAGEBRIDGE_CALCIUM
	const VILLAGEBRIDGE_ULTRA_BALL
	const VILLAGEBRIDGE_CARBOS
	const VILLAGEBRIDGE_RARE_CANDY
	const VILLAGEBRIDGE_VETERAN
	const VILLAGEBRIDGE_HARLEQUIN
	const VILLAGEBRIDGE_BEAUTY
	const VILLAGEBRIDGE_FISHER
	const VILLAGEBRIDGE_POKEMANIAC_1
	const VILLAGEBRIDGE_POKEMANIAC_2

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

TrainerVeteranVillageBridge:
	trainer VETERAN, VETERAN_VILLAGE_BRIDGE, EVENT_BEAT_VETERAN_VILLAGE_BRIDGE, VeteranVillageBridgeSeenText, VeteranVillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranVillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerHarlequinVillageBridge:
	trainer HARLEQUIN, HARLEQUIN_VILLAGE_BRIDGE, EVENT_BEAT_HARLEQUIN_VILLAGE_BRIDGE, HarlequinVillageBridgeSeenText, HarlequinVillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarlequinVillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerBeautyVillageBridge:
	trainer BEAUTY_D, BEAUTY_VILLAGE_BRIDGE, EVENT_BEAT_BEAUTY_VILLAGE_BRIDGE, BeautyVillageBridgeSeenText, BeautyVillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerFisherVillageBridge:
	trainer FISHER_D, FISHER_VILLAGE_BRIDGE, EVENT_BEAT_FISHER_VILLAGE_BRIDGE, FisherVillageBridgeSeenText, FisherVillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherVillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerPokemaniac1VillageBridge:
	trainer POKEMANIAC, POKEMANIAC_VILLAGE_BRIDGE_1, EVENT_BEAT_POKEMANIAC_VILLAGE_BRIDGE_1, Pokemaniac1VillageBridgeSeenText, Pokemaniac1VillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pokemaniac1VillageBridgeAfterText
	waitbutton
	closetext
	end

TrainerPokemaniac2VillageBridge:
	trainer POKEMANIAC, POKEMANIAC_VILLAGE_BRIDGE_2, EVENT_BEAT_POKEMANIAC_VILLAGE_BRIDGE_2, Pokemaniac2VillageBridgeSeenText, Pokemaniac2VillageBridgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pokemaniac2VillageBridgeAfterText
	waitbutton
	closetext
	end
	
VillageBridgeFruitTree:
	fruittree FRUITTREE_VILLAGE_BRIDGE
	
VillageBridgeCalcium:
	itemball CALCIUM
	
VillageBridgeUltraBall:
	itemball ULTRA_BALL
	
VillageBridgeCarbos:
	itemball CARBOS
	
VillageBridgeRareCandy:
	itemball RARE_CANDY
	
VillageBridgePPMax:
	hiddenitem PP_MAX, EVENT_VILLAGE_BRIDGE_PP_MAX
	
VillageBridgeFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VILLAGE_BRIDGE_FULL_RESTORE
	
VillageBridgeBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_VILLAGE_BRIDGE_BIG_MUSHROOM
	
VillageBridgeMaxEther:
	hiddenitem MAX_ETHER, EVENT_VILLAGE_BRIDGE_MAX_ETHER
	
VeteranVillageBridgeSeenText:
	text "..."
	done

VeteranVillageBridgeBeatenText:
	text "..."
	done

VeteranVillageBridgeAfterText:
	text "..."
	done
	
HarlequinVillageBridgeSeenText:
	text "..."
	done

HarlequinVillageBridgeBeatenText:
	text "..."
	done

HarlequinVillageBridgeAfterText:
	text "..."
	done
	
BeautyVillageBridgeSeenText:
	text "..."
	done

BeautyVillageBridgeBeatenText:
	text "..."
	done

BeautyVillageBridgeAfterText:
	text "..."
	done
	
FisherVillageBridgeSeenText:
	text "..."
	done

FisherVillageBridgeBeatenText:
	text "..."
	done

FisherVillageBridgeAfterText:
	text "..."
	done
	
Pokemaniac1VillageBridgeSeenText:
	text "..."
	done

Pokemaniac1VillageBridgeBeatenText:
	text "..."
	done

Pokemaniac1VillageBridgeAfterText:
	text "..."
	done
	
Pokemaniac2VillageBridgeSeenText:
	text "..."
	done

Pokemaniac2VillageBridgeBeatenText:
	text "..."
	done

Pokemaniac2VillageBridgeAfterText:
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
	bg_event 46, 28, BGEVENT_ITEM, VillageBridgeMaxEther
	bg_event 47, 28, BGEVENT_ITEM, VillageBridgeMaxEther

	db 15 ; object events
	object_event 30, 13, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 30, 17, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 35, 13, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 35, 17, SPRITE_CABLE, SPRITEMOVEDATA_CABLE_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event  6,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VillageBridgeFruitTree, -1
	object_event 32,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeCalcium, EVENT_VILLAGE_BRIDGE_CALCIUM
	object_event 26,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeUltraBall, EVENT_VILLAGE_BRIDGE_ULTRA_BALL
	object_event 56, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeCarbos, EVENT_VILLAGE_BRIDGE_CARBOS
	object_event 55,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VillageBridgeRareCandy, EVENT_VILLAGE_BRIDGE_RARE_CANDY
	object_event 38, 18, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranVillageBridge, -1
	object_event 39,  7, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHarlequinVillageBridge, -1
	object_event 15,  7, SPRITE_BUENA, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerBeautyVillageBridge, -1
	object_event 29, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerFisherVillageBridge, -1
	object_event 43, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniac1VillageBridge, -1
	object_event 22, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniac2VillageBridge, -1
	