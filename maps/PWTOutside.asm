	const_def 2 ; object constants
	const PWTOUTSIDE_CHEREN
	const PWTOUTSIDE_BIANCA
	const PWTOUTSIDE_CARBOS
	const PWTOUTSIDE_HIDDEN_POWER_GURU
	const PWTOUTSIDE_DV_CHECKER
	const PWTOUTSIDE_BUG_CATCHER
	const PWTOUTSIDE_COOLTRAINER_F
	const PWTOUTSIDE_COOLTRAINER_M
	const PWTOUTSIDE_SAILOR

PWTOutside_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end
	
PwtOutsideScript:
	opentext
	writetext PwtOutsideBianceCherenText
	waitbutton
	closetext
	applymovement PWTOUTSIDE_CHEREN, PwtOutsideMovement
	applymovement PWTOUTSIDE_BIANCA, PwtOutsideMovement
	disappear PWTOUTSIDE_CHEREN
	disappear PWTOUTSIDE_BIANCA
	clearevent EVENT_ASPERTIA_CITY_BLOCKER
	setscene SCENE_FINISHED
	end
	
HiddenPowerGuruScript:
	faceplayer
	opentext
	writetext AskHiddenPowerText
	yesorno
	iffalse .refused
	writetext HiddenPowerAskPokemonText
	buttonsound
	special Special_HiddenPowerGuru
	iffalse .refused
	ifequal $1, .egg
	writetext ReportHiddenPowerText
	waitbutton
	closetext
	end
	
.refused
	writetext RefusedHiddenPowerText
	waitbutton
	closetext
	end
	
.egg
	writetext HiddenPowerEggText
	waitbutton
	closetext
	end
	
DVCheckerScript:
	faceplayer
	opentext
	writetext DVCheckerAskText
	yesorno
	iffalse .refused
	special DVChecker
	waitbutton
	closetext
	end
	
.refused
	writetext DVCheckerRefusedText
	waitbutton
	closetext
	end
	
PwtOutsideCarbos:
	itemball CARBOS
	
PwtOutsideBugCatcherScript:
	jumptextfaceplayer PwtOutsideBugCatcherText
	
PwtOutsideCooltrainerFScript:
	jumptextfaceplayer PwtOutsideCooltrainerFText
	
PwtOutsideCooltrainerMScript:
	jumptextfaceplayer PwtOutsideCooltrainerMText
	
PwtOutsideSailorScript:
	jumptextfaceplayer PwtOutsideSailorText
	
PwtOutsideMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
AskHiddenPowerText:
	text "I can sense the"
	line "hidden potential"
	cont "of #MON."
	
	para "Would you like me"
	line "to tell you the"
	cont "hidden potential"
	cont "of your #MON?"
	done
	
HiddenPowerAskPokemonText:
	text "Which #MON"
	line "should I check?"
	done
	
ReportHiddenPowerText:
	text "I can sense it…"
	
	para "Your @"
	text_ram wStringBuffer3
	text ""
	line "has a hidden power"
	cont "of @"
	text_ram wStringBuffer1
	text "!"
	done
	
RefusedHiddenPowerText:
	text "Oh, well come back"
	line "if you want me to"
	
	para "sense your #-"
	line "MON's hidden"
	cont "potential."
	done
	
HiddenPowerEggText:
	text "Even I can't sense"
	line "the potential of"
	cont "an EGG!"
	done
	
DVCheckerAskText:
	text "I can sense the"
	line "potential of a"
	cont "#MON's stats."
	
	para "Would you like to"
	line "know your #-"
	cont "MON's potential?"
	done
	
DVCheckerRefusedText:
	text "Oh, ok. Come again"
	line "if you'd like me"
	
	para "to check your"
	line "#MON's stats."
	done
	
PwtOutsideBianceCherenText:
	text "CHEREN: Ah,"
	line "<PLAY_G>. Good to"
	cont "see you."
	
	para "Are you here to"
	line "enter the #MON"
	cont "WORLD TOURNAMENT?"
	
	para "BIANCA: It's where"
	line "all the strongest"
	
	para "trainers come to"
	line "test their"
	cont "strength!"
	
	para "CHEREN: Well if"
	line "you do enter, keep"
	cont "an eye out. We"
	
	para "think something"
	line "suspicious may be"
	cont "going on…"
	
	para "BIANCA: See you"
	line "at the TOURNAMENT,"
	cont "<PLAY_G>!"
	done
	
PwtOutsideBugCatcherText:
	text "Are you going to"
	line "compete in the"
	cont "TOURNAMENT?"
	done
	
PwtOutsideCooltrainerFText:
	text "All the best"
	line "trainers in the"
	
	para "region come to"
	line "compete here."
	
	para "I'm getting all"
	line "fired up!"
	done
	
PwtOutsideCooltrainerMText:
	text "I wonder who's"
	line "going to be"
	cont "competing this"
	cont "time."
	
	para "Sometimes the GYM"
	line "LEADERs even"
	cont "compete!"
	done
	
PwtOutsideSailorText:
	text "Aye! We ship in"
	line "materials from"
	
	para "CASTELIA for the"
	line "TOURNAMENT."
	done
	
PWTOutside_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4, 13, RELIC_PASSAGE_BACK, 3
	warp_event 26,  9, PWT_INSIDE, 1
	warp_event 27,  9, PWT_INSIDE, 2
	warp_event 12,  5, PWT_DRIFTVEIL_GATE, 3

	db 1 ; coord events
	coord_event  8, 13, SCENE_DEFAULT, PwtOutsideScript

	db 0 ; bg events
	
	db 9 ; object events
	object_event 10, 13, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_OUTSIDE_CHEREN_BIANCA
	object_event 10, 14, SPRITE_BIANCA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PWT_OUTSIDE_CHEREN_BIANCA
	object_event 20, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PwtOutsideCarbos, EVENT_PWT_OUTSIDE_CARBOS
	object_event 20,  8, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HiddenPowerGuruScript, -1
	object_event 16, 15, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DVCheckerScript, -1
	object_event 13,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, PwtOutsideBugCatcherScript, -1
	object_event 22, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PwtOutsideCooltrainerFScript, -1
	object_event 32, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PwtOutsideCooltrainerMScript, -1
	object_event 26, 24, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PwtOutsideSailorScript, -1
	