	const_def 2 ; object constants
	const CAITLINSHOUSE_CAITLIN
	const CAITLINSHOUSE_CYNTHIA

CaitlinsHouse_MapScripts:
	db 2 ; scene scripts
	scene_script .EnterCaitlinsHouse ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .MoveObjects

.EnterCaitlinsHouse:
	priorityjump .CaitlinsHouseScript
	end

.DummyScene:
	end
	
.MoveObjects:
	checkevent EVENT_BEAT_CYNTHIA
	iftrue .done
	moveobject CAITLINSHOUSE_CAITLIN, 1, 10
	moveobject CAITLINSHOUSE_CYNTHIA, 3,  9
.done
	return
	
.CaitlinsHouseScript:
	opentext
	writetext CaitlinsHouseCaitlinIntroText
	waitbutton
	closetext
	applymovement CAITLINSHOUSE_CAITLIN, CaitlinsHouseCaitlinApproachMovement
	opentext
	writetext CaitlinsHouseCaitlinApproachText
	waitbutton
	closetext
	applymovement PLAYER, CaitlinsHouseStepUpMovement
	winlosstext CaitlinsHouseCaitlinWinText, 0
	setlasttalked CAITLINSHOUSE_CAITLIN
	loadtrainer CAITLIN, CAITLIN1
	startbattle
	reloadmapafterbattle
	opentext
	writetext CaitlinsHouseCaitlinAfterBattleText
	buttonsound
	special FadeOutMusic
	writetext CaitlinsHouseCynthiaIntroText
	waitbutton
	closetext
	playmusic MUSIC_CYNTHIA_ENCOUNTER
	applymovement CAITLINSHOUSE_CYNTHIA, CaitlinsHouseStepDownMovement
	opentext
	writetext CaitlinsHouseCynthiaApproachText
	waitbutton
	closetext
	applymovement CAITLINSHOUSE_CYNTHIA, CaitlinsHouseCynthiaApproachMovement
	turnobject PLAYER, RIGHT
	special HealParty
	winlosstext CaitlinsHouseCynthiaWinText, 0
	setlasttalked CAITLINSHOUSE_CYNTHIA
	loadtrainer CYNTHIA, CYNTHIA1
	startbattle
	reloadmapafterbattle
	opentext
	writetext CaitlinsHouseCynthiaAfterBattleText
	waitbutton
	closetext
	setevent EVENT_BEAT_CYNTHIA
	setflag ENGINE_CAITLIN
	setflag ENGINE_CYNTHIA
	setscene SCENE_FINISHED
	end
	
CaitlinsHouseCaitlinScript:
	faceplayer
	opentext
	checkcode VAR_WEEKDAY
	ifnotequal SUNDAY, .NotSunday
	checkflag ENGINE_CAITLIN
	iftrue .NotSunday
	writetext CaitlinsHouseCaitlinBattleIntroText
	waitbutton
	closetext
	winlosstext CaitlinsHouseCaitlinWinText, 0
	setlasttalked CAITLINSHOUSE_CAITLIN
	loadtrainer CAITLIN, CAITLIN1
	startbattle
	reloadmapafterbattle
	setflag ENGINE_CAITLIN
	opentext
.NotSunday
	writetext CaitlinsHouseCaitlinAfterBattleText
	waitbutton
	closetext
	end

CaitlinsHouseCynthiaScript:
	faceplayer
	opentext
	checkcode VAR_WEEKDAY
	ifnotequal THURSDAY, .NotThursday
	checkflag ENGINE_CYNTHIA
	iftrue .NotThursday
	writetext CaitlinsHouseCynthiaBattleIntroText
	waitbutton
	closetext
	winlosstext CaitlinsHouseCynthiaWinText, 0
	setlasttalked CAITLINSHOUSE_CYNTHIA
	loadtrainer CYNTHIA, CYNTHIA1
	startbattle
	reloadmapafterbattle
	setflag ENGINE_CYNTHIA
	opentext
.NotThursday
	writetext CaitlinsHouseCynthiaAfterBattleText
	waitbutton
	closetext
	end
	
CaitlinsHouseCaitlinApproachMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end
	
CaitlinsHouseCynthiaApproachMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step_end
	
CaitlinsHouseStepUpMovement:
	step UP
	step_end
	
CaitlinsHouseStepDownMovement:
	step DOWN
	step_end
	
CaitlinsHouseCaitlinIntroText:
	text "Huh? Who's there?"
	done

CaitlinsHouseCaitlinApproachText:
	text "How impudent you"
	line "are to disturb my"
	cont "sleep."
	
	para "Hmf… You…"
	
	para "You are the one"
	line "who became"
	
	para "Champion not too"
	line "long ago. How"
	cont "intriguing…"
	
	para "I'd like to test"
	line "your power. Try"
	
	para "not to bore me"
	line "with a yawn"
	cont "inducing battle."
	done

CaitlinsHouseCaitlinWinText:
	text "Hm… How"
	line "interesting."
	done

CaitlinsHouseCaitlinAfterBattleText:
	text "As a trainer, you"
	line "are both excellent"
	cont "and elegant."
	
	para "Your #MON have"
	line "class. I am very"
	
	para "pleased to have"
	line "battled you."
	done

CaitlinsHouseCaitlinBattleIntroText:
	text "Hmf… It's you"
	line "again. Still, you"
	
	para "possess that"
	line "combination of"
	
	para "kindness and"
	line "strength. You seem"
	
	para "stronger than"
	line "before… Do be sure"
	
	para "not to bore me"
	line "with a snooze-"
	cont "inducing battle."
	
	para "Is that clear?"
	done
	
CaitlinsHouseCynthiaIntroText:
	text "What's this?"
	done

CaitlinsHouseCynthiaApproachText:
	text "What's your name,"
	line "trainer?"
	
	para "<PLAY_G>?"
	
	para "Well, you must be"
	line "a talented trainer"
	
	para "if you were able"
	line "to beat CAITLIN."
	
	para "She used to be a"
	line "member of the"
	
	para "ELITE FOUR, you"
	line "know!"
	
	para "You've got me"
	line "intrigued,"
	cont "<PLAY_G>."
	
	para "I would like our"
	line "#MON to have a"
	
	para "match. Are you"
	line "ready?"
	done

CaitlinsHouseCynthiaWinText:
	text "My heart is"
	line "pounding. You are"
	
	para "truly a great"
	line "trainer!"
	done

CaitlinsHouseCynthiaAfterBattleText:
	text "That was beyond my"
	line "expectation! What"
	
	para "an exceptional"
	line "battle!"
	
	para "You're a great"
	line "trainer, and it"
	
	para "would make me"
	line "happy to see you"
	cont "again sometime."
	done

CaitlinsHouseCynthiaBattleIntroText:
	text "How terrific to"
	line "see you again!"
	
	para "I've got to tell"
	line "you… My #MON"
	
	para "are excited to"
	line "battle yours."
	
	para "Would you care to"
	line "be my opponent?"
	done
	
CaitlinsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 15, UNDELLA_TOWN, 7
	warp_event  5, 15, UNDELLA_TOWN, 7

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  3,  2, SPRITE_CAITLIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaitlinsHouseCaitlinScript, -1
	object_event  5, 11, SPRITE_CYNTHIA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaitlinsHouseCynthiaScript, -1
	