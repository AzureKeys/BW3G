	const_def 2 ; object constants
	const VIRBANKSTATEXPHOUSE_COOLTRAINER_M

VirbankStatExpHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
VirbankStatExpHouseCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MUSCLE_BAND
	iftrue .got_band
	writetext VirbankStatExpHouse_AskMonText
	buttonsound
	callasm .LoadBuffers
	writebyte $1
	special CheckStatExp
	ifnotequal FALSE, .no_band
	writetext VirbankStatExpHouse_GoodMonText
	buttonsound
	verbosegiveitem MUSCLE_BAND
	iffalse .no_band
	setevent EVENT_GOT_MUSCLE_BAND
.got_band
	writetext VirbankStatExpHouse_GotBandText
.no_band
	waitbutton
	closetext
	end
	
.LoadBuffers:
; Threshold = 12800 Stat Exp = $3200
	ld a, $32
	ld [wBuffer1], a
	xor a
	ld [wBuffer2], a
	ret
	
VirbankStatExpHouse_AskMonText:
	text "Hey! I'm looking"
	line "to see a #MON"
	
	para "with a strong"
	line "ATTACK stat!"
	
	para "Can you show me a"
	line "#MON that's"
	
	para "trained its ATTACK"
	line "stat a lot?"
	done
	
VirbankStatExpHouse_GoodMonText:
	text "Yeah! That #MON"
	line "has done a lot of"
	
	para "training in its"
	line "ATTACK!"
	
	para "Here, you can"
	line "have this!"
	done
	
VirbankStatExpHouse_GotBandText:
	text "That band will"
	line "make the PHYSICAL"
	
	para "moves of its"
	line "holder even"
	cont "stronger!"
	done

VirbankStatExpHouseBookshelf:
	jumpstd picturebookshelf

VirbankStatExpHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VIRBANK_CITY, 6
	warp_event  3,  7, VIRBANK_CITY, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, VirbankStatExpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, VirbankStatExpHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankStatExpHouseCooltrainerMScript, -1
	