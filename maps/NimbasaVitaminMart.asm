	const_def 2 ; object constants
	const NIMBASAVITAMINMART_CLERK
	const NIMBASAVITAMINMART_GRANNY

NimbasaVitaminMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaVitaminMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_NIMBASA_VITAMIN
	closetext
	end

NimbasaVitaminMartGrannyScript:
	jumptextfaceplayer NimbasaVitaminMartGrannyText

NimbasaVitaminMartGrannyText:
	text "Vitamins will make"
	line "your #MON"
	cont "stronger."

	para "PROTEIN increases"
	line "ATTACK, IRON makes"
	cont "DEFENSE increase."
	
	para "CARBOS boosts"
	line "SPEED, and CALCIUM"
	cont "works on both"
	cont "SPECIAL stats."
	done
	
NimbasaVitaminMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NIMBASA_CITY, 5
	warp_event  3,  7, NIMBASA_CITY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaVitaminMartClerkScript, -1
	object_event  6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NimbasaVitaminMartGrannyScript, -1
