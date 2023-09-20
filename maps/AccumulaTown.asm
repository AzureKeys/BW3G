	const_def 2 ; object constants
	const ACCUMULATOWN_POKEFAN_M
	const ACCUMULATOWN_COOLTRAINER_F
	const ACCUMULATOWN_TEACHER
	const ACCUMULATOWN_YOUNGSTER
	const ACCUMULATOWN_BLOCKER_1
	const ACCUMULATOWN_BLOCKER_2
	const ACCUMULATOWN_BLOCKER_3
	const ACCUMULATOWN_BLOCKER_4
	const ACCUMULATOWN_RYOKU

AccumulaTown_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_ACCUMULA
	return
	
AccumulaTownRyokuScript:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext AccumulaTownRyokuIntroText
	buttonsound
	writetext AccumulaTownBlocker1Text
	buttonsound
	writetext AccumulaTownRyokuIntroText2
	buttonsound
	writetext AccumulaTownBlocker2Text
	waitbutton
	closetext
	faceplayer
	opentext
	writetext AccumulaTownRyokuBattleText
	waitbutton
	closetext
	winlosstext AccumulaTownRyokuBeatenText, 0
	setlasttalked ACCUMULATOWN_RYOKU
	loadtrainer RYOKU, RYOKU1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext AccumulaTownRyokuGiveDiskText
	waitbutton
	verbosegiveitem DATA_DISK
	closetext
	checkcode VAR_FACING
	ifnotequal DOWN, .dontmoveplayer
	applymovement PLAYER, AccumulaTownPlayerMovement
.dontmoveplayer
	applymovement ACCUMULATOWN_RYOKU, AccumulaTownRyokuMovement
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear ACCUMULATOWN_RYOKU
	disappear ACCUMULATOWN_BLOCKER_1
	disappear ACCUMULATOWN_BLOCKER_2
	disappear ACCUMULATOWN_BLOCKER_3
	disappear ACCUMULATOWN_BLOCKER_4
	appear ACCUMULATOWN_POKEFAN_M
	appear ACCUMULATOWN_COOLTRAINER_F
	appear ACCUMULATOWN_TEACHER
	appear ACCUMULATOWN_YOUNGSTER
	pause 15
	special FadeInQuickly
	playmapmusic
	end
	
AccumulaTownMaxRepel:
	hiddenitem MAX_REPEL, EVENT_ACCUMULA_MAX_REPEL
	
AccumulaTownPokefanMTextScript:
	jumptextfaceplayer AccumulaTownPokefanMText
	
AccumulaTownCooltrainerFTextScript:
	jumptextfaceplayer AccumulaTownCooltrainerFText
	
AccumulaTownTeacherTextScript:
	jumptextfaceplayer AccumulaTownTeacherText
	
AccumulaTownYoungsterTextScript:
	jumptextfaceplayer AccumulaTownYoungsterText
	
AccumulaTownBlocker1TextScript:
	jumptext AccumulaTownBlocker1Text
	
AccumulaTownBlocker2TextScript:
	jumptext AccumulaTownBlocker2Text
	
AccumulaTownBlocker3TextScript:
	jumptext AccumulaTownBlocker3Text
	
AccumulaTownBlocker4TextScript:
	jumptext AccumulaTownBlocker4Text

AccumulaTownSign:
	jumptext AccumulaTownSignText
	
AccumulaTownPlayerMovement:
	big_step LEFT
	turn_head RIGHT
	step_end
	
AccumulaTownRyokuMovement:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end
	
AccumulaTownRyokuIntroText:
	text "???: Oh dear…"
	
	para "Please, you must"
	line "allow me through."
	done
	
AccumulaTownRyokuIntroText2:
	text "???: I really don't"
	line "have time for"
	cont "this…"
	done
	
AccumulaTownRyokuBattleText:
	text "???: I've been"
	line "found out…"
	
	para "I have no choice"
	line "then…"
	done
	
