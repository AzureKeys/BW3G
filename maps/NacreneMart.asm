	const_def 2 ; object constants
	const NACRENEMART_CLERK
	const NACRENEMART_YOUNGSTER
	const NACRENEMART_SUPER_NERD

NacreneMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NacreneMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_NACRENE
	closetext
	end

NacreneMartYoungsterScript:
	jumptextfaceplayer NacreneMartYoungsterText

NacreneMartSuperNerdScript:
	jumptextfaceplayer NacreneMartSuperNerdText

NacreneMartYoungsterText:
	text "Hi! Check out my"
	line "EELEKTROSS!"

	para "I raised it from a"
	line "TYNAMO. I can't"

	para "believe how strong"
	line "it has become."
	done

NacreneMartSuperNerdText:
	text "TYNAMO is a weak"
	line "#MON."

	para "But if you train"
	line "hard, it will"
	cont "evolve into an"
	cont "EELEKTRIK."

	para "It can get even"
	line "stronger if it"
	cont "becomes an"
	cont "EELEKTROSS!"
	done

NacreneMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NACRENE_CITY, 4
	warp_event  3,  7, NACRENE_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMartClerkScript, -1
	object_event  9,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NacreneMartYoungsterScript, -1
	object_event  6,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NacreneMartSuperNerdScript, -1
