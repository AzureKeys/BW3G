	const_def 2 ; object constants
	const NIMBASABALLMART_CLERK
	const NIMBASABALLMART_RANGER_M
	const NIMBASABALLMART_LASS

NimbasaBallMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NimbasaBallMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_NIMBASA_BALL
	closetext
	end

NimbasaBallMartRangerMScript:
	jumptextfaceplayer NimbasaBallMartRangerMText

NimbasaBallMartLassScript:
	jumptextfaceplayer NimbasaBallMartLassText

NimbasaBallMartRangerMText:
	text "Different kinds of"
	line "#BALLS are good"

	para "for different"
	line "situations. Use"
	
	para "the best BALL for"
	line "the job!"
	done

NimbasaBallMartLassText:
	text "NET BALLS are good"
	line "for catching bug"
	cont "and water type"
	cont "#MON."
	done

NimbasaBallMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NIMBASA_CITY, 6
	warp_event  3,  7, NIMBASA_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, NimbasaBallMartClerkScript, -1
	object_event  5,  2, SPRITE_RANGER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, NimbasaBallMartRangerMScript, -1
	object_event  6,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NimbasaBallMartLassScript, -1
