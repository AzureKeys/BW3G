	const_def 2 ; object constants
	const HUMILAUMART_CLERK
	const HUMILAUMART_COOLTRAINER_M
	const HUMILAUMART_YOUNGSTER

HumilauMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HumilauMartClerkScript:
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .PokeBallsInStock
	pokemart MARTTYPE_STANDARD, MART_HUMILAU
	closetext
	end

.PokeBallsInStock:
	pokemart MARTTYPE_STANDARD, MART_HUMILAU_DEX
	closetext
	end

HumilauMartCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .PokeBallsInStock
	writetext HumilauMartCooltrainerMText
	waitbutton
	closetext
	end

.PokeBallsInStock:
	writetext HumilauMartCooltrainerMText_PokeBallsInStock
	waitbutton
	closetext
	end

HumilauMartYoungsterScript:
	jumptextfaceplayer HumilauMartYoungsterText

HumilauMartCooltrainerMText:
	text "They're fresh out"
	line "of # BALLS!"

	para "When will they get"
	line "more of them?"
	done

HumilauMartCooltrainerMText_PokeBallsInStock:
	text "# BALLS are in"
	line "stock! Now I can"
	cont "catch #MON!"
	done

HumilauMartYoungsterText:
	text "When I was walking"
	line "in the grass, a"

	para "bug #MON poi-"
	line "soned my #MON!"

	para "I just kept going,"
	line "but then my"
	cont "#MON fainted."

	para "You should keep an"
	line "ANTIDOTE with you."
	done

HumilauMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, HUMILAU_CITY, 2
	warp_event  3,  7, HUMILAU_CITY, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, HumilauMartClerkScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, HumilauMartCooltrainerMScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HumilauMartYoungsterScript, -1
