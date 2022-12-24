	const_def 2 ; object constants
	const REVERSALMOUNTAIN_X_DEFEND
	const REVERSALMOUNTAIN_GREAT_BALL
	const REVERSALMOUNTAIN_AWAKENING
	const REVERSALMOUNTAIN_DUSK_BALL
	const REVERSALMOUNTAIN_BLUE_SHARD
	const REVERSALMOUNTAIN_SCHOOL_KIDF
	const REVERSALMOUNTAIN_HIKER_2
	const REVERSALMOUNTAIN_BACKPACKERF
	const REVERSALMOUNTAIN_BACKPACKERM
	const REVERSALMOUNTAIN_BLACKBELT
	const REVERSALMOUNTAIN_LASS
	const REVERSALMOUNTAIN_GRUNT

ReversalMountain1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
ReversalGruntScript:
	opentext
	writetext ReversalGruntIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, REVERSALMOUNTAIN_GRUNT, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject REVERSALMOUNTAIN_GRUNT, DOWN
	opentext
	writetext ReversalGruntBattleText
	waitbutton
	closetext
	winlosstext ReversalGruntWinText, 0
	setlasttalked REVERSALMOUNTAIN_GRUNT
	loadtrainer GRUNTM, GRUNTM_REVERSAL
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext ReversalGruntLeaveText
	waitbutton
	closetext
	applymovement REVERSALMOUNTAIN_GRUNT, ReversalGruntMovement
	pause 15
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	disappear REVERSALMOUNTAIN_GRUNT
	special FadeOutMusic
	pause 15
	playmapmusic
	end

TrainerSchoolKidFReversal:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_REVERSAL, EVENT_BEAT_SCHOOL_KIDF_REVERSAL, SchoolKidFReversalSeenText, SchoolKidFReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidFReversalAfterText
	waitbutton
	closetext
	end

TrainerHiker2Reversal:
	trainer HIKER_D, HIKER_REVERSAL_2, EVENT_BEAT_HIKER_REVERSAL_2, Hiker2ReversalSeenText, Hiker2ReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker2ReversalAfterText
	waitbutton
	closetext
	end

TrainerBackpackerFReversal:
	trainer BACKPACKERF, BACKPACKERF_REVERSAL, EVENT_BEAT_BACKPACKERF_REVERSAL, BackpackerFReversalSeenText, BackpackerFReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFReversalAfterText
	waitbutton
	closetext
	end

TrainerBackpackerMReversal:
	trainer BACKPACKERM, BACKPACKERM_REVERSAL, EVENT_BEAT_BACKPACKERM_REVERSAL, BackpackerMReversalSeenText, BackpackerMReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMReversalAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltReversal:
	trainer BLACKBELT_T, BLACKBELT_REVERSAL, EVENT_BEAT_BLACKBELT_REVERSAL, BlackbeltReversalSeenText, BlackbeltReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltReversalAfterText
	waitbutton
	closetext
	end

TrainerLassReversal:
	trainer LASS_D, LASS_REVERSAL, EVENT_BEAT_LASS_REVERSAL, LassReversalSeenText, LassReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassReversalAfterText
	waitbutton
	closetext
	end
	
ReversalMountainXDefend:
	itemball X_DEFEND
	
ReversalMountainGreatBall:
	itemball GREAT_BALL
	
ReversalMountainAwakening:
	itemball AWAKENING
	
ReversalMountainDuskBall:
	itemball DUSK_BALL
	
ReversalMountainBlueShard:
	itemball BLUE_SHARD
	
ReversalMountainElixer:
	hiddenitem ELIXER, EVENT_REVERSAL_MOUNTAIN_ELIXER
	
ReversalGruntMovement:
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step_end
	
ReversalGruntIntroText:
	text "…"

	para "I think this is"
	line "the way out…?"
	done
	
ReversalGruntBattleText:
	text "Hey! Don't sneak"
	line "up on a guy like"
	cont "that!"

	para "Don't you know"
	line "who I am?"
	
	para "I'll teach you not"
	line "to mess with TEAM"
	cont "PLASMA!"
	done
	
ReversalGruntWinText:
	text "No! How could I"
	line "lose?"
	done
	
