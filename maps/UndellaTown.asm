	const_def 2 ; object constants
	const UNDELLATOWN_MARLON
	const UNDELLATOWN_BLOCKER
	const UNDELLATOWN_BUG_CATCHER
	const UNDELLATOWN_FISHER1
	const UNDELLATOWN_FISHER2
	const UNDELLATOWN_FISHER3
	const UNDELLATOWN_COOLTRAINER_F
	const UNDELLATOWN_LUCKY_EGG
	const UNDELLATOWN_FRIEND_BALL

UndellaTown_MapScripts:
	db 3 ; scene scripts
	scene_script .UndellaTownMeetMarlon ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_UNDELLA_TOWN_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_UNDELLA_TOWN_NOTHING

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_TILES, .SetTiles

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
	
.SetTiles:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalse .done
	changeblock 10,  6, $16 ; open door
.done
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
	checkflag ENGINE_WAVEBADGE
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
	checkflag ENGINE_WAVEBADGE
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

TrainerFisher1UndellaTown:
	trainer FISHER, FISHER_UNDELLA_1, EVENT_BEAT_FISHER_UNDELLA_1, Fisher1UndellaTownSeenText, Fisher1UndellaTownBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher1UndellaTownAfterText
	waitbutton
	closetext
	end

TrainerFisher2UndellaTown:
	trainer FISHER_D, FISHER_UNDELLA_2, EVENT_BEAT_FISHER_UNDELLA_2, Fisher2UndellaTownSeenText, Fisher2UndellaTownBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher2UndellaTownAfterText
	waitbutton
	closetext
	end
	
UndellaTownBugCatcherTextScript:
	jumptextfaceplayer UndellaTownBugCatcherText
	
UndellaTownFisher3TextScript:
	jumptext UndellaTownFisher3Text
	
UndellaTownCooltrainerMTextScript:
	jumptextfaceplayer UndellaTownCooltrainerMText
	
UndellaTownFriendBall:
	itemball FRIEND_BALL
	
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
	
UndellaTownLockedDoor:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .done
	jumptext UndellaLockedDoorText
.done
	end
	
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
	
	para "I'm sure ya got a"
	line "taste of #MON"
	
	para "battling on the"
	line "way here!"
	
	para "By the way, some"
	line "#MON trainers"
	
	para "are havin' a"
	line "contest down on"
	
	para "ROUTE 14, just"
	line "south of town."
	
	para "There's a prize"
	line "for anyone who"
	
	para "can beat all of"
	line "'em!"
	
	para "It should give"
	line "you some sweet"
	cont "experience!"
	
	para "After that, you"
	line "may even be ready"
	
	para "to take on my"
	line "GYM!"
	
	para "By the way, the"
	line "MARINE TUBE here"
	
	para "in town can take"
	line "ya right back home"
	
	para "to HUMILAU CITY"
	line "real quick!"
	
	para "Come on by the"
	line "GYM when you're"
	
	para "ready, I'll be"
	line "waitin' for ya,"
	cont "<PLAY_G>!"
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
	
Fisher1UndellaTownSeenText:
	text "Okay, good catch!"
	line "My next catch will"
	cont "be called victory!"
	done

Fisher1UndellaTownBeatenText:
	text "The victory that"
	line "got away was"
	cont "thiiiis big!"
	done

Fisher1UndellaTownAfterText:
	text "Life is just like"
	line "fishing. You can't"
	
	para "catch what you"
	line "don't aim for, but"
	
	para "even if you aim"
	line "for something, you"
	
	para "still can't catch"
	line "it!"
	done
	
Fisher2UndellaTownSeenText:
	text "I'll battle you"
	line "with my freshly"
	cont "caught #MON!"
	done

Fisher2UndellaTownBeatenText:
	text "I lost it!"
	done

Fisher2UndellaTownAfterText:
	text "I guess I'd better"
	line "fish up some more"
	cont "#MON!"
	done
	
UndellaTownBugCatcherText:
	text "I wanted to learn"
	line "how to fish for"
	
	para "#MON, but my"
	line "mom says it's too"
	cont "dangerous…"
	done
	
UndellaTownFisher3Text:
	text "This little beach-"
	line "side town is so"
	cont "nice for fishing!"
	
	para "If you want to"
	line "learn to fish,"
	
	para "go see the fishing"
	line "guru in town!"
	done
	
UndellaTownCooltrainerMText:
	text "The kids at the"
	line "school put on a"
	
	para "contest for #-"
	line "MON trainers on"
	cont "ROUTE 14."
	
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
	
UndellaLockedDoorText:
	text "Huh? It's locked…"
	done

UndellaTown_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 25,  7, R_13_UNDELLA_GATE, 3
	warp_event 29,  9, UNDELLA_POKECENTER_1F, 1
	warp_event 21,  7, UNDELLA_OLD_ROD_HOUSE, 1
	warp_event 15,  7, MARINE_TUBE_ENTRANCE, 1
	warp_event  4,  7, REVERSAL_MOUNTAIN_B1F, 1
	warp_event 36, 13, SEASIDE_CAVE_1F, 2
	warp_event 11,  7, CAITLINS_HOUSE, 1

	db 1 ; coord events
	coord_event  4,  9, SCENE_UNDELLA_TOWN_CANT_LEAVE, UndellaTownBlockerScript

	db 7 ; bg events
	bg_event  6,  8, BGEVENT_READ, UndellaReversalSign
	bg_event 20,  8, BGEVENT_READ, UndellaFishingSign
	bg_event 16,  8, BGEVENT_READ, UndellaMarineTubeSign
	bg_event 27,  9, BGEVENT_READ, UndellaTownSign
	bg_event 18,  6, BGEVENT_ITEM, UndellaTownPearl1
	bg_event  8, 16, BGEVENT_ITEM, UndellaTownPearl2
	bg_event 11,  7, BGEVENT_UP, UndellaTownLockedDoor

	db 9 ; object events
	object_event 20,  8, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_UNDELLA_TOWN_MARLON
	object_event  5,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, -1, UndellaTownBlockerTextScript, -1
	object_event 17, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, UndellaTownBugCatcherTextScript, -1
	object_event 24, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisher1UndellaTown, -1
	object_event 11, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerFisher2UndellaTown, -1
	object_event 18, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UndellaTownFisher3TextScript, -1
	object_event 25, 23, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UndellaTownCooltrainerMTextScript, -1
	object_event 35, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UndellaTownLuckyEgg, EVENT_UNDELLA_TOWN_LUCKY_EGG
	object_event 11,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UndellaTownFriendBall, EVENT_UNDELLA_TOWN_FRIEND_BALL
	