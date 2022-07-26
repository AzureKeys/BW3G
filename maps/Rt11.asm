	const_def 2 ; object constants
	const R11_HYPER_POTION
	const R11_RAZOR_CLAW
	const R11_FULL_RESTORE
	const R11_HP_UP
	const R11_AMOONGUSS_1
	const R11_AMOONGUSS_2
	const R11_BACKERSM_1
	const R11_BACKERSM_2
	const R11_BACKERSF_1
	const R11_BACKERSF_2

Rt11_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end
	
.SetTiles:
	checkevent EVENT_R11_LOWER_FLOOR
	iffalse .done
	changeblock 28, 10, $d6
	changeblock 28, 12, $d7
	changeblock 30, 10, $d5
	changeblock 30, 12, $d9
	changeblock 32, 10, $d5
	changeblock 32, 12, $d9
	changeblock 34, 10, $d6
	changeblock 34, 12, $d7
.done
	return
	
Rt11LowerFloorScript:
	checkevent EVENT_R11_LOWER_FLOOR
	iftrue .done
	changeblock 28, 10, $d6
	changeblock 28, 12, $d7
	changeblock 30, 10, $d5
	changeblock 30, 12, $d9
	changeblock 32, 10, $d5
	changeblock 32, 12, $d9
	changeblock 34, 10, $d6
	changeblock 34, 12, $d7
	setevent EVENT_R11_LOWER_FLOOR
	refreshscreen
.done
	end
	
Rt11UpperFloorScript:
	checkevent EVENT_R11_LOWER_FLOOR
	iffalse .done
	changeblock 28, 10, $a0
	changeblock 28, 12, $a4
	changeblock 30, 10, $d4
	changeblock 30, 12, $d8
	changeblock 32, 10, $d4
	changeblock 32, 12, $d8
	changeblock 34, 10, $a0
	changeblock 34, 12, $a4
	clearevent EVENT_R11_LOWER_FLOOR
	refreshscreen
.done
	end

TrainerBackersMR11:
	trainer BACKERSM, BACKERSM_R11, EVENT_BEAT_BACKERSM_R11, BackersMR11SeenText, BackersMR11BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackersMR11AfterText
	waitbutton
	closetext
	end

TrainerBackersFR11:
	trainer BACKERSF, BACKERSF_R11, EVENT_BEAT_BACKERSF_R11, BackersFR11SeenText, BackersFR11BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackersFR11AfterText
	waitbutton
	closetext
	end

R11Amoonguss1:
	opentext
	writetext R11AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 48
	startbattle
	disappear R11_AMOONGUSS_1
	reloadmapafterbattle
	end

R11Amoonguss2:
	opentext
	writetext R11AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 48
	startbattle
	disappear R11_AMOONGUSS_2
	reloadmapafterbattle
	end
	
R11HyperPotion:
	itemball HYPER_POTION
	
R11RazorClaw:
	itemball RAZOR_CLAW
	
R11FullRestore:
	itemball FULL_RESTORE
	
R11HPUp:
	itemball HP_UP
	
R11MaxRevive:
	hiddenitem MAX_REVIVE, EVENT_R11_MAX_REVIVE
	
R11MaxPotion:
	hiddenitem MAX_POTION, EVENT_R11_MAX_POTION
	
R11PPUp:
	hiddenitem PP_UP, EVENT_R11_PP_UP
	
BackersMR11SeenText:
	text "Sports and #-"
	line "MON battles are"
	
	para "dramas that don't"
	line "need scripts!"
	done

BackersMR11BeatenText:
	text "We were the"
	line "underdogs…"
	done

BackersMR11AfterText:
	text "To a great sport"
	line "player, you have"
	
	para "to be able to play"
	line "defense, hit, and"
	cont "run!"
	done
	
BackersFR11SeenText:
	text "Knowing what a"
	line "truly heated"
	
	para "battle is all"
	line "about is the key"
	
	para "to truly passion-"
	line "ate cheering!"
	done

BackersFR11BeatenText:
	text "I cheered as best"
	line "as I could…"
	done

BackersFR11AfterText:
	text "A fan needs to be"
	line "100 percent about"
	
	para "both battles and"
	line "cheering!"
	done

R11AmoongussText:
	text "Ooong!"
	done

Rt11_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 37, 12, R_11_VILLAGE_BRIDGE_GATE, 3
	warp_event 37, 13, R_11_VILLAGE_BRIDGE_GATE, 4
	warp_event  4, 12, R_11_OPELUCID_GATE, 1
	warp_event  4, 13, R_11_OPELUCID_GATE, 2
	warp_event 26,  9, R_11_TRUCK, 1

	db 12 ; coord events
	coord_event 30, 17, SCENE_DEFAULT, Rt11LowerFloorScript
	coord_event 31, 18, SCENE_DEFAULT, Rt11LowerFloorScript
	coord_event 31, 19, SCENE_DEFAULT, Rt11LowerFloorScript
	coord_event 28, 15, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event 27, 16, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event 27, 17, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event 37, 11, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event 36, 12, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event 36, 13, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event  4, 11, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event  5, 12, SCENE_DEFAULT, Rt11UpperFloorScript
	coord_event  5, 13, SCENE_DEFAULT, Rt11UpperFloorScript

	db 3 ; bg events
	bg_event 35, 19, BGEVENT_ITEM, R11MaxRevive
	bg_event 28,  6, BGEVENT_ITEM, R11MaxPotion
	bg_event 26,  4, BGEVENT_ITEM, R11PPUp

	db 10 ; object events
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R11HyperPotion, EVENT_R11_HYPER_POTION
	object_event 35,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R11RazorClaw, EVENT_R11_RAZOR_CLAW
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R11FullRestore, EVENT_R11_FULL_RESTORE
	object_event 13,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R11HPUp, EVENT_R11_HP_UP
	object_event 10,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R11Amoonguss1, EVENT_R11_AMOONGUSS_1
	object_event 30,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R11Amoonguss2, EVENT_R11_AMOONGUSS_2
	object_event 12, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersMR11, -1
	object_event 13, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersMR11, -1
	object_event 19, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersFR11, -1
	object_event 20, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersFR11, -1
	