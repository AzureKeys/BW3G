	const_def 2 ; object constants
	const LACUNOSATOWN_LASS
	const LACUNOSATOWN_YOUNGSTER
	const LACUNOSATOWN_BUG_CATCHER
	const LACUNOSATOWN_POKEFAN_F
	const LACUNOSATOWN_LASS2
	const LACUNOSATOWN_TEACHER
	
LacunosaTown_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_LACUNOSA
	checkflag ENGINE_POKEDEX
	iffalse .done
	checkevent EVENT_GOT_BIANCAS_NUMBER
	iffalse .DoCall
.done:
	return

.DoCall:
	specialphonecall SPECIALCALL_BIANCA_INTRO
	addcellnum PHONE_BIANCA
	return
	
LacunosaTownLassTextScript:
	faceplayer
	opentext
	checkflag ENGINE_POKEDEX
	iffalse .noballs
	writetext LacunosaTownLassBallsText
	waitbutton
	closetext
	end
.noballs
	writetext LacunosaTownLassText
	waitbutton
	closetext
	end
	
LacunosaTownYoungsterTextScript:
	jumptextfaceplayer LacunosaTownYoungsterText
	
LacunosaTownBugCatcherTextScript:
	jumptextfaceplayer LacunosaTownBugCatcherText
	
LacunosaTownPokefanFTextScript:
	jumptextfaceplayer LacunosaTownPokefanFText
	
LacunosaTownLass2TextScript:
	jumptextfaceplayer LacunosaTownLass2Text
	
LacunosaTownTeacherTextScript:
	jumptextfaceplayer LacunosaTownTeacherText
	
LacunosaTownEther:
	hiddenitem ETHER, EVENT_LACUNOSA_TOWN_ETHER
	
LacunosaTownSign:
	jumptext LacunosaTownSignText
	
LacunosaTownLassText:
	text "Darn, the MART's"
	line "out of #BALLS!"
	
	para "I wanted to catch"
	line "some #MON out"
	cont "on ROUTE 12…"
	done
	
LacunosaTownLassBallsText:
	text "Nice, the MART"
	line "restocked #-"
	cont "BALLS!"
	
	para "I'd better stock"
	line "up to go catch"
	cont "some #MON!"
	done
	
LacunosaTownYoungsterText:
	text "You can find items"
	line "hidden on the"
	cont "ground sometimes."
	
	para "Check out any"
	line "places that seem"
	cont "suspicious."
	done
	
LacunosaTownBugCatcherText:
	text "The #MON in"
	line "ROUTE 12 are"
	
	para "different from the"
	line "ones in ROUTE 13."
	done
	
LacunosaTownPokefanFText:
	text "Oh, you must be"
	line "from out of town."
	
	para "Welcome to"
	line "LACUNOSA TOWN."
	done
	
LacunosaTownLass2Text:
	text "Try talking to"
	line "people that you"
	cont "meet."
	
	para "They may give you"
	line "something useful!"
	done
	
LacunosaTownTeacherText:
	text "The girls in the"
	line "house at the end"
	
	para "of the path sure"
	line "do love BERRIES!"
	done
	
LacunosaTownSignText:
	text "LACUNOSA TOWN"
	
	para "A town as"
	line "methodical as"
	cont "clockwork."
	done

LacunosaTown_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  9, 15, LACUNOSA_POKECENTER_1F, 1
	warp_event 13,  3, LACUNOSA_HOUSE, 1
	warp_event  3, 15, LACUNOSA_HOUSE_2, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 18, 16, BGEVENT_READ, LacunosaTownSign
	bg_event 16,  3, BGEVENT_ITEM, LacunosaTownEther

	db 6 ; object events
	object_event  9,  3, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, LacunosaTownLassTextScript, -1
	object_event 10, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LacunosaTownYoungsterTextScript, -1
	object_event  5,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LacunosaTownBugCatcherTextScript, -1
	object_event 15, 17, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LacunosaTownPokefanFTextScript, -1
	object_event  6, 16, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LacunosaTownLass2TextScript, -1
	object_event 16, 10, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, LacunosaTownTeacherTextScript, -1
	