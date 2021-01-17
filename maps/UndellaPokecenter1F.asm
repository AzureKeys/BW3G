	const_def 2 ; object constants
	const UNDELLAPOKECENTER1F_NURSE
	const UNDELLAPOKECENTER1F_GENTLEMAN
	const UNDELLAPOKECENTER1F_FISHING_GURU

UndellaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

UndellaPokecenter1FNurseScript:
	jumpstd pokecenternurse

UndellaPokecenter1FGentlemanScript:
	jumptextfaceplayer UndellaPokecenter1FGentlemanText

UndellaPokecenter1FFishingGuruScript:
	jumptextfaceplayer UndellaPokecenter1FFishingGuruText

UndellaPokecenter1FGentlemanText:
	text "Do your #MON"
	line "know HM moves?"

	para "Those moves can"
	line "be used even if"

	para "your #MON has"
	line "fainted."
	done

UndellaPokecenter1FFishingGuruText:
	text "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

UndellaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, UNDELLA_TOWN, 2
	warp_event  4,  7, UNDELLA_TOWN, 2
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, UndellaPokecenter1FNurseScript, -1
	object_event  5,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, UndellaPokecenter1FGentlemanScript, -1
	object_event  6,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UndellaPokecenter1FFishingGuruScript, -1
	