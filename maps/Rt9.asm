	const_def 2 ; object constants
	const R9_HP_UP
	const R9_FULL_RESTORE
	const R9_ELIXER
	const R9_IRON

Rt9_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBiker1R9:
	trainer BIKER, BIKER_R9_1, EVENT_BEAT_BIKER_R9_1, Biker1R9SeenText, Biker1R9BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Biker1R9AfterText
	waitbutton
	closetext
	end

TrainerBiker2R9:
	trainer BIKER, BIKER_R9_2, EVENT_BEAT_BIKER_R9_2, Biker2R9SeenText, Biker2R9BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Biker2R9AfterText
	waitbutton
	closetext
	end

TrainerBiker3R9:
	trainer BIKER, BIKER_R9_3, EVENT_BEAT_BIKER_R9_3, Biker3R9SeenText, Biker3R9BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Biker3R9AfterText
	waitbutton
	closetext
	end

TrainerBiker4R9:
	trainer BIKER, BIKER_R9_4, EVENT_BEAT_BIKER_R9_4, Biker4R9SeenText, Biker4R9BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Biker4R9AfterText
	waitbutton
	closetext
	end
	
R9HPUp:
	itemball HP_UP
	
R9FullRestore:
	itemball FULL_RESTORE
	
R9Elixer:
	itemball ELIXER
	
R9Iron:
	itemball IRON
	
R9MaxEther:
	hiddenitem MAX_ETHER, EVENT_R9_MAX_ETHER
	
R9Nugget:
	hiddenitem NUGGET, EVENT_R9_NUGGET
	
R9Sign:
	jumptext R9SignText
	
R9MallSign:
	jumptext R9MallSignText
	
R9TubelineSign:
	jumptext R9TubelineSignText
	
Biker1R9SeenText:
	text "..."
	done

Biker1R9BeatenText:
	text "..."
	done

Biker1R9AfterText:
	text "..."
	done
	
Biker2R9SeenText:
	text "..."
	done

Biker2R9BeatenText:
	text "..."
	done

Biker2R9AfterText:
	text "..."
	done
	
Biker3R9SeenText:
	text "..."
	done

Biker3R9BeatenText:
	text "..."
	done

Biker3R9AfterText:
	text "..."
	done
	
Biker4R9SeenText:
	text "..."
	done

Biker4R9BeatenText:
	text "..."
	done

Biker4R9AfterText:
	text "..."
	done
	
R9SignText:
	text "ROUTE 9"
	done
	
R9MallSignText:
	text "SHOPPING MALL 9"
	
	para "Wares for serious"
	line "#MON trainers."
	done
	
R9TubelineSignText:
	text "TUBELINE BRIDGE"
	line "ahead."
	
	para "Passage to"
	line "ICIRRUS CITY."
	done

Rt9_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 11, TUBELINE_BRIDGE, 3
	warp_event  4, 12, TUBELINE_BRIDGE, 4
	warp_event 37, 11, R_9_OPELUCID_GATE, 3
	warp_event 37, 11, R_9_OPELUCID_GATE, 4

	db 0 ; coord events

	db 5 ; bg events
	bg_event 32,  7, BGEVENT_READ, R9Sign
	bg_event 19,  7, BGEVENT_READ, R9MallSign
	bg_event  6,  9, BGEVENT_READ, R9TubelineSign
	bg_event 19, 17, BGEVENT_ITEM, R9MaxEther
	bg_event 30,  6, BGEVENT_ITEM, R9Nugget
	
	db 8 ; object events
	object_event 12, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R9HPUp, EVENT_R9_HP_UP
	object_event 11,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R9FullRestore, EVENT_R9_FULL_RESTORE
	object_event  8,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R9Elixer, EVENT_R9_ELIXER
	object_event 14, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R9Iron, EVENT_R9_IRON
	object_event 34,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBiker1R9, -1
	object_event 25, 11, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBiker2R9, -1
	object_event  5, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBiker3R9, -1
	object_event 13, 10, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBiker4R9, -1
	