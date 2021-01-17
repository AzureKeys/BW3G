	const_def 2 ; object constants
	const MISTRALTONCITY_GYM_GUY
	const MISTRALTONCITY_PARLYZ_HEAL
	const MISTRALTONCITY_MAX_REPEL
	const MISTRALTONCITY_OFFICER
	const MISTRALTONCITY_YOUNGSTER
	const MISTRALTONCITY_TEACHER
	const MISTRALTONCITY_TWIN

MistraltonCity_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_MISTRALTON
	return
	
MistraltonCityBlockerScript:
	turnobject MISTRALTONCITY_GYM_GUY, RIGHT
	opentext
	writetext MistraltonCityGymGuyText
	waitbutton
	closetext
	applymovement PLAYER, MistraltonCityGymMovement
	end
	
MistraltonCityGymGuyScript:
	jumptextfaceplayer MistraltonCityGymGuyText
	
MistraltonCityOfficerScript:
	jumptextfaceplayer MistraltonCityOfficerText
	
MistraltonCityYoungsterScript:
	jumptextfaceplayer MistraltonCityYoungsterText
	
MistraltonCityTeacherScript:
	jumptextfaceplayer MistraltonCityTeacherText
	
MistraltonCityTwinScript:
	jumptextfaceplayer MistraltonCityTwinText
	
MistraltonCityParlyzHeal:
	itemball PARLYZ_HEAL
	
MistraltonCityMaxRepel:
	itemball MAX_REPEL
	
MistraltonCityElixer:
	hiddenitem ELIXER, EVENT_MISTRALTON_CITY_ELIXER

MistraltonCitySign:
	jumptext MistraltonCitySignText

MistraltonAirportSign:
	jumptext MistraltonAirportSignText
	
MistraltonCityGymMovement:
	step DOWN
	step_end

MistraltonCityGymGuyText:
	text "Oh, are you here"
	line "to challenge the"
	cont "GYM LEADER?"
	
	para "Sorry, she's not"
	line "in right now."
	
	para "I think she may"
	line "have gone off to"
	cont "CELESTIAL TOWER,"
	cont "up on ROUTE 7."
	done

MistraltonCityOfficerText:
	text "MISTRALTON CITY"
	line "has the biggest"
	cont "airport in UNOVA."
	done

MistraltonCityYoungsterText:
	text "I love airplanes!"
	line "I want to be a"
	
	para "pilot when I grow"
	line "up, just like"
	cont "Miss SKYLA!"
	done

MistraltonCityTeacherText:
	text "We can grow crops"
	line "in the greenhouses"
	cont "all year long!"
	
	para "We export them all"
	line "over UNOVA."
	done

MistraltonCityTwinText:
	text "I love playing in"
	line "the puddles!"
	done

MistraltonCitySignText:
	text "MISTRALTON CITY."
	
	para "The city where"
	line "winds gather the"
	cont "flowers."
	done

MistraltonAirportSignText:
	text "MISTRALTON CITY"
	line "AIRPORT."
	done

MistraltonCity_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 23, 23, CHARGESTONE_CAVE_1F, 5
	warp_event 23,  9, MISTRALTON_MART, 1
	warp_event 27, 15, MISTRALTON_POKECENTER_1F, 1
	warp_event 35, 17, MISTRALTON_HOUSE, 1
	warp_event  6,  5, MISTRALTON_GYM_1F, 1
	warp_event  7,  5, MISTRALTON_GYM_1F, 2
	warp_event 14,  9, MISTRALTON_AIRPORT, 1

	db 2 ; coord events
	coord_event  6,  6, SCENE_DEFAULT, MistraltonCityBlockerScript
	coord_event  7,  6, SCENE_DEFAULT, MistraltonCityBlockerScript

	db 3 ; bg events
	bg_event 21,  9, BGEVENT_READ, MistraltonCitySign
	bg_event 11,  9, BGEVENT_READ, MistraltonAirportSign
	bg_event  8, 28, BGEVENT_ITEM, MistraltonCityElixer

	db 7 ; object events
	object_event  5,  6, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistraltonCityGymGuyScript, EVENT_SKYLA_RETURNED
	object_event  3,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCityParlyzHeal, EVENT_MISTRALTON_CITY_PARLYZ_HEAL
	object_event 20, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCityMaxRepel, EVENT_MISTRALTON_CITY_MAX_REPEL
	object_event  5, 10, SPRITE_OFFICER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MistraltonCityOfficerScript, -1
	object_event 10, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MistraltonCityYoungsterScript, -1
	object_event  8, 22, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MistraltonCityTeacherScript, -1
	object_event 31, 17, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MistraltonCityTwinScript, -1
	