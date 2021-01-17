	const_def 2 ; object constants
	const R7NORTH_FAKE_ITEM
	const R7NORTH_SHELL_STONE
	const R7NORTH_TM_X_SCISSOR
	const R7NORTH_YOUNGSTER
	const R7NORTH_HARLEQUIN
	const R7NORTH_TWIN_1
	const R7NORTH_TWIN_2

Rt7North_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerYoungsterR7North:
	trainer YOUNGSTER, YOUNGSTER_R7_2, EVENT_BEAT_YOUNGSTER_R7_2, YoungsterR7NorthSeenText, YoungsterR7NorthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterR7NorthAfterText
	waitbutton
	closetext
	end

TrainerHarlequinR7North:
	trainer HARLEQUIN, HARLEQUIN_R7, EVENT_BEAT_HARLEQUIN_R7, HarlequinR7NorthSeenText, HarlequinR7NorthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarlequinR7NorthAfterText
	waitbutton
	closetext
	end

TrainerTwinsR7North:
	trainer TWINS, TWINS_R7, EVENT_BEAT_TWINS_R7, TwinsR7NorthSeenText, TwinsR7NorthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsR7NorthAfterText
	waitbutton
	closetext
	end
	
R7NorthShellStone:
	itemball SHELL_STONE
	
R7NorthTMXScissor:
	itemball TM_X_SCISSOR
	
R7NorthRareCandy:
	hiddenitem RARE_CANDY, EVENT_R_7_RARE_CANDY

R7NorthSign:
	jumptext R7NorthSignText
	
YoungsterR7NorthSeenText:
	text "I love playing in"
	line "the tall grass!"
	done

YoungsterR7NorthBeatenText:
	text "Woah!"
	done

YoungsterR7NorthAfterText:
	text "It's fun to jump"
	line "out and surprise"
	cont "people!"
	done
	
HarlequinR7NorthSeenText:
	text "#MON battles"
	line "are no joking"
	cont "matter!"
	done

HarlequinR7NorthBeatenText:
	text "You weren't"
	line "clowining around!"
	done

HarlequinR7NorthAfterText:
	text "I guess I was the"
	line "clown after all."
	done
	
TwinsR7NorthSeenText:
	text "What happened to"
	line "the MOUNTAIN? We"
	cont "wanna see!"
	done

TwinsR7NorthBeatenText:
	text "Waaah!"
	done

TwinsR7NorthAfterText:
	text "We tried to go to"
	line "the MOUNTAIN, but"
	cont "it was all closed"
	cont "up…"
	done

R7NorthSignText:
	text "TWIST MOUNTAIN"
	line "ahead."
	
	para "No passage due to"
	line "collapsed entryway"
	cont "-MARSHALL"
	done

Rt7North_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  5, 37, R_7_TRADE_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 21, 11, BGEVENT_READ, R7NorthSign
	bg_event 10, 34, BGEVENT_ITEM, R7NorthRareCandy

	db 7 ; object events
	object_event -1, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, 0, EVENT_R_7_PP_UP
	object_event 29, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7NorthShellStone, EVENT_R_7_SHELL_STONE
	object_event 15,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R7NorthTMXScissor, EVENT_R_7_TM_X_SCISSOR
	object_event 21, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR7North, -1
	object_event 16, 31, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerHarlequinR7North, -1
	object_event 15, 38, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerTwinsR7North, -1
	object_event 15, 39, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerTwinsR7North, -1
	