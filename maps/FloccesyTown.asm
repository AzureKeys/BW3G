	const_def 2 ; object constants
	const FLOCCESYTOWN_LOVE_BALL
	const FLOCCESYTOWN_FAKE_ITEM
	const FLOCCESYTOWN_JUNIPER
	const FLOCCESYTOWN_TWIN
	const FLOCCESYTOWN_POKEFAN_M
	const FLOCCESYTOWN_BLOCKER

FloccesyTown_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 2 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Blocker
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_FLOCCESY
	return
	
.Blocker:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalse .done
	checkevent EVENT_BEAT_ALDER
	iffalse .DisappearBlocker
	checkcode VAR_WEEKDAY
	ifequal WEDNESDAY, .DisappearBlocker
	appear FLOCCESYTOWN_BLOCKER
	jump .done
.DisappearBlocker
	disappear FLOCCESYTOWN_BLOCKER
.done
	return
	
FloccesyTownJuniperScript1:
	turnobject PLAYER, UP
	jump FloccesyTownJuniperScript
	
FloccesyTownJuniperScript2:
	applymovement PLAYER, FloccesyTownPlayerMovement1
	jump FloccesyTownJuniperScript
	
FloccesyTownJuniperScript3:
	applymovement PLAYER, FloccesyTownPlayerMovement2
	jump FloccesyTownJuniperScript
	
FloccesyTownJuniperScript4:
	applymovement PLAYER, FloccesyTownPlayerMovement3
	
FloccesyTownJuniperScript:
	opentext
	writetext FloccesyTownJuniperText
	waitbutton
	closetext
	applymovement FLOCCESYTOWN_JUNIPER, FloccesyTownJuniperMovement
	disappear FLOCCESYTOWN_JUNIPER
	setscene SCENE_FINISHED
	end
	
FloccesyTownLoveBall:
	itemball LOVE_BALL
	
FloccesyTownTwinScript:
	jumptextfaceplayer FloccesyTownTwinText
	
FloccesyTownPokefanMScript:
	jumptextfaceplayer FloccesyTownPokefanMText
	
FloccesyTownBlockerScript:
	jumptextfaceplayer FloccesyTownBlockerText
	
FloccesyTownSign:
	jumptext FloccesyTownSignText
	
FloccesyTownPlayerMovement1:
	step UP
	step_end
	
FloccesyTownPlayerMovement2:
	step UP
	step UP
	step_end
	
FloccesyTownPlayerMovement3:
	step UP
	step UP
	step UP
	step_end
	
FloccesyTownJuniperMovement:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end
	
FloccesyTownJuniperText:
	text "You there,"
	line "trainer!"
	
	para "You're <PLAY_G>,"
	line "right?"
	
	para "My name is AUREA"
	line "JUNIPER. I'm a"
	cont "friend of PROF."
	cont "BIANCA."
	
	para "In fact, she used"
	line "to be my pupil."
	
	para "I was the PROF who"
	line "gave her and"
	cont "CHEREN their first"
	cont "#MON."
	
	para "They've both told"
	line "me good things"
	cont "about you."
	
	para "CHEREN's gone to"
	line "the COMPLEX in"
	cont "VIRBANK CITY."
	
	para "He believes TEAM"
	line "PLASMA may be up"
	cont "to something"
	cont "there."
	
	para "I'm sure he'd"
	line "appreciate if you"
	cont "helped."
	
	para "I'm eager to see"
	line "how far you'll go,"
	cont "<PLAY_G>."
	done
	
FloccesyTownTwinText:
	text "I want to go to"
	line "the ranch! I want"
	cont "to get some milk!"
	done
	
FloccesyTownPokefanMText:
	text "Welcome to our"
	line "little town. It"
	
	para "ain't much, but"
	line "the ranch outside"
	
	para "of town delivers"
	line "milk all over"
	cont "UNOVA."
	done
	
FloccesyTownBlockerText:
	text "Mister ALDER isn't"
	line "home right now."
	
	para "Aw man, I wanted"
	line "to train with him!"
	done
	
FloccesyTownSignText:
	text "FLOCCESY TOWN"
	
	para "Prophecy flocks"
	line "here!"
	done

FloccesyTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  7, 25, FLOCCESY_POKECENTER_1F, 1
	warp_event 15, 25, FLOCCESY_TOWN_HOUSE, 1
	warp_event 19, 25, FLOCCESY_TRADE_HOUSE, 1
	warp_event 11,  7, ALDERS_HOUSE, 1

	db 4 ; coord events
	coord_event  0, 26, SCENE_DEFAULT, FloccesyTownJuniperScript1
	coord_event  0, 27, SCENE_DEFAULT, FloccesyTownJuniperScript2
	coord_event  0, 28, SCENE_DEFAULT, FloccesyTownJuniperScript3
	coord_event  0, 29, SCENE_DEFAULT, FloccesyTownJuniperScript4

	db 1 ; bg events
	bg_event 11, 25, BGEVENT_READ, FloccesyTownSign

	db 6 ; object events
	object_event 21, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FloccesyTownLoveBall, EVENT_FLOCCESY_TOWN_LOVE_BALL
	object_event -2, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, 0, EVENT_R_19_RARE_CANDY
	object_event  0, 24, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_FLOCCESY_TOWN_JUNIPER
	object_event 12, 19, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, -1, FloccesyTownTwinScript, -1
	object_event 13, 27, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, -1, FloccesyTownPokefanMScript, -1
	object_event 11,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, -1, FloccesyTownBlockerScript, EVENT_FLOCCESY_TOWN_BLOCKER
	