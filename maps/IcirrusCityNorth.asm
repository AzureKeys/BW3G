	const_def 2 ; object constants
	const ICIRRUSCITYNORTH_DUMMY_ITEM
	const ICIRRUSCITYNORTH_BUENA
	const ICIRRUSCITYNORTH_BLACKBELT

IcirrusCityNorth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
IcirrusCityNorthBuenaScript:
	jumptextfaceplayer IcirrusCityNorthBuenaText
	
IcirrusCityNorthBlackbeltScript:
	jumptextfaceplayer IcirrusCityNorthBlackbeltText
	
IcirrusBoutiqueSign:
	jumptext IcirrusBoutiqueText
	
IcirrusFanClubSign:
	jumptext IcirrusFanClubSignText
	
IcirrusCityNorthBuenaText:
	text "Always, the tower"
	line "looms, disdainful"
	
	para "of the wind and"
	line "snow. Perhaps its"
	
	para "presence is tell-"
	line "ing us not to"
	
	para "forget dreams and"
	line "ideals…"
	done
	
IcirrusCityNorthBlackbeltText:
	text "Our former GYM"
	line "LEADER, BRYCEN,"
	
	para "has been surround-"
	line "ed by ice type"
	
	para "#MON and has"
	line "trained in the"
	
	para "martial arts ever"
	line "since he was a"
	cont "child."
	
	para "He's become an"
	line "action star using"
	cont "that experience!"
	done
	
IcirrusBoutiqueText:
	text "ICIRRUS BOUTIQUE"
	
	para "All things fashion"
	line "for people and"
	cont "#MON!"
	done
	
IcirrusFanClubSignText:
	text "#MON FAN CLUB"
	
	para "Share your love"
	line "of #MON!"
	done

IcirrusCityNorth_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 15, 11, ICIRRUS_BOUTIQUE, 1
	warp_event 12,  5, DRAGONSPIRAL_TOWER_OUTSIDE, 1
	warp_event 13,  5, DRAGONSPIRAL_TOWER_OUTSIDE, 2
	warp_event  5, 19, ICIRRUS_FAN_CLUB, 1
	warp_event  7, 11, ICIRRUS_CAVE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 16, 12, BGEVENT_READ, IcirrusBoutiqueSign
	bg_event  6, 20, BGEVENT_READ, IcirrusFanClubSign
	
	db 3 ; object events
	object_event  6, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, 0, EVENT_ICIRRUS_CITY_MAX_POTION
	object_event 15, 21, SPRITE_BUENA, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IcirrusCityNorthBuenaScript, -1
	object_event  8, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusCityNorthBlackbeltScript, -1
	