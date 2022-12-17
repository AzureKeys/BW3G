	const_def 2 ; object constants
	const ICIRRUSHOUSE_ROCKET
	const ICIRRUSHOUSE_LADY

IcirrusHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
IcirrusHouseLadyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ZOOM_LENS
	iftrue .gotlens
	writetext IcirrusHouseLadyIntroText
	buttonsound
	verbosegiveitem ZOOM_LENS
	iffalse .noroom
	setevent EVENT_GOT_ZOOM_LENS
.gotlens
	writetext IcirrusHouseGotLensText
	waitbutton
.noroom
	closetext
	end
	
IcirrusHouseRocketScript:
	jumptextfaceplayer IcirrusHouseRocketText

IcirrusHouseBookshelf:
	jumpstd picturebookshelf

IcirrusHouseRocketText:
	text "Oh! Member of TEAM"
	line "ROCKET I was, long"
	cont "time gone!"
	
	para "But TEAM ROCKET"
	line "bye-bye a go-go."
	
	para "I my region went"
	line "home. Make new"
	
	para "TEAM ROCKET, I"
	line "did! So myself I"
	cont "pledged!"
	
	para "But now I married"
	line "am. Now for TEAM"
	
	para "ROCKET there is no"
	line "time by me."
	
	para "But happy family"
	line "is big hooray!"
	done

IcirrusHouseLadyIntroText:
	text "Hey! I have a lot"
	line "of souvenirs that"
	
	para "my husband's old"
	line "coworkers gave me."
	
	para "Maybe you can take"
	line "one off my hands."
	done

IcirrusHouseGotLensText:
	text "That lens will"
	line "make your #MON"
	
	para "more accurate with"
	line "its attacks. But"
	
	para "it'll only work if"
	line "the opponent has"
	cont "already moved."
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

	db 2 ; object events
	object_event  2,  4, SPRITE_ROUGHNECK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcirrusHouseRocketScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcirrusHouseLadyScript, -1
	