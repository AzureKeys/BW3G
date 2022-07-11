	const_def 2 ; object constants
	const CASTELIACITYNORTH_LASS
	const CASTELIACITYNORTH_YOUNGSTER
	const CASTELIACITYNORTH_POKEFANF
	const CASTELIACITYNORTH_TWIN
	const CASTELIACITYNORTH_TWIN2
	const CASTELIACITYNORTH_LASS2
	const CASTELIACITYNORTH_TIMER_BALL

CasteliaCityNorth_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CASTELIA
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftrue .done
	specialphonecall SPECIALCALL_BIANCA_CASTELIA
.done:
	return
	
CasteliaNorthLassTextScript:
	jumptextfaceplayer CasteliaNorthLassText
	
CasteliaNorthYoungsterTextScript:
	jumptextfaceplayer CasteliaNorthYoungsterText
	
CasteliaNorthPokefanFTextScript:
	jumptextfaceplayer CasteliaNorthPokefanFText
	
CasteliaNorthTwinTextScript:
	jumptextfaceplayer CasteliaNorthTwinText
	
CasteliaNorthTwin2TextScript:
	jumptextfaceplayer CasteliaNorthTwin2Text
	
CasteliaNorthLass2TextScript:
	jumptextfaceplayer CasteliaNorthLass2Text

CasteliaCitySign:
	jumptext CasteliaCitySignText

CasteliaGymStreetSign:
	jumptext CasteliaGymStreetSignText

CasteliaAlleySign:
	jumptext CasteliaAlleySignText

CasteliaModeStreetSign:
	jumptext CasteliaModeStreetSignText

CasteliaStreetSign:
	jumptext CasteliaStreetSignText
	
CasteliaNorthTimerBall:
	itemball TIMER_BALL
	
CasteliaNorthHeartScale:
	hiddenitem HEART_SCALE, EVENT_CASTELIA_CITY_HEART_SCALE

CasteliaNorthTwinText:
	text "My mom has a #-"
	line "MON called YANMA."

	para "It's my favorite!"
	
	para "She says if you're"
	line "kind to it, it'll"
	cont "turn into a"
	cont "stronger #MON!"
	done

CasteliaNorthYoungsterText:
	text "When you're tired,"
	line "you should rest!"

	para "Don't force your-"
	line "self to be"
	cont "energetic."
	done

CasteliaNorthPokefanFText:
	text "I wonder what"
	line "CASTELIA was like"

	para "before it got"
	line "this big."
	done

CasteliaNorthLassText:
	text "It's wonderful how"
	line "the #MON and"
	
	para "women here are so"
	line "full of life!"
	done

CasteliaNorthTwin2Text:
	text "My mom says there"
	line "are some #MON"

	para "that evolve when"
	line "you use stones on"
	
	para "them. Some of them"
	line "may not be what"
	
	para "you expect. Try"
	line "all of them!"
	done

CasteliaNorthLass2Text:
	text "To live surrounded"
	line "by people, do you"
	
	para "have to grow to"
	line "like everyone, or"
	
	para "do you only have"
	line "to like yourself?"
	done
	
CasteliaCitySignText:
	text "CASTELIA CITY."
	
	para "A city of"
	line "grandeur."
	done
	
CasteliaGymStreetSignText:
	text "GYM STREET."
	done
	
CasteliaAlleySignText:
	text "NARROW ALLEY."
	done
	
CasteliaModeStreetSignText:
	text "MODE STREET."
	done
	
CasteliaStreetSignText:
	text "CASTELIA STREET."
	done

CasteliaCityNorth_MapEvents:
	db 0, 0 ; filler

	db 13 ; warp events
	warp_event 17,  3, R_4_CASTELIA_GATE, 3
	warp_event  5, 29, CASTELIA_CITY_STREETS, 1
	warp_event  6, 29, CASTELIA_CITY_STREETS, 2
	warp_event 13, 29, CASTELIA_CITY_STREETS, 3
	warp_event 14, 29, CASTELIA_CITY_STREETS, 4
	warp_event 21, 29, CASTELIA_CITY_STREETS, 5
	warp_event 22, 29, CASTELIA_CITY_STREETS, 6
	warp_event 29, 29, CASTELIA_CITY_STREETS, 7
	warp_event 30, 29, CASTELIA_CITY_STREETS, 8
	warp_event 16,  8, CASTELIA_TRADE_HOUSE_1, 1
	warp_event 16,  9, CASTELIA_TRADE_HOUSE_1, 2
	warp_event 19,  8, CASTELIA_TRADE_HOUSE_2, 1
	warp_event 19,  9, CASTELIA_TRADE_HOUSE_2, 2

	db 0 ; coord events

	db 7 ; bg events
	bg_event 16, 10, BGEVENT_READ, CasteliaCitySign
	bg_event  6, 24, BGEVENT_READ, CasteliaGymStreetSign
	bg_event 14, 25, BGEVENT_READ, CasteliaAlleySign
	bg_event 21, 25, BGEVENT_READ, CasteliaModeStreetSign
	bg_event 31, 27, BGEVENT_READ, CasteliaStreetSign
	bg_event 10, 18, BGEVENT_ITEM, CasteliaNorthHeartScale
	bg_event 10, 19, BGEVENT_ITEM, CasteliaNorthHeartScale

	db 7 ; object events
	object_event 15, 16, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaNorthLassTextScript, -1
	object_event 16, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaNorthYoungsterTextScript, -1
	object_event 22, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaNorthPokefanFTextScript, -1
	object_event 12, 15, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 3, 3, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaNorthTwinTextScript, -1
	object_event 12, 16, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 3, 3, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaNorthTwin2TextScript, -1
	object_event 22, 20, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaNorthLass2TextScript, -1
	object_event 18, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaNorthTimerBall, EVENT_CASTELIA_TIMER_BALL
	