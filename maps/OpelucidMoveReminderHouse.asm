	const_def 2 ; object constants
	const OPELUCIDMOVEREMINDERHOUSE_SCIENTIST_F

OpelucidMoveReminderHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoveReminderScript:
	faceplayer
	opentext
	writetext OpelucidMoveReminderIntroText
	yesorno
	iffalse .Declined
	checkitem HEART_SCALE
	iffalse .NoScale
	special MoveReminder
	ifnotequal FALSE, .didnt_learn
	buttonsound
	writetext OpelucidMoveReminderTakeScaleText
	takeitem HEART_SCALE
.didnt_learn
	waitbutton
	closetext
	end
	
.Declined
	writetext OpelucidMoveReminderDeclinedText
	jump .didnt_learn
	
.NoScale
	writetext OpelucidMoveReminderNoScaleText
	jump .didnt_learn

OpelucidMoveReminderHouseBookshelf:
	jumpstd difficultbookshelf

OpelucidMoveReminderIntroText:
	text "Hi, they call me"
	line "the MOVE REMINDER."
	
	para "I can teach your"
	line "#MON one of the"
	
	para "moves it has"
	line "forgotten, in"
	
	para "exchange for a"
	line "HEART SCALE."
	
	para "Would you like to"
	line "have one of your"
	
	para "#MON relearn a"
	line "move?"
	done

OpelucidMoveReminderDeclinedText:
	text "Oh, okay. Come"
	line "back if you'd like"
	
	para "a move to be"
	line "remembered."
	done

OpelucidMoveReminderNoScaleText:
	text "Sorry, you don't"
	line "have any HEART"
	cont "SCALES."
	
	para "Come back if you"
	line "find some."
	done

OpelucidMoveReminderTakeScaleText:
	text "<PLAY_G> handed"
	line "over a HEART SCALE"
	cont "in return."
	done

OpelucidMoveReminderHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, OPELUCID_CITY, 10
	warp_event  3,  7, OPELUCID_CITY, 10

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, OpelucidMoveReminderHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, OpelucidMoveReminderHouseBookshelf

	db 1 ; object events
	object_event  2,  3, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminderScript, -1
