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
	checkevent EVENT_GOT_TM11_SUNNY_DAY
	iftrue .GotSweetScent
	writetext LentimasLostlornGateTeacherText
	buttonsound
	verbosegiveitem TM_SUNNY_DAY
	iffalse .NoRoom
	setevent EVENT_GOT_TM11_SUNNY_DAY
.GotSweetScent:
	writetext LentimasLostlornGateTeacher_GotSweetScent
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

	para "It must be hard if"
	line "the sun isn't out."

	para "Try using this TM."
	done

LentimasLostlornGateTeacher_GotSweetScent:
	text "It's SUNNY DAY."

	para "Use it to make the"
	line "sun come out."

	para "It will make FIRE"
	line "type moves more"
	cont "powerful!"
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
	object_event  9,  4, SPRITE_BUTTERFREE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateButterfreeScript, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateLassScript, -1
	