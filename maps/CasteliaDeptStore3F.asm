	const_def 2 ; object constants
	const CASTELIADEPTSTORE3F_CLERK
	const CASTELIADEPTSTORE3F_SUPER_NERD
	const CASTELIADEPTSTORE3F_ROCKER

CasteliaDeptStore3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaDeptStore3FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CASTELIA_3F
	closetext
	end

CasteliaDeptStore3FSuperNerdScript:
	jumptextfaceplayer CasteliaDeptStore3FSuperNerdText

CasteliaDeptStore3FRockerScript:
	jumptextfaceplayer CasteliaDeptStore3FRockerText

CasteliaDeptStore3FDirectory:
	jumptext CasteliaDeptStore3FDirectoryText

CasteliaDeptStore3FElevatorButton:
	jumpstd elevatorbutton

CasteliaDeptStore3FSuperNerdText:
	text "I, I, I'm really"
	line "impatient!"

	para "I use X SPEED in"
	line "battle to speed up"
	cont "my #MON."
	done

CasteliaDeptStore3FRockerText:
	text "Hey! When you bat-"
	line "tle, do you use X"
	cont "SPECIAL?"

	para "It's awesome. It"
	line "really jacks up"
	cont "SPECIAL ATTACK!"
	done

CasteliaDeptStore3FDirectoryText:
	text "For Victory"
	line "Seekers"

	para "3F BATTLE"
	line "   COLLECTION"
	done

CasteliaDeptStore3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 12,  0, CASTELIA_DEPT_STORE_2F, 1
	warp_event 15,  0, CASTELIA_DEPT_STORE_4F, 1
	warp_event  2,  0, CASTELIA_DEPT_STORE_ELEVATOR, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14,  0, BGEVENT_READ, CasteliaDeptStore3FDirectory
	bg_event  3,  0, BGEVENT_READ, CasteliaDeptStore3FElevatorButton

	db 3 ; object events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore3FClerkScript, -1
	object_event 12,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 1, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore3FSuperNerdScript, -1
	object_event  2,  5, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaDeptStore3FRockerScript, -1
