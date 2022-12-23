	const_def 2 ; object constants
	const R22_NEIGHBOR
	const R22_FRUIT_TREE
	const R22_POTION
	const R22_YOUNGSTER
	const R22_LASS

R22_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R22Sign:
	jumptext R22SignText
	
R22ChasmSign:
	jumptext R22ChasmSignText
	
R22FruitTree:
	fruittree FRUITTREE_R_22
	
R22HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_22, HIDDENGROTTO_TIER_1
	
R22Potion:
	itemball POTION
	
R22YoungsterTextScript:
	jumptextfaceplayer R22YoungsterText
	
R22LassTextScript:
	faceplayer
	opentext
	writetext R22LassText
	waitbutton
	checkevent EVENT_R22_LASS_POTION
	iftrue .gotPotion
	writetext R22LassPotionText
	waitbutton
	verbosegiveitem POTION
	iffalse .gotPotion
	setevent EVENT_R22_LASS_POTION
.gotPotion
	closetext
	end
	
R22YoungsterText:
	text "This hill is high"
	line "up! You can jump"
	
	para "off these ledges"
	line "to get down"
	cont "quickly!"
	
	para "Try it, it's"
	line "fun!"
	done
	
R22LassText:
	text "There's a spooky"
	line "cave at the end"
	cont "of this path."
	
	para "Be careful if"
	line "you go in there!"
	done
	
R22LassPotionText:
	text "Here, take this."
	line "It should help"
	cont "you out!"
	done
	
R22SignText:
	text "ROUTE 22"
	done
	
R22ChasmSignText:
	text "GIANT CHASM"
	
	para "Beware of wild"
	line "#MON!"
	done

R22_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  6,  5, GIANT_CHASM_1F, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 31, 11, BGEVENT_READ, R22Sign
	bg_event  7,  7, BGEVENT_READ, R22ChasmSign
	bg_event 15,  3, BGEVENT_UP, R22HiddenGrotto
	bg_event 16,  3, BGEVENT_UP, R22HiddenGrotto

	db 5 ; object events
	object_event 39, 12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NeighborTextScript, -1
	object_event 11,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R22FruitTree, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R22Potion, EVENT_R_22_POTION
	object_event 16,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 3, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, R22YoungsterTextScript, -1
	object_event 23,  9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R22LassTextScript, -1
	