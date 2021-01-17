	const_def 2 ; object constants
	const NACRENECAFE_CLERK
	const NACRENECAFE_POKEFAN_F
	const NACRENECAFE_SUPER_NERD

NacreneCafe_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NacreneCafeClerkScript:
	opentext
	pokemart MARTTYPE_CAFE, MART_NACRENE_CAFE
	closetext
	end

NacreneCafePokefanFScript:
	jumptextfaceplayer NacreneCafePokefanFText

NacreneCafeSuperNerdScript:
	jumptextfaceplayer NacreneCafeSuperNerdText

NacreneCafePokefanFText:
	text "The CAFE offers"
	line "different kinds"
	cont "of drinks."

	para "Even #MON love"
	line "them!"
	done

NacreneCafeSuperNerdText:
	text "NACRENE CITY may"
	line "not be as big as"

	para "some of the other"
	line "cities in UNOVA,"

	para "but we more than"
	line "make up for it in"
	cont "atmosphere!"
	done

NacreneCafe_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NACRENE_CITY, 6
	warp_event  3,  7, NACRENE_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  7,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NacreneCafeClerkScript, -1
	object_event  4,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NacreneCafePokefanFScript, -1
	object_event  6,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NacreneCafeSuperNerdScript, -1
