	const_def 2 ; object constants
	const NUVEMATOWN_POKEFAN_M
	const NUVEMATOWN_TEACHER

NuvemaTown_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_NUVEMA
	return
	
NuvemaTownPokefanMScript:
	jumptextfaceplayer NuvemaTownPokefanMText
	
NuvemaTownTeacherScript:
	jumptextfaceplayer NuvemaTownTeacherText

NuvemaTownSign:
	jumptext NuvemaTownSignText

NuvemaLabSign:
	clearevent EVENT_NUVEMA_LAB_BIANCA
	jumptext NuvemaLabSignText
	
NuvemaTownPokefanMText:
	text "A couple of years"
	line "ago, my daughter"
	cont "became the #MON"
	cont "PROF!"
	
	para "I couldn't be"
	line "more proud!"
	done
	
NuvemaTownTeacherText:
	text "Welcome to NUVEMA"
	line "TOWN! We may not"
	
	para "look like much,"
	line "but we're home to"
	
	para "UNOVA's #MON"
	line "LAB!"
	done
	
NuvemaTownSignText:
	text "NUVEMA TOWN."
	
	para "The start of"
	line "something big!"
	done
	
NuvemaLabSignText:
	text "NUVEMA #MON"
	line "LAB."
	
	para "PROF. BIANCA BEL"
	line "presiding."
	done

NuvemaTown_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11, 11, NUVEMA_MOM_HOUSE, 1
	warp_event  6,  5, NUVEMA_LAB, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5,  7, BGEVENT_READ, NuvemaLabSign
	bg_event 15, 11, BGEVENT_READ, NuvemaTownSign

	db 2 ; object events
	object_event  9, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NuvemaTownPokefanMScript, -1
	object_event 17,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NuvemaTownTeacherScript, -1
	