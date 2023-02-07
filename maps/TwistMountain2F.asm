	const_def 2 ; object constants
	const TWISTMOUNTAIN2F_BIG_PEARL
	const TWISTMOUNTAIN2F_RARE_CANDY
	const TWISTMOUNTAIN2F_PP_UP
	const TWISTMOUNTAIN2F_WORKER
	const TWISTMOUNTAIN2F_HIKER
	const TWISTMOUNTAIN2F_VETERANF

TwistMountain2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerWorkerTwistMountain2F:
	trainer WORKER, WORKER_TWIST_MOUNTAIN_4, EVENT_BEAT_WORKER_TWIST_MOUNTAIN_4, WorkerTwistMountain2FSeenText, WorkerTwistMountain2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WorkerTwistMountain2FAfterText
	waitbutton
	closetext
	end

TrainerHikerTwistMountain2F:
	trainer HIKER, HIKER_TWIST_MOUNTAIN_1, EVENT_BEAT_HIKER_TWIST_MOUNTAIN_1, HikerTwistMountain2FSeenText, HikerTwistMountain2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTwistMountain2FAfterText
	waitbutton
	closetext
	end

TrainerVeteranFTwistMountain2F:
	trainer VETERANF, VETERANF_TWIST_MOUNTAIN_2, EVENT_BEAT_VETERANF_TWIST_MOUNTAIN_2, VeteranFTwistMountain2FSeenText, VeteranFTwistMountain2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFTwistMountain2FAfterText
	waitbutton
	closetext
	end
	
TwistMountain2FBigPearl:
	itemball BIG_PEARL
	
TwistMountain2FRareCandy:
	itemball RARE_CANDY
	
TwistMountain2FPPUp:
	itemball PP_UP
	
TwistMountain2FMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_TWIST_MOUNTAIN_MAX_REVIVE
	
TwistMountain2FMaxPotion:
	hiddenitem MAX_POTION, EVENT_TWIST_MOUNTAIN_MAX_POTION
	
TwistMountain2FCarbos:
	hiddenitem CARBOS, EVENT_TWIST_MOUNTAIN_CARBOS
	
WorkerTwistMountain2FSeenText:
	text ""
	done

WorkerTwistMountain2FBeatenText:
	text ""
	done

WorkerTwistMountain2FAfterText:
	text ""
	done
	
HikerTwistMountain2FSeenText:
	text ""
	done

HikerTwistMountain2FBeatenText:
	text ""
	done

HikerTwistMountain2FAfterText:
	text ""
	done
	
VeteranFTwistMountain2FSeenText:
	text ""
	done

VeteranFTwistMountain2FBeatenText:
	text ""
	done

VeteranFTwistMountain2FAfterText:
	text ""
	done

TwistMountain2F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event 37,  1, TWIST_MOUNTAIN_1F, 2
	warp_event  5,  1, TWIST_MOUNTAIN_1F, 3
	warp_event 17,  3, TWIST_MOUNTAIN_3F, 1
	warp_event 31, 19, TWIST_MOUNTAIN_3F, 2
	warp_event  5, 13, TWIST_MOUNTAIN_OUTSIDE, 5
	warp_event 13, 13, TWIST_MOUNTAIN_OUTSIDE, 6
	warp_event 37, 13, TWIST_MOUNTAIN_OUTSIDE, 7
	warp_event 15, 21, TWIST_MOUNTAIN_OUTSIDE, 8
	warp_event 17, 29, TWIST_MOUNTAIN_OUTSIDE, 9
	warp_event 25, 25, TWIST_MOUNTAIN_OUTSIDE, 10
	warp_event 31,  1, TWIST_MOUNTAIN_GENESECT_ROOM, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 19, 25, BGEVENT_ITEM, TwistMountain2FMaxRevive
	bg_event 19, 25, BGEVENT_ITEM, TwistMountain2FMaxPotion
	bg_event 19, 25, BGEVENT_ITEM, TwistMountain2FCarbos

	db 6 ; object events
	object_event 35,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain2FBigPearl, EVENT_TWIST_MOUNTAIN_BIG_PEARL_1
	object_event 35,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain2FRareCandy, EVENT_TWIST_MOUNTAIN_RARE_CANDY
	object_event 35,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain2FPPUp, EVENT_TWIST_MOUNTAIN_PP_UP
	object_event 19, 16, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerWorkerTwistMountain2F, -1
	object_event 19, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerHikerTwistMountain2F, -1
	object_event 19, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranFTwistMountain2F, -1
	