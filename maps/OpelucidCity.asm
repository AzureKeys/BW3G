	const_def 2 ; object constants
	const OPELUCIDCITY_FOUNTAIN

OpelucidCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_OPELUCID
	return

OpelucidCitySign:
	jumptext OpelucidCitySignText

OpelucidR9Sign:
	jumptext OpelucidR9SignText

OpelucidR11Sign:
	jumptext OpelucidR11SignText

OpelucidDraydenHouseSign:
	jumptext OpelucidDraydenHouseSignText
	
OpelucidCitySignText:
	text "OPELUCID CITY."
	
	para "The city where"
	line "past and future"
	cont "intertwine."
	done
	
OpelucidR9SignText:
	text "EAST to ROUTE 11."
	
	para "VILLAGE BRIDGE"
	line "ahead."
	done
	
OpelucidR11SignText:
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

	db 7 ; warp events
	warp_event 49, 26, R_11_OPELUCID_GATE, 3
	warp_event 49, 27, R_11_OPELUCID_GATE, 4
	warp_event  4, 26, R_9_OPELUCID_GATE, 1
	warp_event  4, 27, R_9_OPELUCID_GATE, 2
	warp_event 25,  5, OPELUCID_MART, 1
	warp_event 33, 23, OPELUCID_POKECENTER_1F, 1
	warp_event 11, 19, OPELUCID_SUPER_ROD_HOUSE, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 17, 27, BGEVENT_READ, OpelucidCitySign
	bg_event  6, 24, BGEVENT_READ, OpelucidR9Sign
	bg_event 44, 24, BGEVENT_READ, OpelucidR11Sign
	bg_event 30, 18, BGEVENT_READ, OpelucidDraydenHouseSign

	db 1 ; object events
	object_event 17, 25, SPRITE_FOUNTAIN, SPRITEMOVEDATA_FOUNTAIN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1
	