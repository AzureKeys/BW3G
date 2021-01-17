	const_def 2 ; object constants
	const STRANGEHOUSE_SUPER_POTION
	const STRANGEHOUSE_TM_WILL_O_WISP

StrangeHouseB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
StrangeHouseSuperPotion:
	itemball SUPER_POTION
	
StrangeHouseTMWillOWisp:
	itemball TM_WILL_O_WISP
	
StrangeHouseEther:
	hiddenitem ETHER, EVENT_STRANGE_HOUSE_ETHER
	
StrangeHouseCarbos:
	hiddenitem CARBOS, EVENT_STRANGE_HOUSE_CARBOS
	
StrangeHouseB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 11, STRANGE_HOUSE_1F, 3
	warp_event 24, 11, STRANGE_HOUSE_1F, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  2, BGEVENT_ITEM, StrangeHouseEther
	bg_event 11, 11, BGEVENT_ITEM, StrangeHouseCarbos

	db 2 ; object events
	object_event  4,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StrangeHouseSuperPotion, EVENT_STRANGE_HOUSE_SUPER_POTION
	object_event 17, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, StrangeHouseTMWillOWisp, EVENT_STRANGE_HOUSE_TM_WILL_O_WISP
	