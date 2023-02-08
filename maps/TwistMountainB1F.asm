	const_def 2 ; object constants
	const TWISTMOUNTAINB1F_BLUE_SHARD
	const TWISTMOUNTAINB1F_REVIVE
	const TWISTMOUNTAINB1F_LUCKY_EGG

TwistMountainB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TwistMountainB1FBlueShard:
	itemball BLUE_SHARD
	
TwistMountainB1FRevive:
	itemball REVIVE
	
TwistMountainB1FLuckyEgg:
	itemball LUCKY_EGG
	
TwistMountainB1FElixer:
	hiddenitem ELIXER, EVENT_TWIST_MOUNTAIN_ELIXER

TwistMountainB1F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  3, 15, TWIST_MOUNTAIN_1F, 8

	db 0 ; coord events

	db 1 ; bg events
	bg_event 15, 14, BGEVENT_ITEM, TwistMountainB1FElixer

	db 3 ; object events
	object_event 18, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainB1FBlueShard, EVENT_TWIST_MOUNTAIN_BLUE_SHARD
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainB1FRevive, EVENT_TWIST_MOUNTAIN_REVIVE
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TwistMountainB1FLuckyEgg, EVENT_TWIST_MOUNTAIN_LUCKY_EGG
	