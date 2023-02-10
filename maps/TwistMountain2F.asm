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
	text "Hold up there,"
	line "youngster!"
	
	para "A battle will help"
	line "you warm up!"
	done

WorkerTwistMountain2FBeatenText:
	text "Ha! Battling gets"
	line "me so warm, I've"
	cont "started sweating!"
	done

WorkerTwistMountain2FAfterText:
	text "You can feel my"
	line "face if you don't"
	
	para "believe me. See?"
	line "Dripping with"
	cont "sweat!"
	done
	
HikerTwistMountain2FSeenText:
	text "When I'm surrounded"
	line "by rocks, my"
	cont "spirit goes up!"
	done

HikerTwistMountain2FBeatenText:
	text "When I lose, my"
	line "spirits sink…"
	done

HikerTwistMountain2FAfterText:
	text "My spirits rise"
	line "and fall. I'm just"
	cont "charmingly"
	cont "unpredictable!"
	done
	
VeteranFTwistMountain2FSeenText:
	text "In battles, it's"
	line "also important to"
	
	para "know what moves"
	line "not to make."
	done

VeteranFTwistMountain2FBeatenText:
	text "I've been training"
	line "for years now, but"
	
	para "it's still not"
	line "enough…"
	done

VeteranFTwistMountain2FAfterText:
	text "I used to train"
	line "under GRIMSLEY."
	
	para "I'm sure he would"
	line "have known what"
	
	para "the right move"
	line "would have been."
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
	bg_event 28, 31, BGEVENT_ITEM, TwistMountain2FMaxRevive
	bg_event  9, 24, BGEVENT_ITEM, TwistMountain2FMaxPotion
	bg_event  2, 11, BGEVENT_ITEM, TwistMountain2FCarbos

	db 6 ; object events
	object_event  2, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain2FBigPearl, EVENT_TWIST_MOUNTAIN_BIG_PEARL_1
	object_event 19, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain2FRareCandy, EVENT_TWIST_MOUNTAIN_RARE_CANDY
	object_event  2, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountain2FPPUp, EVENT_TWIST_MOUNTAIN_PP_UP
	object_event 29, 26, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerWorkerTwistMountain2F, -1
	object_event  4,  9, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerHikerTwistMountain2F, -1
	object_event  5, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerVeteranFTwistMountain2F, -1
	