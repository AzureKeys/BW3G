	const_def 2 ; object constants
	const DRIFTVEILDRAWBRIDGE_POKEFAN_F

DriftveilDrawbridge_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
DriftveilDrawbridgeWomanScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EVIOLITE
	iftrue .GotEviolite
	writetext DriftveilDrawbridgeGiveEvioliteText
	buttonsound
	verbosegiveitem EVIOLITE
	iffalse .NoRoom
	setevent EVENT_GOT_EVIOLITE
.GotEviolite:
	writetext DriftveilDrawbridgeGaveEvioliteText
	waitbutton
.NoRoom:
	closetext
	end

DriftveilDrawbridgeGiveEvioliteText:
	text "You're a #MON"
	line "trainer, right?"

	para "I found this rare"
	line "stone in DRIFTVEIL"
	cont "CITY."
	
	para "I think it would"
	line "help you more than"
	cont "me, take it."
	done

DriftveilDrawbridgeGaveEvioliteText:
	text "That stone will"
	line "increase the"
	
	para "defenses of #-"
	line "MON that are not"
	cont "fully evolved."
	done

DriftveilDrawbridge_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  6, DRIFTVEIL_BRIDGE_GATE, 3
	warp_event  4,  7, DRIFTVEIL_BRIDGE_GATE, 4
	warp_event 23,  6, R_5_BRIDGE_GATE, 3
	warp_event 23,  7, R_5_BRIDGE_GATE, 4

	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event 13,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 3, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DriftveilDrawbridgeWomanScript, -1
	