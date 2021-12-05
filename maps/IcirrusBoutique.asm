	const_def 2 ; object constants
	const ICIRRUSBOUTIQUE_RECEPTIONIST
	const ICIRRUSBOUTIQUE_COOLTRAINER_F
	const ICIRRUSBOUTIQUE_BUENA

IcirrusBoutique_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcirrusBoutiqueReceptionistScript:
	opentext
	pokemart MARTTYPE_BOUTIQUE, MART_BOUTIQUE
	closetext
	end

IcirrusBoutiqueCooltrainerFScript:
	jumptextfaceplayer IcirrusBoutiqueCooltrainerFText

IcirrusBoutiqueBuenaScript:
	jumptextfaceplayer IcirrusBoutiqueBuenaText

IcirrusBoutiqueCooltrainerFText:
	text "The BOUTIQUE sells"
	line "fashion for #-"
	cont "MON."

	para "Some of the pieces"
	line "have useful"
	cont "effects in battle!"
	done

IcirrusBoutiqueBuenaText:
	text "I just love seeing"
	line "the selections!"

	para "Oh? You're not"
	line "interested in"
	cont "fashion?"
	
	para "You should pick"
	line "out some cute"
	
	para "things for your"
	line "#MON instead!"
	done

IcirrusBoutique_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ICIRRUS_CITY_NORTH, 1
	warp_event  3,  7, ICIRRUS_CITY_NORTH, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IcirrusBoutiqueReceptionistScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, IcirrusBoutiqueCooltrainerFScript, -1
	object_event  5,  2, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcirrusBoutiqueBuenaScript, -1
