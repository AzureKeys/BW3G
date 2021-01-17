	const_def 2 ; object constants
	const CASTELIADEPTSTORE1F_RECEPTIONIST
	const CASTELIADEPTSTORE1F_POKEFAN_F
	const CASTELIADEPTSTORE1F_BUG_CATCHER

CasteliaDeptStore1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaDeptStore1FReceptionistScript:
	jumptextfaceplayer CasteliaDeptStore1FReceptionistText

CasteliaDeptStore1FPokefanFScript:
	jumptextfaceplayer CasteliaDeptStore1FPokefanFText

CasteliaDeptStore1FBugCatcherScript:
	jumptextfaceplayer CasteliaDeptStore1FBugCatcherText

CasteliaDeptStore1FDirectory:
	jumptext CasteliaDeptStore1FDirectoryText

CasteliaDeptStore1FElevatorButton:
	jumpstd elevatorbutton

CasteliaDeptStore1FReceptionistText:
	text "Welcome to"
	line "CASTELIA DEPT"
	cont "STORE."
	done

CasteliaDeptStore1FPokefanFText:
	text "I'm raring to shop"
	line "again today!"
	done

CasteliaDeptStore1FBugCatcherText:
	text "Mom's good at"
	line "bargain hunting."

	para "She always buys"
	line "stuff at lower"
	cont "prices."
	done

CasteliaDeptStore1FDirectoryText:
	text "1F SERVICE COUNTER"

	para "2F TRAINER'S"
	line "   MARKET"

	para "3F BATTLE"
	line "   COLLECTION"

	para "4F TM CORNER"
	done

CasteliaDeptStore1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  7,  7, CASTELIA_CITY_SOUTH, 10
	warp_event  8,  7, CASTELIA_CITY_SOUTH, 10
	warp_event 15,  0, CASTELIA_DEPT_STORE_2F, 2
	warp_event  2,  0, CASTELIA_DEPT_STORE_ELEVATOR, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14,  0, BGEVENT_READ, CasteliaDeptStore1FDirectory
	bg_event  3,  0, BGEVENT_READ, CasteliaDeptStore1FElevatorButton

	db 3 ; object events
	object_event 10,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore1FReceptionistScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore1FPokefanFScript, -1
	object_event  5,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore1FBugCatcherScript, -1
