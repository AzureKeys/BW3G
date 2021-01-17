	const_def 2 ; object constants
	const ASPERTIAMART_CLERK
	const ASPERTIAMART_COOLTRAINER_F
	const ASPERTIAMART_LASS

AspertiaMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AspertiaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ASPERTIA
	closetext
	end

AspertiaMartCooltrainerFScript:
	jumptextfaceplayer AspertiaMartCooltrainerFText

AspertiaMartLassScript:
	jumptextfaceplayer AspertiaMartLassText

AspertiaMartCooltrainerFText:
	text "Do your #MON"
	line "already know the"

	para "move for carrying"
	line "people on water?"
	done

AspertiaMartLassText:
	text "My YANMA came"
	line "from my boyfriend"
	cont "overseas."

	para "It carried some"
	line "MAIL from him."

	para "Want to know what"
	line "it says?"

	para "Let's see… Nope!"
	line "It's a secret!"
	done

AspertiaMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ASPERTIA_CITY, 2
	warp_event  3,  7, ASPERTIA_CITY, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AspertiaMartClerkScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AspertiaMartCooltrainerFScript, -1
	object_event  1,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, AspertiaMartLassScript, -1
