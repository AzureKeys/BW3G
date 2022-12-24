	const_def 2 ; object constants
	const PINWHEELFOREST_SILVER_POWDER
	const PINWHEELFOREST_FULL_HEAL
	const PINWHEELFOREST_BIG_ROOT
	const PINWHEELFOREST_CARBOS
	const PINWHEELFOREST_NET_BALL
	const PINWHEELFOREST_SHELL_STONE
	const PINWHEELFOREST_PKMN_RANGERM_1
	const PINWHEELFOREST_PKMN_RANGERM_2
	const PINWHEELFOREST_PKMN_RANGERF_1
	const PINWHEELFOREST_PKMN_RANGERF_2
	const PINWHEELFOREST_YOUNGSTER
	const PINWHEELFOREST_PSYCHICM
	const PINWHEELFOREST_HEX_MANIAC
	const PINWHEELFOREST_LASS
	const PINWHEELFOREST_OFFICER_1
	const PINWHEELFOREST_OFFICER_2
	const PINWHEELFOREST_INFER

PinwheelForest_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
PinwheelInferScript1:
	checkevent EVENT_BEAT_INFER_4
	iftrue .done
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement PINWHEELFOREST_INFER, PinwheelInferArriveMovement1
	jump PinwheelInferScript
.done
	end
	
PinwheelInferScript2:
	checkevent EVENT_BEAT_INFER_4
	iftrue .done
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement PINWHEELFOREST_INFER, PinwheelInferArriveMovement2
	jump PinwheelInferScript
.done
	end
	
PinwheelInferScript:
	opentext
	writetext PinwheelInferIntroText
	waitbutton
	closetext
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftrue .Snivy
	winlosstext PinwheelInferWinText, 0
	setlasttalked PINWHEELFOREST_INFER
	loadtrainer INFER, INFER4_OSHAWOTT
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .After
	
.Oshawott:
	winlosstext PinwheelInferWinText, 0
	setlasttalked PINWHEELFOREST_INFER
	loadtrainer INFER, INFER4_SNIVY
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .After
	
.Snivy:
	winlosstext PinwheelInferWinText, 0
	setlasttalked PINWHEELFOREST_INFER
	loadtrainer INFER, INFER4_TEPIG
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	
.After:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext PinwheelInferAfterText
	waitbutton
	closetext
	applymovement PINWHEELFOREST_INFER, PinwheelInferLeaveMovement
	disappear PINWHEELFOREST_INFER
	special FadeOutMusic
	pause 30
	playmapmusic
	setevent EVENT_BEAT_INFER_4
	end
	
PinwheelOfficer1Script:
	faceplayer
	opentext
	writetext PinwheelOfficerText
	waitbutton
	closetext
	turnobject PINWHEELFOREST_OFFICER_1, RIGHT
	end
	
PinwheelOfficer1WalkScript:
	turnobject PLAYER, LEFT
	opentext
	writetext PinwheelOfficerText
	waitbutton
	closetext
	applymovement PLAYER, PinwheelStepUpMovement
	end
	
PinwheelOfficer2Script:
	faceplayer
	opentext
	writetext PinwheelOfficerText
	waitbutton
	closetext
	turnobject PINWHEELFOREST_OFFICER_2, LEFT
	end
	
PinwheelOfficer2WalkScript:
	turnobject PLAYER, RIGHT
	opentext
	writetext PinwheelOfficerText
	waitbutton
	closetext
	applymovement PLAYER, PinwheelStepDownMovement
	end

TrainerPkmnRangerMPinwheel1:
	trainer PKMN_RANGERM, PKMN_RANGERM_PINWHEEL_1, EVENT_BEAT_PKMN_RANGERM_PINWHEEL_1, PkmnRangerMPinwheel1SeenText, PkmnRangerMPinwheel1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMPinwheel1AfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerMPinwheel2:
	trainer PKMN_RANGERM, PKMN_RANGERM_PINWHEEL_2, EVENT_BEAT_PKMN_RANGERM_PINWHEEL_2, PkmnRangerMPinwheel2SeenText, PkmnRangerMPinwheel2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMPinwheel2AfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerFPinwheel1:
	trainer PKMN_RANGERF, PKMN_RANGERF_PINWHEEL_1, EVENT_BEAT_PKMN_RANGERF_PINWHEEL_1, PkmnRangerFPinwheel1SeenText, PkmnRangerFPinwheel1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFPinwheel1AfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerFPinwheel2:
	trainer PKMN_RANGERF, PKMN_RANGERF_PINWHEEL_2, EVENT_BEAT_PKMN_RANGERF_PINWHEEL_2, PkmnRangerFPinwheel2SeenText, PkmnRangerFPinwheel2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFPinwheel2AfterText
	waitbutton
	closetext
	end

