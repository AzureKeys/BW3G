	const_def 2 ; object constants
	const R4CASTELIAGATE_OFFICER
	const R4CASTELIAGATE_AIDE

Rt4CasteliaGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

R4CasteliaGateAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .GotItemfinder
	writetext R4CasteliaGateGiveItemfinderText
	buttonsound
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.GotItemfinder:
	writetext R4CasteliaGateGaveItemfinderText
	waitbutton
	closetext
	end

R4CasteliaGateOfficerScript:
	jumptextfaceplayer R4CasteliaGateOfficerText

R4CasteliaGateGiveItemfinderText:
	text "Hi, you must be"
	line "<PLAY_G>!"
	
	para "I'm one of PROF."
	line "BIANCA's aides."
	
	para "I came to give"
	line "you this!"
	done

R4CasteliaGateGaveItemfinderText:
	text "That ITEMFINDER"
	line "is a useful tool."
	
	para "You can use it to"
	line "discover hidden"
	cont "items on the"
	cont "ground!"
	done

R4CasteliaGateOfficerText:
	text "Welcome to"
	line "CASTELIA CITY,"
	
	para "the largest city"
	line "in the UNOVA"
	cont "region!"
	done

Rt4CasteliaGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, R_4, 4
	warp_event  5,  0, R_4, 5
	warp_event  4,  7, CASTELIA_CITY_NORTH, 1
	warp_event  5,  7, CASTELIA_CITY_NORTH, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, R4CasteliaGateOfficerScript, -1
	object_event  6,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R4CasteliaGateAideScript, -1
	