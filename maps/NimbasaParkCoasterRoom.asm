	const_def 2 ; object constants
	const NIMBASAPARKCOASTERROOM_TM_THIEF
	const NIMBASAPARKCOASTERROOM_HYPER_POTION
	const NIMBASAPARKCOASTERROOM_FULL_HEAL
	const NIMBASAPARKCOASTERROOM_PROTEIN
	const NIMBASAPARKCOASTERROOM_GRUNTM_1
	const NIMBASAPARKCOASTERROOM_GRUNTM_2
	const NIMBASAPARKCOASTERROOM_GRUNTM_3
	const NIMBASAPARKCOASTERROOM_GRUNTM_4
	const NIMBASAPARKCOASTERROOM_GRUNTF_1
	const NIMBASAPARKCOASTERROOM_GRUNTF_2
	const NIMBASAPARKCOASTERROOM_GRUNTF_3

NimbasaParkCoasterRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_NIMBASA_PARK_COASTER_1
	scene_script .DummyScene1 ; SCENE_NIMBASA_PARK_COASTER_2

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .MoveCoasters
	callback MAPCALLBACK_OBJECTS, .Trainers

.DummyScene0:
	end

.DummyScene1:
	end

.MoveCoasters:
	checkevent EVENT_CRASHED_COASTER
	iffalse .nocrash
	changeblock 26, 24, $8C
.nocrash:
	checkscene
	ifequal SCENE_NIMBASA_PARK_COASTER_1, .done
	changeblock 18,  2, $95
	changeblock 30, 20, $48
.done:
	return
	
.Trainers:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_PARK_4
	iftrue .done2
	disappear NIMBASAPARKCOASTERROOM_GRUNTM_4
.done2
	return
	
NimbasaParkCoasterSwitch1:
	earthquake 30
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext NimbasaParkCoasterMoveText
	waitbutton
	closetext
	checkscene
	ifequal SCENE_NIMBASA_PARK_COASTER_1, .position2
	changeblock 18,  2, $9D
	changeblock 30, 20, $87
	setscene SCENE_NIMBASA_PARK_COASTER_1
	end
	
.position2
	changeblock 18,  2, $95
	changeblock 30, 20, $48
	setscene SCENE_NIMBASA_PARK_COASTER_2
	end
	
NimbasaParkCoasterSwitch2:
	opentext
	checkevent EVENT_CRASHED_COASTER
	iftrue .already_pressed
	changeblock 26, 24, $8C
	setevent EVENT_CRASHED_COASTER
	earthquake 30
	playsound SFX_POUND
	waitsfx
	playsound SFX_POUND
	waitsfx
	playsound SFX_STRENGTH
	waitsfx
	pause 15
	opentext
	writetext NimbasaParkCoasterMoveText2
	waitbutton
	closetext
	end
	
.already_pressed
	writetext NimbasaParkCoasterAlreadyPressedText
	waitbutton
	closetext
	end
	
NimbasaParkStairsSwitch:
	checkevent EVENT_OPENED_NIMBASA_RUNWAY
	iftrue .done
	setevent EVENT_OPENED_NIMBASA_RUNWAY
	opentext
	writetext NimbasaParkCoasterSwitchText
	waitbutton
	playsound SFX_TALLY
	waitsfx
	closetext
	specialphonecall SPECIALCALL_CHEREN_NIMBASA
.done
	end
	
TrainerGruntMNimbasaPark4:
	jumptextfaceplayer GruntMNimbasaPark1AfterText
	
NimbasaParkHiddenGrunt1:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_PARK_4
	iftrue .done
	playmusic MUSIC_ROCKET_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_GRUNTM_4
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_GRUNTM_4, 15
	turnobject PLAYER, UP
	jump NimbasaParkHiddenGruntScript
.done
	end
	
