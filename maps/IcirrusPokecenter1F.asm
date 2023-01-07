	const_def 2 ; object constants
	const ICIRRUSPOKECENTER_NURSE
	const ICIRRUSPOKECENTER_CLERK
	const ICIRRUSPOKECENTER_GENTLEMAN
	const ICIRRUSPOKECENTER_TWIN
	const ICIRRUSPOKECENTER_COOLTRAINER_M

IcirrusPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcirrusPokecenterNurseScript:
	jumpstd pokecenternurse

IcirrusPokecenterClerkScript:
	jumpstd scalingmart

IcirrusPokecenterCooltrainerMScript:
	jumptextfaceplayer IcirrusPokecenterCooltrainerMText

IcirrusPokecenterGentlemanScript:
	jumptextfaceplayer IcirrusPokecenterGentlemanText

IcirrusPokecenterTwinScript:
	jumptextfaceplayer IcirrusPokecenterTwinText

IcirrusPokecenterGentlemanText:
	text "The tower north of"
	line "town is called"
	
	para "DRAGONSPIRAL"
	line "TOWER."

	para "A mystical power"
	line "is said to rest at"
	cont "that place."
	done

IcirrusPokecenterTwinText:
	text "I went to the"
	line "#MON FAN CLUB,"

	para "but they said I"
	line "wasn't good enough"
	cont "at battling #-"
	cont "MON."

	para "Those guys are"
	line "so picky!"
	done

IcirrusPokecenterCooltrainerMText:
	text "You can't buy MAX"
	line "REVIVE, but it"

	para "fully restores a"
	line "fainted #MON."

	para "Beware--it won't"
	line "restore PP, the"

	para "POWER POINTS"
	line "needed for moves."
	done

IcirrusPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, ICIRRUS_CITY_SOUTH, 1
	warp_event  5,  9, ICIRRUS_CITY_SOUTH, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenterClerkScript, -1
	object_event  1,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenterGentlemanScript, -1
	object_event  1,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenterTwinScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusPokecenterCooltrainerMScript, -1
	