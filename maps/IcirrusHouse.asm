	const_def 2 ; object constants
	const ICIRRUSHOUSE_ROCKET

IcirrusHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
IcirrusHouseRocketScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LIFE_ORB
	iftrue .gotorb
	writetext IcirrusHouseRocketIntroText
	buttonsound
	verbosegiveitem LIFE_ORB
	iffalse .noroom
	setevent EVENT_GOT_LIFE_ORB
.gotorb
	writetext IcirrusHouseGotOrbText
	waitbutton
.noroom
	closetext
	end

IcirrusHouseBookshelf:
	jumpstd picturebookshelf

IcirrusHouseRocketIntroText:
	text "I love FAIRY type"
	line "#MON! They're"
	cont "so cute!"
	
	para "Do you like FAIRY"
	line "type #MON too?"
	
	para "You should give"
	line "them this!"
	done

IcirrusHouseGotOrbText:
	text "This pretty bow"
	line "makes FAIRY moves"
	cont "stronger!"
	
	para "Give it to your"
	line "favorite FAIRY"
	cont "#MON!"
	done

IcirrusHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ICIRRUS_CITY_SOUTH, 2
	warp_event  3,  7, ICIRRUS_CITY_SOUTH, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, IcirrusHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, IcirrusHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusHouseRocketScript, -1
	