	const_def 2 ; object constants
	const ACCUMULAPOKECENTER1F_NURSE
	const ACCUMULAPOKECENTER1F_PHARMACIST
	const ACCUMULAPOKECENTER1F_COOLTRAINER_F

AccumulaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AccumulaPokecenter1FNurseScript:
	jumpstd pokecenternurse

AccumulaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer AccumulaPokecenter1FCooltrainerFText

AccumulaPokecenter1FPharmacistScript:
	jumptextfaceplayer AccumulaPokecenter1FPharmacistText

AccumulaPokecenter1FCooltrainerFText:
	text "The GYM over in"
	line "STRIATON CITY"
	cont "reopened just"
	cont "recently."
	
	para "CILAN is a master"
	line "of grass #MON."

	para "He'll make you"
	line "pay if you don't"
	cont "watch yourself."
	done

AccumulaPokecenter1FPharmacistText:
	text "TEAM PLASMA came"
	line "to town years ago."

	para "They tried to"
	line "convince the"
	cont "townspeople to"

	para "give up their"
	line "#MON!"
	done

AccumulaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, ACCUMULA_TOWN, 4
	warp_event  4,  7, ACCUMULA_TOWN, 4
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FNurseScript, -1
	object_event  0,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FPharmacistScript, -1
	object_event  8,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AccumulaPokecenter1FCooltrainerFScript, -1
	