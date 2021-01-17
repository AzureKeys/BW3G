	const_def 2 ; object constants
	const ASPERTIAPOKECENTER1F_NURSE
	const ASPERTIAPOKECENTER1F_FISHER
	const ASPERTIAPOKECENTER1F_TEACHER

AspertiaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AspertiaPokecenter1FNurseScript:
	jumpstd pokecenternurse

AspertiaPokecenter1FFisherScript:
	jumptextfaceplayer AspertiaPokecenter1FFisherText

AspertiaPokecenter1FTeacherScript:
	jumptextfaceplayer AspertiaPokecenter1FTeacherText

AspertiaPokecenter1FFisherText:
	text "Some #MON will"
	line "evolve if you"
	cont "treat them well."

	para "My YANMA was very"
	line "happy, and all of"
	cont "a sudden, it"
	cont "evolved!"
	done

AspertiaPokecenter1FTeacherText:
	text "There's a #MON"
	line "called EEVEE that"

	para "can evolve into"
	line "many different"
	cont "#MON!"
	done

AspertiaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, ASPERTIA_CITY, 3
	warp_event  4,  7, ASPERTIA_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenter1FNurseScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenter1FFisherScript, -1
	object_event  7,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenter1FTeacherScript, -1
