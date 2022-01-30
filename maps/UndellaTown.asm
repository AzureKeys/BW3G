	const_def 2 ; object constants
	const UNDELLATOWN_MARLON
	const UNDELLATOWN_BLOCKER
	const UNDELLATOWN_BUG_CATCHER
	const UNDELLATOWN_FISHER1
	const UNDELLATOWN_FISHER2
	const UNDELLATOWN_FISHER3
	const UNDELLATOWN_COOLTRAINER_F
	const UNDELLATOWN_LUCKY_EGG

UndellaTown_MapScripts:
	db 3 ; scene scripts
	scene_script .UndellaTownMeetMarlon ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_UNDELLA_TOWN_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_UNDELLA_TOWN_NOTHING

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.UndellaTownMeetMarlon:
	priorityjump .UndellaTown_MarlonScene
	end

.DummyScene1:
	end

.DummyScene2:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_UNDELLA
	return
	
.UndellaTown_MarlonScene:
	applymovement PLAYER, UndellaTown_DontLeaveMovement
	special FadeOutMusic
	pause 15
	playmusic MUSIC_MARLON_THEME
	turnobject PLAYER, LEFT
	applymovement UNDELLATOWN_MARLON, UndellaTownMarlon_ArriveMovement
	opentext
	writetext UndellaTownMarlonText
	waitbutton
	closetext
	applymovement UNDELLATOWN_MARLON, UndellaTownMarlon_LeaveMovement
	disappear UNDELLATOWN_MARLON
	setevent EVENT_MET_MARLON_IN_UNDELLA
	setscene SCENE_UNDELLA_TOWN_CANT_LEAVE
	special FadeOutMusic
	pause 15
	playmusic MUSIC_LACUNOSA_TOWN
	end
	
UndellaTownBlockerScript:
	showemote EMOTE_SHOCK, UNDELLATOWN_BLOCKER, 15
	applymovement UNDELLATOWN_BLOCKER, UndellaTownBlocker_BlockMovement
	turnobject UNDELLATOWN_BLOCKER, DOWN
	turnobject PLAYER, UP
	opentext
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Okay
	writetext UndellaTownBlockerText_Blocked
	waitbutton
	closetext
	applymovement UNDELLATOWN_BLOCKER, UndellaTownBlocker_ReturnMovement
	applymovement PLAYER, UndellaTown_DontLeaveMovement
	end
	
.Okay:
	writetext UndellaTownBlockerText_Safe
	waitbutton
	closetext
	applymovement UNDELLATOWN_BLOCKER, UndellaTownBlocker_ReturnMovement
	setscene SCENE_UNDELLA_TOWN_NOTHING
	end
	
UndellaTownBlockerTextScript:
	faceplayer
	opentext
	checkflag ENGINE_ZEPHYRBADGE
	iftrue UndellaTownBlocker_Safe
	writetext UndellaTownBlockerText_Dangerous
	waitbutton
	closetext
	end

UndellaTownBlocker_Safe:	
	writetext UndellaTownBlockerText_Safe
	waitbutton
	closetext
	end
	
UndellaTownBugCatcherTextScript:
	jumptextfaceplayer UndellaTownBugCatcherText
	
UndellaTownFisher1TextScript:
	jumptext UndellaTownFisher1Text
	
UndellaTownFisher2TextScript:
	jumptext UndellaTownFisher2Text
	
UndellaTownFisher3TextScript:
	jumptext UndellaTownFisher3Text
	
UndellaTownCooltrainerMTextScript:
	jumptextfaceplayer UndellaTownCooltrainerMText
	
UndellaTownLuckyEgg:
	itemball LUCKY_EGG
	
UndellaTownPearl1:
	hiddenitem PEARL, EVENT_UNDELLA_TOWN_PEARL_1
	
UndellaTownPearl2:
	hiddenitem PEARL, EVENT_UNDELLA_TOWN_PEARL_2
	
UndellaTownSign:
	jumptext UndellaTownSignText
	
UndellaMarineTubeSign:
	jumptext UndellaMarineTubeSignText
	
UndellaFishingSign:
	jumptext UndellaFishingSignText
	
UndellaReversalSign:
	jumptext UndellaReversalSignText
	
UndellaTownMarlon_ArriveMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
UndellaTownMarlon_LeaveMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
UndellaTownBlocker_BlockMovement:
	big_step LEFT
	step_end
	
UndellaTownBlocker_ReturnMovement:
	step RIGHT
	step_end
	
UndellaTown_DontLeaveMovement:
	step DOWN
	step_end
	
