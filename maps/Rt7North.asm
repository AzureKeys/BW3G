	const_def 2 ; object constants
	const R7NORTH_FAKE_ITEM
	const R7NORTH_SHELL_STONE
	const R7NORTH_HEAT_ROCK
	const R7NORTH_TM_X_SCISSOR
	const R7NORTH_BACKPACKERM
	const R7NORTH_BACKPACKERF
	const R7NORTH_HARLEQUIN
	const R7NORTH_TWIN_1
	const R7NORTH_TWIN_2

Rt7North_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBackpackerMR7North:
	trainer BACKPACKERM, BACKPACKERM_R7, EVENT_BEAT_BACKPACKERM_R7, BackpackerMR7NorthSeenText, BackpackerMR7NorthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMR7NorthAfterText
	waitbutton
	closetext
	end

TrainerBackpackerFR7North:
	trainer BACKPACKERF, BACKPACKERF_R7, EVENT_BEAT_BACKPACKERF_R7, BackpackerFR7NorthSeenText, BackpackerFR7NorthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFR7NorthAfterText
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
	
R7NorthHeatRock:
	itemball HEAT_ROCK
	
R7NorthTMXScissor:
	itemball TM_X_SCISSOR
	
R7NorthRareCandy:
	hiddenitem RARE_CANDY, EVENT_R_7_RARE_CANDY

R7NorthSign:
	jumptext R7NorthSignText
	
BackpackerMR7NorthSeenText:
	text "I love playing in"
	line "the tall grass!"
	done

BackpackerMR7NorthBeatenText:
	text "Woah!"
	done

BackpackerMR7NorthAfterText:
	text "It's fun to jump"
	line "out and surprise"
	cont "people!"
	done
	
BackpackerFR7NorthSeenText:
	text "Raising #MON is"
	line "my passion. What's"
	cont "yours?"
	done

BackpackerFR7NorthBeatenText:
	text "Oh no, my #MON!"
	done

BackpackerFR7NorthAfterText:
	text "Your passion must"
	line "be #MON"
	cont "battles!"
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

	db 9 ; object events
	object_event -1, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, 0, EVENT_R_7_PP_UP
	object_event 25, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7NorthShellStone, EVENT_R_7_SHELL_STONE
	object_event 14, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R7NorthHeatRock, EVENT_R_7_HEAT_ROCK
	object_event 29, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R7NorthTMXScissor, EVENT_R_7_TM_X_SCISSOR
	object_event 21, 41, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBackpackerMR7North, -1
	object_event 17, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBackpackerFR7North, -1
	object_event 16, 31, SPRITE_HARLEQUIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerHarlequinR7North, -1
	object_event 13, 38, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerTwinsR7North, -1
	object_event 13, 39, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerTwinsR7North, -1
	