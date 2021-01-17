	const_def 2 ; object constants
	const MARINETUBE_COOLTRAINER_F
	const MARINETUBE_COOLTRAINER_M
	const MARINETUBE_LASS
	const MARINETUBE_POKEFAN_M
	const MARINETUBE_TEACHER
	const MARINETUBE_TWIN

MarineTube_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
MarineTubeCooltrainerFTextScript:
	jumptextfaceplayer MarineTubeCooltrainerFText
	
MarineTubeCooltrainerMTextScript:
	jumptextfaceplayer MarineTubeCooltrainerMText
	
MarineTubeLassTextScript:
	jumptextfaceplayer MarineTubeLassText
	
MarineTubePokefanMTextScript:
	jumptextfaceplayer MarineTubePokefanMText
	
MarineTubeTeacherTextScript:
	jumptextfaceplayer MarineTubeTeacherText
	
MarineTubeTwinTextScript:
	jumptext MarineTubeTwinText
	
MarineTubeFullRestore:
	hiddenitem FULL_RESTORE, EVENT_MARINE_TUBE_FULL_RESTORE
	
MarineTubeEther:
	hiddenitem ETHER, EVENT_MARINE_TUBE_ETHER
	
MarineTubeCooltrainerFText:
	text "Wow, look at all"
	line "of the #MON"
	cont "underwater!"
	done
	
MarineTubeCooltrainerMText:
	text "The MARINE TUBE"
	line "is a great date"
	cont "destination!"
	done
	
MarineTubeLassText:
	text "This tube serves"
	line "as a shortcut to"
	
	para "HUMILAU CITY, but"
	line "there are so many"
	
	para "tourists that it's"
	line "hard to get"
	cont "through!"
	done
	
MarineTubePokefanMText:
	text "Some people drop"
	line "their valuables"
	
	para "on the floor since"
	line "it's so dark."
	done
	
MarineTubeTeacherText:
	text "I took my daughter"
	line "to see all the"
	cont "beautiful fish!"
	done
	
MarineTubeTwinText:
	text "Mommy! Come look"
	line "at all the #MON"
	cont "swimming!"
	done

MarineTube_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 27, MARINE_TUBE_ENTRANCE, 3
	warp_event  7,  5, MARINE_TUBE_ENTRANCE, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5, 10, BGEVENT_ITEM, MarineTubeFullRestore
	bg_event  8, 18, BGEVENT_ITEM, MarineTubeEther

	db 6 ; object events
	object_event  5, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, MarineTubeCooltrainerFTextScript, -1
	object_event  5, 17, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MarineTubeCooltrainerMTextScript, -1
	object_event  8,  7, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, MarineTubeLassTextScript, -1
	object_event  7, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MarineTubePokefanMTextScript, -1
	object_event  6, 24, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MarineTubeTeacherTextScript, -1
	object_event  5, 29, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MarineTubeTwinTextScript, -1
	