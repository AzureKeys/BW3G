	const_def 2 ; object constants
	const VIRBANKCITY_BLACK_SLUDGE
	const VIRBANKCITY_RARE_CANDY
	const VIRBANKCITY_TM_TOXIC
	const VIRBANKCITY_BLOCKER
	const VIRBANKCITY_FERRY_MAN
	const VIRBANKCITY_FISHING_GURU
	const VIRBANKCITY_TEACHER_1
	const VIRBANKCITY_TEACHER_2
	const VIRBANKCITY_SAILOR
	const VIRBANKCITY_PHARMACIST
	const VIRBANKCITY_YOUNGSTER
	const VIRBANKCITY_POKEFAN_M

VirbankCity_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_VIRBANK
	return
	
.SetTiles:
	checkevent EVENT_VIRBANK_CITY_LOWER_FLOOR
	iffalse .done
	changeblock  8,  8, $81
	changeblock 10,  8, $82
	changeblock  8, 10, $83
	changeblock 10, 10, $83
	changeblock  8, 12, $87
	changeblock 10, 12, $87
	changeblock  8, 14, $8B
	changeblock 10, 14, $8B
	changeblock 12, 16, $8C
	changeblock 14, 16, $8D
	changeblock 16, 16, $8E
	changeblock 18, 16, $8F
	changeblock 12, 18, $90
	changeblock 14, 18, $91
	changeblock 16, 18, $92
	changeblock 18, 18, $93
	changeblock 12, 20, $90
	changeblock 14, 20, $91
	changeblock 16, 20, $92
	changeblock 18, 20, $93
	changeblock  6, 10, $94
	changeblock 12, 10, $94
	changeblock  6, 12, $95
	changeblock 12, 12, $95
	changeblock 14, 22, $96
	changeblock 16, 22, $97
.done
	return
	
VirbankCityLowerFloorScript:
	checkevent EVENT_VIRBANK_CITY_LOWER_FLOOR
	iftrue .done
	changeblock  8,  8, $81
	changeblock 10,  8, $82
	changeblock  8, 10, $83
	changeblock 10, 10, $83
	changeblock  8, 12, $87
	changeblock 10, 12, $87
	changeblock  8, 14, $8B
	changeblock 10, 14, $8B
	changeblock 12, 16, $8C
	changeblock 14, 16, $8D
	changeblock 16, 16, $8E
	changeblock 18, 16, $8F
	changeblock 12, 18, $90
	changeblock 14, 18, $91
	changeblock 16, 18, $92
	changeblock 18, 18, $93
	changeblock 12, 20, $90
	changeblock 14, 20, $91
	changeblock 16, 20, $92
	changeblock 18, 20, $93
	changeblock  6, 10, $94
	changeblock 12, 10, $94
	changeblock  6, 12, $95
	changeblock 12, 12, $95
	changeblock 14, 22, $96
	changeblock 16, 22, $97
	setevent EVENT_VIRBANK_CITY_LOWER_FLOOR
.done
	end
	
VirbankCityUpperFloorScript:
	checkevent EVENT_VIRBANK_CITY_LOWER_FLOOR
	iffalse .done
	changeblock  8,  8, $3E
	changeblock 10,  8, $31
	changeblock  8, 10, $85
	changeblock 10, 10, $85
	changeblock  8, 12, $89
	changeblock 10, 12, $89
	changeblock  8, 14, $27
	changeblock 10, 14, $27
	changeblock 12, 16, $33
	changeblock 14, 16, $84
	changeblock 16, 16, $88
	changeblock 18, 16, $32
	changeblock 12, 18, $37
	changeblock 14, 18, $84
	changeblock 16, 18, $88
	changeblock 18, 18, $36
	changeblock 12, 20, $37
	changeblock 14, 20, $84
	changeblock 16, 20, $88
	changeblock 18, 20, $36
	changeblock  6, 10, $85
	changeblock 12, 10, $85
	changeblock  6, 12, $89
	changeblock 12, 12, $89
	changeblock 14, 22, $84
	changeblock 16, 22, $88
	clearevent EVENT_VIRBANK_CITY_LOWER_FLOOR
	refreshscreen
