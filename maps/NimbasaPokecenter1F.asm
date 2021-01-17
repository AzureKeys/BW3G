	const_def 2 ; object constants
	const NIMBASAPOKECENTER1F_NURSE
	const NIMBASAPOKECENTER1F_GAMEBOY_KID
	const NIMBASAPOKECENTER1F_LASS

NimbasaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaPokecenter1FNurseScript:
	jumpstd pokecenternurse

NimbasaPokecenter1FGameboyKidScript:
	jumptextfaceplayer NimbasaPokecenter1FGameboyKidText

NimbasaPokecenter1FLassScript:
	jumptextfaceplayer NimbasaPokecenter1FLassText

NimbasaPokecenter1FGameboyKidText:
	text "The COLOSSEUM"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

NimbasaPokecenter1FLassText:
	text "A higher level"
	line "#MON doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#MON that is"
	line "the toughest."
	done

NimbasaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, NIMBASA_CITY, 3
	warp_event  4,  7, NIMBASA_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events
	
	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenter1FNurseScript, -1
	object_event  6,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenter1FLassScript, -1
	