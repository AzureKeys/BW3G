	const_def 2 ; object constants
	const OPELUCIDPOKECENTER1F_NURSE
	const OPELUCIDPOKECENTER1F_COOLTRAINER_M
	const OPELUCIDPOKECENTER1F_COOLTRAINER_F

OpelucidPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OpelucidPokecenter1FNurseScript:
	jumpstd pokecenternurse

OpelucidPokecenter1FCooltrainerMScript:
	jumptextfaceplayer OpelucidPokecenter1FCooltrainerMText

OpelucidPokecenter1FCooltrainerFScript:
	jumptextfaceplayer OpelucidPokecenter1FCooltrainerFText

OpelucidPokecenter1FCooltrainerMText:
	text "Hey! You have a"
	line "brand new kind of"
	cont "#DEX."

	para "Did PROF.OAK give"
	line "that to you?"
	done

OpelucidPokecenter1FCooltrainerFText:
	text "I got quite a"
	line "shock at the GYM."

	para "There were all"
	line "these girls who"
	cont "looked identical."
	done

OpelucidPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, OPELUCID_CITY, 6
	warp_event  4,  7, OPELUCID_CITY, 6
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OpelucidPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, OpelucidPokecenter1FCooltrainerMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OpelucidPokecenter1FCooltrainerFScript, -1
	