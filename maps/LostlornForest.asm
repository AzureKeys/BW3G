	const_def 2 ; object constants
	const LOSTLORNFOREST_INFER
	const LOSTLORNFOREST_GRUNTM
	const LOSTLORNFOREST_GRUNTF
	const LOSTLORNFOREST_SUPER_POTION
	const LOSTLORNFOREST_ETHER
	const LOSTLORNFOREST_ANTIDOTE
	const LOSTLORNFOREST_NET_BALL
	const LOSTLORNFOREST_MIRACLE_SEED
	const LOSTLORNFOREST_LEAF_STONE
	const LOSTLORNFOREST_TM_SOLARBEAM
	const LOSTLORNFOREST_SCHOOL_KIDF
	const LOSTLORNFOREST_SCHOOL_KIDM
	const LOSTLORNFOREST_PKMN_BREEDERM
	const LOSTLORNFOREST_PKMN_BREEDERF
	const LOSTLORNFOREST_YOUNGSTER
	const LOSTLORNFOREST_LASS

LostlornForest_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_LOSTLORN_GRUNTS
	scene_script .DummyScene1 ; SCENE_LOSTLORN_INFER
	scene_script .DummyScene2 ; SCENE_LOSTLORN_NOTHING

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
LostlornForestGruntsScript:
	opentext
	writetext LostlornGruntsIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, LOSTLORNFOREST_GRUNTF, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext LostlornGruntsBehindYouText
	waitbutton
	closetext
	turnobject LOSTLORNFOREST_GRUNTM, LEFT
	opentext
	writetext LostlornGruntsBattle1Text
	waitbutton
	closetext
	applymovement LOSTLORNFOREST_GRUNTM, LostlornGruntMovement1
	winlosstext LostlornGrunt1WinText, 0
	setlasttalked LOSTLORNFOREST_GRUNTM
	loadtrainer GRUNTM, GRUNTM_LOSTLORN
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	pause 15
	applymovement LOSTLORNFOREST_GRUNTM, LostlornGruntMovement2
	opentext
	writetext LostlornGruntsBattle2Text
	waitbutton
	closetext
	applymovement LOSTLORNFOREST_GRUNTF, LostlornGruntMovement3
	winlosstext LostlornGrunt2WinText, 0
	setlasttalked LOSTLORNFOREST_GRUNTF
	loadtrainer GRUNTF, GRUNTF_LOSTLORN
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	pause 15
	applymovement LOSTLORNFOREST_GRUNTF, LostlornGruntMovement4
	opentext
	writetext LostlornGruntsLeaveText
	waitbutton
	closetext
	applymovement LOSTLORNFOREST_GRUNTM, LostlornGruntMovement5
	applymovement LOSTLORNFOREST_GRUNTF, LostlornGruntMovement5
	disappear LOSTLORNFOREST_GRUNTM
	disappear LOSTLORNFOREST_GRUNTF
	special FadeOutMusic
	pause 30
	playmapmusic
	;playmusic MUSIC_FOREST
	setscene SCENE_LOSTLORN_INFER
	end
	
LostlornForestInferScript:
	special FadeOutMusic
	pause 30
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, DOWN
	applymovement LOSTLORNFOREST_INFER, LostlornForest_AppearMovement
	opentext
	writetext LostlornForestInferText_Intro
	waitbutton
	closetext
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftrue .Snivy
	winlosstext LostlornForestInferWinText, 0
	setlasttalked LOSTLORNFOREST_INFER
	loadtrainer INFER, INFER2_OSHAWOTT
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .AfterVictorious
	
.Oshawott:
	winlosstext LostlornForestInferWinText, 0
	setlasttalked LOSTLORNFOREST_INFER
	loadtrainer INFER, INFER2_SNIVY
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .AfterVictorious

.Snivy:
	winlosstext LostlornForestInferWinText, 0
	setlasttalked LOSTLORNFOREST_INFER
	loadtrainer INFER, INFER2_TEPIG
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext LostlornForestInferText_YouWon
	waitbutton
	closetext
	applymovement LOSTLORNFOREST_INFER, LostlornForest_LeaveMovement
	disappear LOSTLORNFOREST_INFER
	special FadeOutMusic
	pause 30
	;playmusic MUSIC_FOREST
	playmapmusic
	setscene SCENE_LOSTLORN_NOTHING
	end

TrainerPkmnBreederFLostlorn:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_LOSTLORN, EVENT_BEAT_PKMN_BREEDERF_LOSTLORN, PkmnBreederFLostlornSeenText, PkmnBreederFLostlornBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnBreederFLostlornAfterText
	waitbutton
	closetext
	end

TrainerSchoolKidMLostlorn:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_LOSTLORN, EVENT_BEAT_SCHOOL_KIDM_LOSTLORN, SchoolKidMLostlornSeenText, SchoolKidMLostlornBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidMLostlornAfterText
	waitbutton
	closetext
	end

