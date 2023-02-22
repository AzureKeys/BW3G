	const_def 2 ; object constants
	const STRIATONGYM_CILAN
	const STRIATONGYM_GYM_GUY
	const STRIATONGYM_BARTENDER_1
	const STRIATONGYM_BARTENDER_2
	const STRIATONGYM_WAITER_1
	const STRIATONGYM_WAITER_2
	const STRIATONGYM_WAITRESS_1
	const STRIATONGYM_WAITRESS_2
	const STRIATONGYM_WAITRESS_3

StriatonGym_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Door
	callback MAPCALLBACK_OBJECTS, .Trainers
	
.Door:
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iffalse .done
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iffalse .done
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iffalse .done
	changeblock  6,  2, $6a ; stairs
.done
	return
	
.Trainers:
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	iftrue .next
	disappear STRIATONGYM_WAITER_1
.next
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	iftrue .next2
	disappear STRIATONGYM_WAITER_2
.next2
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	iftrue .next3
	disappear STRIATONGYM_WAITRESS_1
.next3
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	iftrue .done2
	disappear STRIATONGYM_WAITRESS_2
.done2
	return
	
StriatonGymCilanScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CILAN
	iftrue .FightDone
	writetext CilanGymIntroText
	waitbutton
	closetext
	winlosstext CilanWinLossText, 0
	loadtrainer CILAN, CILAN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CILAN
	appear STRIATONGYM_WAITER_1
	appear STRIATONGYM_WAITER_2
	appear STRIATONGYM_WAITRESS_1
	appear STRIATONGYM_WAITRESS_2
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_3
	opentext
	writetext ReceivedGarnishBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GARNISHBADGE
.FightDone:
	checkevent EVENT_GOT_ENERGY_BALL_TM
	iftrue .SpeechAfterTM
	writetext CilanGarnishBadgeText
	buttonsound
	verbosegiveitem TM_ENERGY_BALL
	iffalse .SpeechAfterTM
	setevent EVENT_GOT_ENERGY_BALL_TM
	writetext CilanTMEnergyBallText
	waitbutton
.SpeechAfterTM:
	writetext CilanFightDoneText
	waitbutton
	closetext
	end
	
StriatonGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CILAN
	iftrue .StriatonGymGuyWinScript
	writetext StriatonGymGuyText
	waitbutton
	closetext
	end

.StriatonGymGuyWinScript:
	writetext StriatonGymGuyWinText
	waitbutton
	closetext
	end

StriatonGymStatue:
	checkflag ENGINE_GARNISHBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	trainertotext CILAN, CILAN1, MEM_BUFFER_1
	jumpstd gymstatue2
	
StriatonGymBartender1Script:
	jumptext StriatonGymBartender1Text
	
StriatonGymBartender2Script:
	opentext
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iftrue .pressed
	writetext StriatonGymBartender2Text
	buttonsound
	yesorno
	iffalse .done
	setevent EVENT_STRIATON_GYM_SWITCH_1
	writetext StriatonGymSwitch1Text
	playsound SFX_TALLY
	waitsfx
	waitbutton
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iffalse .done
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iffalse .done
	changeblock  6,  2, $6a ; stairs
	playsound SFX_ENTER_DOOR
	waitsfx
	reloadmappart
.done
	closetext
	end
	
.pressed
	writetext StriatonGymBartender2PressedText
	waitbutton
	closetext
	end
	
StriatonGymCanSwitch:
	opentext
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iftrue .pressed
	setevent EVENT_STRIATON_GYM_SWITCH_2
	writetext StriatonGymPressSwitchText
	waitbutton
	playsound SFX_TALLY
	waitsfx
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iffalse .done
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iffalse .done
	changeblock  6,  2, $6a ; stairs
	playsound SFX_ENTER_DOOR
	waitsfx
	reloadmappart
.done
	closetext
	end
	
.pressed
	writetext StriatonGymSwitchPressedText
	waitbutton
	closetext
	end
	
StriatonGymTableSwitch:
	opentext
	checkevent EVENT_STRIATON_GYM_SWITCH_3
	iftrue .pressed
	setevent EVENT_STRIATON_GYM_SWITCH_3
	writetext StriatonGymPressSwitchText
	waitbutton
	playsound SFX_TALLY
	waitsfx
	checkevent EVENT_STRIATON_GYM_SWITCH_1
	iffalse .done
	checkevent EVENT_STRIATON_GYM_SWITCH_2
	iffalse .done
	changeblock  6,  2, $6a ; stairs
	playsound SFX_ENTER_DOOR
	waitsfx
	reloadmappart
.done
	closetext
	end
	