ReversalGruntLeaveText:
	text "Darn it! You've"
	line "made a powerful"
	cont "enemy today!"

	para "TEAM PLASMA is not"
	line "to be messed with!"
	
	para "Once I figure out"
	line "where I am, you're"
	cont "done for!"
	done
	
BackpackerFReversalSeenText:
	text "Hello, lo, lo!"
	done

BackpackerFReversalBeatenText:
	text "I, I, I…"
	line "Lost, lost, lost!"
	done

BackpackerFReversalAfterText:
	text "Echo, oh, oh!"
	line "…"
	
	para "Your voice really"
	line "echoes in a path"
	cont "like this, huh?"
	done
	
Hiker2ReversalSeenText:
	text "My #MON dig"
	line "cause they believe"

	para "they're gonna find"
	line "something, and"
	
	para "they battle cause"
	line "they believe"
	cont "they're gonna win!"
	done

Hiker2ReversalBeatenText:
	text "I may have lost,"
	line "but I still"
	
	para "believe in my"
	line "#MON!"
	done

Hiker2ReversalAfterText:
	text "Me and my #MON"
	line "will be wherever"

	para "there's ore to be"
	line "found!"
	done
	
SchoolKidFReversalSeenText:
	text "Hi there! Look at"
	line "my awesome #-"
	cont "MON!"
	done

SchoolKidFReversalBeatenText:
	text "I… I'm not mad!"
	done

SchoolKidFReversalAfterText:
	text "My #MON will"
	line "always be with me,"
	cont "even if we lose!"
	done
	
BackpackerMReversalSeenText:
	text "You sure are"
	line "unlucky to have"

	para "run into someone"
	line "as strong as me!"
	done

BackpackerMReversalBeatenText:
	text "I guess it was I"
	line "who was unlucky to"
	cont "run into you!"
	done

BackpackerMReversalAfterText:
	text "Turning bad luck"
	line "into good luck…"

	para "I wish I knew how"
	line "to do that."
	done
	
BlackbeltReversalSeenText:
	text "Oh! I haven't seen"
	line "you before! Would"

	para "you mind sparring"
	line "with me?"
	done

BlackbeltReversalBeatenText:
	text "Wow, impressive!"
	
	para "For one so young,"
	line "you're quite good!"
	done

BlackbeltReversalAfterText:
	text "Look carefully,"
	line "you might find"

	para "items on the"
	line "ground!"
	done
	
LassReversalSeenText:
	text "Sure, I'll be your"
	line "opponent, right"

	para "alongside my"
	line "trusty MUNNA!"
	done

LassReversalBeatenText:
	text "You're strong!"
	done

LassReversalAfterText:
	text "This is one of my"
	line "favorite places"
	cont "to train!"
	done
	
ReversalMountain1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 47,  7, REVERSAL_MOUNTAIN_B1F, 2
	warp_event 41, 19, REVERSAL_MOUNTAIN_B1F, 5
	warp_event 17, 23, REVERSAL_MOUNTAIN_B1F, 6
	warp_event  5,  3, REVERSAL_MOUNTAIN_B1F, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 22, 20, BGEVENT_ITEM, ReversalMountainElixer

	db 12 ; object events
	object_event 32,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainXDefend, EVENT_REVERSAL_MOUNTAIN_X_DEFEND
	object_event 13, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainGreatBall, EVENT_REVERSAL_MOUNTAIN_GREAT_BALL
	object_event 11, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainAwakening, EVENT_REVERSAL_MOUNTAIN_AWAKENING
	object_event 41, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainDuskBall, EVENT_REVERSAL_MOUNTAIN_DUSK_BALL
	object_event 21,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainBlueShard, EVENT_REVERSAL_MOUNTAIN_BLUE_SHARD
	object_event 31, 41, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidFReversal, -1
	object_event 16, 25, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerHiker2Reversal, -1
	object_event  6, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBackpackerFReversal, -1
	object_event  6, 27, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBackpackerMReversal, -1
	object_event 33, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltReversal, -1
	object_event 26, 24, SPRITE_LASS, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerLassReversal, -1
	object_event  4,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ReversalGruntScript, EVENT_REVERSAL_MOUNTAIN_GRUNT
	