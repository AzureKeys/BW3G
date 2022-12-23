	const_def 2 ; object constants
	const FLOCCESYRANCH_FRUIT_TREE
	const FLOCCESYRANCH_X_ATTACK

FloccesyRanch_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
FloccesyRanchFruitTree:
	fruittree FRUITTREE_FLOCCESY_RANCH
	
FloccesyRanchXAttack:
	itemball X_ATTACK
	
FloccesyRanchSign:
	jumptext FloccesyRanchSignText
	
FloccesyRanchHiddenGrotto:
	hiddengrotto HIDDENGROTTO_FLOCCESY, HIDDENGROTTO_TIER_2
	
FloccesyRanchSignText:
	text "FLOCCESY RANCH"
	
	para "Try our MOOMOO"
	line "MILK today!"
	done

FloccesyRanch_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 15,  3, FLOCCESY_RANCH_HOUSE, 1
	warp_event 20,  3, FLOCCESY_RANCH_BARN, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 19, 19, BGEVENT_READ, FloccesyRanchSign
	bg_event  7,  5, BGEVENT_UP, FloccesyRanchHiddenGrotto
	bg_event  8,  5, BGEVENT_UP, FloccesyRanchHiddenGrotto

	db 2 ; object events
	object_event 13,  9, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FloccesyRanchFruitTree, -1
	object_event  4,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FloccesyRanchXAttack, EVENT_FLOCCESY_RANCH_X_ATTACK
	