.done
	end
	
VirbankCityFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .GotRod
	writetext VirbankCityGoodRodText
	yesorno
	iffalse .Refused
	writetext VirbankCityGiveGoodRodText
	waitbutton
	verbosegiveitem GOOD_ROD
	buttonsound
	setevent EVENT_GOT_GOOD_ROD
.GotRod
	writetext VirbankCityGotGoodRodText
	waitbutton
	closetext
	end
	
.Refused
	writetext VirbankCityRefusedGoodRodText
	waitbutton
	closetext
	end

VirbankCityFerryManScript:
	jumptextfaceplayer VirbankFerryManText
	
VirbankCityBlackSludge:
	itemball BLACK_SLUDGE
	
VirbankCityRareCandy:
	itemball RARE_CANDY
	
VirbankCityTMToxic:
	itemball TM_TOXIC
	
VirbankCityPPUp:
	hiddenitem PP_UP, EVENT_VIRBANK_CITY_PP_UP
	
VirbankCityBlockerScript:
	jumptextfaceplayer VirbankCityBlockerText
	
VirbankCityTeacher1Script:
	jumptextfaceplayer VirbankCityTeacher1Text
	
VirbankCityTeacher2Script:
	jumptextfaceplayer VirbankCityTeacher2Text
	
VirbankCitySailorScript:
	jumptextfaceplayer VirbankCitySailorText
	
VirbankCityPharmacistScript:
	jumptextfaceplayer VirbankCityPharmacistText
	
VirbankCityYoungsterScript:
	jumptextfaceplayer VirbankCityYoungsterText
	
VirbankCityPokefanMScript:
	jumptextfaceplayer VirbankCityPokefanMText
	
VirbankCitySign:
	jumptext VirbankCitySignText
	
VirbankGameCornerSign:
	jumptext VirbankGameCornerSignText
	
VirbankComplexSign:
	jumptext VirbankComplexSignText
	
VirbankFerrySign:
	jumptext VirbankFerrySignText
	
VirbankCityGoodRodText:
	text "Hi there! Do you"
	line "like to fish?"
	done
	
VirbankCityRefusedGoodRodText:
	text "Oh, that's too"
	line "bad."
	done
	
VirbankCityGiveGoodRodText:
	text "Oh! Well then take"
	line "this rod!"
	done
	
VirbankCityGotGoodRodText:
	text "Fish in all kinds"
	line "of places!"
	done
	
VirbankFerryManText:
	text "Ahoy! This be the"
	line "FERRY to CASTELIA"
	cont "CITY."

	para "If ye've got a"
	line "ticket, go show it"
	cont "to the fellow"
	cont "inside!"
	done
	
VirbankCityBlockerText:
	text "Sorry kid, #-"
	line "STAR STUDIOS is"
	
	para "closed to the"
	line "public."
	
	para "You should go"
	line "check out the new"
	cont "GAME CORNER."
	done

VirbankCityTeacher1Text:
	text "I lost at the slot"
	line "machines again…"

	para "We girls also play"
	line "the slots now."

	para "You should check"
	line "them out too."
	done

VirbankCityTeacher2Text:
	text "I'm raising #-"
	line "MON too."

	para "They serve as my"
	line "private guards."
	done

VirbankCitySailorText:
	text "Aww man, I lost my"
	line "FERRY PASS at the"
	cont "COMPLEX again…"

	para "Boss is gonna be"
	line "so mad!"
	done

VirbankCityPharmacistText:
	text "I tried to get"
	line "into the GYM, but"

	para "I couldn't figure"
	line "out their puzzle!"
	done

