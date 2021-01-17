	const_def 2 ; object constants
	const CASTELIAPOKECENTER1F_NURSE
	const CASTELIAPOKECENTER1F_POKEFAN_M
	const CASTELIAPOKECENTER1F_COOLTRAINER_F
	const CASTELIAPOKECENTER1F_GYM_GUY

CasteliaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaPokecenter1FNurseScript:
	jumpstd pokecenternurse

CasteliaPokecenter1FPokefanMScript:
	jumptextfaceplayer CasteliaPokecenter1FPokefanMText

CasteliaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer CasteliaPokecenter1FCooltrainerFText

CasteliaPokecenter1FGymGuyScript:
	jumptextfaceplayer CasteliaPokecenter1FGymGuyText

CasteliaPokecenter1FPokefanMText:
	text "The BATTLE COMPANY"
	line "makes all kinds of"

	para "products for #-"
	line "MON battling."
	done

CasteliaPokecenter1FCooltrainerFText:
	text "BURGH, the GYM"
	line "LEADER, is soooo"
	cont "cool."

	para "His #MON are"
	line "really tough too."
	done

CasteliaPokecenter1FGymGuyText:
	text "NIMBASA CITY…"

	para "Strange people in"
	line "the abandoned"
	cont "park…"

	para "I smell a conspir-"
	line "acy. I know it!"
	done

CasteliaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, CASTELIA_CITY_SOUTH, 9
	warp_event  4,  7, CASTELIA_CITY_SOUTH, 9
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenter1FPokefanMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenter1FCooltrainerFScript, -1
	object_event  7,  1, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenter1FGymGuyScript, -1
	