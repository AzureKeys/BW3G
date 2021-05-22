	const_def 2 ; object constants
	const OPELUCIDMART_CLERK
	const OPELUCIDMART_FISHER
	const OPELUCIDMART_COOLTRAINER_F

OpelucidMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OpelucidMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_OPELUCID
	closetext
	end

OpelucidMartFisherScript:
	jumptextfaceplayer OpelucidMartFisherText

OpelucidMartCooltrainerFScript:
	jumptextfaceplayer OpelucidMartCooltrainerFText

OpelucidMartFisherText:
	text "I was hoping to"
	line "buy some supplies"

	para "to climb ROUTE 10,"
	line "but it's closed…"
	done

OpelucidMartCooltrainerFText:
	text "The previous #-"
	line "MON LEAGUE"
	cont "champion, IRIS,"
	cont "lives in town!"
	done

OpelucidMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, OPELUCID_CITY, 5
	warp_event  3,  7, OPELUCID_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OpelucidMartClerkScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, OpelucidMartFisherScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OpelucidMartCooltrainerFScript, -1
