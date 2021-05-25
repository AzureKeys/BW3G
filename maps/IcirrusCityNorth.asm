	const_def 2 ; object constants

IcirrusCityNorth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
IcirrusFanClubSign:
	jumptext IcirrusFanClubSignText
	
IcirrusFanClubSignText:
	text "#MON FAN CLUB"
	
	para "Share your love"
	line "of #MON!"
	done

IcirrusCityNorth_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 15, 13, ICIRRUS_MART, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4, 14, BGEVENT_READ, IcirrusFanClubSign
	
	db 0 ; object events
	