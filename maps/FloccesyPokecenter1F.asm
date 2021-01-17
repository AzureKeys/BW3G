	const_def 2 ; object constants
	const FLOCCESYPOKECENTER1F_NURSE
	const FLOCCESYPOKECENTER1F_POKEFAN_M
	const FLOCCESYPOKECENTER1F_YOUNGSTER
	const FLOCCESYPOKECENTER1F_COOLTRAINER_F

FloccesyPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

FloccesyPokecenter1FNurseScript:
	jumpstd pokecenternurse

FloccesyPokecenter1FPokefanMScript:
	jumptextfaceplayer FloccesyPokecenter1FPokefanMText

FloccesyPokecenter1FYoungsterScript:
	jumptextfaceplayer FloccesyPokecenter1FYoungsterText

FloccesyPokecenter1FCooltrainerFScript:
	jumptextfaceplayer FloccesyPokecenter1FCooltrainerFText

FloccesyPokecenter1FPokefanMText:
	text "What's this? TEAM"
	line "PLASMA has come"
	cont "back?"

	para "I saw some men in"
	line "black at VIRBANK"
	cont "CITY…"
	done

FloccesyPokecenter1FYoungsterText:
	text "I stop my #MON"
	line "from evolving too"
	cont "early."

	para "I make them learn"
	line "certain moves be-"
	cont "fore I let them"
	cont "evolve."
	done

FloccesyPokecenter1FCooltrainerFText:
	text "#MON do become"
	line "stronger when they"

	para "evolve, but they"
	line "also learn moves"
	cont "more slowly."
	done

FloccesyPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, FLOCCESY_TOWN, 1
	warp_event  4,  7, FLOCCESY_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenter1FPokefanMScript, -1
	object_event  1,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenter1FYoungsterScript, -1
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenter1FCooltrainerFScript, -1
