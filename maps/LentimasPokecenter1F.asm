	const_def 2 ; object constants
	const LENTIMASPOKECENTER_NURSE
	const LENTIMASPOKECENTER_CLERK
	const LENTIMASPOKECENTER_GENTLEMAN
	const LENTIMASPOKECENTER_FISHING_GURU
	const LENTIMASPOKECENTER_POKEFAN_F

LentimasPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasPokecenterNurseScript:
	jumpstd pokecenternurse

LentimasPokecenterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LENTIMAS
	closetext
	end

LentimasPokecenterGentlemanScript:
	jumptextfaceplayer LentimasPokecenterGentlemanText

LentimasPokecenterFishingGuruScript:
	jumptextfaceplayer LentimasPokecenterFishingGuruText

LentimasPokecenterPokefanFScript:
	jumptextfaceplayer LentimasPokecenterPokefanFText

LentimasPokecenterGentlemanText:
	text "Do your #MON"
	line "know HM moves?"

	para "Those moves can"
	line "be used even if"

	para "your #MON has"
	line "fainted."
	done

LentimasPokecenterFishingGuruText:
	text "Strange things"
	line "happen outside"
	cont "of town."
	
	para "Be careful."
	done

LentimasPokecenterPokefanFText:
	text "There's no GREAT"
	line "BALL here. #"

	para "BALLS will have"
	line "to do."
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
	object_event  1,  7, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasPokecenterFishingGuruScript, -1
	object_event  8,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, LentimasPokecenterPokefanFScript, -1
