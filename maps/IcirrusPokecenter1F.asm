	const_def 2 ; object constants
	const ICIRRUSPOKECENTER1F_NURSE
	const ICIRRUSPOKECENTER1F_GENTLEMAN
	const ICIRRUSPOKECENTER1F_TWIN

IcirrusPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcirrusPokecenter1FNurseScript:
	jumpstd pokecenternurse

IcirrusPokecenter1FGentlemanScript:
	jumptextfaceplayer IcirrusPokecenter1FGentlemanText

IcirrusPokecenter1FTwinScript:
	jumptextfaceplayer IcirrusPokecenter1FTwinText

IcirrusPokecenter1FGentlemanText:
	text "The tower north of"
	line "town is called"
	cont "DRAGONSPIRAL"
	cont "TOWER."

	para "A mystical power"
	line "is said to rest at"
	cont "that place."
	done

IcirrusPokecenter1FTwinText:
	text "I went to the"
	line "#MON FAN CLUB,"

	para "but they said I"
	line "wasn't good enough"
	cont "at battling #-"
	cont "MON."

	para "Those guys are"
	line "so picky!"
	done

IcirrusPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, ICIRRUS_CITY_SOUTH, 1
	warp_event  4,  7, ICIRRUS_CITY_SOUTH, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenter1FNurseScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenter1FGentlemanScript, -1
	object_event  1,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenter1FTwinScript, -1
	