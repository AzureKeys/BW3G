	const_def 2 ; object constants
	const STRIATONPOKECENTER1F_NURSE
	const STRIATONPOKECENTER1F_SUPER_NERD
	const STRIATONPOKECENTER1F_GYM_GUY

StriatonPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

StriatonPokecenter1FNurseScript:
	jumpstd pokecenternurse

StriatonPokecenter1FSuperNerdScript:
	jumptextfaceplayer StriatonPokecenter1FSuperNerdText

StriatonPokecenter1FGymGuyScript:
	jumptextfaceplayer StriatonPokecenter1FGymGuyText

StriatonPokecenter1FSuperNerdText:
	text "For battles, I'd"
	line "much rather use"

	para "#MON I've been"
	line "raising, even if"

	para "they're weaker"
	line "than some newly"
	cont "caught #MON."
	done

StriatonPokecenter1FGymGuyText:
	text "Have you heard?"
	line "The GYM here in"

	para "town was re-opened"
	line "recently!"
	done

StriatonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, STRIATON_CITY, 1
	warp_event  4,  7, STRIATON_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, StriatonPokecenter1FSuperNerdScript, -1
	object_event  1,  5, SPRITE_GYM_GUY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, StriatonPokecenter1FGymGuyScript, -1
