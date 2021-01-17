	const_def 2 ; object constants
	const MISTRALTONHOUSE_COOLTRAINER_M

MistraltonHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
MistraltonHouseGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SHARP_BEAK
	iftrue .gotbeak
	writetext MistraltonHouseGiveBeakText
	buttonsound
	verbosegiveitem SHARP_BEAK
	iffalse .noroom
	setevent EVENT_GOT_SHARP_BEAK
.gotbeak
	writetext MistraltonHouseGotBeakText
	waitbutton
.noroom
	closetext
	end

MistraltonHouseBookshelf:
	jumpstd picturebookshelf

MistraltonHouseGiveBeakText:
	text "FLYING type #-"
	line "MON are the"
	cont "coolest!"
	
	para "You should train"
	line "FLYING type #-"
	cont "MON too!"
	
	para "Here, I'll show"
	line "you how cool they"
	cont "are!"
	done

MistraltonHouseGotBeakText:
	text "That will make"
	line "FLYING attacks"
	cont "even stronger!"
	done

MistraltonHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, MISTRALTON_CITY, 4
	warp_event  3,  7, MISTRALTON_CITY, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, MistraltonHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MistraltonHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonHouseGuyScript, -1
	