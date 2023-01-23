	const_def 2 ; object constants
	const LENTIMASLOSTLORNGATE_SOCIALITE
	const LENTIMASLOSTLORNGATE_YANMA
	const LENTIMASLOSTLORNGATE_LASS

LentimasLostlornGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasLostlornGateSocialiteScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CLEANSE_TAG
	iftrue .GotTag
	writetext LentimasLostlornGateSocialiteText
	buttonsound
	verbosegiveitem CLEANSE_TAG
	iffalse .NoRoom
	setevent EVENT_GOT_CLEANSE_TAG
.GotTag:
	writetext LentimasLostlornGateSocialite_GotTag
	waitbutton
.NoRoom:
	closetext
	end

LentimasLostlornGateYanmaScript:
	opentext
	writetext LentimasLostlornGateYanmaText
	cry YANMA
	waitbutton
	closetext
	end

LentimasLostlornGateLassScript:
	jumptextfaceplayer LentimasLostlornGateLassText

LentimasLostlornGateSocialiteText:
	text "Oh, honey. You're"
	line "going into the"
	cont "woods?"

	para "It must be scary"
	line "when wild #MON"
	cont "are always around."
	
	para "Here, have this."
	done

LentimasLostlornGateSocialite_GotTag:
	text "Use that tag and"
	line "you'll be"
	
	para "protected from"
	line "wild #MON"
	cont "attacks."
	done

LentimasLostlornGateYanmaText:
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
	
	para "with tricky powers"
	line "living in there."
	done

LentimasLostlornGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, LENTIMAS_OUTSKIRTS, 3
	warp_event  5,  0, LENTIMAS_OUTSKIRTS, 4
	warp_event  4, 15, LOSTLORN_FOREST, 1
	warp_event  5, 15, LOSTLORN_FOREST, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  9,  4, SPRITE_SOCIALITE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateSocialiteScript, -1
	object_event  9,  5, SPRITE_YANMA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateYanmaScript, -1
	object_event  3,  9, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LentimasLostlornGateLassScript, -1
	