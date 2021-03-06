	const_def 2 ; object constants
	const R1_FRUIT_TREE
	const R1_ULTRA_BALL
	const R1_PROTEIN
	const R1_SCHOOLBOY
	const R1_SCHOOLGIRL
	const R1_LASS
	const R1_BUG_CATCHER
	const R1_BATTLE_GIRL
	const R1_TWIN1
	const R1_TWIN2

Rt1_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerLassR1:
	trainer LASS_D, LASS_R1, EVENT_BEAT_LASS_R1, LassR1SeenText, LassR1BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_LASS_CLARISSA
	opentext
	checkflag ENGINE_CLARISSA_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_LASS_CLARISSA
	iftrue .NumberAccepted
	checkevent EVENT_CLARISSA_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext LassR1AfterText
	buttonsound
	setevent EVENT_CLARISSA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_LASS_CLARISSA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_CLARISSA
	trainertotext LASS_D, LASS_R1, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext LassR1BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight1
; Fight0
	loadtrainer LASS_D, LASS_R1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CLARISSA_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer LASS_D, CLARISSA_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CLARISSA_READY_FOR_REMATCH
	end
	
.AskNumber1:
	jumpstd asknumber1f
	end
	
.AskNumber2:
	jumpstd asknumber2f
	end

.RegisteredNumber:
	jumpstd registerednumberf
	end

.NumberAccepted:
	jumpstd numberacceptedf
	end

.NumberDeclined:
	jumpstd numberdeclinedf
	end

.PhoneFull:
	jumpstd phonefullf
	end

.Rematch:
	jumpstd rematchf
	end

TrainerSchoolboyR1:
	trainer SCHOOLBOY, SCHOOLBOY_R1, EVENT_BEAT_SCHOOLBOY_R1, SchoolboyR1SeenText, SchoolboyR1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyR1AfterText
	waitbutton
	closetext
	end

TrainerSchoolgirlR1:
	trainer SCHOOLGIRL_D, SCHOOLGIRL_R1, EVENT_BEAT_SCHOOLGIRL_R1, SchoolgirlR1SeenText, SchoolgirlR1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolgirlR1AfterText
	waitbutton
	closetext
	end

TrainerBugCatcherR1:
	trainer BUG_CATCHER, BUG_CATCHER_R1, EVENT_BEAT_BUG_CATCHER_R1, BugCatcherR1SeenText, BugCatcherR1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherR1AfterText
	waitbutton
	closetext
	end

TrainerBattleGirlR1:
	trainer BATTLE_GIRL, BATTLE_GIRL_R1, EVENT_BEAT_BATTLE_GIRL_R1, BattleGirlR1SeenText, BattleGirlR1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlR1AfterText
	waitbutton
	closetext
	end

TrainerTwinsR1:
	trainer TWINS, TWINS_R1, EVENT_BEAT_TWINS_R1, TwinsR1SeenText, TwinsR1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsR1AfterText
	waitbutton
	closetext
	end
	
R1FruitTree:
	fruittree FRUITTREE_R_1
	
R1UltraBall:
	itemball ULTRA_BALL
	
R1Protein:
	itemball PROTEIN
	
R1FullRestore:
	hiddenitem FULL_RESTORE, EVENT_R1_FULL_RESTORE
	
R1BigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_R1_BIG_MUSHROOM

R1Sign:
	jumptext R1SignText
	
SchoolboyR1SeenText:
	text "I'm raising #-"
	line "MON too!"

	para "Will you battle"
	line "with me?"
	done

SchoolboyR1BeatenText:
	text "Wha…?"
	done

SchoolboyR1AfterText:
	text "I did my best but"
	line "came up short."

	para "No excuses--I"
	line "admit I lost."
	done
	
SchoolgirlR1SeenText:
	text "The world of"
	line "#MON is deep."

	para "There are still"
	line "lots of things we"
	cont "don't know."

	para "But I know more"
	line "than you do!"
	done

SchoolgirlR1BeatenText:
	text "Wha-wha-what?"
	done

SchoolgirlR1AfterText:
	text "There is a lot"
	line "to learn."

	para "For example…"

	para "There are 50 kinds"
	line "of TMs."

	para "Traded #MON"
	line "level up faster."
	done
	
LassR1SeenText:
	text "My #MON are"
	line "simply darling."

	para "Let me tell you"
	line "how proud my"
	cont "darlings make me."
	done

LassR1BeatenText:
	text "I can beat you in"
	line "pride, but…"
	done

LassR1AfterText:
	text "I must say, your"
	line "#MON are quite"
	cont "cute, too."
	done
	
BugCatcherR1SeenText:
	text "I'll go anywhere"
	line "if bug #MON"
	cont "appear there."
	done

BugCatcherR1BeatenText:
	text "Huh? I shouldn't"
	line "have lost that…"
	done

BugCatcherR1AfterText:
	text "I caught my #-"
	line "MON in PINWHEEL"
	cont "FOREST."
	done
	
BattleGirlR1SeenText:
	text "You shouldn't"
	line "underestimate the"

	para "wild #MON in"
	line "these parts."
	done

BattleGirlR1BeatenText:
	text "Oh! You're much"
	line "too strong!"
	done

BattleGirlR1AfterText:
	text "You're just a kid,"
	line "but you're not to"

	para "be underestimated"
	line "either."
	done
	
TwinsR1SeenText:
	text "Who are you?"
	done

TwinsR1BeatenText:
	text "Meanie."
	done

TwinsR1AfterText:
	text "We'll tell on you."

	para "PROF. will be"
	line "angry with you."
	done
	
R1SignText:
	text "ROUTE 1."
	
	para "North to ACCUMULA"
	line "TOWN, south to"
	cont "NUVEMA TOWN."
	done

Rt1_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6, 38, R_1_R_17_GATE, 3
	warp_event  6, 39, R_1_R_17_GATE, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event 31, 27, BGEVENT_READ, R1Sign
	bg_event 23, 12, BGEVENT_ITEM, R1FullRestore
	bg_event 25, 24, BGEVENT_ITEM, R1BigMushroom

	db 10 ; object events
	object_event 31, 40, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R1FruitTree, -1
	object_event 26,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R1UltraBall, EVENT_R1_ULTRA_BALL
	object_event 18, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R1Protein, EVENT_R1_PROTEIN
	object_event 27, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolboyR1, -1
	object_event 30, 23, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolgirlR1, -1
	object_event 29,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerLassR1, -1
	object_event 27, 38, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherR1, -1
	object_event 20, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlR1, -1
	object_event 33, 14, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTwinsR1, -1
	object_event 33, 15, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTwinsR1, -1
	