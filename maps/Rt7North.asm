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
	writecode VAR_CALLERID, PHONE_BACKPACKER_PARKER
	opentext
	checkflag ENGINE_PARKER_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_BACKPACKER_PARKER
	iftrue .NumberAccepted
	checkevent EVENT_PARKER_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext BackpackerMR7NorthAfterText
	buttonsound
	setevent EVENT_PARKER_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_BACKPACKER_PARKER
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_PARKER
	trainertotext BACKPACKERM, BACKPACKERM_R7, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext BackpackerMR7NorthBeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight2
	checkmapscene SEASIDE_CAVE_CHAMBER
	ifequal SCENE_FINISHED, .LoadFight1
; Fight0
	loadtrainer BACKPACKERM, BACKPACKERM_R7
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARKER_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight1
	loadtrainer BACKPACKERM, PARKER_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARKER_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight2
	loadtrainer BACKPACKERM, PARKER_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARKER_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	scall .GiftText
	scall .GiveGift
	ifequal FALSE, .PackIsFull
	end
	
.AskNumber1:
	jumpstd asknumber1m
	end
	
.AskNumber2:
	jumpstd asknumber2m
	end

.RegisteredNumber:
	jumpstd registerednumberm
	end

.NumberAccepted:
	jumpstd numberacceptedm
	end

.NumberDeclined:
	jumpstd numberdeclinedm
	end

.PhoneFull:
	jumpstd phonefullm
	end

.Rematch:
	jumpstd rematchm
	end

.GiftText:
	jumpstd giftm
	end

.PackIsFull:
	jumpstd packfullm
	end
	
.GiveGift:
	rematchgift HIDDENGROTTO_TIER_3

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
	text "I travel the world"
	line "because I'm look-"
	cont "ing for danger!"
	
	para "Are you dangerous?"
	done

BackpackerMR7NorthBeatenText:
	text "You're so danger-"
	line "ous, I was in"
	
	para "danger of giving"
	line "up the match!"
	done

BackpackerMR7NorthAfterText:
	text "Why do I seek out"
	line "danger? Because"
	
	para "it's exciting,"
	line "that's why! It"
	
	para "makes me feel"
	line "alive!"
	done
	
BackpackerFR7NorthSeenText:
	text "Oh my! My #MON"
	line "really seem raring"
	cont "to go today!"
	done

BackpackerFR7NorthBeatenText:
	text "It seems my #-"
	line "MON weren't as"
	
	para "ready as I had"
	line "thought!"
	done

BackpackerFR7NorthAfterText:
	text "#MON are alive,"
	line "just like you or"
	
	para "me, so it's no"
	line "wonder that they"
	cont "might feel down."
	
	para "When that happens,"
	line "just let them take"
	cont "it easy."
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
	text "The teamwork of"
	line "twins… A true"
	
	para "example of"
	line "perfection!"
	done

TwinsR7NorthBeatenText:
	text "I can't believe"
	line "it! We should have"
	
	para "been perfect, but"
	line "we lost!"
	done

TwinsR7NorthAfterText:
	text "If my sister is"
	line "full of energy,"
	
	para "then I'm full of"
	line "energy, too!"
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

	db 2 ; warp events
	warp_event  5, 37, R_7_TRADE_HOUSE, 1
	warp_event 15,  3, TWIST_MOUNTAIN_3F, 1

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
	