	const_def 2 ; object constants
	const CASTELIAPOKECENTER_NURSE
	const CASTELIAPOKECENTER_CLERK
	const CASTELIAPOKECENTER_POKEFAN_M
	const CASTELIAPOKECENTER_COOLTRAINER_F
	const CASTELIAPOKECENTER_GYM_GUY

CasteliaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaPokecenterNurseScript:
	jumpstd pokecenternurse

CasteliaPokecenterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CASTELIA
	closetext
	end

CasteliaPokecenterPokefanMScript:
	jumptextfaceplayer CasteliaPokecenterPokefanMText

CasteliaPokecenterCooltrainerFScript:
	jumptextfaceplayer CasteliaPokecenterCooltrainerFText

CasteliaPokecenterGymGuyScript:
	jumptextfaceplayer CasteliaPokecenterGymGuyText

CasteliaPokecenterPokefanMText:
	text "The BATTLE COMPANY"
	line "makes all kinds of"

	para "products for #-"
	line "MON battling."
	done

CasteliaPokecenterCooltrainerFText:
	text "BURGH, the GYM"
	line "LEADER, is soooo"
	cont "cool."

	para "His #MON are"
	line "really tough too."
	done

CasteliaPokecenterGymGuyText:
	text "NIMBASA CITY…"

	para "Strange people in"
	line "the abandoned"
	cont "park…"

	para "Something is going"
	line "on, I know it!"
	done

CasteliaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, CASTELIA_CITY_SOUTH, 9
	warp_event  5,  9, CASTELIA_CITY_SOUTH, 9

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterClerkScript, -1
	object_event  1,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterPokefanMScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterCooltrainerFScript, -1
	object_event  1,  7, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterGymGuyScript, -1
	