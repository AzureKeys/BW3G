	const_def 2 ; object constants
	const STRIATONCITY_X_SPEED
	const STRIATONCITY_LOVE_BALL
	const STRIATONCITY_DUSK_BALL
	const STRIATONCITY_BIG_PEARL
	const STRIATONCITY_YELLOW_SHARD
	const STRIATONCITY_SOCIALITE
	const STRIATONCITY_RANGER_M
	const STRIATONCITY_LASS
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
	
StriatonCityLoveBall:
	itemball LOVE_BALL
	
StriatonCityDuskBall:
	itemball DUSK_BALL
	
StriatonCityBigPearl:
	itemball BIG_PEARL
	
StriatonCityYellowShard:
	itemball YELLOW_SHARD
	
StriatonCityBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_STRIATON_CITY_BIG_MUSHROOM
	
StriatonCityPPUp:
	hiddenitem PP_UP, EVENT_STRIATON_CITY_PP_UP
	
StriatonCitySocialiteScript:
	jumptextfaceplayer StriatonCitySocialiteText
	
StriatonCityRangerMScript:
	jumptextfaceplayer StriatonCityRangerMText
	
StriatonCityLassScript:
	jumptextfaceplayer StriatonCityLassText
	
StriatonCityGentlemanScript:
	jumptextfaceplayer StriatonCityGentlemanText
	
StriatonCitySign:
	jumptext StriatonCitySignText
	
StriatonCitySocialiteText:
	text "This garden is a"
	line "great place to"
	cont "come to relax."
	
	para "I feel zen just"
	line "standing here."
	done
	
StriatonCityRangerMText:
	text "DR.FENNEL and DR."
	line "AMANITA live in"
	cont "this city."
	
	para "They created many"
	line "things, even the"
	cont "#MON storage"
	cont "system!"
	done
	
StriatonCityLassText:
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

	db 8 ; warp events
	warp_event 33, 17, STRIATON_POKECENTER_1F, 1
	warp_event 29, 17, STRIATON_TRADE_HOUSE, 1
	warp_event 29, 26, STRIATON_LAB, 1
	warp_event 29, 27, STRIATON_LAB, 2
	warp_event 38, 17, STRIATON_GYM, 1
	warp_event 39, 17, STRIATON_GYM, 2
	warp_event 46, 14, DREAMYARD, 1
	warp_event 46, 15, DREAMYARD, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 24, 17, BGEVENT_READ, StriatonCitySign
	bg_event 13, 18, BGEVENT_ITEM, StriatonCityBigMushroom
	bg_event 15, 14, BGEVENT_ITEM, StriatonCityPPUp

	db 9 ; object events
	object_event  6, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityXSpeed, EVENT_STRIATON_CITY_X_SPEED
	object_event 44, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityLoveBall, EVENT_STRIATON_CITY_LOVE_BALL
	object_event  2, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityDuskBall, EVENT_STRIATON_CITY_DUSK_BALL
	object_event  3, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityBigPearl, EVENT_STRIATON_CITY_BIG_PEARL
	object_event 15, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StriatonCityYellowShard, EVENT_STRIATON_CITY_YELLOW_SHARD
	object_event 10, 21, SPRITE_SOCIALITE, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, StriatonCitySocialiteScript, -1
	object_event 27, 25, SPRITE_RANGER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StriatonCityRangerMScript, -1
	object_event 37, 20, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, StriatonCityLassScript, -1
	object_event 24, 19, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, StriatonCityGentlemanScript, -1
	