NimbasaParkHiddenGrunt2:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_PARK_4
	iftrue .done
	playmusic MUSIC_ROCKET_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_GRUNTM_4
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_GRUNTM_4, 15
	turnobject PLAYER, UP
	applymovement NIMBASAPARKCOASTERROOM_GRUNTM_4, NimbasaParkGrunt1Movement
	jump NimbasaParkHiddenGruntScript
.done
	end
	
NimbasaParkHiddenGrunt3:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_PARK_4
	iftrue .done
	playmusic MUSIC_ROCKET_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_GRUNTM_4
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_GRUNTM_4, 15
	turnobject PLAYER, UP
	applymovement NIMBASAPARKCOASTERROOM_GRUNTM_4, NimbasaParkGrunt2Movement
	jump NimbasaParkHiddenGruntScript
.done
	end
	
NimbasaParkHiddenGrunt4:
	checkevent EVENT_BEAT_GRUNTM_NIMBASA_PARK_4
	iftrue .done
	playmusic MUSIC_ROCKET_ENCOUNTER
	appear NIMBASAPARKCOASTERROOM_GRUNTM_4
	showemote EMOTE_SHOCK, NIMBASAPARKCOASTERROOM_GRUNTM_4, 15
	turnobject PLAYER, UP
	applymovement NIMBASAPARKCOASTERROOM_GRUNTM_4, NimbasaParkGrunt3Movement
	jump NimbasaParkHiddenGruntScript
.done
	end
	
NimbasaParkHiddenGruntScript:
	opentext
	writetext GruntMNimbasaPark4SeenText
	waitbutton
	closetext
	setevent EVENT_NIMBASA_PARK_HIDDEN_GRUNT
	winlosstext GruntMNimbasaPark4BeatenText, 0
	setlasttalked NIMBASAPARKCOASTERROOM_GRUNTM_4
	loadtrainer GRUNTM, GRUNTM_NIMBASA_4
	startbattle
	reloadmapafterbattle
	clearevent EVENT_NIMBASA_PARK_HIDDEN_GRUNT
	setevent EVENT_BEAT_GRUNTM_NIMBASA_PARK_4
.done
	end

TrainerGruntMNimbasaPark1:
	trainer GRUNTM, GRUNTM_NIMBASA_1, EVENT_BEAT_GRUNTM_NIMBASA_PARK_1, GruntMNimbasaPark1SeenText, GruntMNimbasaPark1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMNimbasaPark1AfterText
	waitbutton
	closetext
	end

TrainerGruntMNimbasaPark2:
	trainer GRUNTM, GRUNTM_NIMBASA_2, EVENT_BEAT_GRUNTM_NIMBASA_PARK_2, GruntMNimbasaPark2SeenText, GruntMNimbasaPark2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMNimbasaPark2AfterText
	waitbutton
	closetext
	end

TrainerGruntMNimbasaPark3:
	trainer GRUNTM, GRUNTM_NIMBASA_3, EVENT_BEAT_GRUNTM_NIMBASA_PARK_3, GruntMNimbasaPark3SeenText, GruntMNimbasaPark3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMNimbasaPark3AfterText
	waitbutton
	closetext
	end

TrainerGruntFNimbasaPark1:
	trainer GRUNTF, GRUNTF_NIMBASA_1, EVENT_BEAT_GRUNTF_NIMBASA_PARK_1, GruntFNimbasaPark1SeenText, GruntFNimbasaPark1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFNimbasaPark1AfterText
	waitbutton
	closetext
	end

TrainerGruntFNimbasaPark2:
	trainer GRUNTF, GRUNTF_NIMBASA_2, EVENT_BEAT_GRUNTF_NIMBASA_PARK_2, GruntFNimbasaPark2SeenText, GruntFNimbasaPark2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFNimbasaPark2AfterText
	waitbutton
	closetext
	end

