	const_def 2 ; object constants
	const DRIFTVEILHOUSE_TEACHER

DriftveilHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DriftveilHouseTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EVERSTONE
	iftrue .GotEverstone
	writetext NimbasaHouseGiveEverstoneText
	buttonsound
	verbosegiveitem EVERSTONE
	iffalse .NoRoom
	setevent EVENT_GOT_EVERSTONE
.GotEverstone:
	writetext NimbasaHouseGaveEverstoneText
	waitbutton
.NoRoom:
	closetext
	end

NimbasaHouseGiveEverstoneText:
	text "DRIFTVEIL CITY"
	line "is famous for our"
	cont "mines!"

	para "We have all sorts"
	line "of rare stones."
	
	para "Here, you can"
	line "have a sample!"
	done

NimbasaHouseGaveEverstoneText:
	text "Give that stone"
	line "to a #MON and"
	cont "it will never"
	cont "evolve."

	para "How strange is"
	line "that?"
	done

DriftveilHouseBookshelfScript:
	jumpstd magazinebookshelf

DriftveilHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, DRIFTVEIL_CITY, 13
	warp_event  3,  7, DRIFTVEIL_CITY, 13

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, DriftveilHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, DriftveilHouseBookshelfScript

	db 1 ; object events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, DriftveilHouseTeacherScript, -1
	