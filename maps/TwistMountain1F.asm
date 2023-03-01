	const_def 2 ; object constants
	const TWISTMOUNTAIN1F_RED_SHARD
	const TWISTMOUNTAIN1F_NUGGET
	const TWISTMOUNTAIN1F_WORKER
	const TWISTMOUNTAIN1F_VETERANM

TwistMountain1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerWorkerTwistMountain1F:
	trainer WORKER, WORKER_TWIST_MOUNTAIN_5, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_5, WorkerTwistMountain1FSeenText, WorkerTwistMountain1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WorkerTwistMountain1FAfterText
	waitbutton
	closetext
	end

TrainerVeteranMTwistMountain1F:
	trainer VETERANM, VETERANM_TWIST_MOUNTAIN_2, EVENT_BEAT_VETERANM_TWIST_MOUNTAIN_2, VeteranMTwistMountain1FSeenText, VeteranMTwistMountain1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranMTwistMountain1FAfterText
	waitbutton
	closetext
	end
	
TwistMountain1FRedShard:
	itemball RED_SHARD
	
TwistMountain1FNugget:
	itemball NUGGET
	
TwistMountain1FBigPearl:
	hiddenitem BIG_PEARL, EVENT_TWIST_MOUNTAIN_BIG_PEARL_2
	
WorkerTwistMountain1FSeenText:
	text "Check out the"
	line "combination of my"
	
	para "cool #MON and"
	line "my hot fighting"
	cont "spirit!"
	done

WorkerTwistMountain1FBeatenText:
	text "It looks like you"
	line "also have a hot-"
	cont "and-cool"
	cont "combination!"
	done

WorkerTwistMountain1FAfterText:
	text "TWIST MOUNTAIN is"
	line "cold all year"
	
	para "round! It's a great"
	line "place for ice type"
	
	para "#MON that are"
	line "happy in the"
	cont "depths of winter!"
	done
	
VeteranMTwistMountain1FSeenText:
	text "I come here every"
	line "year to train. The"
	
	para "cold, harsh envi-"
	line "ronment really"
	
	para "brings out a #-"
	line "MON's strength!"
	done

VeteranMTwistMountain1FBeatenText:
	text "How harsh…"
	done

VeteranMTwistMountain1FAfterText:
	text "Perhaps I should"
	line "think about"
	
	para "changing the envi-"
	line "ronment where we"
	cont "train…"
	done

TwistMountain1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 29, 11, ICIRRUS_CITY_SOUTH, 3
	warp_event 17,  3, TWIST_MOUNTAIN_2F, 1
	warp_event 13, 21, TWIST_MOUNTAIN_2F, 2
	warp_event 23, 17, TWIST_MOUNTAIN_OUTSIDE, 1
	warp_event 21, 25, TWIST_MOUNTAIN_OUTSIDE, 2
	warp_event  3, 31, TWIST_MOUNTAIN_OUTSIDE, 3
	warp_event  3,  7, TWIST_MOUNTAIN_OUTSIDE, 4
	warp_event  9,  3, TWIST_MOUNTAIN_B1F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 18, 10, BGEVENT_ITEM, TwistMountain1FBigPearl

	db 4 ; object events
	object_event  2, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain1FRedShard, EVENT_TWIST_MOUNTAIN_RED_SHARD
	object_event 28, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain1FNugget, EVENT_TWIST_MOUNTAIN_NUGGET
	object_event  9, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerWorkerTwistMountain1F, -1
	object_event 23, 24, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerVeteranMTwistMountain1F, -1
	