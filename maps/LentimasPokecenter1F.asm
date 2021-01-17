	const_def 2 ; object constants
	const LENTIMASPOKECENTER1F_NURSE
	const LENTIMASPOKECENTER1F_GENTLEMAN
	const LENTIMASPOKECENTER1F_FISHING_GURU
	const LENTIMASPOKECENTER1F_POKEFAN_F

LentimasPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasPokecenter1FNurseScript:
	jumpstd pokecenternurse

LentimasPokecenter1FGentlemanScript:
	jumptextfaceplayer LentimasPokecenter1FGentlemanText

LentimasPokecenter1FFishingGuruScript:
	jumptextfaceplayer LentimasPokecenter1FFishingGuruText

LentimasPokecenter1FPokefanFScript:
	jumptextfaceplayer LentimasPokecenter1FPokefanFText

LentimasPokecenter1FGentlemanText:
	text "Do your #MON"
	line "know HM moves?"

	para "Those moves can"
	line "be used even if"

	para "your #MON has"
	line "fainted."
	done

LentimasPokecenter1FFishingGuruText:
	text "Strange things"
	line "happen outside"
	cont "of town."
	
	para "Be careful."
	done

LentimasPokecenter1FPokefanFText:
	text "This BILL guy"
	line "created the system"

	para "for storing"
	line "#MON in a PC."

	para "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

LentimasPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, LENTIMAS_TOWN, 2
	warp_event  4,  7, LENTIMAS_TOWN, 2
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasPokecenter1FNurseScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasPokecenter1FGentlemanScript, -1
	object_event  6,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasPokecenter1FFishingGuruScript, -1
	object_event  1,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, LentimasPokecenter1FPokefanFScript, -1