AccumulaTownRyokuBeatenText:
	text "Oh dear…"
	done
	
AccumulaTownRyokuGiveDiskText:
	text "RYOKU: I-I must"
	line "retreat! Here,"
	cont "take it!"
	done
	
AccumulaTownPokefanMText:
	text "Back when TEAM"
	line "PLASMA was first"
	
	para "started, they"
	line "tried to recruit"
	
	para "people from our"
	line "town."
	
	para "A lot of us got"
	line "swept up in what"
	cont "they were saying."

	para "It was kind of"
	line "scary, now that I"
	cont "think about it."
	done
	
AccumulaTownCooltrainerFText:
	text "Have you visited"
	line "the GYM in"
	cont "STRIATON CITY yet?"
	
	para "I heard their GYM"
	line "LEADER was taking"
	
	para "a break, but he"
	line "decided to come"
	cont "back!"
	done
	
AccumulaTownTeacherText:
	text "Oh, what's this?"
	
	para "You and your #-"
	line "MON somehow res-"
	cont "emble each other!"
	done
	
AccumulaTownYoungsterText:
	text "TEAM PLASMA are no"
	line "good, thanks for"

	para "getting rid of"
	line "that guy!"
	done
	
AccumulaTownBlocker1Text:
	text "Man: Hey, you're"
	line "from that TEAM"
	cont "PLASMA, aren't you?"
	
	para "You're probably up"
	line "to no good!"
	done
	
AccumulaTownBlocker2Text:
	text "Woman: Hey, there"
	line "was a robbery in"
	
	para "NACRENE CITY just"
	line "recently, I bet"
	
	para "he had something"
	line "to do with it!"
	
	para "Man: That's why"
	line "he's in such a"
	
	para "hurry! He's trying"
	line "to get away!"
	
	para "Woman: Someone had"
	line "better stop him!"
	done
	
AccumulaTownBlocker3Text:
	text "We won't just let"
	line "TEAM PLASMA come"
	cont "into our town like"
	cont "that!"
	done
	
AccumulaTownBlocker4Text:
	text "Hey! What does"
	line "that TEAM PLASMA"
	cont "guy think he's"
	cont "doing?"
	done
	
AccumulaTownSignText:
	text "ACCUMULA TOWN."
	
	para "The fast-growing"
	line "town!"
	done

AccumulaTown_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  4,  6, R_2_ACCUMULA_GATE, 3
	warp_event  4,  7, R_2_ACCUMULA_GATE, 4
	warp_event  5, 15, ACCUMULA_BALL_MANIAC_HOUSE, 1
	warp_event 25, 11, ACCUMULA_POKECENTER_1F, 1
	warp_event 23,  4, ACCUMULA_HOUSE, 1
	warp_event 11,  5, ACCUMULA_TRADE_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 24, 14, BGEVENT_READ, AccumulaTownSign
	bg_event 10,  9, BGEVENT_ITEM, AccumulaTownMaxRepel

	db 9 ; object events
	object_event 19,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AccumulaTownPokefanMTextScript, EVENT_ACCUMULA_TOWN_PEOPLE
	object_event  9, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaTownCooltrainerFTextScript, EVENT_ACCUMULA_TOWN_PEOPLE
	object_event 14, 10, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AccumulaTownTeacherTextScript, EVENT_ACCUMULA_TOWN_PEOPLE
	object_event 22, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AccumulaTownYoungsterTextScript, EVENT_ACCUMULA_TOWN_PEOPLE
	object_event 19, 21, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AccumulaTownBlocker1TextScript, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 20, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaTownBlocker2TextScript, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 21, 21, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AccumulaTownBlocker3TextScript, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 18, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AccumulaTownBlocker4TextScript, EVENT_ACCUMULA_TOWN_BLOCKERS
	object_event 19, 19, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaTownRyokuScript, EVENT_ACCUMULA_TOWN_RYOKU
	