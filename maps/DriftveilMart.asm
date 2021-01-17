	const_def 2 ; object constants
	const DRIFTVEILMART_CLERK
	const DRIFTVEILMART_COOLTRAINER_M
	const DRIFTVEILMART_COOLTRAINER_F

DriftveilMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DriftveilMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_DRIFTVEIL
	closetext
	end

DriftveilMartCooltrainerMScript:
	jumptextfaceplayer DriftveilMartCooltrainerMText

DriftveilMartCooltrainerFScript:
	jumptextfaceplayer DriftveilMartCooltrainerFText

DriftveilMartCooltrainerMText:
	text "There's a bunch of"
	line "specialty shops"
	cont "across the bridge"
	cont "in NIMBASA."
	done

DriftveilMartCooltrainerFText:
	text "I want to become"
	line "stronger, but I'm"
	cont "not good yet…"

	para "Could you show me"
	line "how sometime?"
	done

DriftveilMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, DRIFTVEIL_CITY, 3
	warp_event  3,  7, DRIFTVEIL_CITY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DriftveilMartClerkScript, -1
	object_event  7,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilMartCooltrainerMScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, DriftveilMartCooltrainerFScript, -1
