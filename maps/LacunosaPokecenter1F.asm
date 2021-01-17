	const_def 2 ; object constants
	const LACUNOSAPOKECENTER1F_NURSE
	const LACUNOSAPOKECENTER1F_GAMEBOY_KID
	const LACUNOSAPOKECENTER1F_GENTLEMAN
	const LACUNOSAPOKECENTER1F_YOUNGSTER

LacunosaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LacunosaPokecenterNurse:
	jumpstd pokecenternurse

LacunosaPokecenter1FGameboyKidScript:
	jumptextfaceplayer LacunosaPokecenter1FGameboyKidText

LacunosaPokecenter1FGentlemanScript:
	jumptextfaceplayer LacunosaPokecenter1FGentlemanText

LacunosaPokecenter1FYoungsterScript:
	jumptextfaceplayer LacunosaPokecenter1FYoungsterText

LacunosaPokecenter1FGameboyKidText:
	text "A guy named BILL"
	line "made the #MON"
	cont "PC storage system."
	done

LacunosaPokecenter1FGentlemanText:
	text "It was around"
	line "three years ago."

	para "TEAM PLASMA was up"
	line "to no good with"
	cont "#MON."

	para "But justice pre-"
	line "vailed--a young"
	cont "kid broke 'em up."
	done

LacunosaPokecenter1FYoungsterText:
	text "#MON are smart."
	line "They won't obey a"

	para "trainer they don't"
	line "respect."

	para "Without the right"
	line "GYM BADGES, they"

	para "will just do as"
	line "they please."
	done

LacunosaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, LACUNOSA_TOWN, 1
	warp_event  4,  7, LACUNOSA_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenterNurse, -1
	object_event  7,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenter1FGentlemanScript, -1
	object_event  8,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LacunosaPokecenter1FYoungsterScript, -1
	