TrainerYoungsterPinwheel:
	trainer YOUNGSTER, YOUNGSTER_PINWHEEL, EVENT_BEAT_YOUNGSTER_PINWHEEL, YoungsterPinwheelSeenText, YoungsterPinwheelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterPinwheelAfterText
	waitbutton
	closetext
	end

TrainerPsychicMPinwheel:
	trainer PSYCHICM_T, PSYCHICM_PINWHEEL, EVENT_BEAT_PSYCHICM_PINWHEEL, PsychicMPinwheelSeenText, PsychicMPinwheelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMPinwheelAfterText
	waitbutton
	closetext
	end

TrainerHexManiacPinwheel:
	trainer HEX_MANIAC, HEX_MANIAC_PINWHEEL, EVENT_BEAT_HEX_MANIAC_PINWHEEL, HexManiacPinwheelSeenText, HexManiacPinwheelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacPinwheelAfterText
	waitbutton
	closetext
	end

TrainerLassPinwheel:
	trainer LASS_D, LASS_PINWHEEL, EVENT_BEAT_LASS_PINWHEEL, LassPinwheelSeenText, LassPinwheelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassPinwheelAfterText
	waitbutton
	closetext
	end
	
PinwheelForestHiddenGrotto:
	hiddengrotto HIDDENGROTTO_PINWHEEL, HIDDENGROTTO_TIER_2
	
PinwheelForestSilverPowder:
	itemball SILVERPOWDER
	
PinwheelForestFullHeal:
	itemball FULL_HEAL
	
PinwheelForestBigRoot:
	itemball BIG_ROOT
	
PinwheelForestCarbos:
	itemball CARBOS
	
PinwheelForestNetBall:
	itemball NET_BALL
	
PinwheelForestShellStone:
	itemball SHELL_STONE
	
PinwheelForestUltraBall:
	hiddenitem ULTRA_BALL, EVENT_PINWHEEL_FOREST_ULTRA_BALL
	
PinwheelForestHyperPotion:
	hiddenitem HYPER_POTION, EVENT_PINWHEEL_FOREST_HYPER_POTION
	
PinwheelForestNugget:
	hiddenitem NUGGET, EVENT_PINWHEEL_FOREST_NUGGET
	
PinwheelForestGreenShard:
	hiddenitem GREEN_SHARD, EVENT_PINWHEEL_FOREST_GREEN_SHARD
	
PinwheelInferArriveMovement1:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
PinwheelInferArriveMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
PinwheelInferLeaveMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end
	
PinwheelStepUpMovement:
	step UP
	step_end
	
PinwheelStepDownMovement:
	step DOWN
	step_end
	
PinwheelInferIntroText:
	text "INFER: You again?"
	
	para "I don't have time"
	line "to deal with you"
	cont "right now."
	
	para "What? A robbery?"
	line "What, you think I"
	cont "have something to"
	cont "do with it?"
	
	para "Tch! The nerve!"
	line "I'll beat you down"
	cont "right here!"
	
	para "Come on!"
	done
	
PinwheelInferWinText:
	text "H-how can this be?"
	done
	
PinwheelInferAfterText:
	text "I-I don't under-"
	line "stand. How can I"
	cont "keep losing?"
	
	para "I promise you,"
	line "I'm going to keep"
	
	para "getting stronger,"
	line "and beat you!"
	
	para "Don't follow me!"
	done
	
PinwheelOfficerText:
	text "There's been a"
	line "robbery in NACRENE"
	cont "CITY."
	
	para "We're not letting"
	line "anyone through"
	cont "right now."
	done
	
PkmnRangerMPinwheel1SeenText:
	text "Onward, my bug"
	line "#MON swarm!"
	done

PkmnRangerMPinwheel1BeatenText:
	text "Pretty cool, huh?"
	line "My bug-type #-"
	cont "MON are the best!"
	done

PkmnRangerMPinwheel1AfterText:
	text "It's not like I'm"
	line "collecting them,"

	para "but when I'm with"
	line "lots of bug-type"

	para "#MON, my lust"
	line "for adventure is"
	cont "fulfilled!"
	done
	
PkmnRangerMPinwheel2SeenText:
	text "I came to explore"
	line "PINWHEEL FOREST."
	done

PkmnRangerMPinwheel2BeatenText:
	text "Whoa! Danger, man."
	done

PkmnRangerMPinwheel2AfterText:
	text "My #MON was"
	line "hurt before even"

	para "entering PINWHEEL"
	line "FOREST."

	para "I'd better take"
	line "them to a #MON"
	cont "CENTER right away."
	done
	
YoungsterPinwheelSeenText:
	text "People shouldn't"
	line "leave any litter"
	cont "behind."
	done

YoungsterPinwheelBeatenText:
	text "Ohh… I lost…"
	done

YoungsterPinwheelAfterText:
	text "Conserving energy"
	line "is important, but"

	para "the environment is"
	line "even more vital."
	done
	
PkmnRangerFPinwheel1SeenText:
	text "My bug #MON are"
	line "tough. Prepare to"
	cont "lose!"
	done