TrainerGruntFNimbasaPark3:
	trainer GRUNTF, GRUNTF_NIMBASA_3, EVENT_BEAT_GRUNTF_NIMBASA_PARK_3, GruntFNimbasaPark3SeenText, GruntFNimbasaPark3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFNimbasaPark3AfterText
	waitbutton
	closetext
	end
	
NimbasaParkOldGymSign2:
	jumptext NimbasaParkOldGymText2
	
NimbasaParkCoasterRoomTMThief:
	itemball TM_THIEF
	
NimbasaParkCoasterRoomHyperPotion:
	itemball HYPER_POTION
	
NimbasaParkCoasterRoomFullHeal:
	itemball FULL_HEAL
	
NimbasaParkCoasterRoomProtein:
	itemball PROTEIN
	
NimbasaParkCoasterRoomNugget:
	hiddenitem NUGGET, EVENT_NIMBASA_PARK_COASTER_ROOM_NUGGET
	
NimbasaParkCoasterRoomThunderstone:
	hiddenitem THUNDERSTONE, EVENT_NIMBASA_PARK_COASTER_ROOM_THUNDERSTONE
	
NimbasaParkGrunt1Movement:
	step DOWN
	step_end
	
NimbasaParkGrunt2Movement:
	step DOWN
	step DOWN
	step_end
	
NimbasaParkGrunt3Movement:
	step DOWN
	step DOWN
	step DOWN
	step_end
	
NimbasaParkOldGymText2:
	text "N--BASA --TY GY-"
	line "Lea--r: E--sa"
	done
	
GruntMNimbasaPark1SeenText:
	text "I stole this #-"
	line "MON years ago, and"
	
	para "I've been training"
	line "it ever since!"
	
	para "It's tough!"
	done

GruntMNimbasaPark1BeatenText:
	text "Don't let it go to"
	line "your head… but you"
	
	para "put up a good"
	line "fight…"
	done

GruntMNimbasaPark1AfterText:
	text "You've got to be"
	line "kidding! And I"

	para "toughened it up so"
	line "much, too!"
	done
	
GruntMNimbasaPark2SeenText:
	text "Just to warn you,"
	line "I show no mercy!"
	done

GruntMNimbasaPark2BeatenText:
	text "What's the big"
	line "idea? The #MON"
	
	para "I stole was"
	line "useless!"
	done

GruntMNimbasaPark2AfterText:
	text "If we keep going"
	line "like this, it'll"

	para "end up like it did"
	line "last time!"
	done
	
GruntMNimbasaPark3SeenText:
	text "It's no use!"
	line "You're outmatched!"
	done

GruntMNimbasaPark3BeatenText:
	text "So you're a"
	line "trainer who fights"
	
	para "for your #MON,"
	line "eh?"
	done

GruntMNimbasaPark3AfterText:
	text "Ack! I need"
	line "backup!"
	done
	
GruntMNimbasaPark4SeenText:
	text "Hey, hey, what do"
	line "we have here? You"

	para "have good #MON."
	line "Let me see!"
	done

GruntMNimbasaPark4BeatenText:
	text "What? My #MON"
	line "weren't enough?"
	done

GruntMNimbasaPark4AfterText:
	text "If I only had some"
	line "better #MON…"
	
	para "Then no one could"
	line "stop me!"
	done
	
GruntFNimbasaPark1SeenText:
	text "This used to be a"
	line "roller coaster."

	para "Can you figure out"
	line "how to get through"
	cont "this place?"
	done

GruntFNimbasaPark1BeatenText:
	text "I get it…"
	done

GruntFNimbasaPark1AfterText:
	text "Alright, I'll let"
	line "you in on a"
	cont "secret."

	para "There are switches"
	line "that can move some"
	cont "of the coasters."
	done
	
GruntFNimbasaPark2SeenText:
	text "Okay, it's my"
	line "turn!"
	done

GruntFNimbasaPark2BeatenText:
	text "Plasma! Plasmaaa!"
	done

