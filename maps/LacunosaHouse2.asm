	const_def 2 ; object constants
	const LACUNOSAHOUSE2_MAN

LacunosaHouse2_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LacunosaHouse2ManScript:
	jumptextfaceplayer LacunosaHouse2ManText

LacunosaHouse2Bookshelf:
	jumpstd magazinebookshelf

LacunosaHouse2ManText:
	text "Have you heard of"
	line "hidden grottoes?"
	
	para "If you see a dark"
	line "spot between the"
	cont "trees, check"
	cont "inside."

	para "#MON like to"
	line "stash shiny items"
	cont "they find there."

	para "If you come back"
	line "after a while, you"
	cont "may find something"
	cont "new there!"
	done

LacunosaHouse2_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, LACUNOSA_TOWN, 4
	warp_event  3,  7, LACUNOSA_TOWN, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, LacunosaHouse2Bookshelf
	bg_event  1,  1, BGEVENT_READ, LacunosaHouse2Bookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LacunosaHouse2ManScript, -1
	