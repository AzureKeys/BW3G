	const_def 2 ; object constants
	const MISTRALTONMART_CLERK
	const MISTRALTONMART_LASS
	const MISTRALTONMART_COOLTRAINER_M

MistraltonMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MistraltonMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MISTRALTON
	closetext
	end

MistraltonMartLassScript:
	jumptextfaceplayer MistraltonMartLassText

MistraltonMartCooltrainerMScript:
	jumptextfaceplayer MistraltonMartCooltrainerMText

MistraltonMartLassText:
	text "The GYM LEADER"
	line "here is totally"
	cont "cool."
	done

MistraltonMartCooltrainerMText:
	text "Have you been to"
	line "CELESTIAL TOWER?"

	para "It's a huge tower"
	line "north of here."
	done

MistraltonMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, MISTRALTON_CITY, 2
	warp_event  3,  7, MISTRALTON_CITY, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonMartClerkScript, -1
	object_event  7,  2, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MistraltonMartLassScript, -1
	object_event  1,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MistraltonMartCooltrainerMScript, -1