TrainerPkmnBreederMLostlorn:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_LOSTLORN, EVENT_BEAT_PKMN_BREEDERM_LOSTLORN, PkmnBreederMLostlornSeenText, PkmnBreederMLostlornBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnBreederMLostlornAfterText
	waitbutton
	closetext
	end

TrainerYoungsterLostlorn:
	trainer YOUNGSTER_D, YOUNGSTER_LOSTLORN, EVENT_BEAT_YOUNGSTER_LOSTLORN, YoungsterLostlornSeenText, YoungsterLostlornBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterLostlornAfterText
	waitbutton
	closetext
	end

TrainerLassLostlorn:
	trainer LASS, LASS_LOSTLORN, EVENT_BEAT_LASS_LOSTLORN, LassLostlornSeenText, LassLostlornBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassLostlornAfterText
	waitbutton
	closetext
	end

TrainerSchoolKidFLostlorn:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_LOSTLORN, EVENT_BEAT_SCHOOL_KIDF_LOSTLORN, SchoolKidFLostlornSeenText, SchoolKidFLostlornBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidFLostlornAfterText
	waitbutton
	closetext
	end
	
LostlornSuperPotion1:
	itemball SUPER_POTION
	
LostlornEther1:
	itemball ETHER
	
LostlornAntidote:
	itemball ANTIDOTE
	
LostlornNetBall:
	itemball NET_BALL
	
LostlornMiracleSeed:
	itemball MIRACLE_SEED
	
LostlornLeafStone:
	itemball LEAF_STONE
	
LostlornTMSolarbeam:
	itemball TM_SOLARBEAM
	
LostlornHiddenGrotto:
	hiddengrotto HIDDENGROTTO_LOSTLORN
	
LostlornSuperPotion2:
	hiddenitem SUPER_POTION, EVENT_LOSTLORN_SUPER_POTION_2
	
LostlornEther2:
	hiddenitem ETHER, EVENT_LOSTLORN_ETHER_2
	
LostlornBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_LOSTLORN_BIG_MUSHROOM

LostlornForestSign:
	jumptext LostlornForestSignText
	
LostlornR16Sign:
	jumptext LostlornR16SignText
	
LostlornGruntMovement1:
	step LEFT
	step LEFT
	step_end
	
LostlornGruntMovement2:
	fix_facing
	step RIGHT
	step RIGHT
	remove_fixed_facing
	step_end
	
LostlornGruntMovement3:
	step DOWN
	step LEFT
	step LEFT
	step UP
	step LEFT
	step_end
	
LostlornGruntMovement4:
	fix_facing
	step RIGHT
	remove_fixed_facing
	step_end
	
LostlornGruntMovement5:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end
	
LostlornForest_AppearMovement:
	step UP
	step UP
	step RIGHT
	step UP
	step UP
	step_end
	
LostlornForest_LeaveMovement:
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step DOWN
	big_step DOWN
	step_end
	
LostlornGruntsIntroText:
	text "Are you sure we're"
	line "going the right"
	cont "way?"

	para "NIMBASA CITY has"
	line "got to be around"
	cont "here somewhere…"
	done
	
LostlornGruntsBehindYouText:
	text "Hey! There's"
	line "someone behind"
	cont "you!"
	done
	
LostlornGruntsBattle1Text:
	text "Hey, you better"
	line "not mess with us!"
	
	para "I'll show you the"
	line "power of TEAM"
	cont "PLASMA!"
	done
	
LostlornGruntsBattle2Text:
	text "Darn it, you were"
	line "too soft."
	
	para "I'll show you how"
	line "it's done!"
	done
	
LostlornGruntsLeaveText:
	text "C'mon, let's get"
	line "out of here!"
	
	para "You haven't seen"
	line "the last of us!"
	done
	
LostlornGrunt1WinText:
	text "Arrgh, no way!"
	done
	
LostlornGrunt2WinText:
	text "No, how could I"
	line "lose?!"
	done
	
LostlornForestInferText_Intro:
	text "You, what are you"
	line "doing here?"

	para "What? TEAM PLASMA?"
	line "I don't know what"
	cont "you're talking"
	cont "about."
	
	para "I told you not"
	line "to follow me."
	
	para "Guess I'll have"
	line "to teach you a"
	cont "lesson!"
	done
	
LostlornForestInferText_YouWon:
	text "Darn, I'm still"
	line "not strong enough…"

	para "Whatever, this"
	line "won't hold me"
	cont "back."
	
	para "I'm telling you,"
	line "don't get involved"
	cont "with TEAM PLASMA."
	
	para "Next time we meet,"
	line "you won't be so"
	cont "lucky!"
	done
	
LostlornForestInferWinText:
	text "No! How could"
	line "I lose?"
	done
	
LostlornForestSignText:
	text "LOSTLORN FOREST"

	para "Take caution not"
	line "to become lost."
	done
	
