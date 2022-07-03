	const_def 2 ; object constants
	const CASTELIASEWERSROOMS_TWISTEDSPOON
	const CASTELIASEWERSROOMS_HP_UP
	const CASTELIASEWERSROOMS_WORKER
	const CASTELIASEWERSROOMS_JANITOR

CasteliaSewersRooms_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CasteliaSewersWaterToggleScript:
	opentext
	writetext CasteliaSewersSwitchText
	buttonsound
	yesorno
	iffalse .done
	playsound SFX_SURF
	writetext CasteliaSewersToggleText
	waitbutton
	waitsfx
	checkevent EVENT_CASTELIA_SEWER_WATER
	iftrue .lower
	setevent EVENT_CASTELIA_SEWER_WATER
	jump .done
.lower
	clearevent EVENT_CASTELIA_SEWER_WATER
.done
	closetext
	end

TrainerWorkerCasteliaSewersRooms:
	trainer WORKER, WORKER_CASTELIA_SEWERS_3, EVENT_BEAT_WORKER_CASTELIA_SEWERS_3, WorkerCasteliaSewersRoomsSeenText, WorkerCasteliaSewersRoomsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WorkerCasteliaSewersRoomsAfterText
	waitbutton
	closetext
	end

TrainerJanitorCasteliaSewersRooms:
	trainer JANITOR, JANITOR_CASTELIA_SEWERS_3, EVENT_BEAT_JANITOR_CASTELIA_SEWERS_3, JanitorCasteliaSewersRoomsSeenText, JanitorCasteliaSewersRoomsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JanitorCasteliaSewersRoomsAfterText
	waitbutton
	closetext
	end
	
CasteliaSewersRoomsTwistedspoon:
	itemball TWISTEDSPOON
	
CasteliaSewersRoomsHPUp:
	itemball HP_UP
	
CasteliaSewersRoomsBigPearl:
	hiddenitem BIG_PEARL, EVENT_CASTELIA_SEWERS_BIG_PEARL
	
WorkerCasteliaSewersRoomsSeenText:
	text "I can't figure out"
	line "how to get through"
	cont "this place!"
	done

WorkerCasteliaSewersRoomsBeatenText:
	text "Gah! I'm"
	line "frustrated!."
	done

WorkerCasteliaSewersRoomsAfterText:
	text "The water blocks"
	line "off some paths,"
	cont "but opens others…"

	para "It's so confusing!"
	done
	
JanitorCasteliaSewersRoomsSeenText:
	text "Do you know how to"
	line "get through the"
	cont "sewers?"
	done

JanitorCasteliaSewersRoomsBeatenText:
	text "I can't win!"
	done

JanitorCasteliaSewersRoomsAfterText:
	text "You need to use"
	line "the machines to"

	para "flood or empty the"
	line "sewers if you want"
	cont "to get through."
	done
	
CasteliaSewersSwitchText:
	text "There's a switch."
	line "Press it?"
	done
	
CasteliaSewersToggleText:
	text "Sounds like a lot"
	line "of rushing water."
	done
	
CasteliaSewersRooms_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event  2,  5, CASTELIA_SEWERS, 2
	warp_event  3,  5, CASTELIA_SEWERS, 2
	warp_event 12,  5, CASTELIA_SEWERS, 3
	warp_event 13,  5, CASTELIA_SEWERS, 3
	warp_event 26,  5, CASTELIA_SEWERS, 4
	warp_event 27,  5, CASTELIA_SEWERS, 4
	warp_event 18, 17, CASTELIA_SEWERS, 5
	warp_event 19, 17, CASTELIA_SEWERS, 5
	warp_event  7, 11, CASTELIA_SEWERS, 6

	db 0 ; coord events

	db 4 ; bg events
	bg_event  2,  1, BGEVENT_UP, CasteliaSewersWaterToggleScript
	bg_event 28,  1, BGEVENT_UP, CasteliaSewersWaterToggleScript
	bg_event  2, 11, BGEVENT_UP, CasteliaSewersWaterToggleScript
	bg_event 17, 11, BGEVENT_ITEM, CasteliaSewersRoomsBigPearl
	
	db 4 ; object events
	object_event 17,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersRoomsTwistedspoon, EVENT_CASTELIA_SEWERS_TWISTEDSPOON
	object_event 21, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersRoomsHPUp, EVENT_CASTELIA_SEWERS_HP_UP
	object_event  1,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerWorkerCasteliaSewersRooms, -1
	object_event  3, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerJanitorCasteliaSewersRooms, -1
	