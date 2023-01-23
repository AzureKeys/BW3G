	const_def 2 ; object constants
	const LENTIMASPOKECENTER_NURSE
	const LENTIMASPOKECENTER_CLERK
	const LENTIMASPOKECENTER_GENTLEMAN
	const LENTIMASPOKECENTER_GRANNY
	const LENTIMASPOKECENTER_COOLTRAINER_M

LentimasPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasPokecenterNurseScript:
	jumpstd pokecenternurse

LentimasPokecenterClerkScript:
	jumpstd scalingmart

LentimasPokecenterGentlemanScript:
	jumptextfaceplayer LentimasPokecenterGentlemanText

LentimasPokecenterGrannyScript:
	jumptextfaceplayer LentimasPokecenterGrannyText

LentimasPokecenterCooltrainerMScript:
	jumptextfaceplayer LentimasPokecenterCooltrainerMText

LentimasPokecenterGentlemanText:
	text "Do your #MON"
	line "know HM moves?"

	para "Those moves can"
	line "be used even if"

	para "your #MON has"
	line "fainted."
	done

LentimasPokecenterGrannyText:
	text "Strange things"
	line "happen outside"
	cont "of town."
	
	para "Be careful."
	done

LentimasPokecenterCooltrainerMText:
	text "I'm on a journey."
	line "Why?"

	para "Well, do you rem-"
	line "ember exactly why"
	cont "you're traveling?"
	done

LentimasPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, LENTIMAS_TOWN, 2
	warp_event  5,  9, LENTIMAS_TOWN, 2

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasPokecenterClerkScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasPokecenterGentlemanScript, -1
	object_event  1,  7, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LentimasPokecenterGrannyScript, -1
	object_event  8,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, LentimasPokecenterCooltrainerMScript, -1
