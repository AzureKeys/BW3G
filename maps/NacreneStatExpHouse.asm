	const_def 2 ; object constants
	const NACRENESTATEXPHOUSE_SUPER_NERD

NacreneStatExpHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
NacreneStatExpHouseSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_WISE_GLASSES
	iftrue .got_glasses
	writetext NacreneStatExpHouse_AskMonText
	buttonsound
	callasm .LoadBuffers
	writebyte $4
	special CheckStatExp
	ifnotequal FALSE, .no_glasses
	writetext NacreneStatExpHouse_GoodMonText
	buttonsound
	verbosegiveitem WISE_GLASSES
	iffalse .no_glasses
	setevent EVENT_GOT_WISE_GLASSES
.got_glasses
	writetext NacreneStatExpHouse_GotGlassesText
.no_glasses
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
	
NacreneStatExpHouse_AskMonText:
	text "Hi, I'm interested"
	line "In #MON's"
	cont "SPECIAL stats."
	
	para "In particular, I'd"
	line "like to see a"
	
	para "#MON that's"
	line "done a lot of"
	
	para "training in its"
	line "SPECIAL stats."
	cont "Can you show me?"
	done
	
NacreneStatExpHouse_GoodMonText:
	text "I see, that #-"
	line "MON has really"
	
	para "trained in its"
	line "SPECIAL stats!"
	
	para "Thanks! Here, take"
	line "this!"
	done
	
NacreneStatExpHouse_GotGlassesText:
	text "Those glasses will"
	line "boost the power of"
	
	para "its wearer's"
	line "SPECIAL moves!"
	done

NacreneStatExpHouseBookshelf:
	jumpstd picturebookshelf

NacreneStatExpHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NACRENE_CITY, 2
	warp_event  3,  7, NACRENE_CITY, 2
	
	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, NacreneStatExpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, NacreneStatExpHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneStatExpHouseSuperNerdScript, -1
	