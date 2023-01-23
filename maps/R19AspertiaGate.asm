	const_def 2 ; object constants
	const R19ASPERTIAGATE_OFFICER
	const R19ASPERTIAGATE_YOUNGSTER

Rt19AspertiaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rt19AspertiaGateOfficerScript:
	jumptextfaceplayer Rt19AspertiaGateOfficerText

Rt19AspertiaGateYoungsterScript:
	jumptextfaceplayer Rt19AspertiaGateYoungsterText

Rt19AspertiaGateOfficerText:
	text "The path ahead"
	line "leads to FLOCCESY"
	cont "TOWN."

	para "There are a lot of"
	line "trainers out on"
	
	para "the path, so be"
	line "prepared!"
	done

Rt19AspertiaGateYoungsterText:
	text "Some #MON only"
	line "appear out at the"
	cont "FLOCESSY RANCH!"

	para "If you want to"
	line "catch them all,"

	para "you have to look"
	line "everywhere!"
	done

Rt19AspertiaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, R_19, 1
	warp_event  5,  0, R_19, 2
	warp_event  4,  7, ASPERTIA_CITY, 5
	warp_event  5,  7, ASPERTIA_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, Rt19AspertiaGateOfficerScript, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Rt19AspertiaGateYoungsterScript, -1
