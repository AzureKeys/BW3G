	const_def 2 ; object constants
	const CASTELIACITYSOUTH_FERRY_MAN
	const CASTELIACITYSOUTH_WATER_STONE
	const CASTELIACITYSOUTH_COIN_CASE
	const CASTELIACITYSOUTH_GENTLEMAN
	const CASTELIACITYSOUTH_SNEASEL
	const CASTELIACITYSOUTH_SAILOR
	const CASTELIACITYSOUTH_TEACHER
	const CASTELIACITYSOUTH_SAILOR2
	const CASTELIACITYSOUTH_SAILOR3

CasteliaCitySouth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CasteliaFerryManScript:
	jumptextfaceplayer CasteliaFerryManClosedText

CasteliaSouthGentlemanTextScript:
	jumptextfaceplayer CasteliaSouthGentlemanText

CasteliaSouthSneaselTextScript:
	opentext
	writetext CasteliaSouthSneaselText
	cry SNEASEL
	waitbutton
	closetext
	end

CasteliaSouthSailorTextScript:
	jumptextfaceplayer CasteliaSouthSailorText

CasteliaSouthTeacherTextScript:
	jumptextfaceplayer CasteliaSouthTeacherText

CasteliaSouthSailor2TextScript:
	jumptextfaceplayer CasteliaSouthSailor2Text

CasteliaSouthSailor3TextScript:
	jumptextfaceplayer CasteliaSouthSailor3Text
	
CasteliaCityWaterStone:
	itemball WATER_STONE
	
CasteliaCityCoinCase:
	itemball COIN_CASE

CasteliaBattleCompanySign:
	jumptext CasteliaBattleCompanySignText

CasteliaBridgeSign:
	jumptext CasteliaBridgeSignText

CasteliaFerrySign:
	jumptext CasteliaFerrySignText

CasteliaPlazaSign:
	jumptext CasteliaPlazaSignText
	
CasteliaFerryManClosedText:
	text "Ahoy! This be the"
	line "FERRY to VIRBANK"
	cont "CITY."

	para "If ye've got a"
	line "ticket, go show it"
	cont "to the fellow"
	cont "inside!"
	done

CasteliaSouthGentlemanText:
	text "This SNEASEL is"
	line "my partner."

	para "I wonder if it'll"
	line "ever evolve?"

	para "Maybe if it's"
	line "holding a certain"
	cont "item…"
	done

CasteliaSouthSneaselText:
	text "SNEASEL: Snaah!"
	done

CasteliaSouthSailorText:
	text "The sewers have"
	line "flooded recently."

	para "It's just as well,"
	line "dangerous #MON"
	cont "had begun to come"
	cont "out of there."
	done

CasteliaSouthTeacherText:
	text "CASTELIA DEPT."
	line "STORE has the"

	para "biggest and best"
	line "selection of"
	cont "merchandise."

	para "If you can't get"
	line "it there, you"

	para "can't get it any-"
	line "where."

	para "Gee… I sound like"
	line "a sales clerk."
	done

CasteliaSouthSailor2Text:
	text "Dark roads are"
	line "dangerous at"
	cont "night."

	para "But in the pitch-"
	line "black of night,"

	para "the sea is even"
	line "more treacherous!"
	done
	
CasteliaSouthSailor3Text:
	text "The sea is sweet!"

	para "Sunsets on the sea"
	line "are marvelous!"

	para "Sing with me! "
	line "Yo-ho! Blow the"
	cont "man down!…"
	done
	
CasteliaBattleCompanySignText:
	text "BATTLE COMPANY."
	done
	
CasteliaBridgeSignText:
	text "SKYARROW BRIDGE."

	para "Passage to"
	line "NACRENE CITY."
	done
	
CasteliaFerrySignText:
	text "FERRY service to"
	line "VIRBANK CITY."

	para "Inquire inside."
	done
	
CasteliaPlazaSignText:
	text "CASTELIA GAME"
	line "PLAZA."

	para "Come play with us!"
	done
	
CasteliaCitySouth_MapEvents:
	db 0, 0 ; filler

	db 15 ; warp events
	warp_event  5,  4, CASTELIA_CITY_STREETS, 9
	warp_event  6,  4, CASTELIA_CITY_STREETS, 10
	warp_event 17,  6, CASTELIA_CITY_STREETS, 11
	warp_event 18,  6, CASTELIA_CITY_STREETS, 12
	warp_event 31,  8, CASTELIA_CITY_STREETS, 13
	warp_event 32,  8, CASTELIA_CITY_STREETS, 14
	warp_event 43,  4, CASTELIA_CITY_STREETS, 15
	warp_event 44,  4, CASTELIA_CITY_STREETS, 16
	warp_event 39,  7, CASTELIA_POKECENTER_1F, 1
	warp_event 12,  7, CASTELIA_PLAZA_LOBBY, 1
	warp_event 55,  5, CASTELIA_BRIDGE_GATE, 1
	warp_event 26, 11, BATTLE_COMPANY_1F, 1
	warp_event  4,  6, CASTELIA_PORT, 2
	warp_event 42, 15, CASTELIA_SEWERS, 1
	warp_event  4,  7, CASTELIA_PORT, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 28, 12, BGEVENT_READ, CasteliaBattleCompanySign
	bg_event 52,  6, BGEVENT_READ, CasteliaBridgeSign
	bg_event  4,  9, BGEVENT_READ, CasteliaFerrySign
	bg_event 14,  8, BGEVENT_READ, CasteliaPlazaSign

	db 9 ; object events
	object_event  5, 18, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaFerryManScript, -1
	object_event 23, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaCityWaterStone, EVENT_CASTELIA_CITY_WATER_STONE
	object_event 14, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaCityCoinCase, EVENT_CASTELIA_CITY_COIN_CASE
	object_event 14, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthGentlemanTextScript, -1
	object_event 15, 12, SPRITE_SNEASEL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSneaselTextScript, -1
	object_event 52, 17, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSailorTextScript, -1
	object_event 21, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthTeacherTextScript, -1
	object_event 33, 15, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSailor2TextScript, -1
	object_event 44,  9, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSailor3TextScript, -1
	