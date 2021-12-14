	const_def 2 ; object constants
	const MISTRALTONBLACKBELTHOUSE_BLACK_BELT

MistraltonBlackbeltHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MistraltonBlackbeltHouseMan:
	faceplayer
	opentext
	checkevent EVENT_GOT_EXPERT_BELT
	iftrue .GotBelt
	writetext MistraltonBlackbeltHouseGiveBeltText
	buttonsound
	verbosegiveitem EXPERT_BELT
	iffalse .NoRoom
	setevent EVENT_GOT_EXPERT_BELT
.GotBelt:
	writetext MistraltonBlackbeltHouseGaveBeltText
	waitbutton
.NoRoom:
	closetext
	end

MistraltonBlackbeltHouseGiveBeltText:
	text "Hm, I can see that"
	line "your training has"
	cont "made you strong."

	para "But you are not"
	line "yet a master!"
	
	para "Give your #MON"
	line "this belt to hone"
	cont "your training."
	done

MistraltonBlackbeltHouseGaveBeltText:
	text "A #MON wearing"
	line "that belt will"
	
	para "strike with more"
	line "power when landing"

	para "a super-effective"
	line "blow!"
	done

MistraltonBlackbeltHouseBookshelf:
	jumpstd difficultbookshelf

MistraltonBlackbeltHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, MISTRALTON_CITY, 2
	warp_event  3,  7, MISTRALTON_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, MistraltonBlackbeltHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MistraltonBlackbeltHouseBookshelf

	db 1 ; object events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonBlackbeltHouseMan, -1
