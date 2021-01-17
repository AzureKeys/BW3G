	const_def 2 ; object constants
	const CASTELIADEPTSTORE2F_CLERK1
	const CASTELIADEPTSTORE2F_CLERK2
	const CASTELIADEPTSTORE2F_YOUNGSTER
	const CASTELIADEPTSTORE2F_COOLTRAINER_F
	const CASTELIADEPTSTORE2F_GENTLEMAN

CasteliaDeptStore2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaDeptStore2FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CASTELIA_2F_1
	closetext
	end

CasteliaDeptStore2FClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CASTELIA_2F_2
	closetext
	end

CasteliaDeptStore2FYoungsterScript:
	jumptextfaceplayer CasteliaDeptStore2FYoungsterText

CasteliaDeptStore2FCooltrainerFScript:
	jumptextfaceplayer CasteliaDeptStore2FCooltrainerFText

CasteliaDeptStore2FGentlemanScript:
	jumptextfaceplayer CasteliaDeptStore2FGentlemanText

CasteliaDeptStore2FDirectory:
	jumptext CasteliaDeptStore2FDirectoryText

CasteliaDeptStore2FElevatorButton:
	jumpstd elevatorbutton

CasteliaDeptStore2FYoungsterText:
	text "X-TRAN can store"
	line "up to ten phone"
	cont "numbers."

	para "It's hard to de-"
	line "cide which numbers"
	cont "to keep."
	done

CasteliaDeptStore2FCooltrainerFText:
	text "I got my SANDILE"
	line "out in ROUTE 4."

	para "Now it's my best"
	line "partner."
	done

CasteliaDeptStore2FGentlemanText:
	text "This DEPT.STORE"
	line "makes me realize"

	para "that CASTELIA is"
	line "a big city."

	para "The selection here"
	line "is unmatched any-"
	cont "where else."
	done

CasteliaDeptStore2FDirectoryText:
	text "Your Travel"
	line "Companion"

	para "2F TRAINER'S"
	line "   MARKET"
	done

CasteliaDeptStore2F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 12,  0, CASTELIA_DEPT_STORE_3F, 1
	warp_event 15,  0, CASTELIA_DEPT_STORE_1F, 3
	warp_event  2,  0, CASTELIA_DEPT_STORE_ELEVATOR, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14,  0, BGEVENT_READ, CasteliaDeptStore2FDirectory
	bg_event  3,  0, BGEVENT_READ, CasteliaDeptStore2FElevatorButton

	db 5 ; object events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore2FClerk1Script, -1
	object_event 13,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore2FClerk2Script, -1
	object_event  9,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore2FYoungsterScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore2FCooltrainerFScript, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore2FGentlemanScript, -1
