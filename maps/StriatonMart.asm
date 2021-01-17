	const_def 2 ; object constants
	const STRIATONMART_CLERK
	const STRIATONMART_SUPER_NERD
	const STRIATONMART_BUENA

StriatonMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

StriatonMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_STRIATON
	closetext
	end

StriatonMartSuperNerdScript:
	jumptextfaceplayer StriatonMartSuperNerdText

StriatonMartBuenaScript:
	jumptextfaceplayer StriatonMartBuenaText

StriatonMartSuperNerdText:
	text "TEAM PLASMA is no"
	line "longer in UNOVA."

	para "At least, they're"
	line "supposed to have"
	cont "gone away."
	done

StriatonMartBuenaText:
	text "I'm thinking about"
	line "going shopping in"
	cont "CASTELIA."
	done

StriatonMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, STRIATON_CITY, 2
	warp_event  3,  7, STRIATON_CITY, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StriatonMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, StriatonMartSuperNerdScript, -1
	object_event  8,  6, SPRITE_BUENA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, StriatonMartBuenaScript, -1
