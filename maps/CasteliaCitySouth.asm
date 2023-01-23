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
	const CASTELIACITYSOUTH_MYSTIC_WATER_GIVER

CasteliaCitySouth_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
CasteliaSouthMysticWaterGiverScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MYSTIC_WATER
	iftrue .got_water
	writetext CasteliaSouthMysticWaterGiver_AskScaleText
	yesorno
	iffalse .declined
	checkitem HEART_SCALE
	iffalse .no_scale
	writetext CasteliaSouthMysticWaterGiver_ThanksText
	buttonsound
	verbosegiveitem MYSTIC_WATER
	iffalse .no_room
	takeitem HEART_SCALE
	setevent EVENT_GOT_MYSTIC_WATER
.got_water
	writetext CasteliaSouthMysticWaterGiver_GotWaterText
.no_room
	waitbutton
	closetext
	end
	
.declined
	writetext CasteliaSouthMysticWaterGiver_DeclinedText
	waitbutton
	closetext
	end
	
.no_scale
	writetext CasteliaSouthMysticWaterGiver_NoScaleText
	waitbutton
	closetext
	end
	
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
	
CasteliaSouthMysticWaterGiver_AskScaleText:
	text "Ahoy there, young-"
	line "un! I've been"
	
	para "lookin' for a"
	line "shiny type of"
	
	para "trinket they call"
	line "a HEART SCALE."
	
	para "They say you can"
	line "fish 'em up, but"
	
	para "I've been havin'"
	line "no luck!"
	
	para "You wouldn't have"
	line "one you could"
	cont "spare, would ya?"
	done
	
CasteliaSouthMysticWaterGiver_ThanksText:
	text "Aye! Many thanks!"
	line "Let me give you"
	
	para "somethin' for yer"
	line "trouble. It's just"
	
	para "somethin' I fished"
	line "up here on the"
	cont "pier."
	done
	
CasteliaSouthMysticWaterGiver_GotWaterText:
	text "Water type #MON"
	line "seem to take a"
	
	para "likin' to that"
	line "thing! Try lettin'"
	cont "one hold onto it!"
	done
	
CasteliaSouthMysticWaterGiver_DeclinedText:
	text "Arr, that's too"
	line "bad…"
	done
	
CasteliaSouthMysticWaterGiver_NoScaleText:
	text "Wait a minute! You"
	line "don't even have"
	cont "one yourself!"
	done
	
CasteliaFerryManClosedText:
	text "Ahoy! This be the"
	line "FERRY to VIRBANK"
	cont "CITY."

	para "If ye've got a"
	line "ticket, go show it"
	
	para "to the fellow"
	line "inside!"
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
	text "CASTELIA's GAME"
	line "PLAZA has a great"

	para "selection of"
	line "prizes! I'm just"

	para "no good at the"
	line "games, so I never"
	cont "win anything…"
	done

CasteliaSouthSailor2Text:
	text "Everyone's faces"
	line "blend together!"

	para "Is that because"
	line "I'm tired?"
	done
	
CasteliaSouthSailor3Text:
	text "When you just"
	line "can't stand it"
	
	para "anymore, try"
	line "shouting at the"
	cont "open ocean!"
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

	db 10 ; object events
	object_event  5, 18, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaFerryManScript, -1
	object_event 23, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaCityWaterStone, EVENT_CASTELIA_CITY_WATER_STONE
	object_event 14, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaCityCoinCase, EVENT_CASTELIA_CITY_COIN_CASE
	object_event 14, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthGentlemanTextScript, -1
	object_event 15, 12, SPRITE_SNEASEL, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSneaselTextScript, -1
	object_event 52, 17, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSailorTextScript, -1
	object_event 21, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthTeacherTextScript, -1
	object_event 33, 15, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSailor2TextScript, -1
	object_event 44,  9, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthSailor3TextScript, -1
	object_event 32, 24, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSouthMysticWaterGiverScript, -1
	