PkmnRangerFPinwheel1BeatenText:
	text "I was whipped…"
	done

PkmnRangerFPinwheel1AfterText:
	text "I'm going to look"
	line "for stronger bug"
	cont "#MON."
	done
	
PkmnRangerFPinwheel2SeenText:
	text "Hey, you!"
	line "Don't litter!"
	done

PkmnRangerFPinwheel2BeatenText:
	text "I was just point-"
	line "ing out…"
	done

PkmnRangerFPinwheel2AfterText:
	text "Sorry. You weren't"
	line "littering. It was"
	cont "my mistake."
	done
	
PsychicMPinwheelSeenText:
	text "Hm… You've got"
	line "many GYM BADGES."
	done

PsychicMPinwheelBeatenText:
	text "Just as I thought…"
	line "You're tough!"
	done

PsychicMPinwheelAfterText:
	text "GYM BADGES give"
	line "you advantages in"
	cont "battles."
	done
	
HexManiacPinwheelSeenText:
	text "You… Who are you?"
	
	para "There is another"
	line "person here aside"
	cont "from me?"
	done

HexManiacPinwheelBeatenText:
	text "So, you are a"
	line "normal person… A"
	
	para "normal #MON"
	line "trainer…"
	done

HexManiacPinwheelAfterText:
	text "So many feelings"
	line "fill this forest,"

	para "giving rise to a"
	line "mysterious energy."
	done
	
LassPinwheelSeenText:
	text "If trainers meet,"
	line "the first thing to"
	cont "do is battle."
	done

LassPinwheelBeatenText:
	text "Awww… I've got a"
	line "losing record…"
	done

LassPinwheelAfterText:
	text "For trainers, it's"
	line "a given that we'll"

	para "battle whenever we"
	line "meet."
	done

PinwheelForest_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 37,  5, PINWHEEL_BRIDGE_GATE, 1
	warp_event 43, 35, NACRENE_OUTSKIRT, 1
	warp_event 43, 36, NACRENE_OUTSKIRT, 2

	db 8 ; coord events
	coord_event 37, 20, SCENE_DEFAULT, PinwheelOfficer1WalkScript
	coord_event 38, 20, SCENE_DEFAULT, PinwheelOfficer1WalkScript
	coord_event 39, 20, SCENE_DEFAULT, PinwheelOfficer1WalkScript
	coord_event 36, 25, SCENE_DEFAULT, PinwheelOfficer2WalkScript
	coord_event 37, 25, SCENE_DEFAULT, PinwheelOfficer2WalkScript
	coord_event 38, 25, SCENE_DEFAULT, PinwheelOfficer2WalkScript
	coord_event  8, 26, SCENE_DEFAULT, PinwheelInferScript1
	coord_event  8, 27, SCENE_DEFAULT, PinwheelInferScript2

	db 6 ; bg events
	bg_event 25, 37, BGEVENT_ITEM, PinwheelForestUltraBall
	bg_event 14, 19, BGEVENT_ITEM, PinwheelForestHyperPotion
	bg_event 27, 41, BGEVENT_ITEM, PinwheelForestNugget
	bg_event  6, 16, BGEVENT_ITEM, PinwheelForestGreenShard
	bg_event 17, 25, BGEVENT_UP, PinwheelForestHiddenGrotto
	bg_event 18, 25, BGEVENT_UP, PinwheelForestHiddenGrotto

	db 17 ; object events
	object_event 22, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PinwheelForestSilverPowder, EVENT_PINWHEEL_FOREST_SILVER_POWDER
	object_event 15,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PinwheelForestFullHeal, EVENT_PINWHEEL_FOREST_FULL_HEAL
	object_event 20, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PinwheelForestBigRoot, EVENT_PINWHEEL_FOREST_BIG_ROOT
	object_event 16, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PinwheelForestCarbos, EVENT_PINWHEEL_FOREST_CARBOS
	object_event 14, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PinwheelForestNetBall, EVENT_PINWHEEL_FOREST_NET_BALL
	object_event 23, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PinwheelForestShellStone, EVENT_PINWHEEL_FOREST_SHELL_STONE
	object_event 30, 10, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerPkmnRangerMPinwheel1, -1
	object_event  1, 19, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerPkmnRangerMPinwheel2, -1
	object_event 17,  9, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPkmnRangerFPinwheel1, -1
	object_event 19, 28, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerFPinwheel2, -1
	object_event 30, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungsterPinwheel, -1
	object_event 16, 32, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicMPinwheel, -1
	object_event 27, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerHexManiacPinwheel, -1
	object_event 12, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerLassPinwheel, -1
	object_event 36, 20, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, PinwheelOfficer1Script, EVENT_PINWHEEL_FOREST_OFFICER
	object_event 39, 25, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PinwheelOfficer2Script, EVENT_PINWHEEL_FOREST_OFFICER
	object_event 14, 27, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_PINWHEEL_FOREST_INFER
	