	const_def 2 ; object constants
	const DRIFTVEILFOSSILHOUSE_FISHING_GURU

DriftveilFossilHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DriftveilFossilHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_DRIFTVEIL_DAWN_STONE
	iftrue .done
	writetext FossilHouseAskText
	yesorno
	iffalse .donthave
	writetext FossilHouseShowText
	buttonsound
	special BillsGrandfather
	iffalse .donthave
	ifequal TIRTOUGA, .correct
	ifequal CARRACOSTA, .correct
	ifequal ARCHEN, .correct
	ifnotequal ARCHEOPS, .wrong
.correct
	writetext FossilHouseCorrectText
	verbosegiveitem DAWN_STONE
	iffalse .noroom
	setevent EVENT_DRIFTVEIL_DAWN_STONE
.done
	writetext FossilHouseThanksText
	waitbutton
.noroom
	closetext
	end
	
.donthave
	writetext FossilHouseDontHaveText
	waitbutton
	closetext
	end
	
.wrong
	writetext FossilHouseWrongText
	waitbutton
	closetext
	end
	
FossilHouseAskText:
	text "Hi, I'm a FOSSIL"
	line "MANIAC."
	
	para "Have you heard of"
	line "#MON fossils?"
	
	para "There's a place in"
	line "NACRENE CITY where"
	
	para "fossils can be"
	line "revived into"
	cont "#MON!"
	
	para "If you have a"
	line "#MON revived"
	
	para "from a fossil,"
	line "could I see it?"
	done
	
FossilHouseShowText:
	text "Ok, could you"
	line "please show it"
	cont "to me?"
	done
	
FossilHouseCorrectText:
	text "Ah yes, that's the"
	line "#MON I was"
	cont "looking for!"
	
	para "Thanks for your"
	line "help! Here, take"
	cont "this."
	done
	
FossilHouseThanksText:
	text "Thanks for showing"
	line "me that fossil!"
	done
	
FossilHouseDontHaveText:
	text "Ah, so you don't"
	line "have one then."
	done
	
FossilHouseWrongText:
	text "Sorry, that's the"
	line "wrong #MON."
	done

DriftveilFossilHouseBookshelfScript:
	jumpstd difficultbookshelf

DriftveilFossilHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, DRIFTVEIL_CITY, 3
	warp_event  3,  7, DRIFTVEIL_CITY, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, DriftveilFossilHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, DriftveilFossilHouseBookshelfScript

	db 1 ; object events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DriftveilFossilHouseFishingGuruScript, -1
	