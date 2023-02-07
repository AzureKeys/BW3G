	const_def 2 ; object constants
	const TWISTMOUNTAIN3F_MOON_STONE
	const TWISTMOUNTAIN3F_WORKER_1
	const TWISTMOUNTAIN3F_WORKER_2
	const TWISTMOUNTAIN3F_VETERAN_F

TwistMountain3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerWorker1TwistMountain3F:
	trainer WORKER, WORKER_TWIST_MOUNTAIN_2, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_2, Worker1TwistMountain3FSeenText, Worker1TwistMountain3FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Worker1TwistMountain3FAfterText
	waitbutton
	closetext
	end

TrainerWorker2TwistMountain3F:
	trainer WORKER, WORKER_TWIST_MOUNTAIN_3, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_3, Worker2TwistMountain3FSeenText, Worker2TwistMountain3FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Worker2TwistMountain3FAfterText
	waitbutton
	closetext
	end

TrainerVeteranFTwistMountain3F:
	trainer VETERANF, VETERANF_TWIST_MOUNTAIN_1, EVENT_BEAT_VETERANF_TWIST_MOUNTAIN_1, VeteranFTwistMountain3FSeenText, VeteranFTwistMountain3FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFTwistMountain3FAfterText
	waitbutton
	closetext
	end
	
TwistMountain3FMoonStone:
	itemball MOON_STONE
	
TwistMountain3FCalcium:
	hiddenitem CALCIUM, EVENT_TWIST_MOUNTAIN_CALCIUM
	
Worker1TwistMountain3FSeenText:
	text ""
	done

Worker1TwistMountain3FBeatenText:
	text ""
	done

Worker1TwistMountain3FAfterText:
	text ""
	done
	
Worker2TwistMountain3FSeenText:
	text ""
	done

Worker2TwistMountain3FBeatenText:
	text ""
	done

Worker2TwistMountain3FAfterText:
	text ""
	done
	
VeteranFTwistMountain3FSeenText:
	text ""
	done

VeteranFTwistMountain3FBeatenText:
	text ""
	done

VeteranFTwistMountain3FAfterText:
	text ""
	done

TwistMountain3F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  3,  2, TWIST_MOUNTAIN_2F, 3
	warp_event 27,  9, TWIST_MOUNTAIN_2F, 4
	warp_event 11,  7, TWIST_MOUNTAIN_OUTSIDE, 11
	warp_event 19,  3, TWIST_MOUNTAIN_OUTSIDE, 12
	warp_event  5, 19, TWIST_MOUNTAIN_OUTSIDE, 13
	warp_event 13, 17, TWIST_MOUNTAIN_OUTSIDE, 14
	warp_event 17, 11, TWIST_MOUNTAIN_OUTSIDE, 15

	db 0 ; coord events

	db 1 ; bg events
	bg_event 19, 25, BGEVENT_ITEM, TwistMountain3FCalcium

	db 4 ; object events
	object_event 35,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain3FMoonStone, EVENT_TWIST_MOUNTAIN_MOON_STONE
	object_event 28,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerWorker1TwistMountain3F, -1
	object_event  9, 23, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerWorker2TwistMountain3F, -1
	object_event 19, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranFTwistMountain3F, -1
	