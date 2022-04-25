	const_def 2 ; object constants
	const LENTIMASLOSTLORNGATE_TEACHER
	const LENTIMASLOSTLORNGATE_BUTTERFREE
	const LENTIMASLOSTLORNGATE_LASS

LentimasLostlornGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasLostlornGateTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CLEANSE_TAG
	iftrue .GotTag
	writetext LentimasLostlornGateTeacherText
	buttonsound
	verbosegiveitem CLEANSE_TAG
	iffalse .NoRoom
	setevent EVENT_GOT_CLEANSE_TAG
.GotTag:
	writetext LentimasLostlornGateTeacher_GotTag
	waitbutton
.NoRoom:
	closetext
	end

LentimasLostlornGateButterfreeScript:
	opentext
	writetext LentimasLostlornGateButterfreeText
	cry YANMA
	waitbutton
	closetext
	end

LentimasLostlornGateLassScript:
	jumptextfaceplayer LentimasLostlornGateLassText

LentimasLostlornGateTeacherText:
	text "Oh, honey. You're"
	line "going into the"
	cont "woods?"

	para "It must be scary"
	line "when wild #MON"
	cont "are always around."
	
	para "Here, have this."
	done

LentimasLostlornGateTeacher_GotTag:
	text "Use that tag and"
	line "you'll be"
	
	para "protected from"
	line "wild #MON"
	cont "attacks."
	done

LentimasLostlornGateButterfreeText:
	text "YANMA: Yaan!"
	done

LentimasLostlornGateLassText:
	text "Be careful, this"
	line "forest is dark."

	para "Lots of people"
	line "have gotten lost"
	cont "in there."

	para "I think there must"
	line "be some #MON"
	cont "with tricky powers"
	cont "living in there."
	done

LentimasLostlornGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, LENTIMAS_OUTSKIRTS, 3
	warp_event  5,  0, LENTIMAS_OUTSKIRTS, 4
	warp_event  4,  7, LOSTLORN_FOREST, 1
	warp_event  5,  7, LOSTLORN_FOREST, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  9,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateTeacherScript, -1
	object_event  9,  4, SPRITE_YANMA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateButterfreeScript, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateLassScript, -1
	