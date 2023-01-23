	const_def 2 ; object constants
	const ASPERTIAPOKECENTER_NURSE
	const ASPERTIAPOKECENTER_CLERK
	const ASPERTIAPOKECENTER_RANGER_F
	const ASPERTIAPOKECENTER_TEACHER
	const ASPERTIAPOKECENTER_COOLTRAINER_F

AspertiaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AspertiaPokecenterNurseScript:
	jumpstd pokecenternurse

AspertiaPokecenterClerkScript:
	jumpstd scalingmart

AspertiaPokecenterRangerFScript:
	jumptextfaceplayer AspertiaPokecenterRangerFText

AspertiaPokecenterTeacherScript:
	jumptextfaceplayer AspertiaPokecenterTeacherText

AspertiaPokecenterCooltrainerFScript:
	jumptextfaceplayer AspertiaPokecenterCooltrainerFText

AspertiaPokecenterRangerFText:
	text "Some #MON will"
	line "evolve if you"
	cont "treat them well."

	para "My YANMA was very"
	line "happy, and all of"
	cont "a sudden, it"
	cont "evolved!"
	done

AspertiaPokecenterTeacherText:
	text "There's a #MON"
	line "called EEVEE that"

	para "can evolve into"
	line "many different"
	cont "#MON!"
	done

AspertiaPokecenterCooltrainerFText:
	text "Do any of your"
	line "#MON know the"

	para "move for carrying"
	line "people on water?"
	
	para "It's very useful!"
	done

AspertiaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, ASPERTIA_CITY, 3
	warp_event  5,  9, ASPERTIA_CITY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenterClerkScript, -1
	object_event  8,  2, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenterRangerFScript, -1
	object_event  1,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenterTeacherScript, -1
	object_event  0,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AspertiaPokecenterCooltrainerFScript, -1
	