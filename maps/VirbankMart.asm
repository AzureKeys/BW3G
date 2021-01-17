	const_def 2 ; object constants
	const VIRBANKMART_CLERK
	const VIRBANKMART_SUPER_NERD
	const VIRBANKMART_BUENA

VirbankMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VirbankMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VIRBANK
	closetext
	end

VirbankMartSuperNerdScript:
	jumptextfaceplayer VirbankMartSuperNerdText

VirbankMartBuenaScript:
	jumptextfaceplayer VirbankMartBuenaText

VirbankMartSuperNerdText:
	text "TEAM PLASMA is no"
	line "longer in UNOVA,"
	cont "or so I've heard."

	para "Though there has"
	line "been suspicious"
	
	para "activity near the"
	line "COMPLEX lately."
	done

VirbankMartBuenaText:
	text "I'm thinking about"
	line "going shopping in"
	cont "CASTELIA."
	done

VirbankMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, VIRBANK_CITY, 6
	warp_event  3,  7, VIRBANK_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VirbankMartSuperNerdScript, -1
	object_event  8,  6, SPRITE_BUENA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, VirbankMartBuenaScript, -1
