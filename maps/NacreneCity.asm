	const_def 2 ; object constants
	const NACRENECITY_LENORA
	const NACRENECITY_YOUNGSTER
	const NACRENECITY_LASS
	const NACRENECITY_GENTLEMAN
	const NACRENECITY_PHARMACIST

NacreneCity_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NACRENE
	return
	
NacreneCityLenoraScript1:
	applymovement NACRENECITY_LENORA, NacreneCityLenoraMovement1
	jump NacreneCityLenoraScript
	
NacreneCityLenoraScript2:
	applymovement NACRENECITY_LENORA, NacreneCityLenoraMovement2
	jump NacreneCityLenoraScript
	
NacreneCityLenoraScript3:
	applymovement NACRENECITY_LENORA, NacreneCityLenoraMovement3
	jump NacreneCityLenoraScript
	
NacreneCityLenoraScript4:
	applymovement NACRENECITY_LENORA, NacreneCityLenoraMovement4

NacreneCityLenoraScript:
	opentext
	writetext NacreneCityLenoraText
	waitbutton
	closetext
	applymovement NACRENECITY_LENORA, NacreneCityLenoraLeaveMovement
	disappear NACRENECITY_LENORA
	setscene SCENE_FINISHED
	end
	
NacreneCityRevive:
	hiddenitem REVIVE, EVENT_NACRENE_CITY_REVIVE
	
NacreneCityPPUp:
	hiddenitem PP_UP, EVENT_NACRENE_CITY_PP_UP
	
NacreneCityYoungsterScript:
	jumptextfaceplayer NacreneCityYoungsterText
	
NacreneCityLassScript:
	jumptextfaceplayer NacreneCityLassText
	
NacreneCityGentlemanScript:
	jumptextfaceplayer NacreneCityGentlemanText
	
NacreneCityPharmacistScript:
	jumptextfaceplayer NacreneCityPharmacistText
	
NacreneCitySign:
	jumptext NacreneCitySignText
	
NacreneCafeSign:
	jumptext NacreneCafeSignText
	
NacreneMuseumSign:
	jumptext NacreneMuseumSignText
	
NacreneR3Sign:
	jumptext NacreneR3SignText
	
NacreneCityLenoraMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
NacreneCityLenoraMovement2:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
NacreneCityLenoraMovement3:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
NacreneCityLenoraMovement4:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
NacreneCityLenoraLeaveMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
NacreneCityLenoraText:
	text "Hey! I don't"
	line "recognize you."
	
	para "You're not up to"
	line "anything shady,"
	cont "are you?"
	
	para "… … … …"
	
	para "Sorry, we just had"
	line "a break in at the"
	cont "museum. Something"
	cont "important was"
	cont "stolen."
	
	para "I'm LENORA, I run"
	line "the museum here in"
	
	para "town. We have a"
	line "special machine"
	
	para "that can revive"
	line "#MON fossils!"
	
	para "But it's useless"
	line "without that DATA"
	cont "DISK that was"
	cont "stolen…"
	
	para "You should stop by"
	line "if you find out"
	cont "anything."
	
	para "Bye now!"
	done
	
NacreneCityYoungsterText:
	text "There are cops in"
	line "the forest. They"
	cont "wouldn't let me"
	cont "through!"
	done
	
NacreneCityLassText:
	text "The cafe in town"
	line "serves specialty"
	
	para "drinks you can't"
	line "get anywhere else!"
	done
	
NacreneCityGentlemanText:
	text "We used to have a"
	line "GYM in the museum,"
	
	para "but LENORA has"
	line "retired to run"
	cont "the museum full"
	cont "time."
	done
	
NacreneCityPharmacistText:
	text "NACRENE CITY may"
	line "not be the biggest"
	
	para "city in UNOVA, but"
	line "it's got a"
	
	para "thriving scene for"
	line "young artists."
	done
	
NacreneCitySignText:
	text "NACRENE CITY"
	
	para "A pearl of a"
	line "place!"
	done
	
NacreneCafeSignText:
	text "NACRENE CITY Cafe."
	
	para "Refresh your body"
	line "and soul!"
	done
	
NacreneMuseumSignText:
	text "NACRENE CITY"
	line "Museum."
	
	para "Where the past"
	line "comes to life!"
	done
	
NacreneR3SignText:
	text "ROUTE 3 ahead."
	
	para "Passage to"
	line "STRIATON CITY."
	done

NacreneCity_MapEvents:
	db 0, 0 ; filler

	db 10 ; warp events
	warp_event  1, 12, PINWHEEL_FOREST, 2
	warp_event  1, 13, PINWHEEL_FOREST, 3
	warp_event 31, 15, NACRENE_POKECENTER_1F, 1
	warp_event 43,  5, NACRENE_MART, 1
	warp_event 25, 15, NACRENE_HOUSE, 1
	warp_event 24,  5, NACRENE_CAFE, 1
	warp_event 47, 16, R_3_NACRENE_GATE, 1
	warp_event 47, 17, R_3_NACRENE_GATE, 2
	warp_event 34,  5, NACRENE_MUSEUM, 1
	warp_event 35,  5, NACRENE_MUSEUM, 2

	db 4 ; coord events
	coord_event 18,  8, SCENE_DEFAULT, NacreneCityLenoraScript1
	coord_event 18,  9, SCENE_DEFAULT, NacreneCityLenoraScript2
	coord_event 18, 10, SCENE_DEFAULT, NacreneCityLenoraScript3
	coord_event 18, 11, SCENE_DEFAULT, NacreneCityLenoraScript4
	
	db 7 ; bg events
	bg_event 13,  8, BGEVENT_READ, NacreneCitySign
	bg_event 26,  7, BGEVENT_READ, NacreneCafeSign
	bg_event 33,  6, BGEVENT_READ, NacreneMuseumSign
	bg_event 46, 15, BGEVENT_READ, NacreneR3Sign
	bg_event 41,  2, BGEVENT_ITEM, NacreneCityRevive
	bg_event 27,  3, BGEVENT_ITEM, NacreneCityPPUp
	bg_event 28,  3, BGEVENT_ITEM, NacreneCityPPUp

	db 5 ; object events
	object_event 24,  8, SPRITE_LENORA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_NACRENE_CITY_LENORA
	object_event  7,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NacreneCityYoungsterScript, -1
	object_event 21,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NacreneCityLassScript, -1
	object_event 34,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NacreneCityGentlemanScript, -1
	object_event 25, 17, SPRITE_PHARMACIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NacreneCityPharmacistScript, -1
	