.pressed
	writetext StriatonGymSwitchPressedText
	waitbutton
	closetext
	end
	
TrainerWaitress3StriatonGym:
	opentext
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_3
	iftrue .beaten
	writetext StriatonGymBartender2Text
	buttonsound
	yesorno
	iffalse .done
	playmusic MUSIC_LASS_ENCOUNTER
	writetext Waitress3StriatonGymSeenText
	waitbutton
	closetext
	winlosstext Waitress3StriatonGymBeatenText, 0
	setlasttalked STRIATONGYM_WAITRESS_3
	loadtrainer WAITRESS, WAITRESS_STRIATON_GYM_3
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_3
	end
	
.beaten
	writetext Waitress3StriatonGymAfterText
	waitbutton
.done
	closetext
	end
	
TrainerWaiter1StriatonGym:
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	iftrue .beaten
	checkcode VAR_FACING
	ifequal DOWN, .down
	appear STRIATONGYM_WAITER_1
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	ifequal LEFT, .left
	applymovement STRIATONGYM_WAITER_1, StriatonGymWaiter1LeftMovement
	turnobject PLAYER, UP
	jump .battle
.left
	applymovement STRIATONGYM_WAITER_1, StriatonGymWaiter1RightMovement
	turnobject PLAYER, UP
	jump .battle
.down
	moveobject STRIATONGYM_WAITER_1, 4, 13
	appear STRIATONGYM_WAITER_1
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	applymovement STRIATONGYM_WAITER_1, StriatonGymWaiter1DownMovement
	turnobject PLAYER, LEFT
.battle
	opentext
	writetext Waiter1StriatonGymSeenText
	waitbutton
	closetext
	winlosstext Waiter1StriatonGymBeatenText, 0
	setlasttalked STRIATONGYM_WAITER_1
	loadtrainer WAITER, WAITER_STRIATON_GYM_1
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_1
	end
	
.beaten
	jumptext StriatonGymEmptyCanText
	
TrainerWaiter2StriatonGym:
	checkevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	iftrue .beaten
	appear STRIATONGYM_WAITER_2
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	applymovement STRIATONGYM_WAITER_2, StriatonGymWaiter2Movement
	turnobject PLAYER, LEFT
	opentext
	writetext Waiter2StriatonGymSeenText
	waitbutton
	closetext
	winlosstext Waiter2StriatonGymBeatenText, 0
	setlasttalked STRIATONGYM_WAITER_2
	loadtrainer WAITER, WAITER_STRIATON_GYM_2
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITER_STRIATON_GYM_2
	end
.beaten
	jumptext StriatonGymTableNothingText
	
TrainerWaitress1StriatonGymLeft:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	iftrue .beaten
	appear STRIATONGYM_WAITRESS_1
	playmusic MUSIC_LASS_ENCOUNTER
	applymovement STRIATONGYM_WAITRESS_1, StriatonGymWaitress1LeftMovement
	jump TrainerWaitress1StriatonGym
.beaten
	jumptext StriatonGymTableNothingText
	
TrainerWaitress1StriatonGymRight:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	iftrue .beaten
	appear STRIATONGYM_WAITRESS_1
	playmusic MUSIC_LASS_ENCOUNTER
	applymovement STRIATONGYM_WAITRESS_1, StriatonGymWaitress1RightMovement
	jump TrainerWaitress1StriatonGym
.beaten
	jumptext StriatonGymTableNothingText
	
TrainerWaitress1StriatonGym:
	turnobject PLAYER, RIGHT
	opentext
	writetext Waitress1StriatonGymSeenText
	waitbutton
	closetext
	winlosstext Waitress1StriatonGymBeatenText, 0
	setlasttalked STRIATONGYM_WAITRESS_1
	loadtrainer WAITRESS, WAITRESS_STRIATON_GYM_1
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_1
	end
	
TrainerWaitress2StriatonGymLeft:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	iftrue .beaten
	appear STRIATONGYM_WAITRESS_2
	playmusic MUSIC_LASS_ENCOUNTER
	applymovement STRIATONGYM_WAITRESS_2, StriatonGymWaitress2LeftMovement
	jump TrainerWaitress2StriatonGym
.beaten
	jumptext StriatonGymTableNothingText
	
TrainerWaitress2StriatonGymRight:
	checkevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	iftrue .beaten
	appear STRIATONGYM_WAITRESS_2
	playmusic MUSIC_LASS_ENCOUNTER
	applymovement STRIATONGYM_WAITRESS_2, StriatonGymWaitress2RightMovement
	jump TrainerWaitress2StriatonGym
.beaten
	jumptext StriatonGymTableNothingText
	