UndellaTownMarlonText:
	text "MARLON: Hey,"
	line "<PLAY_G>!"
	
	para "I'm sure you got"
	line "a taste of #-"
	cont "MON battling on"
	cont "the way here."
	
	para "By the way,"
	line "there's a contest"
	
	para "for #MON"
	line "trainers being"
	
	para "held on ROUTE 14,"
	line "just south of"
	cont "town."
	
	para "There's a prize"
	line "for anyone who"
	
	para "can beat all of"
	line "the trainers"
	cont "there."
	
	para "It should give"
	line "you some valuable"
	cont "experience."
	
	para "Once you do, you"
	line "may even be ready"
	
	para "to take on my"
	line "GYM."
	
	para "The MARINE TUBE"
	line "here in town can"
	
	para "take you back to"
	line "HUMILAU CITY"
	cont "quickly."
	
	para "I'll be waiting"
	line "for you, <PLAY_G>!"
	done
	
UndellaTownBlockerText_Blocked:
	text "WAIT!"
	
	para "REVERSAL MOUNTAIN"
	line "is a dangerous"
	cont "place, full of"
	cont "wild #MON!"
	
	para "You should at"
	line "least have a GYM"
	cont "BADGE before"
	
	para "entering a place"
	line "like this."
	done
	
UndellaTownBlockerText_Dangerous:
	text "REVERSAL MOUNTAIN"
	line "is a dangerous"
	cont "place, full of"
	cont "wild #MON."
	
	para "You should at"
	line "least have a GYM"
	cont "BADGE before"
	
	para "entering a place"
	line "like this."
	done
	
UndellaTownBlockerText_Safe:
	text "REVERSAL MOUNTAIN"
	line "is a dangerous"
	cont "place, full of"
	cont "wild #MON."
	
	para "I see you have"
	line "the WAVEBADGE"
	
	para "from the HUMILAU"
	line "CITY GYM."
	
	para "Be careful in"
	line "there!"
	done
	
UndellaTownBugCatcherText:
	text "I wanted to learn"
	line "how to fish for"
	
	para "#MON, but my"
	line "mom says it's too"
	cont "dangerous…"
	done
	
UndellaTownFisher1Text:
	text "This little beach-"
	line "side town is so"
	cont "nice for fishing!"
	
	para "If you want to"
	line "learn to fish,"
	
	para "go see the fishing"
	line "guru in town!"
	done
	
UndellaTownFisher2Text:
	text "I'm looking for"
	line "a REMORAID."
	
	para "They're hard to"
	line "find here though…"
	done
	
UndellaTownFisher3Text:
	text "Shhh! Careful,"
	line "you'll scare away"
	cont "all the fish!"
	
	para "Why don't you go"
	line "check the beach"
	cont "for treasure."
	done
	
UndellaTownCooltrainerMText:
	text "There's a contest"
	line "for #MON"
	cont "trainers going on"
	cont "in ROUTE 14."
	
	para "Beat all five"
	line "trainers, and you"
	cont "receive a prize."
	done
	
UndellaTownSignText:
	text "UNDELLA TOWN"
	
	para "A town of"
	line "rippling waves."
	done
	
UndellaMarineTubeSignText:
	text "MARINE TUBE"
	
	para "Passage to"
	line "HUMILAU CITY."
	done
	
UndellaFishingSignText:
	text "FISHING GURU's"
	line "house."
	done
	
UndellaReversalSignText:
	text "REVERSAL MOUNTAIN"
	
	para "Enter at your"
	line "own risk!"
	done

UndellaTown_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 25,  7, R_13_UNDELLA_GATE, 3
	warp_event 29,  9, UNDELLA_POKECENTER_1F, 1
	warp_event 11,  5, UNDELLA_OLD_ROD_HOUSE, 1
	warp_event 15,  7, MARINE_TUBE_ENTRANCE, 1
	warp_event  4,  7, REVERSAL_MOUNTAIN_B1F, 1
	warp_event 36, 13, SEASIDE_CAVE_1F, 2

	db 1 ; coord events
	coord_event  4,  9, SCENE_UNDELLA_TOWN_CANT_LEAVE, UndellaTownBlockerScript

	db 6 ; bg events
	bg_event  6,  8, BGEVENT_READ, UndellaReversalSign
	bg_event 10,  6, BGEVENT_READ, UndellaFishingSign
	bg_event 16,  8, BGEVENT_READ, UndellaMarineTubeSign
	bg_event 27,  9, BGEVENT_READ, UndellaTownSign
	bg_event  6, 18, BGEVENT_ITEM, UndellaTownPearl1
	bg_event 14,  3, BGEVENT_ITEM, UndellaTownPearl2

	db 8 ; object events
	object_event 20,  8, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_UNDELLA_TOWN_MARLON
	object_event  5,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, -1, UndellaTownBlockerTextScript, -1
	object_event 19,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, UndellaTownBugCatcherTextScript, -1
	object_event 24, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UndellaTownFisher1TextScript, -1
	object_event 18, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, UndellaTownFisher2TextScript, -1
	object_event 11, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UndellaTownFisher3TextScript, -1
	object_event 25, 23, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UndellaTownCooltrainerMTextScript, -1
	object_event 35, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UndellaTownLuckyEgg, EVENT_UNDELLA_TOWN_LUCKY_EGG
	