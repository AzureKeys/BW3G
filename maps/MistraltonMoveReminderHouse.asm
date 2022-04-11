	const_def 2 ; object constants
	const MISTRALTONMOVEREMINDERHOUSE_SCIENTIST_F

MistraltonMoveReminderHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoveReminderScript:
	faceplayer
	opentext
	writetext MistraltonMoveReminderIntroText
	yesorno
	iffalse .Declined
	checkitem HEART_SCALE
	iffalse .NoScale
	special MoveReminder
	ifnotequal FALSE, .didnt_learn
	buttonsound
	writetext MistraltonMoveReminderTakeScaleText
	takeitem HEART_SCALE
.didnt_learn
	waitbutton
	closetext
	end
	
.Declined
	writetext MistraltonMoveReminderDeclinedText
	jump .didnt_learn
	
.NoScale
	writetext MistraltonMoveReminderNoScaleText
	jump .didnt_learn

MistraltonMoveReminderHouseBookshelf:
	jumpstd difficultbookshelf

MistraltonMoveReminderIntroText:
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

MistraltonMoveReminderDeclinedText:
	text "Oh, okay. Come"
	line "back if you'd like"
	
	para "a move to be"
	line "remembered."
	done

MistraltonMoveReminderNoScaleText:
	text "Sorry, you don't"
	line "have any HEART"
	cont "SCALES."
	
	para "Come back if you"
	line "find some."
	done

MistraltonMoveReminderTakeScaleText:
	text "<PLAY_G> handed"
	line "over a HEART SCALE"
	cont "in return."
	done

MistraltonMoveReminderHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, MISTRALTON_CITY, 2
	warp_event  3,  7, MISTRALTON_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, MistraltonMoveReminderHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MistraltonMoveReminderHouseBookshelf

	db 1 ; object events
	object_event  2,  3, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminderScript, -1
