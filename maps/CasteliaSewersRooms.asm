	const_def 2 ; object constants
	const CASTELIASEWERSROOMS_TWISTEDSPOON
	const CASTELIASEWERSROOMS_HP_UP
	const CASTELIASEWERSROOMS_GRUNTM
	const CASTELIASEWERSROOMS_GRUNTF

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

TrainerGruntMCasteliaSewersRooms:
	trainer GRUNTM, GRUNTM_CASTELIA_SEWERS_3, EVENT_BEAT_GRUNTM_CASTELIA_SEWERS_3, GruntMCasteliaSewersRoomsSeenText, GruntMCasteliaSewersRoomsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMCasteliaSewersRoomsAfterText
	waitbutton
	closetext
	end

TrainerGruntFCasteliaSewersRooms:
	trainer GRUNTF, GRUNTF_CASTELIA_SEWERS_3, EVENT_BEAT_GRUNTF_CASTELIA_SEWERS_3, GruntFCasteliaSewersRoomsSeenText, GruntFCasteliaSewersRoomsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFCasteliaSewersRoomsAfterText
	waitbutton
	closetext
	end
	
CasteliaSewersRoomsTwistedspoon:
	itemball TWISTEDSPOON
	
CasteliaSewersRoomsHPUp:
	itemball HP_UP
	
CasteliaSewersRoomsBigPearl:
	hiddenitem BIG_PEARL, EVENT_CASTELIA_SEWERS_BIG_PEARL
	
GruntMCasteliaSewersRoomsSeenText:
	text "I can't figure out"
	line "how to get through"
	cont "this place!"
	done

GruntMCasteliaSewersRoomsBeatenText:
	text "Gah! I'm"
	line "frustrated!."
	done

GruntMCasteliaSewersRoomsAfterText:
	text "The water blocks"
	line "off some paths,"
	cont "but opens others…"

	para "It's so confusing!"
	done
	
GruntFCasteliaSewersRoomsSeenText:
	text "Do you know how to"
	line "get through the"
	cont "sewers?"
	done

GruntFCasteliaSewersRoomsBeatenText:
	text "I can't win!"
	done

GruntFCasteliaSewersRoomsAfterText:
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
	object_event  1,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerGruntMCasteliaSewersRooms, EVENT_CASTELIA_SEWERS_GRUNTS
	object_event  3, 13, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntFCasteliaSewersRooms, EVENT_CASTELIA_SEWERS_GRUNTS
	