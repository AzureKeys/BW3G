	const_def 2 ; object constants
	const R6LAB_SCIENTIST_M
	const R6LAB_SCIENTIST_F

Rt6Lab_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R6LabScientistFScript:
	faceplayer
	opentext
	checkevent EVENT_R_6_DAWN_STONE
	iftrue .done
	writetext R6LabAskText
	yesorno
	iffalse .donthave
	writetext R6LabShowText
	buttonsound
	special BillsGrandfather
	iffalse .donthave
	ifequal TIRTOUGA, .correct
	ifequal CARRACOSTA, .correct
	ifequal ARCHEN, .correct
	ifnotequal ARCHEOPS, .wrong
.correct
	writetext R6LabCorrectText
	verbosegiveitem DAWN_STONE
	iffalse .noroom
	setevent EVENT_R_6_DAWN_STONE
.done
	writetext R6LabThanksText
	waitbutton
.noroom
	closetext
	end
	
.donthave
	writetext R6LabDontHaveText
	waitbutton
	closetext
	end
	
.wrong
	writetext R6LabWrongText
	waitbutton
	closetext
	end
	
R6LabScientistMScript:
	jumptextfaceplayer R6LabScientistMText

R6LabBookshelf:
	jumpstd difficultbookshelf
	
R6LabBlackboard:
	jumptext R6LabBlackboardText
	
R6LabAskText:
	text "Hi, I'm doing"
	line "research on"
	cont "certain #MON."
	
	para "Have you heard of"
	line "#MON fossils?"
	
	para "There's a place"
	line "where fossils can"
	cont "be revived into"
	cont "#MON!"
	
	para "If you have a"
	line "#MON revived"
	cont "from a fossil,"
	cont "could I see it?"
	done
	
R6LabShowText:
	text "Ok, could you"
	line "please show it"
	cont "to me?"
	done
	
R6LabCorrectText:
	text "Ah yes, that's the"
	line "#MON I was"
	cont "looking for!"
	
	para "Thanks for your"
	line "help! Here, take"
	cont "this."
	done
	
R6LabThanksText:
	text "Thank you for your"
	line "help with our"
	cont "studies!"
	done
	
R6LabDontHaveText:
	text "Ah, so you don't"
	line "have one then."
	done
	
R6LabWrongText:
	text "Sorry, that's the"
	line "wrong #MON."
	done
	
R6LabScientistMText:
	text "Here in this lab,"
	line "we study the"
	
	para "weather patterns"
	line "across UNOVA."
	done
	
R6LabBlackboardText:
	text "It's covered in"
	line "complex formulas."
	done

Rt6Lab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, R_6, 2
	warp_event  4,  7, R_6, 2

	db 0 ; coord events

	db 6 ; bg events
	bg_event  0,  1, BGEVENT_READ, R6LabBookshelf
	bg_event  1,  1, BGEVENT_READ, R6LabBookshelf
	bg_event  3,  0, BGEVENT_READ, R6LabBlackboard
	bg_event  4,  0, BGEVENT_READ, R6LabBlackboard
	bg_event  6,  1, BGEVENT_READ, R6LabBookshelf
	bg_event  7,  1, BGEVENT_READ, R6LabBookshelf

	db 2 ; object events
	object_event  3,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R6LabScientistMScript, -1
	object_event  2,  1, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R6LabScientistFScript, -1
	