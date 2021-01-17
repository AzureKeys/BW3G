	const_def 2 ; object constants
	const R4HOUSE_MAN

Rt4House_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R4HouseManScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_SANDSTORM
	iftrue .GotTM
	writetext R4HouseGiveTMText
	buttonsound
	verbosegiveitem TM_SANDSTORM
	iffalse .NoRoom
	setevent EVENT_GOT_TM_SANDSTORM
.GotTM:
	writetext R4HouseGaveTMText
	waitbutton
.NoRoom:
	closetext
	end

R4HouseBookshelf:
	jumpstd magazinebookshelf

R4HouseGiveTMText:
	text "This desert is"
	line "full of raging"
	cont "sand."

	para "A sandstorm can"
	line "even damage #-"
	cont "MON!"
	
	para "If you want to"
	line "make your own"
	
	para "sandstorms, then"
	line "take this!"
	done

R4HouseGaveTMText:
	text "Use that move to"
	line "whip up a sand-"
	cont "storm in battle!"
	done

Rt4House_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, R_4, 3
	warp_event  3,  7, R_4, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, R4HouseBookshelf
	bg_event  1,  1, BGEVENT_READ, R4HouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, R4HouseManScript, -1
	