	const_def 2 ; object constants
	const R6LAB_SCIENTIST_M
	const R6LAB_SCIENTIST_F

Rt6Lab_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R6LabScientistFScript:
	faceplayer
	opentext
	writetext R6LabAskRockText
	waitbutton
	loadmenu R6LabMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ChooseDamp
	ifequal 2, .ChooseHeat
	ifequal 3, .ChooseIcy
	ifequal 4, .ChooseSmooth
	jump NoRockSelectedScript
	
.ChooseDamp:
	checkitem DAMP_ROCK
	iffalse .dont_have
	writetext R6LabAskDampText
	yesorno
	iffalse NoRockSelectedScript
	takeitem DAMP_ROCK
	verbosegiveitem GREEN_SHARD, 5
	writetext R6LabThanksText
	waitbutton
	closetext
	end
	
.ChooseHeat:
	checkitem HEAT_ROCK
	iffalse .dont_have
	writetext R6LabAskHeatText
	yesorno
	iffalse NoRockSelectedScript
	takeitem HEAT_ROCK
	verbosegiveitem RED_SHARD, 5
	writetext R6LabThanksText
	waitbutton
	closetext
	end
	
.ChooseIcy:
	checkitem ICY_ROCK
	iffalse .dont_have
	writetext R6LabAskIcyText
	yesorno
	iffalse NoRockSelectedScript
	takeitem ICY_ROCK
	verbosegiveitem BLUE_SHARD, 5
	writetext R6LabThanksText
	waitbutton
	closetext
	end
	
.ChooseSmooth:
	checkitem SMOOTH_ROCK
	iffalse .dont_have
	writetext R6LabAskSmoothText
	yesorno
	iffalse NoRockSelectedScript
	takeitem SMOOTH_ROCK
	verbosegiveitem YELLOW_SHARD, 5
	writetext R6LabThanksText
	waitbutton
	closetext
	end
	
.dont_have
	writetext R6LabNoRockText
	waitbutton
	closetext
	end
	
NoRockSelectedScript:
	writetext R6LabDeclineText
	waitbutton
	closetext
	end

R6LabMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 13, TEXTBOX_Y - 0
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "DAMP ROCK@"
	db "HEAT ROCK@"
	db "ICY ROCK@"
	db "SMOOTH ROCK@"
	db "CANCEL@"
	
R6LabScientistMScript:
	jumptextfaceplayer R6LabScientistMText

R6LabBookshelf:
	jumpstd difficultbookshelf

R6LabBlackboard:
	jumptext R6LabBlackboardText
	
R6LabAskRockText:
	text "I'm researching"
	line "certain rocks that"
	
	para "can affect the"
	line "weather."
	
	para "If you have one,"
	line "would you mind"
	cont "giving it to me?"
	
	para "I can trade you"
	line "some shards in"
	cont "return."
	
	para "Will you give me"
	line "a rock?"
	done
	
R6LabAskDampText:
	text "I see…"
	line "Will you give me"
	cont "that DAMP ROCK?"
	
	para "I'll give you 5"
	line "GREEN SHARDS in"
	cont "return."
	done
	
R6LabAskHeatText:
	text "I see…"
	line "Will you give me"
	cont "that HEAT ROCK?"
	
	para "I'll give you 5"
	line "RED SHARDS in"
	cont "return."
	done
	
R6LabAskIcyText:
	text "I see…"
	line "Will you give me"
	cont "that ICY ROCK?"
	
	para "I'll give you 5"
	line "BLUE SHARDS in"
	cont "return."
	done
	
R6LabAskSmoothText:
	text "I see…"
	line "Will you give me"
	cont "that SMOOTH ROCK?"
	
	para "I'll give you 5"
	line "YELLOW SHARDS in"
	cont "return."
	done
	
R6LabThanksText:
	text "Thanks, this will"
	line "help me further"
	cont "my research."
	done
	
R6LabNoRockText:
	text "Wait a minute,"
	line "you don't have"
	cont "that rock!"
	done
	
R6LabDeclineText:
	text "Ah, that's too"
	line "bad…"
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
	