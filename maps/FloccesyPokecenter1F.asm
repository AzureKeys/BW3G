	const_def 2 ; object constants
	const FLOCCESYPOKECENTER_NURSE
	const FLOCCESYPOKECENTER_CLERK
	const FLOCCESYPOKECENTER_POKEFAN_M
	const FLOCCESYPOKECENTER_RANGER_M
	const FLOCCESYPOKECENTER_RANGER_F

FloccesyPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

FloccesyPokecenterNurseScript:
	jumpstd pokecenternurse

FlocessyPokecenterClerkScript:
	jumpstd scalingmart

FloccesyPokecenterPokefanMScript:
	jumptextfaceplayer FloccesyPokecenterPokefanMText

FloccesyPokecenterRangerMScript:
	jumptextfaceplayer FloccesyPokecenterRangerMText

FloccesyPokecenterRangerFScript:
	jumptextfaceplayer FloccesyPokecenterRangerFText

FloccesyPokecenterPokefanMText:
	text "What's this? TEAM"
	line "PLASMA has come"
	cont "back?"

	para "I saw some men in"
	line "black at VIRBANK"
	cont "CITY…"
	done

FloccesyPokecenterRangerMText:
	text "I stop my #MON"
	line "from evolving too"
	cont "early."

	para "I make them learn"
	line "certain moves be-"
	cont "fore I let them"
	cont "evolve."
	done

FloccesyPokecenterRangerFText:
	text "#MON do become"
	line "stronger when they"

	para "evolve, but they"
	line "also learn moves"
	cont "more slowly."
	done

FloccesyPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, FLOCCESY_TOWN, 1
	warp_event  5,  9, FLOCCESY_TOWN, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlocessyPokecenterClerkScript, -1
	object_event  1,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenterPokefanMScript, -1
	object_event  1,  7, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenterRangerMScript, -1
	object_event  9,  4, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FloccesyPokecenterRangerFScript, -1
