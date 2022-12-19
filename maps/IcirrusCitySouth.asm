	const_def 2 ; object constants
	const ICIRRUSCITYSOUTH_ULTRA_BALL
	const ICIRRUSCITYSOUTH_TIMER_BALL
	const ICIRRUSCITYSOUTH_MAX_POTION

IcirrusCitySouth_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_ICIRRUS
	return
	
.SetTiles:
	checkevent EVENT_ICIRRUS_CITY_UPPER_FLOOR
	iffalse .done
	changeblock 16,  4, $4c
	changeblock 18,  4, $4d
	changeblock 20,  4, $4d
	changeblock 22,  4, $4d
	changeblock 24,  4, $4d
	changeblock 26,  4, $4e
	changeblock 18,  2, $a2
	changeblock 20,  2, $a2
	changeblock 22,  2, $a2
	changeblock 24,  2, $a2
	changeblock 30,  2, $5c
	changeblock 32,  2, $5d
	changeblock 34,  2, $5d
	changeblock 36,  2, $5d
.done
	return
	
IcirrusCityUpperFloorScript:
	checkevent EVENT_ICIRRUS_CITY_UPPER_FLOOR
	iftrue .done
	changeblock 16,  4, $4c
	changeblock 18,  4, $4d
	changeblock 20,  4, $4d
	changeblock 22,  4, $4d
	changeblock 24,  4, $4d
	changeblock 26,  4, $4e
	changeblock 18,  2, $a2
	changeblock 20,  2, $a2
	changeblock 22,  2, $a2
	changeblock 24,  2, $a2
	changeblock 30,  2, $5c
	changeblock 32,  2, $5d
	changeblock 34,  2, $5d
	changeblock 36,  2, $5d
	setevent EVENT_ICIRRUS_CITY_UPPER_FLOOR
	callasm ReanchorBGMap_NoOAMUpdate
	callasm ReloadMapPart
.done
	end
	
IcirrusCityLowerFloorScript:
	checkevent EVENT_ICIRRUS_CITY_UPPER_FLOOR
	iffalse .done
	changeblock 16,  4, $50
	changeblock 18,  4, $51
	changeblock 20,  4, $51
	changeblock 22,  4, $51
	changeblock 24,  4, $51
	changeblock 26,  4, $52
	changeblock 18,  2, $49
	changeblock 20,  2, $49
	changeblock 22,  2, $49
	changeblock 24,  2, $49
	changeblock 30,  2, $60
	changeblock 32,  2, $61
	changeblock 34,  2, $61
	changeblock 36,  2, $62
	clearevent EVENT_ICIRRUS_CITY_UPPER_FLOOR
	callasm ReanchorBGMap_NoOAMUpdate
	callasm ReloadMapPart
.done
	end
	
IcirrusCitySign:
	jumptext IcirrusCitySignText
	
IcirrusCityUltraBall:
	itemball ULTRA_BALL
	
IcirrusCityTimerBall:
	itemball TIMER_BALL
	
IcirrusCityMaxPotion:
	itemball MAX_POTION
	
IcirrusCityBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_ICIRRUS_CITY_BIG_MUSHROOM
	
IcirrusCityMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_ICIRRUS_CITY_MAX_REVIVE
	
IcirrusCitySignText:
	text "ICIRRUS CITY"
	
	para "Sky glittering"
	line "with flowers of"
	cont "snow."
	done

IcirrusCitySouth_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13,  3, ICIRRUS_POKECENTER_1F, 1
	warp_event 35, 17, ICIRRUS_HOUSE, 1

	db 16 ; coord events
	coord_event 32,  0, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event 33,  0, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event 34,  0, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event 35,  0, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event 29,  8, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event 30,  8, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event  9, 10, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event 10, 10, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event  4, 14, SCENE_DEFAULT, IcirrusCityLowerFloorScript
	coord_event  9,  5, SCENE_DEFAULT, IcirrusCityUpperFloorScript
	coord_event 10,  5, SCENE_DEFAULT, IcirrusCityUpperFloorScript
	coord_event 29,  5, SCENE_DEFAULT, IcirrusCityUpperFloorScript
	coord_event 30,  5, SCENE_DEFAULT, IcirrusCityUpperFloorScript
	coord_event 12,  4, SCENE_DEFAULT, IcirrusCityUpperFloorScript
	coord_event 13,  5, SCENE_DEFAULT, IcirrusCityUpperFloorScript
	coord_event 14,  4, SCENE_DEFAULT, IcirrusCityUpperFloorScript

	db 3 ; bg events
	bg_event  8, 13, BGEVENT_READ, IcirrusCitySign
	bg_event 29,  2, BGEVENT_ITEM, IcirrusCityBigMushroom
	bg_event 44,  0, BGEVENT_ITEM, IcirrusCityMaxRevive
	
	db 3 ; object events
	object_event 22,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcirrusCityUltraBall, EVENT_ICIRRUS_CITY_ULTRA_BALL
	object_event 15, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcirrusCityTimerBall, EVENT_ICIRRUS_CITY_TIMER_BALL
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcirrusCityMaxPotion, EVENT_ICIRRUS_CITY_MAX_POTION
	