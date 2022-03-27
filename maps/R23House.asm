	const_def 2 ; object constants
	const R23HOUSE_MAN

Rt23House_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R23HouseManScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHOICE_SPECS
	iftrue .GotSpecs
	writetext R23HouseGiveSpecsText
	buttonsound
	verbosegiveitem CHOICE_SPECS
	iffalse .NoRoom
	setevent EVENT_GOT_CHOICE_SPECS
.GotSpecs:
	writetext R23HouseGaveSpecsText
	waitbutton
.NoRoom:
	closetext
	end

R23HouseBookshelf:
	jumpstd magazinebookshelf

R23HouseGiveSpecsText:
	text "Hm, you must be"
	line "an accomplished"

	para "trainer to have"
	line "made it all the"
	cont "way out here."
	
	para "Are you planning"
	line "to climb VICTORY"
	cont "ROAD?"
	
	para "Then you should"
	line "take these with"
	cont "you."
	done

R23HouseGaveSpecsText:
	text "Those specs will"
	line "greatly boost the"
	
	para "wearer's SP.ATK,"
	line "but restrict its"
	
	para "move choice. Use"
	line "them if they"
	cont "appeal to you."
	done

Rt23House_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, R_23_EAST, 6
	warp_event  3,  7, R_23_EAST, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, R23HouseBookshelf
	bg_event  1,  1, BGEVENT_READ, R23HouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R23HouseManScript, -1
	