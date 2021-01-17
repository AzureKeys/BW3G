	const_def 2 ; object constants
	const LACUNOSAMART_CLERK
	const LACUNOSAMART_GRANNY
	const LACUNOSAMART_COOLTRAINER_M

LacunosaMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LacunosaMartClerkScript:
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .PokeBallsInStock
	pokemart MARTTYPE_STANDARD, MART_LACUNOSA
	closetext
	end

.PokeBallsInStock:
	pokemart MARTTYPE_STANDARD, MART_LACUNOSA_DEX
	closetext
	end

LacunosaMartGrannyScript:
	jumptextfaceplayer LacunosaMartGrannyText

LacunosaMartCooltrainerMScript:
	jumptextfaceplayer LacunosaMartCooltrainerMText

LacunosaMartGrannyText:
	text "When you first"
	line "catch a #MON,"
	cont "it may be weak."

	para "But it will even-"
	line "tually grow to be"
	cont "strong."

	para "It's important to"
	line "treat #MON with"
	cont "love."
	done

LacunosaMartCooltrainerMText:
	text "#MON can hold"
	line "items like POTION"
	cont "and ANTIDOTE."

	para "But they don't"
	line "appear to know how"

	para "to use manmade"
	line "items."
	done

LacunosaMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, LACUNOSA_TOWN, 2
	warp_event  3,  7, LACUNOSA_TOWN, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LacunosaMartClerkScript, -1
	object_event  7,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LacunosaMartGrannyScript, -1
	object_event  5,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, LacunosaMartCooltrainerMScript, -1