GruntFNimbasaPark2AfterText:
	text "What's with this"
	line "trainer?!"
	
	para "This reminds me of"
	line "that trainer who"
	
	para "messed with us"
	line "years ago…"
	done
	
GruntFNimbasaPark3SeenText:
	text "If I win, give me"
	line "your #MON!"
	done

GruntFNimbasaPark3BeatenText:
	text "What?! What a"
	line "joke!"
	done

GruntFNimbasaPark3AfterText:
	text "I'd take your weak"
	line "#MON and raise"
	cont "them up strong…"
	done
	
NimbasaParkCoasterMoveText:
	text "Something moved…"
	done
	
NimbasaParkCoasterMoveText2:
	text "It sounds like"
	line "something heavy"
	cont "crashed…"
	
	para "A coaster car must"
	line "have fallen off of"
	cont "the track."
	done
	
NimbasaParkCoasterAlreadyPressedText:
	text "Nothing happened…"
	done
	
NimbasaParkCoasterSwitchText:
	text "Oh! There's a"
	line "switch."
	
	para "Let's press it!"
	done

NimbasaParkCoasterRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  8, 29, NIMBASA_PARK_OUTSIDE, 1
	warp_event  9, 29, NIMBASA_PARK_OUTSIDE, 1

	db 4 ; coord events
	coord_event 36,  2, -1, NimbasaParkHiddenGrunt1
	coord_event 36,  3, -1, NimbasaParkHiddenGrunt2
	coord_event 36,  4, -1, NimbasaParkHiddenGrunt3
	coord_event 36,  5, -1, NimbasaParkHiddenGrunt4

	db 9 ; bg events
	bg_event 23, 21, BGEVENT_READ, NimbasaParkCoasterSwitch1
	bg_event 37,  3, BGEVENT_READ, NimbasaParkCoasterSwitch2
	bg_event 27, 13, BGEVENT_READ, NimbasaParkStairsSwitch
	bg_event 10, 21, BGEVENT_ITEM, NimbasaParkCoasterRoomNugget
	bg_event 11, 21, BGEVENT_ITEM, NimbasaParkCoasterRoomNugget
	bg_event 34, 11, BGEVENT_ITEM, NimbasaParkCoasterRoomThunderstone
	bg_event 35, 11, BGEVENT_ITEM, NimbasaParkCoasterRoomThunderstone
	bg_event  7, 27, BGEVENT_READ, NimbasaParkOldGymSign2
	bg_event 10, 27, BGEVENT_READ, NimbasaParkOldGymSign2

	db 11 ; object events
	object_event 32,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, NimbasaParkCoasterRoomTMThief, EVENT_NIMBASA_PARK_COASTER_ROOM_TM_THIEF
	object_event  6, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkCoasterRoomHyperPotion, EVENT_NIMBASA_PARK_COASTER_ROOM_HYPER_POTION
	object_event 15, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkCoasterRoomFullHeal, EVENT_NIMBASA_PARK_COASTER_ROOM_FULL_HEAL
	object_event 19, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaParkCoasterRoomProtein, EVENT_NIMBASA_PARK_COASTER_ROOM_PROTEIN
	object_event  3, 13, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntMNimbasaPark1, EVENT_NIMBASA_PARK_GRUNTS
	object_event  8,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntMNimbasaPark2, EVENT_NIMBASA_PARK_GRUNTS
	object_event 22,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntMNimbasaPark3, EVENT_NIMBASA_PARK_GRUNTS
	object_event 36,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerGruntMNimbasaPark4, EVENT_NIMBASA_PARK_HIDDEN_GRUNT
	object_event 22, 25, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntFNimbasaPark1, EVENT_NIMBASA_PARK_GRUNTS
	object_event 17,  6, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntFNimbasaPark2, EVENT_NIMBASA_PARK_GRUNTS
	object_event 32, 24, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntFNimbasaPark3, EVENT_NIMBASA_PARK_GRUNTS
	