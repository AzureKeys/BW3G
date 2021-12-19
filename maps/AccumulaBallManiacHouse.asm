	const_def 2 ; object constants
	const ACCUMULABALLMANIACHOUSE_POKEFAN_M

AccumulaBallManiacHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AccumulaBallManiacScript:
	faceplayer
	opentext
	checkflag ENGINE_BALL_MANIAC
	iftrue .AlreadyGotBalls
	writetext AccumulaBallManiacIntroText
	yesorno
	iffalse .Declined
	writetext AccumulaBallManiacGiveBallsText
	buttonsound
	checkcode VAR_WEEKDAY
	ifequal MONDAY, .Monday
	ifequal TUESDAY, .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday
;Sunday
	verbosegiveitem QUICK_BALL, 5
	jump .GotBalls
.Monday
	verbosegiveitem REPEAT_BALL, 5
	jump .GotBalls
.Tuesday
	verbosegiveitem NET_BALL, 5
	jump .GotBalls
.Wednesday
	verbosegiveitem DIVE_BALL, 5
	jump .GotBalls
.Thursday
	verbosegiveitem TIMER_BALL, 5
	jump .GotBalls
.Friday
	verbosegiveitem FRIEND_BALL, 5
	jump .GotBalls
.Saturday
	verbosegiveitem DUSK_BALL, 5
.GotBalls
	setflag ENGINE_BALL_MANIAC
.AlreadyGotBalls
	writetext AccumulaBallManiacComeBackText
	waitbutton
	closetext
	end
	
.Declined
	writetext AccumulaBallManiacDeclinedText
	waitbutton
	closetext
	end

AccumulaBallManiacIntroText:
	text "Hi! They call me"
	line "the #BALL"
	cont "maniac!"
	
	para "I collect all"
	line "kinds of different"
	cont "#BALLS."
	
	para "People come from"
	line "all over town to"
	cont "See my collection!"
	
	para "Different kinds of"
	line "#BALL are"
	
	para "better at catching"
	line "#MON, depending"
	cont "on the situation."
	
	para "How about you? How"
	line "would you like a"
	
	para "sample of my fine"
	line "#BALLs?"
	done

AccumulaBallManiacGiveBallsText:
	text "Ah, a trainer of"
	line "good taste, I see!"
	
	para "Here, try using"
	line "these!"
	done

AccumulaBallManiacComeBackText:
	text "Come back later if"
	line "you'd like another"
	
	para "sample from my"
	line "collection!"
	done

AccumulaBallManiacDeclinedText:
	text "Ah, that's too"
	line "bad. Come back"
	
	para "around if you"
	line "change your mind."
	done

AccumulaBallManiacHouseBookshelf:
	jumpstd magazinebookshelf

AccumulaBallManiacHouseStairs:
	jumpstd apartmentstairs

AccumulaBallManiacHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6,  7, ACCUMULA_TOWN, 3
	warp_event  7,  7, ACCUMULA_TOWN, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2,  1, BGEVENT_READ, AccumulaBallManiacHouseBookshelf
	bg_event  7,  0, BGEVENT_READ, AccumulaBallManiacHouseStairs

	db 1 ; object events
	object_event  3,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AccumulaBallManiacScript, -1
	