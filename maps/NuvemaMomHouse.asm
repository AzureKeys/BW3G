	const_def 2 ; object constants
	const NUVEMAMOMHOUSE_MOM

NuvemaMomHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

NuvemaMomScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_HIDDEN_POWER
	iftrue .GotTM
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female
	writetext NuvemaMomIntroTextM
	jump .GiveTM
.female
	writetext NuvemaMomIntroTextF
.GiveTM
	buttonsound
	verbosegiveitem TM_HIDDEN_POWER
	setevent EVENT_GOT_TM_HIDDEN_POWER
.GotTM:
	writetext NuvemaMomGaveTMText
	waitbutton
	closetext
	end

NuvemaMomHouseBookshelf:
	jumpstd magazinebookshelf

NuvemaMomIntroTextM:
	text "You're a #MON"
	line "trainer, right?"

	para "My son is a #-"
	line "MON trainer too."
	
	para "He always treated"
	line "his #MON with"
	cont "care."
	
	para "Each #MON has"
	line "its own special"
	cont "power."
	
	para "Here, take this"
	line "TM."
	done

NuvemaMomIntroTextF:
	text "You're a #MON"
	line "trainer, right?"

	para "My daughter is a"
	line "#MON trainer"
	cont "too."
	
	para "She always treated"
	line "her #MON with"
	cont "care."
	
	para "Each #MON has"
	line "its own special"
	cont "power."
	
	para "Here, take this"
	line "TM."
	done

NuvemaMomGaveTMText:
	text "HIDDEN POWER is a"
	line "special move with"

	para "a different type"
	line "based on the #-"
	cont "MON using it."
	
	para "Try it with all"
	line "kinds of different"
	cont "#MON!"
	done

NuvemaMomHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NUVEMA_TOWN, 1
	warp_event  3,  7, NUVEMA_TOWN, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, NuvemaMomHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, NuvemaMomHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_MOM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NuvemaMomScript, -1
	