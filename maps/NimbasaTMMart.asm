	const_def 2 ; object constants
	const NIMBASATMMART_CLERK
	const NIMBASATMMART_SUPER_NERD
	const NIMBASATMMART_GRANNY

NimbasaTMMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaTMMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_NIMBASA_TM
	closetext
	end

NimbasaTMMartSuperNerdScript:
	jumptextfaceplayer NimbasaTMMartSuperNerdText

NimbasaTMMartGrannyScript:
	jumptextfaceplayer NimbasaTMMartGrannyText

NimbasaTMMartSuperNerdText:
	text "Hey. I love strong"
	line "#MON."

	para "I want to use TMs"
	line "to make my #MON"
	cont "even stronger!"
	done

NimbasaTMMartGrannyText:
	text "There are sure to"
	line "be TMs that are"

	para "just perfect for"
	line "your #MON."
	done

NimbasaTMMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NIMBASA_CITY, 4
	warp_event  3,  7, NIMBASA_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NimbasaTMMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaTMMartSuperNerdScript, -1
	object_event  6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaTMMartGrannyScript, -1
