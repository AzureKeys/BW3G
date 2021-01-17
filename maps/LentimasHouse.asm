	const_def 2 ; object constants
	const LENTIMASHOUSE_GRANNY

LentimasHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

LentimasHouseGrannyScript:
	faceplayer
	opentext
	writetext LentimasHouseGrannyText
	waitbutton
	checkevent EVENT_GOT_SPELL_TAG_FROM_GRANNY
	iftrue .done
	writetext LentimasHouseSpellTagText
	waitbutton
	verbosegiveitem SPELL_TAG
	iffalse .done
	setevent EVENT_GOT_SPELL_TAG_FROM_GRANNY
.done
	closetext
	end

LentimasHouseGrannyText:
	text "The spirits are"
	line "strong in this"
	cont "place…"

	para "Beware the old"
	line "house just outside"
	cont "of town, there"
	cont "are ghosts…"
	done

LentimasHouseSpellTagText:
	text "If you aren't"
	line "afraid, take this…"
	done

LentimasHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, LENTIMAS_TOWN, 3
	warp_event  4,  7, LENTIMAS_TOWN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasHouseGrannyScript, -1
	