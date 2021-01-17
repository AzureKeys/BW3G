	const_def 2 ; object constants
	const LENTIMASMART_CLERK
	const LENTIMASMART_COOLTRAINER_M
	const LENTIMASMART_BUG_CATCHER

LentimasMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LENTIMAS
	closetext
	end

LentimasMartCooltrainerMScript:
	jumptextfaceplayer LentimasMartCooltrainerMText

LentimasMartBugCatcherScript:
	jumptextfaceplayer LentimasMartBugCatcherText

LentimasMartCooltrainerMText:
	text "There's no GREAT"
	line "BALL here. #"

	para "BALLS will have"
	line "to do."
	done

LentimasMartBugCatcherText:
	text "A GREAT BALL is"
	line "better for catch-"
	cont "ing #MON than a"
	cont "# BALL."
	done

LentimasMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, LENTIMAS_TOWN, 1
	warp_event  3,  7, LENTIMAS_TOWN, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasMartClerkScript, -1
	object_event  2,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasMartCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, LentimasMartBugCatcherScript, -1
