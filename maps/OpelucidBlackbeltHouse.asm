	const_def 2 ; object constants
	const OPELUCIDBLACKBELTHOUSE_BLACK_BELT

OpelucidBlackbeltHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OpelucidBlackbeltHouseMan:
	faceplayer
	opentext
	checkevent EVENT_GOT_EXPERT_BELT
	iftrue .GotBelt
	writetext OpelucidBlackbeltHouseGiveBeltText
	buttonsound
	verbosegiveitem EXPERT_BELT
	iffalse .NoRoom
	setevent EVENT_GOT_EXPERT_BELT
.GotBelt:
	writetext OpelucidBlackbeltHouseGaveBeltText
	waitbutton
.NoRoom:
	closetext
	end

OpelucidBlackbeltHouseGiveBeltText:
	text "Hm, I can see that"
	line "your training has"
	cont "made you strong."

	para "But you are not"
	line "yet a master!"
	
	para "Give your #MON"
	line "this belt to hone"
	cont "your training."
	done

OpelucidBlackbeltHouseGaveBeltText:
	text "A #MON wearing"
	line "that belt will"
	
	para "strike with more"
	line "power when landing"

	para "a super-effective"
	line "blow!"
	done

OpelucidBlackbeltHouseBookshelf:
	jumpstd difficultbookshelf

OpelucidBlackbeltHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, OPELUCID_CITY, 10
	warp_event  3,  7, OPELUCID_CITY, 10

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, OpelucidBlackbeltHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, OpelucidBlackbeltHouseBookshelf

	db 1 ; object events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OpelucidBlackbeltHouseMan, -1
