	const_def 2 ; object constants
	const VIRBANKHOUSE_PHARMACIST

VirbankHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
VirbankHousePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POISON_BARB
	iftrue .gotbarb
	writetext VirbankHousePharmacistIntroText
	buttonsound
	verbosegiveitem POISON_BARB
	iffalse .noroom
	setevent EVENT_GOT_POISON_BARB
.gotbarb
	writetext VirbankHouseGotBarbText
	waitbutton
.noroom
	closetext
	end

VirbankHouseBookshelf:
	jumpstd picturebookshelf

VirbankHousePharmacistIntroText:
	text "What's the coolest"
	line "type of #MON?"
	
	para "POISON #MON!"
	
	para "Their sick powers"
	line "drain the life"
	cont "from their"
	cont "enemies!"
	
	para "Use this to power"
	line "up your POISON"
	cont "#MON!"
	done

VirbankHouseGotBarbText:
	text "Give that BARB to"
	line "a #MON to make"
	
	para "its POISON attacks"
	line "more powerful!"
	done

VirbankHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VIRBANK_CITY, 2
	warp_event  3,  7, VIRBANK_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, VirbankHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, VirbankHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankHousePharmacistScript, -1
	