	const_def 2 ; object constants
	const NIMBASAPOKECENTER_NURSE
	const NIMBASAPOKECENTER_CLERK
	const NIMBASAPOKECENTER_GAMEBOY_KID
	const NIMBASAPOKECENTER_LASS
	const NIMBASAPOKECENTER_GRANNY

NimbasaPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaPokecenterNurseScript:
	jumpstd pokecenternurse

NimbasaPokecenterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_NIMBASA
	closetext
	end

NimbasaPokecenterGameboyKidScript:
	jumptextfaceplayer NimbasaPokecenterGameboyKidText

NimbasaPokecenterLassScript:
	jumptextfaceplayer NimbasaPokecenterLassText

NimbasaPokecenterGrannyScript:
	jumptextfaceplayer NimbasaPokecenterGrannyText

NimbasaPokecenterGameboyKidText:
	text "My EEVEE evolved"
	line "into an ESPEON."

	para "But my friend's"
	line "EEVEE turned into"
	cont "an UMBREON."

	para "I wonder why? We"
	line "both were raising"

	para "our EEVEE in the"
	line "same way…"
	done

NimbasaPokecenterLassText:
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

NimbasaPokecenterGrannyText:
	text "If you use REVIVE,"
	line "a #MON that's"

	para "fainted will wake"
	line "right up."
	done

NimbasaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, NIMBASA_CITY, 3
	warp_event  5,  9, NIMBASA_CITY, 3

	db 0 ; coord events
	
	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenterNurseScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenterClerkScript, -1
	object_event  1,  7, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenterGameboyKidScript, -1
	object_event  8,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenterLassScript, -1
	object_event  1,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaPokecenterGrannyScript, -1