LostlornR16SignText:
	text "ROUTE 16 ahead."

	para "Passage to"
	line "NIMBASA CITY."
	done
	
PkmnBreederFLostlornSeenText:
	text "I need to practice"
	line "more as a #MON"
	cont "breeder."
	
	para "Please, be my"
	line "opponent!"
	done

PkmnBreederFLostlornBeatenText:
	text "I've still got a"
	line "long way to go…"
	
	para "I'll keep raising"
	line "my #MON!"
	done

PkmnBreederFLostlornAfterText:
	text "Thank you so much!"
	line "I learned a lot"
	cont "from our battle."
	done
	
SchoolKidMLostlornSeenText:
	text "I'll go anywhere"
	line "if bug #MON"
	cont "appear there."
	done

SchoolKidMLostlornBeatenText:
	text "Huh? I shouldn't"
	line "have lost that…"
	done

SchoolKidMLostlornAfterText:
	text "I guess I need to"
	line "find more bugs…"
	done
	
PkmnBreederMLostlornSeenText:
	text "Having lots of"
	line "battles is the"

	para "best way to raise"
	line "#MON quickly."
	done

PkmnBreederMLostlornBeatenText:
	text "Your training"
	line "method is great,"
	
	para "I'm going to copy"
	line "it!"
	done

PkmnBreederMLostlornAfterText:
	text "I want to battle"
	line "you again some"
	cont "time!"
	done
	
YoungsterLostlornSeenText:
	text "What kinds of"
	line "BALLS do you use?"
	done

YoungsterLostlornBeatenText:
	text "Yikes! Not fast"
	line "enough!"
	done

YoungsterLostlornAfterText:
	text "Try using a DUSK"
	line "BALL when it's"
	cont "night out."

	para "You can buy them"
	line "in NIMBASA CITY!"
	done
	
SchoolKidFLostlornSeenText:
	text "Did you go to"
	line "the GYM? Me too!"
	done

SchoolKidFLostlornBeatenText:
	text "Oh. I couldn't"
	line "win…"
	done

SchoolKidFLostlornAfterText:
	text "The GYM BADGES are"
	line "pretty. I collect"
	cont "them."
	done
	
LassLostlornSeenText:
	text "Don't let my"
	line "#MON's cute"

	para "looks fool you."
	line "They can whip you!"
	done

LassLostlornBeatenText:
	text "Darn… I thought"
	line "you were weak…"
	done

LassLostlornAfterText:
	text "Do my #MON"
	line "think I'm cute?"
	done

LostlornForest_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 37,  5, LENTIMAS_LOSTLORN_GATE, 3
	warp_event 17, 54, R_16_LOSTLORN_GATE, 1
	warp_event 17, 55, R_16_LOSTLORN_GATE, 2

	db 2 ; coord events
	coord_event  5, 27, SCENE_LOSTLORN_GRUNTS, LostlornForestGruntsScript
	coord_event 10, 36, SCENE_LOSTLORN_INFER, LostlornForestInferScript

	db 7 ; bg events
	bg_event 37,  7, BGEVENT_READ, LostlornForestSign
	bg_event 15, 53, BGEVENT_READ, LostlornR16Sign
	bg_event  0,  4, BGEVENT_ITEM, LostlornEther2
	bg_event 15,  8, BGEVENT_ITEM, LostlornSuperPotion2
	bg_event 28, 12, BGEVENT_ITEM, LostlornBigMushroom
	bg_event 13, 25, BGEVENT_UP, LostlornHiddenGrotto
	bg_event 14, 25, BGEVENT_UP, LostlornHiddenGrotto

	db 16 ; object events
	object_event  9, 41, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_LOSTLORN_FOREST_INFER
	object_event  8, 27, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_LOSTLORN_FOREST_GRUNT
	object_event  9, 27, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, -1, EVENT_LOSTLORN_FOREST_GRUNT
	object_event 21, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LostlornSuperPotion1, EVENT_LOSTLORN_SUPER_POTION_1
	object_event 11, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LostlornEther1, EVENT_LOSTLORN_ETHER_1
	object_event  7, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LostlornAntidote, EVENT_LOSTLORN_ANTIDOTE
	object_event 31, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LostlornNetBall, EVENT_LOSTLORN_NET_BALL
	object_event 12, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LostlornMiracleSeed, EVENT_LOSTLORN_MIRACLE_SEED
	object_event 23, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LostlornLeafStone, EVENT_LOSTLORN_LEAF_STONE
	object_event 26, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, LostlornTMSolarbeam, EVENT_LOSTLORN_TM_SOLARBEAM
	object_event 30, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidFLostlorn, -1
	object_event  1,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidMLostlorn, -1
	object_event 15, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederMLostlorn, -1
	object_event 12, 44, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnBreederFLostlorn, -1
	object_event 10,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerYoungsterLostlorn, -1
	object_event  8, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerLassLostlorn, -1
	