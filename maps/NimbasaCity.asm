	const_def 2 ; object constants
	const NIMBASACITY_YOUNGSTER
	const NIMBASACITY_GRAMPS
	const NIMBASACITY_POKEFANF
	const NIMBASACITY_LASS
	const NIMBASACITY_YOUNGSTER2
	const NIMBASACITY_LASS2
	const NIMBASACITY_SUPER_NERD
	const NIMBASACITY_YOUNGSTER3

NimbasaCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_NIMBASA
	return
	
NimbasaCityYoungsterTextScript:
	jumptextfaceplayer NimbasaCityYoungsterText
	
NimbasaCityGrampsTextScript:
	jumptextfaceplayer NimbasaCityGrampsText
	
NimbasaCityPokefanFTextScript:
	jumptextfaceplayer NimbasaCityPokefanFText
	
NimbasaCityLassTextScript:
	jumptextfaceplayer NimbasaCityLassText
	
NimbasaCityYoungster2TextScript:
	checkmapscene NIMBASA_PARK_BASEMENT
	ifequal SCENE_NIMBASA_PARK_BASEMENT_NOTHING, .text2
	jumptextfaceplayer NimbasaCityYoungster2Text1
.text2
	jumptextfaceplayer NimbasaCityYoungster2Text2
	
NimbasaCityLass2TextScript:
	jumptextfaceplayer NimbasaCityLass2Text
	
NimbasaCitySuperNerdTextScript:
	jumptextfaceplayer NimbasaCitySuperNerdText
	
NimbasaCityYoungster3TextScript:
	jumptextfaceplayer NimbasaCityYoungster3Text
	
NimbasaR5Sign:
	jumptext NimbasaR5SignText
	
NimbasaR16Sign:
	jumptext NimbasaR16SignText
	
NimbasaR4Sign:
	jumptext NimbasaR4SignText
	
NimbasaSubwaySign:
	jumptext NimbasaSubwaySignText
	
NimbasaGeneralMartSign:
	jumptext NimbasaGeneralMartSignText
	
NimbasaVitaminMartSign:
	jumptext NimbasaVitaminMartSignText
	
NimbasaBallMartSign:
	jumptext NimbasaBallMartSignText

NimbasaCityYoungsterText:
	text "E-he-he-he…"

	para "I got in trouble"
	line "for playing in the"
	cont "old PARK…"
	done

NimbasaCityGrampsText:
	text "Whew! This is one"
	line "big town. I don't"

	para "know where any-"
	line "thing is."
	done

NimbasaCityPokefanFText:
	text "There used to be"
	line "a GYM in the PARK"
	cont "in town."

	para "But ever since the"
	line "GYM LEADER, ELISA,"
	cont "left for bigger"
	cont "and better things,"
	
	para "the PARK has"
	line "fallen into dis-"
	cont "repair…"
	done

NimbasaCityLassText:
	text "I'm taking the"
	line "SUBWAY to visit"

	para "my friend in"
	line "ASPERTIA CITY."
	
	para "A rail pass sure"
	line "is nice for"
	cont "traveling!"
	done

NimbasaCityYoungster2Text1:
	text "A mean man was"
	line "standing outside"
	cont "the PARK."

	para "He wouldn't let"
	line "me in. It was"
	cont "scary…"
	done

NimbasaCityYoungster2Text2:
	text "Yay! The mean man"
	line "at the park is"
	cont "gone!"
	done

NimbasaCityLass2Text:
	text "The man at that"
	line "house rates your"
	cont "#MON names."

	para "He can even rename"
	line "your #MON."
	done

NimbasaCitySuperNerdText:
	text "The shops here in"
	line "town sell all"

	para "kinds of useful"
	line "things for #-"
	cont "MON trainers!"
	done

NimbasaCityYoungster3Text:
	text "There used to be"
	line "a fun PARK in"
	cont "town, but it"
	cont "closed down."
	done
	
NimbasaR5SignText:
	text "ROUTE 5 ahead."
	
	para "Passage to"
	line "DRIFTVEIL CITY."
	done
	
NimbasaR16SignText:
	text "ROUTE 16 ahead."
	
	para "Passage to"
	line "LOSTLORN FOREST."
	done
	
NimbasaR4SignText:
	text "ROUTE 4 ahead."
	
	para "Passage to"
	line "CASTELIA CITY."
	
	para "Watch out for"
	line "contruction!"
	done
	
NimbasaSubwaySignText:
	text "NIMBASA CITY"
	line "SUBWAY station."
	done
	
NimbasaGeneralMartSignText:
	text "NIMBASA CITY"
	line "#MART."
	
	para "Essentials for"
	line "#MON trainers."
	done
	
NimbasaVitaminMartSignText:
	text "NIMBASA CITY"
	line "VITAMIN MART."
	
	para "Increase your"
	line "#MON's health."
	done
	
NimbasaBallMartSignText:
	text "NIMBASA CITY"
	line "#BALL SHOP"
	
	para "Get equipped to"
	line "catch #MON!"
	done

NimbasaCity_MapEvents:
	db 0, 0 ; filler

	db 16 ; warp events
	warp_event 39,  8, R_16_NIMBASA_GATE, 1
	warp_event 39,  9, R_16_NIMBASA_GATE, 2
	warp_event 15, 21, NIMBASA_POKECENTER_1F, 1
	warp_event 31,  5, NIMBASA_MART, 1
	warp_event  9,  3, NIMBASA_VITAMIN_MART, 1
	warp_event 21,  3, NIMBASA_BALL_MART, 1
	warp_event  4,  8, R_5_NIMBASA_GATE, 3
	warp_event  4,  9, R_5_NIMBASA_GATE, 4
	warp_event 29, 29, R_4_NIMBASA_GATE, 1
	warp_event 30, 29, R_4_NIMBASA_GATE, 2
	warp_event 10, 15, NIMBASA_HOUSE, 1
	warp_event 24, 15, NIMBASA_SUBWAY, 1
	warp_event 10, 21, NIMBASA_NAME_RATER, 1
	warp_event 25, 15, NIMBASA_SUBWAY, 2
	warp_event 33, 20, NIMBASA_PARK_OUTSIDE, 3
	warp_event 33, 21, NIMBASA_PARK_OUTSIDE, 4

	db 0 ; coord events

	db 7 ; bg events
	bg_event  5,  6, BGEVENT_READ, NimbasaR5Sign
	bg_event 38,  6, BGEVENT_READ, NimbasaR16Sign
	bg_event 28, 27, BGEVENT_READ, NimbasaR4Sign
	bg_event 26, 19, BGEVENT_READ, NimbasaSubwaySign
	bg_event 22,  6, BGEVENT_READ, NimbasaBallMartSign
	bg_event 12,  6, BGEVENT_READ, NimbasaVitaminMartSign
	bg_event 32,  6, BGEVENT_READ, NimbasaGeneralMartSign

	db 8 ; object events
	object_event 20, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NimbasaCityYoungsterTextScript, -1
	object_event 25,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 4, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaCityGrampsTextScript, -1
	object_event 31, 23, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NimbasaCityPokefanFTextScript, -1
	object_event 25, 22, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaCityLassTextScript, -1
	object_event 16, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NimbasaCityYoungster2TextScript, -1
	object_event 12, 22, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NimbasaCityLass2TextScript, -1
	object_event 16,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 4, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaCitySuperNerdTextScript, -1
	object_event 30, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 1, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NimbasaCityYoungster3TextScript, -1
	