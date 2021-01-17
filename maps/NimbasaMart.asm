	const_def 2 ; object constants
	const NIMBASAMART_CLERK
	const NIMBASAMART_SUPER_NERD
	const NIMBASAMART_GRANNY

NimbasaMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_NIMBASA
	closetext
	end

NimbasaMartSuperNerdScript:
	jumptextfaceplayer NimbasaMartSuperNerdText

NimbasaMartGrannyScript:
	jumptextfaceplayer NimbasaMartGrannyText

NimbasaMartSuperNerdText:
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

NimbasaMartGrannyText:
	text "If you use REVIVE,"
	line "a #MON that's"

	para "fainted will wake"
	line "right up."
	done

NimbasaMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NIMBASA_CITY, 4
	warp_event  3,  7, NIMBASA_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NimbasaMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaMartSuperNerdScript, -1
	object_event  6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaMartGrannyScript, -1
