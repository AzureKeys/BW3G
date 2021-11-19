	const_def 2 ; object constants

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
	refreshscreen
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
	refreshscreen
.done
	end
	
IcirrusCitySign:
	jumptext IcirrusCitySignText
	
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

	db 1 ; bg events
	bg_event  8, 13, BGEVENT_READ, IcirrusCitySign
	
	db 0 ; object events
	