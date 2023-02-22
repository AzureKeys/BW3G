	const_def 2 ; object constants
	const NIMBASACITY_RED_SHARD
	const NIMBASACITY_YOUNGSTER
	const NIMBASACITY_GRAMPS
	const NIMBASACITY_TEACHER
	const NIMBASACITY_LASS
	const NIMBASACITY_BUG_CATCHER
	const NIMBASACITY_RANGER_F
	const NIMBASACITY_COOLTRAINER_F
	const NIMBASACITY_YOUNGSTER_2

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
	
NimbasaCityTeacherTextScript:
	jumptextfaceplayer NimbasaCityTeacherText
	
NimbasaCityLassTextScript:
	jumptextfaceplayer NimbasaCityLassText
	
NimbasaCityBugCatcherTextScript:
	checkmapscene NIMBASA_PARK_BASEMENT
	ifequal SCENE_NIMBASA_PARK_BASEMENT_NOTHING, .text2
	jumptextfaceplayer NimbasaCityBugCatcherText1
.text2
	jumptextfaceplayer NimbasaCityBugCatcherText2
	
NimbasaCityRangerFTextScript:
	jumptextfaceplayer NimbasaCityRangerFText
	
NimbasaCityCooltrainerFTextScript:
	jumptextfaceplayer NimbasaCityCooltrainerFText
	
NimbasaCityYoungster2TextScript:
	jumptextfaceplayer NimbasaCityYoungster2Text
	
NimbasaR5Sign:
	jumptext NimbasaR5SignText
	
NimbasaR16Sign:
	jumptext NimbasaR16SignText
	
NimbasaR4Sign:
	jumptext NimbasaR4SignText
	
NimbasaSubwaySign:
	jumptext NimbasaSubwaySignText
	
NimbasaTMMartSign:
	jumptext NimbasaTMMartSignText
	
NimbasaVitaminMartSign:
	jumptext NimbasaVitaminMartSignText
	
NimbasaBallMartSign:
	jumptext NimbasaBallMartSignText
	
NimbasaCityRedShard:
	itemball RED_SHARD

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

NimbasaCityTeacherText:
	text "There used to be"
	line "a GYM in the PARK"
	cont "in town."

	para "But ever since the"
	line "GYM LEADER, ELESA,"
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

NimbasaCityBugCatcherText1:
	text "A mean man was"
	line "standing outside"
	cont "the PARK."

	para "He wouldn't let"
	line "me in. It was"
	cont "scary…"
	done

NimbasaCityBugCatcherText2:
	text "Yay! The mean man"
	line "at the park is"
	cont "gone!"
	done

NimbasaCityRangerFText:
	text "The man at that"
	line "house rates your"
	cont "#MON names."

	para "He can even rename"
	line "your #MON."
	done

NimbasaCityCooltrainerFText:
	text "The shops here in"
	line "town sell all"

	para "kinds of useful"
	line "things for #-"
	cont "MON trainers!"
	done

NimbasaCityYoungster2Text:
	text "There used to be"
	line "a fun PARK in"
	
	para "town, but it"
	line "closed down."
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
	
NimbasaTMMartSignText:
	text "NIMBASA CITY"
	line "TM SHOP."
	
	para "Power up your"
	line "#MON with new"
	cont "moves!"
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
	warp_event 39, 10, R_16_NIMBASA_GATE, 1
	warp_event 39, 11, R_16_NIMBASA_GATE, 2
	warp_event 15, 23, NIMBASA_POKECENTER_1F, 1
	warp_event 21,  5, NIMBASA_TM_MART, 1
	warp_event  9,  5, NIMBASA_VITAMIN_MART, 1
	warp_event 31,  7, NIMBASA_BALL_MART, 1
	warp_event  4, 10, R_5_NIMBASA_GATE, 3
	warp_event  4, 11, R_5_NIMBASA_GATE, 4
	warp_event 29, 31, R_4_NIMBASA_GATE, 1
	warp_event 30, 31, R_4_NIMBASA_GATE, 2
	warp_event 10, 17, NIMBASA_HOUSE, 1
	warp_event 24, 17, NIMBASA_SUBWAY, 1
	warp_event 10, 23, NIMBASA_NAME_RATER, 1
	warp_event 25, 17, NIMBASA_SUBWAY, 2
	warp_event 33, 22, NIMBASA_PARK_OUTSIDE, 3
	warp_event 33, 23, NIMBASA_PARK_OUTSIDE, 4

	db 0 ; coord events

	db 7 ; bg events
	bg_event  5,  8, BGEVENT_READ, NimbasaR5Sign
	bg_event 38,  8, BGEVENT_READ, NimbasaR16Sign
	bg_event 28, 29, BGEVENT_READ, NimbasaR4Sign
	bg_event 26, 21, BGEVENT_READ, NimbasaSubwaySign
	bg_event 32,  8, BGEVENT_READ, NimbasaBallMartSign
	bg_event 12,  8, BGEVENT_READ, NimbasaVitaminMartSign
	bg_event 22,  8, BGEVENT_READ, NimbasaTMMartSign

	db 9 ; object events
	object_event 16, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NimbasaCityRedShard, EVENT_NIMBASA_CITY_RED_SHARD
	object_event 20, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 3, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NimbasaCityYoungsterTextScript, -1
	object_event 25, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 4, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaCityGrampsTextScript, -1
	object_event 31, 25, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NimbasaCityTeacherTextScript, -1
	object_event 25, 24, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaCityLassTextScript, -1
	object_event 16, 18, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaCityBugCatcherTextScript, -1
	object_event 12, 24, SPRITE_RANGER_F, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NimbasaCityRangerFTextScript, -1
	object_event 16, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaCityCooltrainerFTextScript, -1
	object_event 30, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 1, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NimbasaCityYoungster2TextScript, -1
	