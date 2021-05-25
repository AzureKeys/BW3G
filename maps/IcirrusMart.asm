	const_def 2 ; object constants
	const ICIRRUSMART_CLERK
	const ICIRRUSMART_COOLTRAINER_M
	const ICIRRUSMART_BLACK_BELT

IcirrusMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

IcirrusMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ICIRRUS
	closetext
	end

IcirrusMartCooltrainerMScript:
	jumptextfaceplayer IcirrusMartCooltrainerMText

IcirrusMartBlackBeltScript:
	jumptextfaceplayer IcirrusMartBlackBeltText

IcirrusMartCooltrainerMText:
	text "You can't buy MAX"
	line "REVIVE, but it"

	para "fully restores a"
	line "fainted #MON."

	para "Beware--it won't"
	line "restore PP, the"

	para "POWER POINTS"
	line "needed for moves."
	done

IcirrusMartBlackBeltText:
	text "MAX REPEL keeps"
	line "weak #MON away"
	cont "from you."

	para "It's the longest"
	line "lasting of the"
	cont "REPEL sprays."
	done

IcirrusMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ICIRRUS_CITY_NORTH, 1
	warp_event  3,  7, ICIRRUS_CITY_NORTH, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusMartClerkScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcirrusMartCooltrainerMScript, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcirrusMartBlackBeltScript, -1
