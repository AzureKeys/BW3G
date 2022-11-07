	const_def 2 ; object constants

IcirrusCityNorth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
IcirrusBoutiqueSign:
	jumptext IcirrusBoutiqueText
	
IcirrusFanClubSign:
	jumptext IcirrusFanClubSignText
	
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
	warp_event 13, 11, ICIRRUS_BOUTIQUE, 1
	warp_event 10,  5, DRAGONSPIRAL_TOWER_OUTSIDE, 1
	warp_event 11,  5, DRAGONSPIRAL_TOWER_OUTSIDE, 2
	warp_event  3, 19, ICIRRUS_FAN_CLUB, 1
	warp_event  5, 11, ICIRRUS_CAVE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14, 12, BGEVENT_READ, IcirrusBoutiqueSign
	bg_event  4, 20, BGEVENT_READ, IcirrusFanClubSign
	
	db 0 ; object events
	