	const_def 2 ; object constants
	const CASTELIAPLAZALOBBY_RECEPTIONIST_1
	const CASTELIAPLAZALOBBY_RECEPTIONIST_2
	const CASTELIAPLAZALOBBY_COOLTRAINER_M
	const CASTELIAPLAZALOBBY_TEACHER

CasteliaPlazaLobby_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaPlazaLobbyReceptionist1Script:
	jumptextfaceplayer CasteliaPlazaLobbyReceptionist1Text

CasteliaPlazaLobbyReceptionist2Script:
	jumptextfaceplayer CasteliaPlazaLobbyReceptionist2Text

CasteliaPlazaLobbyCooltrainerMScript:
	jumptextfaceplayer CasteliaPlazaLobbyCooltrainerMText

CasteliaPlazaLobbyTeacherScript:
	jumptextfaceplayer CasteliaPlazaLobbyTeacherText

CasteliaPlazaLobbySign:
	jumptext CasteliaPlazaLobbySignText

CasteliaPlazaLobbyElevatorButton:
	jumpstd elevatorbutton

CasteliaPlazaLobbyReceptionist1Text:
	text "Welcome to"
	line "CASTELIA GAME"
	cont "PLAZA!"
	
	para "You can play games"
	line "upstairs and win"
	cont "prizes!"
	done

CasteliaPlazaLobbyReceptionist2Text:
	text "If you like to"
	line "travel, make sure"
	
	para "you also visit our"
	line "sister store in"
	cont "VIRBANK CITY!"
	done

CasteliaPlazaLobbyCooltrainerMText:
	text "I'm raring to go"
	line "play the slots"
	cont "again today!"
	
	para "It's going to be a"
	line "good day, I can"
	cont "feel it!"
	done

CasteliaPlazaLobbyTeacherText:
	text "I prefer the slots"
	line "in this GAME"
	
	para "CORNER over the"
	line "one in VIRBANK"
	cont "CITY."
	
	para "I feel like the"
	line "odds are better"
	cont "somehow."
	done

CasteliaPlazaLobbySignText:
	text "CASTELIA GAME"
	line "PLAZA."
	
	para "2F - GAME CORNER"
	line "3F - PRIZE ROOM"
	cont "4F - RESTAURANT"
	done

CasteliaPlazaLobby_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  7,  7, CASTELIA_CITY_SOUTH, 10
	warp_event  8,  7, CASTELIA_CITY_SOUTH, 10
	warp_event 11,  0, CASTELIA_PLAZA_GAME_CORNER, 2
	warp_event 14,  0, CASTELIA_PLAZA_ELEVATOR, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 10,  0, BGEVENT_READ, CasteliaPlazaLobbySign
	bg_event 15,  0, BGEVENT_READ, CasteliaPlazaLobbyElevatorButton

	db 4 ; object events
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaLobbyReceptionist1Script, -1
	object_event  4,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaLobbyReceptionist2Script, -1
	object_event 12,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaLobbyCooltrainerMScript, -1
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPlazaLobbyTeacherScript, -1
	