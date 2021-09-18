	const_def 2 ; object constants
	const STRIATONCITY_X_SPEED
	const STRIATONCITY_ULTRA_BALL
	const STRIATONCITY_DUSK_BALL
	const STRIATONCITY_BIG_PEARL
	const STRIATONCITY_BUENA
	const STRIATONCITY_COOLTRAINER_M
	const STRIATONCITY_COOLTRAINER_F
	const STRIATONCITY_GENTLEMAN

StriatonCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_STRIATON
	return
	
StriatonCityXSpeed:
	itemball X_SPEED
	
StriatonCityUltraBall:
	itemball ULTRA_BALL
	
StriatonCityDuskBall:
	itemball DUSK_BALL
	
StriatonCityBigPearl:
	itemball BIG_PEARL
	
StriatonCityBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_STRIATON_CITY_BIG_MUSHROOM
	
StriatonCityPPUp:
	hiddenitem PP_UP, EVENT_STRIATON_CITY_PP_UP
	
StriatonCityBuenaScript:
	jumptextfaceplayer StriatonCityBuenaText
	
StriatonCityCooltrainerMScript:
	jumptextfaceplayer StriatonCityCooltrainerMText
	
StriatonCityCooltrainerFScript:
	jumptextfaceplayer StriatonCityCooltrainerFText
	
StriatonCityGentlemanScript:
	jumptextfaceplayer StriatonCityGentlemanText
	
StriatonCitySign:
	jumptext StriatonCitySignText
	
StriatonCityBuenaText:
	text "This garden is a"
	line "great place to"
	cont "come to relax."
	
	para "I feel zen just"
	line "standing here."
	done
	
StriatonCityCooltrainerMText:
	text "DR.FENNEL and DR."
	line "AMANITA live in"
	cont "this city."
	
	para "They created many"
	line "things, even the"
	cont "#MON storage"
	cont "system!"
	done
	
StriatonCityCooltrainerFText:
	text "STRIATON CITY used"
	line "to have three GYM"
	
	para "leaders, but they"
	line "stepped down."
	
	para "One of the leaders"
	line "recently came back"
	cont "to run the GYM,"
	cont "though!"
	done

StriatonCityGentlemanText:
	text "Going to new, un-"
	line "known places and"
	cont "seeing new people…"

	para "Those are the joys"
	line "of travel."
	done
	
StriatonCitySignText:
	text "STRIATON CITY"
	
	para "Three stars,"
	line "together as one."
	done

StriatonCity_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 33, 17, STRIATON_POKECENTER_1F, 1
	warp_event 29, 17, STRIATON_MART, 1
	warp_event 29, 26, STRIATON_LAB, 1
	warp_event 29, 27, STRIATON_LAB, 2
	warp_event 38, 17, STRIATON_GYM, 1
	warp_event 39, 17, STRIATON_GYM, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 24, 17, BGEVENT_READ, StriatonCitySign
	bg_event 13, 18, BGEVENT_ITEM, StriatonCityBigMushroom
	bg_event 15, 14, BGEVENT_ITEM, StriatonCityPPUp

	db 8 ; object events
	object_event  6, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityXSpeed, EVENT_STRIATON_CITY_X_SPEED
	object_event 44, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityUltraBall, EVENT_STRIATON_CITY_ULTRA_BALL
	object_event  2, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityDuskBall, EVENT_STRIATON_CITY_DUSK_BALL
	object_event  3, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityBigPearl, EVENT_STRIATON_CITY_BIG_PEARL
	object_event 10, 21, SPRITE_BUENA, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, StriatonCityBuenaScript, -1
	object_event 27, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, StriatonCityCooltrainerMScript, -1
	object_event 37, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, StriatonCityCooltrainerFScript, -1
	object_event 24, 19, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, StriatonCityGentlemanScript, -1
	