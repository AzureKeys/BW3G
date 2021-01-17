	const_def 2 ; object constants
	const ACCUMULAMART_CLERK
	const ACCUMULAMART_POKEFAN_M
	const ACCUMULAMART_ROCKER

AccumulaMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AccumulaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ACCUMULA
	closetext
	end

AccumulaMartPokefanMScript:
	jumptextfaceplayer AccumulaMartPokefanMText

AccumulaMartRockerScript:
	jumptextfaceplayer AccumulaMartRockerText

AccumulaMartPokefanMText:
	text "REPEL is a neces-"
	line "sity if you are"

	para "going to explore a"
	line "cave."

	para "Even though I like"
	line "exploring, I still"

	para "haven't made it to"
	line "all the caves."
	done

AccumulaMartRockerText:
	text "I heard about a"
	line "craftsman who"

	para "makes custom BALLS"
	line "in the JOHTO town"

	para "of AZALEA. I wish"
	line "I had some."
	done

AccumulaMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ACCUMULA_TOWN, 3
	warp_event  3,  7, ACCUMULA_TOWN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AccumulaMartClerkScript, -1
	object_event  6,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AccumulaMartPokefanMScript, -1
	object_event  9,  2, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, AccumulaMartRockerScript, -1
