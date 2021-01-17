	const_def 2 ; object constants
	const CASTELIACITYNORTH_LASS
	const CASTELIACITYNORTH_YOUNGSTER
	const CASTELIACITYNORTH_POKEFANF
	const CASTELIACITYNORTH_TWIN
	const CASTELIACITYNORTH_TWIN2
	const CASTELIACITYNORTH_LASS2

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

CasteliaNorthLassText:
	text "My mom has a #-"
	line "MON called YANMA."

	para "It's my favorite!"
	
	para "She says if you're"
	line "kind to it, it'll"
	cont "turn into a"
	cont "stronger #MON!"
	done

CasteliaNorthYoungsterText:
	text "Going into an"
	line "alley for the"

	para "first time makes"
	line "me sorta anxious."
	done

CasteliaNorthPokefanFText:
	text "Our city was"
	line "featured on a"
	cont "radio program."

	para "It's nice to hear"
	line "praise for your"

	para "city, but it's a"
	line "bit embarrassing"
	cont "too."
	done

CasteliaNorthTwinText:
	text "That thing you"
	line "have--it's an X-"
	cont "TRAN, right? Wow,"
	cont "that's cool."
	done

CasteliaNorthTwin2Text:
	text "Wow, you have a"
	line "#DEX!"

	para "That is just so"
	line "awesome."
	done

CasteliaNorthLass2Text:
	text "I'm a huge fan of"
	line "CASTELIA GYM's"
	cont "BURGH."
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

	db 5 ; bg events
	bg_event 16, 10, BGEVENT_READ, CasteliaCitySign
	bg_event  6, 24, BGEVENT_READ, CasteliaGymStreetSign
	bg_event 14, 25, BGEVENT_READ, CasteliaAlleySign
	bg_event 21, 25, BGEVENT_READ, CasteliaModeStreetSign
	bg_event 31, 27, BGEVENT_READ, CasteliaStreetSign

	db 6 ; object events
	object_event 15, 16, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaNorthLassTextScript, -1
	object_event 16, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaNorthYoungsterTextScript, -1
	object_event 22, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaNorthPokefanFTextScript, -1
	object_event 12, 15, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 3, 3, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaNorthTwinTextScript, -1
	object_event 12, 16, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 3, 3, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaNorthTwin2TextScript, -1
	object_event 22, 20, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaNorthLass2TextScript, -1
	