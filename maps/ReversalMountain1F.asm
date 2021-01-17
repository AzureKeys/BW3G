	const_def 2 ; object constants
	const REVERSALMOUNTAIN_X_DEFEND
	const REVERSALMOUNTAIN_X_GREAT_BALL
	const REVERSALMOUNTAIN_X_AWAKENING
	const REVERSALMOUNTAIN_X_DUSK_BALL
	const REVERSALMOUNTAIN_SCHOOLGIRL
	const REVERSALMOUNTAIN_HIKER_2
	const REVERSALMOUNTAIN_PICNICKER
	const REVERSALMOUNTAIN_CAMPER
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

TrainerSchoolgirlReversal:
	trainer SCHOOLGIRL, SCHOOLGIRL_REVERSAL, EVENT_BEAT_SCHOOLGIRL_REVERSAL, SchoolgirlReversalSeenText, SchoolgirlReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolgirlReversalAfterText
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

TrainerPicnickerReversal:
	trainer PICNICKER_D, PICNICKER_REVERSAL, EVENT_BEAT_PICNICKER_REVERSAL, PicnickerReversalSeenText, PicnickerReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerReversalAfterText
	waitbutton
	closetext
	end

TrainerCamperReversal:
	trainer CAMPER, CAMPER_REVERSAL, EVENT_BEAT_CAMPER_REVERSAL, CamperReversalSeenText, CamperReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperReversalAfterText
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
	
SchoolgirlReversalSeenText:
	text "I found some good"
	line "#MON outside!"

	para "I think they'll do"
	line "it for me!"
	done

SchoolgirlReversalBeatenText:
	text "Darn. I thought I"
	line "could win."
	done

SchoolgirlReversalAfterText:
	text "The grass is full"
	line "of scary things!"
	done
	
Hiker2ReversalSeenText:
	text "If it's light, a"
	line "cave isn't scary."

	para "If you're strong,"
	line "#MON aren't"
	cont "scary."
	done

Hiker2ReversalBeatenText:
	text "FLASH!"
	done

Hiker2ReversalAfterText:
	text "My #MON is so"
	line "big, so I'm not"

	para "afraid of anything"
	line "in the cave!"
	done
	
PicnickerReversalSeenText:
	text "That glance…"
	line "It's intriguing."
	done

PicnickerReversalBeatenText:
	text "Hmmm. This is"
	line "disappointing."
	done

PicnickerReversalAfterText:
	text "If you don't want"
	line "to battle, just"
	cont "avoid eye contact."
	done
	
CamperReversalSeenText:
	text "I roam far and"
	line "wide in search of"
	cont "#MON."

	para "Are you looking"
	line "for #MON too?"

	para "Then you're my"
	line "collecting rival!"
	done

CamperReversalBeatenText:
	text "Ugh. My poor #-"
	line "MON…"
	done

CamperReversalAfterText:
	text "You can hear #-"
	line "MON roars from"

	para "deep inside the"
	line "cave."
	done
	
BlackbeltReversalSeenText:
	text "ZUBAT's SUPERSONIC"
	line "keeps confusing"
	cont "my #MON."

	para "I'm seriously"
	line "upset about that!"
	done

BlackbeltReversalBeatenText:
	text "Knocked out!"
	done

BlackbeltReversalAfterText:
	text "You can hear #-"
	line "MON roars from"

	para "deep inside the"
	line "cave."
	done
	
LassReversalSeenText:
	text "I haven't seen you"
	line "around before."

	para "So you think you"
	line "are pretty tough?"
	done

LassReversalBeatenText:
	text "You're strong!"
	done

LassReversalAfterText:
	text "I'm going to try"
	line "to be the best"
	cont "with my favorites."

	para "I'm not using the"
	line "same tough #MON"
	cont "as everyone else."
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

	db 11 ; object events
	object_event 32,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainXDefend, EVENT_REVERSAL_MOUNTAIN_X_DEFEND
	object_event 13, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainGreatBall, EVENT_REVERSAL_MOUNTAIN_GREAT_BALL
	object_event 11, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainAwakening, EVENT_REVERSAL_MOUNTAIN_AWAKENING
	object_event 41, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainDuskBall, EVENT_REVERSAL_MOUNTAIN_DUSK_BALL
	object_event 31, 41, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolgirlReversal, -1
	object_event 16, 25, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerHiker2Reversal, -1
	object_event  6, 16, SPRITE_LASS, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerPicnickerReversal, -1
	object_event  6, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCamperReversal, -1
	object_event 33, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltReversal, -1
	object_event 26, 24, SPRITE_LASS, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerLassReversal, -1
	object_event  4,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ReversalGruntScript, EVENT_REVERSAL_MOUNTAIN_GRUNT
	