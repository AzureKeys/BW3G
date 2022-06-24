	const_def 2 ; object constants
	const LENTIMASTOWN_FIRE_STONE
	const LENTIMASTOWN_TM_FLASH_CANNON
	const LENTIMASTOWN_AIRPORT_GUARD
	const LENTIMASTOWN_GRANNY
	const LENTIMASTOWN_GRAMPS
	const LENTIMASTOWN_POKEFAN_F

LentimasTown_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_LENTIMAS
	return
	
LentimasTownGuardScript:
	faceplayer
	opentext
	checkitem BOARDINGPASS
	iftrue .havepass
	writetext LentimasTownGuardNoPassText
	waitbutton
	closetext
	end
	
.havepass
	writetext LentimasTownGuardHavePassText
	waitbutton
	closetext
	end
	
LentimasTownAirportScript:
	checkitem BOARDINGPASS
	iftrue .havepass
	turnobject PLAYER, UP
	turnobject LENTIMASTOWN_AIRPORT_GUARD, DOWN
	opentext
	writetext LentimasTownGuardNoPassText
	waitbutton
	closetext
	applymovement PLAYER, LentimasTownMovement
.havepass
	end
	
LentimasTownGrannyTextScript:
	jumptextfaceplayer LentimasTownGrannyText
	
LentimasTownGrampsTextScript:
	jumptextfaceplayer LentimasTownGrampsText
	
LentimasTownPokefanFTextScript:
	jumptextfaceplayer LentimasTownPokefanFText
	
LentimasTownFireStone:
	itemball FIRE_STONE
	
LentimasTownTMFlashCannon:
	itemball TM_FLASH_CANNON
	
LentimasAirportSign:
	jumptext LentimasAirportSignText
	
LentimasTownSign:
	jumptext LentimasTownSignText
	
LentimasTownMovement:
	step RIGHT
	step_end
	
LentimasTownGuardNoPassText:
	text "This is the"
	line "LENTIMAS TOWN"
	cont "airport. Only"
	
	para "those with a"
	line "BOARDINGPASS may"
	cont "enter. Come back"
	
	para "when you have a"
	line "BOARDINGPASS."
	done
	
LentimasTownGuardHavePassText:
	text "This is the"
	line "LENTIMAS TOWN"
	cont "airport. I see"
	
	para "you have a"
	line "BOARDINGPASS,"
	
	para "you can go on"
	line "through."
	done
	
LentimasTownGrannyText:
	text "What brings one so"
	line "young as you to"
	cont "our sleepy little"
	cont "town?"
	
	para "Strange things are"
	line "known to have"
	cont "happened here…"
	done
	
LentimasTownGrampsText:
	text "This town was"
	line "founded just a"
	
	para "handful of years"
	line "ago. But the house"
	
	para "outside of town"
	line "has been standing"
	cont "for far longer…"
	done
	
LentimasTownPokefanFText:
	text "Shhh…"
	
	para "I'm in training to"
	line "become a HEX"
	cont "MANIAC."
	
	para "But first, I need"
	line "to be able to at"
	cont "least see the"
	cont "spirits…"
	done
	
LentimasAirportSignText:
	text "LENTIMAS AIRPORT."
	done
	
LentimasTownSignText:
	text "LENTIMAS TOWN."
	
	para "Town of jagged"
	line "mountain paths."
	done
	
LentimasTown_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 25, 19, LENTIMAS_CLAW_HOUSE, 1
	warp_event 25, 13, LENTIMAS_POKECENTER_1F, 1
	warp_event 15, 11, LENTIMAS_HOUSE, 1
	warp_event 14, 21, LENTIMAS_GYM, 1
	warp_event  7, 13, LENTIMAS_AIRPORT, 1

	db 1 ; coord events
	coord_event  9, 15, SCENE_DEFAULT, LentimasTownAirportScript

	db 2 ; bg events
	bg_event 12, 12, BGEVENT_READ, LentimasAirportSign
	bg_event 31, 14, BGEVENT_READ, LentimasTownSign

	db 6 ; object events
	object_event 29,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasTownFireStone, EVENT_LENTIMAS_TOWN_FIRE_STONE
	object_event  7, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, LentimasTownTMFlashCannon, EVENT_LENTIMAS_TOWN_TM_FLASH_CANNON
	object_event  9, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LentimasTownGuardScript, -1
	object_event 23, 14, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasTownGrannyTextScript, -1
	object_event 15, 17, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasTownGrampsTextScript, -1
	object_event 13,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LentimasTownPokefanFTextScript, -1
	