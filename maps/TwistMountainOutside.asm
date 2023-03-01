	const_def 2 ; object constants
	const TWISTMOUNTAINOUTSIDE_ULTRA_BALL
	const TWISTMOUNTAINOUTSIDE_GREEN_SHARD
	const TWISTMOUNTAINOUTSIDE_YELLOW_SHARD
	const TWISTMOUNTAINOUTSIDE_ETHER
	const TWISTMOUNTAINOUTSIDE_FULL_RESTORE
	const TWISTMOUNTAINOUTSIDE_ROCKY_HELMET
	const TWISTMOUNTAINOUTSIDE_NURSE
	const TWISTMOUNTAINOUTSIDE_WORKER
	const TWISTMOUNTAINOUTSIDE_HIKER
	const TWISTMOUNTAINOUTSIDE_VETERANM

TwistMountainOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerNurseTwistMountainOutside:
	trainer NURSE, NURSE_TWIST_MOUNTAIN, EVENT_BEAT_NURSE_TWIST_MOUNTAIN, NurseTwistMountainOutsideIntroText, NurseTwistMountainOutsideWinText, 0, .Script

.Script:
	faceplayer
	opentext
	writetext NurseTwistMountainOutsideHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerHikerTwistMountainOutside:
	trainer HIKER_D, HIKER_TWIST_MOUNTAIN_2, EVENT_BEAT_HIKER_TWIST_MOUNTAIN_2, HikerTwistMountainOutsideSeenText, HikerTwistMountainOutsideBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTwistMountainOutsideAfterText
	waitbutton
	closetext
	end

TrainerWorkerTwistMountainOutside:
	trainer WORKER, WORKER_TWIST_MOUNTAIN_1, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_1, WorkerTwistMountainOutsideSeenText, WorkerTwistMountainOutsideBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WorkerTwistMountainOutsideAfterText
	waitbutton
	closetext
	end

TrainerVeteranMTwistMountainOutside:
	trainer VETERANM, VETERANM_TWIST_MOUNTAIN_1, EVENT_BEAT_VETERANM_TWIST_MOUNTAIN_1, VeteranMTwistMountainOutsideSeenText, VeteranMTwistMountainOutsideBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranMTwistMountainOutsideAfterText
	waitbutton
	closetext
	end
	
TwistMountainOutsideUltraBall:
	itemball ULTRA_BALL
	
TwistMountainOutsideGreenShard:
	itemball GREEN_SHARD
	
TwistMountainOutsideYellowShard:
	itemball YELLOW_SHARD
	
TwistMountainOutsideEther:
	itemball ETHER
	
TwistMountainOutsideFullRestore1:
	itemball FULL_RESTORE
	
TwistMountainOutsideRockyHelmet:
	itemball ROCKY_HELMET
	
TwistMountainOutsideFullRestore2:
	hiddenitem FULL_RESTORE, EVENT_TWIST_MOUNTAIN_FULL_RESTORE_2
	
NurseTwistMountainOutsideIntroText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
NurseTwistMountainOutsideWinText:
	text "Ah, I see."
	done
	
NurseTwistMountainOutsideHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
HikerTwistMountainOutsideSeenText:
	text "Why do I dig? Why"
	line "do you fight?"
	done

HikerTwistMountainOutsideBeatenText:
	text "Your past"
	line "experience…"
	
	para "Is that the source"
	line "of your strength?"
	done

HikerTwistMountainOutsideAfterText:
	text "The more you"
	line "fight, the"
	
	para "stronger you'll"
	line "be. The more you"
	
	para "dig, the bigger"
	line "the hole will be…"
	
	para "If you have a"
	line "purpose, there's"
	cont "no wasted effort!"
	done
	
WorkerTwistMountainOutsideSeenText:
	text "I've found a"
	line "strong looking"
	
	para "trainer during my"
	line "patrol! Go, my"
	cont "#MON!"
	done

WorkerTwistMountainOutsideBeatenText:
	text "It's just as I"
	line "thought! A"
	
	para "monstrously strong"
	line "trainer!"
	done

WorkerTwistMountainOutsideAfterText:
	text "Like my #MON, I"
	line "always want to"
	
	para "take the same"
	line "route. I wonder"
	cont "why that is?"
	done
	
VeteranMTwistMountainOutsideSeenText:
	text "OK! I will show"
	line "you the results of"
	cont "my daily workouts!"
	done

VeteranMTwistMountainOutsideBeatenText:
	text "Was my training"
	line "too unbalanced?"
	done

VeteranMTwistMountainOutsideAfterText:
	text "I'm going to train"
	line "my #MON"
	
	para "properly and make"
	line "sure they grow"
	cont "balanced."
	
	para "Bwahaha! It's the"
	line "challenges that"
	
	para "make life worth"
	line "living, whatever"
	cont "your age!"
	done

TwistMountainOutside_MapEvents:
	db 0, 0 ; filler

	db 17 ; warp events
	warp_event 29, 13, TWIST_MOUNTAIN_1F, 4
	warp_event 31, 23, TWIST_MOUNTAIN_1F, 5
	warp_event 17, 13, TWIST_MOUNTAIN_1F, 6
	warp_event 19, 23, TWIST_MOUNTAIN_1F, 7
	warp_event 15,  7, TWIST_MOUNTAIN_2F, 5
	warp_event 25,  9, TWIST_MOUNTAIN_2F, 6
	warp_event 31,  7, TWIST_MOUNTAIN_2F, 7
	warp_event  6, 13, TWIST_MOUNTAIN_2F, 8
	warp_event 10, 23, TWIST_MOUNTAIN_2F, 9
	warp_event 31, 27, TWIST_MOUNTAIN_2F, 10
	warp_event 29,  1, TWIST_MOUNTAIN_3F, 3
	warp_event 37,  7, TWIST_MOUNTAIN_3F, 4
	warp_event 25, 35, TWIST_MOUNTAIN_3F, 5
	warp_event 37, 33, TWIST_MOUNTAIN_3F, 6
	warp_event 43, 19, TWIST_MOUNTAIN_3F, 7
	warp_event  6, 27, TWIST_MOUNTAIN_ENTRANCE, 3
	warp_event 14, 19, TWIST_MOUNTAIN_HOUSE, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 12, 20, BGEVENT_ITEM, TwistMountainOutsideFullRestore2

	db 10 ; object events
	object_event 30, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainOutsideUltraBall, EVENT_TWIST_MOUNTAIN_ULTRA_BALL
	object_event  9, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainOutsideGreenShard, EVENT_TWIST_MOUNTAIN_GREEN_SHARD
	object_event 19, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainOutsideYellowShard, EVENT_TWIST_MOUNTAIN_YELLOW_SHARD
	object_event 30,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainOutsideEther, EVENT_TWIST_MOUNTAIN_ETHER
	object_event 36, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainOutsideFullRestore1, EVENT_TWIST_MOUNTAIN_FULL_RESTORE_1
	object_event 40, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainOutsideRockyHelmet, EVENT_TWIST_MOUNTAIN_ROCKY_HELMET
	object_event 34, 24, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerNurseTwistMountainOutside, -1
	object_event  9, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerWorkerTwistMountainOutside, -1
	object_event 41, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerHikerTwistMountainOutside, -1
	object_event 38, 29, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerVeteranMTwistMountainOutside, -1
	