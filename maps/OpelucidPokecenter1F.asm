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
	text "TEAM PLASMA once"
	line "tried to take over"
	cont "our city."

	para "They were beaten"
	line "by our GYM LEADER,"
	cont "DRAYDEN!"
	done

OpelucidPokecenter1FCooltrainerFText:
	text "DRAYDEN is strong,"
	line "but his grand-"
	cont "daughter, IRIS,"

	para "was the #MON"
	line "LEAGUE champion!"
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
	