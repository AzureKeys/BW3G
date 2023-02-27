	const_def 2 ; object constants
	const OPELUCIDCITY_FOUNTAIN
	const OPELUCIDCITY_IRIS
	const OPELUCIDCITY_PROTEIN
	const OPELUCIDCITY_LASS
	const OPELUCIDCITY_FISHER
	const OPELUCIDCITY_YOUNGSTER
	const OPELUCIDCITY_GENTLEMAN

OpelucidCity_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_OPELUCID
	return
	
OpelucidCityIrisScript1:
	moveobject OPELUCIDCITY_IRIS, 38, 20
	jump OpelucidCityIrisScript
	
OpelucidCityIrisScript2:
	moveobject OPELUCIDCITY_IRIS, 38, 21
	jump OpelucidCityIrisScript
	
OpelucidCityIrisScript3:
	moveobject OPELUCIDCITY_IRIS, 38, 22
	; fallthrough
OpelucidCityIrisScript:
	appear OPELUCIDCITY_IRIS
	applymovement OPELUCIDCITY_IRIS, OpelucidCityIrisArriveMovement
	opentext
	writetext OpelucidCityIrisWelcomeText
	waitbutton
	closetext
	applymovement OPELUCIDCITY_IRIS, OpelucidCityIrisLeaveMovement
	disappear OPELUCIDCITY_IRIS
	moveobject OPELUCIDCITY_IRIS, 17, 6
	appear OPELUCIDCITY_IRIS
	turnobject OPELUCIDCITY_IRIS, DOWN
	setscene SCENE_FINISHED
	end
	
OpelucidCityBlockerScript:
	jumptextfaceplayer OpelucidCityBlockerText
	
OpelucidCityLassScript:
	jumptextfaceplayer OpelucidCityLassText
	
OpelucidCityFisherScript:
	jumptextfaceplayer OpelucidCityFisherText
	
OpelucidCityYoungsterScript:
	jumptextfaceplayer OpelucidCityYoungsterText
	
OpelucidCityGentlemanScript:
	jumptextfaceplayer OpelucidCityGentlemanText
	
OpelucidCitySign:
	jumptext OpelucidCitySignText

OpelucidR9Sign:
	jumptext OpelucidR9SignText

OpelucidR11Sign:
	jumptext OpelucidR11SignText

OpelucidDraydenHouseSign:
	jumptext OpelucidDraydenHouseSignText
	
OpelucidCityProtein:
	itemball PROTEIN
	
OpelucidCityIrisArriveMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
OpelucidCityIrisLeaveMovement:
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
OpelucidCityIrisWelcomeText:
	text "IRIS: Hey <PLAY_G>!"
	line "It's me, IRIS!"
	
	para "We met back at the"
	line "#MON WORLD"
	cont "TOURNAMENT,"
	cont "remember?"
	
	para "Congrats on your"
	line "win, by the way!"
	
	para "I bet you're here"
	line "to challenge my"
	
	para "grandpa. He's the"
	line "GYM LEADER here in"
	cont "OPELUCID CITY."
	
	para "Unfortunately,"
	line "he's not here"
	cont "right now."
	
	para "He said something"
	line "was going on at"
	
	para "DRAGONSPIRAL TOWER"
	line "and went to go"
	
	para "check it out. If"
	line "you want to get to"
	
	para "the tower, you can"
	line "get there by going"
	
	para "west to ICIRRUS"
	line "CITY."
	
	para "I'm going back to"
	line "the GYM now. Good"
	cont "luck <PLAY_G>!"
	done
	
OpelucidCityBlockerText:
	text "IRIS: Sorry"
	line "<PLAY_G>, my"
	
	para "grandpa still"
	line "hasn't come back"
	cont "to the gym."
	done
	
OpelucidCityLassText:
	text "Gym leader DRAYDEN"
	line "leads OPELUCID"
	cont "CITY as its mayor."
	
	para "He's always train-"
	line "ing by wrestling"
	cont "with his #MON."
	done
	
OpelucidCityFisherText:
	text "UNOVA's symbols"
	line "are legendary"
	cont "dragon #MON."
	
	para "But I wonder where"
	line "they are now?"
	done
	
OpelucidCityYoungsterText:
	text "There was a person"
	line "called N who had a"
	
	para "legendary #MON"
	line "with him. Do you"
	
	para "think he was"
	line "really the hero?"
	done
	
OpelucidCityGentlemanText:
	text "Why do #MON"
	line "stay by our sides?"
	
	para "If we could talk"
	line "to them, we could"
	
	para "ask. I'm a bit"
	line "scared about what"
	cont "they'd say."
	done
	
OpelucidCitySignText:
	text "OPELUCID CITY."
	
	para "The city where"
	line "past and future"
	cont "intertwine."
	done
	
OpelucidR11SignText:
	text "EAST to ROUTE 11."
	
	para "VILLAGE BRIDGE"
	line "ahead."
	done
	
OpelucidR9SignText:
	text "WEST to ROUTE 9."
	
	para "Passage to"
	line "ICIRRUS CITY."
	done
	
OpelucidDraydenHouseSignText:
	text "Home of DRAYDEN."
	
	para "(and IRIS!)"
	done

OpelucidCity_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event 49, 26, R_11_OPELUCID_GATE, 3
	warp_event 49, 27, R_11_OPELUCID_GATE, 4
	warp_event  4, 26, R_9_OPELUCID_GATE, 1
	warp_event  4, 27, R_9_OPELUCID_GATE, 2
	warp_event 32,  5, OPELUCID_BATTLE_HOUSE, 1
	warp_event 33, 23, OPELUCID_POKECENTER_1F, 1
	warp_event 11, 19, OPELUCID_SUPER_ROD_HOUSE, 1
	warp_event 17,  5, OPELUCID_GYM, 1
	warp_event 25,  5, OPELUCID_CURIOSITY_SHOP, 1
	warp_event 33, 13, OPELUCID_BLACKBELT_HOUSE, 1
	warp_event 28, 15, DRAYDENS_HOUSE_1F, 1

	db 3 ; coord events
	coord_event 40, 25, SCENE_DEFAULT, OpelucidCityIrisScript1
	coord_event 40, 26, SCENE_DEFAULT, OpelucidCityIrisScript2
	coord_event 40, 27, SCENE_DEFAULT, OpelucidCityIrisScript3

	db 4 ; bg events
	bg_event 17, 27, BGEVENT_READ, OpelucidCitySign
	bg_event  6, 24, BGEVENT_READ, OpelucidR9Sign
	bg_event 44, 24, BGEVENT_READ, OpelucidR11Sign
	bg_event 30, 18, BGEVENT_READ, OpelucidDraydenHouseSign

	db 7 ; object events
	object_event 17, 25, SPRITE_FOUNTAIN, SPRITEMOVEDATA_FOUNTAIN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event 17,  6, SPRITE_IRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, OpelucidCityBlockerScript, EVENT_OPELUCID_CITY_IRIS
	object_event 33, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OpelucidCityProtein, EVENT_OPELUCID_CITY_PROTEIN
	object_event 16, 20, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OpelucidCityLassScript, -1
	object_event 18, 10, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OpelucidCityFisherScript, -1
	object_event 37, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, OpelucidCityYoungsterScript, -1
	object_event 35, 25, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OpelucidCityGentlemanScript, -1
	