TrainerWaitress2StriatonGym:
	turnobject PLAYER, LEFT
	opentext
	writetext Waitress2StriatonGymSeenText
	waitbutton
	closetext
	winlosstext Waitress2StriatonGymBeatenText, 0
	setlasttalked STRIATONGYM_WAITRESS_2
	loadtrainer WAITRESS, WAITRESS_STRIATON_GYM_2
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	opentext
	writetext Waitress2StriatonGymGiveLemonadeText
	buttonsound
	verbosegiveitem LEMONADE
	closetext
	setevent EVENT_BEAT_WAITRESS_STRIATON_GYM_2
	end
	
StriatonGymTableNothing:
	jumptext StriatonGymTableNothingText
	
TextScriptWaiter1StriatonGym:
	jumptextfaceplayer Waiter1StriatonGymAfterText
	
TextScriptWaiter2StriatonGym:
	jumptextfaceplayer Waiter2StriatonGymAfterText
	
TextScriptWaitress1StriatonGym:
	jumptextfaceplayer Waitress1StriatonGymAfterText
	
TextScriptWaitress2StriatonGym:
	jumptextfaceplayer Waitress2StriatonGymAfterText

StriatonGymWaiter1RightMovement:
	step RIGHT
	turn_head DOWN
	step_end

StriatonGymWaiter1LeftMovement:
	step LEFT
	turn_head DOWN
	step_end

StriatonGymWaiter1DownMovement:
	step UP
	turn_head RIGHT
	step_end

StriatonGymWaiter2Movement:
	step DOWN
	turn_head RIGHT
	step_end

StriatonGymWaitress1LeftMovement:
	step DOWN
	step LEFT
	step_end

StriatonGymWaitress1RightMovement:
	step DOWN
	turn_head LEFT
	step_end

StriatonGymWaitress2LeftMovement:
	step DOWN
	turn_head RIGHT
	step_end

StriatonGymWaitress2RightMovement:
	step DOWN
	step RIGHT
	step_end
	
CilanGymIntroText:
	text "Welcome to the"
	line "STRIATON CITY"
	cont "#MON GYM."
	
	para "My grass #MON"
	line "and I have taken"

	para "the resolve to"
	line "run this GYM."

	para "So, no hard"
	line "feelings, we'll"

	para "battle whatever"
	line "comes our way."
	done

CilanWinLossText:
	text "Er… Is it over"
	line "now?"
	done

ReceivedGarnishBadgeText:
	text "<PLAYER> received"
	line "GARNISHBADGE."
	done

CilanGarnishBadgeText:
	text "What a surprise."
	line "You are very"
	cont "strong…"

	para "With the GARNISH"
	line "BADGE, #MON up"
	cont "to Lv70 will obey"
	cont "your commands."

	para "You will also be"
	line "able to use the"
	cont "effects of SURF"
	cont "outside of battle."
	
	para "And, I want you"
	line "to have this."
	done

CilanTMEnergyBallText:
	text "TM19 contains"
	line "ENERGY BALL."

	para "It's a strong"
	line "grass-type move,"
	
	para "and has a chance"
	line "to lower your"
	cont "opponent's SP.DEF."
	done

CilanFightDoneText:
	text "Even if you fail,"
	line "keep on trying."

	para "With the right"
	line "resolve, even I"
	cont "could become a"
	cont "GYM LEADER again."

	para "I know you'll go"
	line "far too!"
	done
	
StriatonGymGuyText:
	text "Yo, challenger!"

	para "CILAN is the"
	line "leader of this"
	cont "GYM. Find the"

	para "hidden switches"
	line "to open his door."

	para "He's going to be"
	line "tough without my"
	cont "advice."

	para "Let's see…"
	line "CILAN's #MON"

	para "are all grass"
	line "type. They have"
	
	para "many weaknesses,"
	line "but also many"
	cont "strengths."
	
	para "Fire and flying"
	line "would be your best"
	cont "bets!"
	done

StriatonGymGuyWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done
	
Waitress3StriatonGymSeenText:
	text "Nope, sorry! I'm"
	line "a trainer!"
	done

Waitress3StriatonGymBeatenText:
	text "Oh no! My #MON!"
	done

Waitress3StriatonGymAfterText:
	text "Try looking for"
	line "the switches in"
	cont "other places."
	done
	
Waiter1StriatonGymSeenText:
	text "Aha! You thought"
	line "there was a switch"
	
	para "in here, but it"
	line "was me!"
	done

Waiter1StriatonGymBeatenText:
	text "Wasted!"
	done

