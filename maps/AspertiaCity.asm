	const_def 2 ; object constants
	const ASPERTIACITY_TM_DREAM_EATER
	const ASPERTIACITY_BLOCKER
	const ASPERTIACITY_SCOPE_GUY
	const ASPERTIACITY_LASS
	const ASPERTIACITY_TEACHER
	const ASPERTIACITY_GRAMPS
	const ASPERTIACITY_YOUNGSTER

AspertiaCity_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_ASPERTIA
	return
	
AspertiaCityScopeGuyScript:
	faceplayer
	opentext
	writetext AspertiaCityScopeGuyText
	checkevent EVENT_ASPERTIA_CITY_SCOPE_LENS
	iftrue .gotlens
	buttonsound
	writetext AspertiaCityGiveScopeText
	buttonsound
	verbosegiveitem SCOPE_LENS
	iffalse .noroom
	setevent EVENT_ASPERTIA_CITY_SCOPE_LENS
.gotlens
	waitbutton
.noroom
	closetext
	end
	
AspertiaCityBlockerScript:
	jumptextfaceplayer AspertiaCityBlockerText
	
AspertiaCityLassScript:
	jumptextfaceplayer AspertiaCityLassText
	
AspertiaCityTeacherScript:
	jumptextfaceplayer AspertiaCityTeacherText
	
AspertiaCityGrampsScript:
	jumptextfaceplayer AspertiaCityGrampsText
	
AspertiaCityYoungsterScript:
	jumptextfaceplayer AspertiaCityYoungsterText
	
AspertiaCityTMDreamEater:
	itemball TM_DREAM_EATER
	
AspertiaCitySign:
	jumptext AspertiaCitySignText
	
AspertiaSubwaySign:
	jumptext AspertiaSubwaySignText
	
AspertiaCityScopeGuyText:
	text "Boy, I sure do"
	line "love the view off"
	cont "this platform."
	done
	
AspertiaCityGiveScopeText:
	text "Here, take this"
	line "scope for"
	cont "yourself."
	done
	
AspertiaCityBlockerText:
	text "Sorry, the GYM"
	line "LEADER isn't here"
	cont "right now."
	
	para "The GYM's closed"
	line "until he comes"
	cont "back."
	done
	
AspertiaCityLassText:
	text "There's a man here"
	line "called the MOVE"
	cont "DELETER."
	
	para "He can make your"
	line "#MON forget any"
	cont "move, even an HM."
	done
	
AspertiaCityTeacherText:
	text "I'm so glad they"
	line "built the SUBWAY"
	
	para "station here in"
	line "town. It's made"
	
	para "shopping in"
	line "NIMBASA so much"
	cont "easier!"
	done
	
AspertiaCityGrampsText:
	text "You know, I used"
	line "to be quite the"
	
	para "trainer back in"
	line "my day. You young"
	cont "uns could learn a"
	
	para "thing or two from"
	line "us elders!"
	done
	
AspertiaCityYoungsterText:
	text "You should always"
	line "be kind to your"
	cont "#MON. Some"
	
	para "#MON can even"
	line "evolve if you're"
	cont "kind to them."
	
	para "At least, that's"
	line "what I've heard."
	done
	
AspertiaCitySignText:
	text "ASPERTIA CITY"
	
	para "A city that"
	line "reaches for the"
	cont "sky."
	done
	
AspertiaSubwaySignText:
	text "ASPERTIA CITY"
	line "SUBWAY station."
	done

AspertiaCity_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 10, 31, ASPERTIA_SUBWAY, 3
	warp_event 23, 15, ASPERTIA_BLACKBELT_HOUSE, 1
	warp_event 15, 23, ASPERTIA_POKECENTER_1F, 1
	warp_event 13, 37, ASPERTIA_MOM_HOUSE, 1
	warp_event 19,  9, R_19_ASPERTIA_GATE, 3
	warp_event  5, 37, ASPERTIA_MOVE_DELETER_HOUSE, 1
	warp_event  6, 23, ASPERTIA_GYM, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 21, 25, BGEVENT_READ, AspertiaCitySign
	bg_event  7, 31, BGEVENT_READ, AspertiaSubwaySign

	db 7 ; object events
	object_event 22, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, AspertiaCityTMDreamEater, EVENT_ASPERTIA_CITY_TM_DREAM_EATER
	object_event  6, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AspertiaCityBlockerScript, EVENT_ASPERTIA_CITY_BLOCKER
	object_event  7,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AspertiaCityScopeGuyScript, -1
	object_event 12, 40, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AspertiaCityLassScript, -1
	object_event  6, 28, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AspertiaCityTeacherScript, -1
	object_event 17, 13, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AspertiaCityGrampsScript, -1
	object_event 22, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AspertiaCityYoungsterScript, -1
	