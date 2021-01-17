	const_def 2 ; object constants
	const CASTELIADEPTSTORE4F_CLERK
	const CASTELIADEPTSTORE4F_COOLTRAINER_M
	const CASTELIADEPTSTORE4F_BUG_CATCHER

CasteliaDeptStore4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaDeptStore4FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CASTELIA_4F
	closetext
	end

CasteliaDeptStore4FCooltrainerMScript:
	jumptextfaceplayer CasteliaDeptStore4FCooltrainerMText

CasteliaDeptStore4FBugCatcherScript:
	jumptextfaceplayer CasteliaDeptStore4FBugCatcherText

CasteliaDeptStore4FDirectory:
	jumptext CasteliaDeptStore4FDirectoryText

CasteliaDeptStore4FElevatorButton:
	jumpstd elevatorbutton

CasteliaDeptStore4FCooltrainerMText:
	text "Hey. I love strong"
	line "#MON."

	para "I want to use TMs"
	line "to make my #MON"
	cont "even stronger!"
	done

CasteliaDeptStore4FBugCatcherText:
	text "There are sure to"
	line "be TMs that are"

	para "just perfect for"
	line "your #MON."
	done

CasteliaDeptStore4FDirectoryText:
	text "Customize Your"
	line "#MON"

	para "4F TM CORNER"
	done

CasteliaDeptStore4F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 15,  0, CASTELIA_DEPT_STORE_3F, 2
	warp_event  2,  0, CASTELIA_DEPT_STORE_ELEVATOR, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14,  0, BGEVENT_READ, CasteliaDeptStore4FDirectory
	bg_event  3,  0, BGEVENT_READ, CasteliaDeptStore4FElevatorButton

	db 3 ; object events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore4FClerkScript, -1
	object_event 11,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore4FCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore4FBugCatcherScript, -1