VirbankCityYoungsterText:
	text "CASTELIA CITY is"
	line "across the sea."

	para "I want to ride"
	line "the ferry!"
	done

VirbankCityPokefanMText:
	text "VIRBANK CITY is"
	line "the city of"
	cont "industry!"

	para "We're proud of our"
	line "bustling burg!"
	done
	
VirbankCitySignText:
	text "VIRBANK CITY"
	
	para "City of falling"
	line "fog and rising"
	cont "stars!"
	done
	
VirbankGameCornerSignText:
	text "VIRBANK CITY"
	line "GAME CORNER!"
	
	para "Come win fabulous"
	line "prizes!"
	done
	
VirbankComplexSignText:
	text "VIRBANK COMPLEX"
	line "ahead."
	done
	
VirbankFerrySignText:
	text "FERRY service to"
	line "CASTELIA CITY."
	
	para "Inquire within."
	done

VirbankCity_MapEvents:
	db 0, 0 ; filler

	db 12 ; warp events
	warp_event 15,  9, VIRBANK_POKECENTER_1F, 1
	warp_event 24,  9, VIRBANK_HOUSE, 1
	warp_event  8, 25, GAME_CORNER, 1
	warp_event  4, 12, R_20_VIRBANK_GATE, 3
	warp_event  4, 13, R_20_VIRBANK_GATE, 4
	warp_event 32,  9, VIRBANK_STAT_EXP_HOUSE, 1
	warp_event 26, 25, VIRBANK_GYM, 1
	warp_event 38, 25, VIRBANK_PORT, 1
	warp_event 14, 27, VIRBANK_COMPLEX_OUTSIDE, 2
	warp_event 15, 27, VIRBANK_COMPLEX_OUTSIDE, 3
	warp_event 16, 27, VIRBANK_COMPLEX_OUTSIDE, 4
	warp_event 17, 27, VIRBANK_COMPLEX_OUTSIDE, 5

	db 11 ; coord events
	coord_event 23, 16, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event 30, 16, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event 24, 16, SCENE_DEFAULT, VirbankCityLowerFloorScript
	coord_event 29, 16, SCENE_DEFAULT, VirbankCityLowerFloorScript
	coord_event 14, 10, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event 15, 11, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event 16, 10, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event  4, 11, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event  5, 12, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event  5, 13, SCENE_DEFAULT, VirbankCityUpperFloorScript
	coord_event 38, 26, SCENE_DEFAULT, VirbankCityUpperFloorScript

	db 5 ; bg events
	bg_event  4, 10, BGEVENT_READ, VirbankCitySign
	bg_event  6, 26, BGEVENT_READ, VirbankGameCornerSign
	bg_event 17, 25, BGEVENT_READ, VirbankComplexSign
	bg_event 35, 25, BGEVENT_READ, VirbankFerrySign
	bg_event 19, 24, BGEVENT_ITEM, VirbankCityPPUp

	db 12 ; object events
	object_event  4, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankCityBlackSludge, EVENT_VIRBANK_CITY_BLACK_SLUDGE
	object_event  4, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankCityRareCandy, EVENT_VIRBANK_CITY_RARE_CANDY
	object_event 12,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VirbankCityTMToxic, EVENT_VIRBANK_CITY_TM_TOXIC
	object_event 19,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VirbankCityBlockerScript, -1
	object_event 37, 26, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VirbankCityFerryManScript, -1
	object_event 44, 28, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, VirbankCityFishingGuruScript, -1
	object_event 14, 24, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VirbankCityTeacher1Script, -1
	object_event 25, 12, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, VirbankCityTeacher2Script, -1
	object_event 33, 25, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VirbankCitySailorScript, -1
	object_event 28, 27, SPRITE_PHARMACIST, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VirbankCityPharmacistScript, -1
	object_event 34, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, VirbankCityYoungsterScript, -1
	object_event 15, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VirbankCityPokefanMScript, -1
	