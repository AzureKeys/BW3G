	const_def 2 ; object constants
	const CASTELIAPOKECENTER_NURSE
	const CASTELIAPOKECENTER_CLERK
	const CASTELIAPOKECENTER_RANGER_M
	const CASTELIAPOKECENTER_COOLTRAINER_F
	const CASTELIAPOKECENTER_AUDINO
	const CASTELIAPOKECENTER_POKEFAN_M

CasteliaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CasteliaPokecenterNurseScript:
	jumpstd pokecenternurse

CasteliaPokecenterClerkScript:
	jumpstd scalingmart

CasteliaPokecenterRangerMScript:
	jumptextfaceplayer CasteliaPokecenterRangerMText

CasteliaPokecenterCooltrainerFScript:
	jumptextfaceplayer CasteliaPokecenterCooltrainerFText

CasteliaPokecenterPokefanMScript:
	jumptextfaceplayer CasteliaPokecenterPokefanMText

CasteliaPokecenterAudinoScript:
	opentext
	writetext CasteliaPokecenterAudinoText
	cry AUDINO
	waitbutton
	closetext
	end

CasteliaPokecenterRangerMText:
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

CasteliaPokecenterPokefanMText:
	text "NIMBASA CITY…"

	para "Strange people in"
	line "the abandoned"
	cont "park…"

	para "Something is going"
	line "on, I know it!"
	done
	
CasteliaPokecenterAudinoText:
	text "Audii!"
	done

CasteliaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, CASTELIA_CITY_SOUTH, 9
	warp_event  5,  9, CASTELIA_CITY_SOUTH, 9

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterClerkScript, -1
	object_event  1,  3, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterRangerMScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterCooltrainerFScript, -1
	object_event  9,  4, SPRITE_AUDINO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterAudinoScript, -1
	object_event  1,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CasteliaPokecenterPokefanMScript, -1
	