Waiter1StriatonGymAfterText:
	text "It was kind of"
	line "smelly in that"
	cont "can…"
	done
	
Waiter2StriatonGymSeenText:
	text "Aha! I'm a WAITER"
	line "who's also a #-"
	cont "MON trainer!"
	done

Waiter2StriatonGymBeatenText:
	text "Wonderful battle!"
	line "The experience is"
	cont "my tip!"
	done

Waiter2StriatonGymAfterText:
	text "Our specialty is"
	line "the best #MON"
	cont "battles."
	done
	
Waitress1StriatonGymSeenText:
	text "Welcome! Would you"
	line "like a water with"
	cont "your battle?"
	done

Waitress1StriatonGymBeatenText:
	text "Ah, bravo!"
	done

Waitress1StriatonGymAfterText:
	text "I had a feeling"
	line "you would check"
	cont "under there."
	done
	
Waitress2StriatonGymSeenText:
	text "Battling makes us"
	line "thirsty, right?"
	
	para "If you can win"
	line "against me, I'll"
	cont "give you a drink!"
	done

Waitress2StriatonGymBeatenText:
	text "The battle made me"
	line "even thirstier!"
	done

Waitress2StriatonGymAfterText:
	text "At a place like"
	line "this, it's good to"
	cont "stay hydrated!"
	done
	
Waitress2StriatonGymGiveLemonadeText:
	text "Okay, you can have"
	line "this, like I"
	cont "promised."
	done
	
StriatonGymBartender1Text:
	text "Welcome to the"
	line "STRIATON CITY GYM."
	
	para "If you want to"
	line "reach the LEADER,"
	
	para "you'll need to"
	line "find the three"
	
	para "secret switches"
	line "in the gym."
	
	para "Try checking under"
	line "the tables."
	done
	
StriatonGymBartender2Text:
	text "Welcome to the"
	line "STRIATON CITY GYM."
	
	para "Oh? Did you think"
	line "I have one of the"
	cont "secret switches?"
	done
	
StriatonGymBartender2PressedText:
	text "Go find the other"
	line "switches!"
	done
	
StriatonGymSwitch1Text:
	text "Well you're right!"
	line "Press the switch!"
	done

StriatonGymEmptyCanText:
	text "The can is empty."
	done

StriatonGymTableNothingText:
	text "There's nothing"
	line "underneath."
	done

StriatonGymPressSwitchText:
	text "A secret switch!"
	line "Let's press it!"
	done

StriatonGymSwitchPressedText:
	text "The switch is"
	line "already pressed."
	done
	
StriatonGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6, 17, STRIATON_CITY, 5
	warp_event  7, 17, STRIATON_CITY, 6

	db 0 ; coord events

	db 12 ; bg events
	bg_event  5, 15, BGEVENT_READ, StriatonGymStatue
	bg_event  8, 15, BGEVENT_READ, StriatonGymStatue
	bg_event 13, 17, BGEVENT_READ, StriatonGymCanSwitch
	bg_event  5, 13, BGEVENT_READ, TrainerWaiter1StriatonGym
	bg_event  9, 10, BGEVENT_UP, TrainerWaiter2StriatonGym
	bg_event  0,  3, BGEVENT_UP, TrainerWaitress1StriatonGymLeft
	bg_event  1,  3, BGEVENT_UP, TrainerWaitress1StriatonGymRight
	bg_event 10, 15, BGEVENT_UP, TrainerWaitress2StriatonGymLeft
	bg_event 11, 15, BGEVENT_UP, TrainerWaitress2StriatonGymRight
	bg_event  3,  6, BGEVENT_UP, StriatonGymTableSwitch
	bg_event  7,  6, BGEVENT_UP, StriatonGymTableNothing
	bg_event  3, 10, BGEVENT_UP, StriatonGymTableNothing

	db 9 ; object events
	object_event  6,  1, SPRITE_CILAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonGymCilanScript, -1
	object_event  7, 15, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StriatonGymGuyScript, -1
	object_event  2, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, StriatonGymBartender1Script, -1
	object_event 12,  6, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, StriatonGymBartender2Script, -1
	object_event  5, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TextScriptWaiter1StriatonGym, EVENT_STRIATON_GYM_WAITER_1
	object_event  8, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TextScriptWaiter2StriatonGym, EVENT_STRIATON_GYM_WAITER_2
	object_event  2,  3, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TextScriptWaitress1StriatonGym, EVENT_STRIATON_GYM_WAITRESS_1
	object_event  9, 15, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TextScriptWaitress2StriatonGym, EVENT_STRIATON_GYM_WAITRESS_2
	object_event 11,  4, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerWaitress3StriatonGym, -1
	