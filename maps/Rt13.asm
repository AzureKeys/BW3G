	const_def 2 ; object constants
	const R13_BLOCKER1
	const R13_BLOCKER2
	const R13_BLOCKER3
	const R13_BLOCKER4
	const R13_YOUNGSTER
	const R13_LASS
	const R13_SCHOOL_KIDM
	const R13_SCHOOL_KIDF
	const R13_POTION
	const R13_POKEBALL
	const R13_FRUIT_TREE
	const R13_SUPER_POTION
	const R13_RARE_CANDY
	const R13_NUGGET

Rt13_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .PutTrainers
	
.PutTrainers:
	checkflag ENGINE_POKEDEX
	iffalse .Done
	appear R13_YOUNGSTER
	disappear R13_BLOCKER1
.Done
	return

TrainerYoungsterR13:
	trainer YOUNGSTER, YOUNGSTER_R13, EVENT_BEAT_YOUNGSTER_R13, YoungsterR13SeenText, YoungsterR13BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_YOUNGSTER_DAN
	opentext
	checkflag ENGINE_DAN_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_YOUNGSTER_DAN
	iftrue .NumberAccepted
	checkevent EVENT_DAN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext YoungsterR13AfterText
	buttonsound
	setevent EVENT_DAN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_YOUNGSTER_DAN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_DAN
	trainertotext YOUNGSTER, YOUNGSTER_R13, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext YoungsterR13BeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight6
	checkmapscene SEASIDE_CAVE_CHAMBER
	ifequal SCENE_FINISHED, .LoadFight5
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight4
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight3
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftrue .LoadFight2
	checkevent EVENT_BEAT_MARLON
	iftrue .LoadFight1
; Fight0
	loadtrainer YOUNGSTER, YOUNGSTER_R13
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer YOUNGSTER, DAN_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	end
.LoadFight2
	loadtrainer YOUNGSTER, DAN_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	end
.LoadFight3
	loadtrainer YOUNGSTER, DAN_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	end
.LoadFight4
	loadtrainer YOUNGSTER, DAN_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	end
.LoadFight5
	loadtrainer YOUNGSTER, DAN_REMATCH_5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	end
.LoadFight6
	loadtrainer YOUNGSTER, DAN_REMATCH_6
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DAN_READY_FOR_REMATCH
	end
	
.AskNumber1:
	jumpstd asknumber1m
	end
	
.AskNumber2:
	jumpstd asknumber2m
	end

.RegisteredNumber:
	jumpstd registerednumberm
	end

.NumberAccepted:
	jumpstd numberacceptedm
	end

.NumberDeclined:
	jumpstd numberdeclinedm
	end

.PhoneFull:
	jumpstd phonefullm
	end

.Rematch:
	jumpstd rematchm
	end

TrainerLassR13:
	trainer LASS, LASS_R13, EVENT_BEAT_LASS_R13, LassR13SeenText, LassR13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassR13AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidMR13:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_R13, EVENT_BEAT_SCHOOL_KIDM_R13, SchoolKidMR13SeenText, SchoolKidMR13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidMR13AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidFR13:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_R13, EVENT_BEAT_SCHOOL_KIDF_R13, SchoolKidFR13SeenText, SchoolKidFR13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidFR13AfterText
	waitbutton
	closetext
	end
	
R13Blocker1TextScript:
	jumptext R13Blocker1Text
	
R13Blocker2TextScript:
	opentext
	writetext R13Blocker2Text
	cry PATRAT
	waitbutton
	closetext
	end
	
R13Blocker3TextScript:
	opentext
	writetext R13Blocker3Text
	cry PURRLOIN
	waitbutton
	closetext
	end
	
R13Blocker4TextScript:
	jumptext R13Blocker4Text
	
R13FruitTree:
	fruittree FRUITTREE_R_13
	
R13HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_13, HIDDENGROTTO_TIER_1
	
R13Potion:
	itemball POTION
	
R13SuperPotion:
	itemball SUPER_POTION
	
R13Pokeball:
	itemball POKE_BALL
	
R13Nugget:
	itemball NUGGET
	
R13RareCandy:
	itemball RARE_CANDY
	
R13Sign:
	jumptext R13SignText
	
R13UndellaSign:
	jumptext R13UndellaSignText
	
YoungsterR13SeenText:
	text "You can tell how"
	line "much your opponent"
	cont "wants to fight by"
	
	para "looking into their"
	line "eyes, don't you"
	cont "think?"
	done

YoungsterR13BeatenText:
	text "Wow! I could tell"
	line "you really wanted"
	cont "to win!"
	done

YoungsterR13AfterText:
	text "I'm gonna keep"
	line "battling to make"

	para "my #MON"
	line "stronger!"
	done
	
LassR13SeenText:
	text "Hey, you! Have you"
	line "seen my cute #-"
	cont "MON? Take a look!"
	done

LassR13BeatenText:
	text "My #MON are"
	line "cute even if they"
	cont "lose!"
	done

LassR13AfterText:
	text "Maybe I'll try a"
	line "wild #MON next"

	para "time so that I can"
	line "win…"
	done
	
SchoolKidFR13SeenText:
	text "My favorite class"
	line "is math!"
	done

SchoolKidFR13BeatenText:
	text "Oh, no!"
	line "How could I lose?"
	done

SchoolKidFR13AfterText:
	text "If #MON were a"
	line "subject at school,"
	cont "I'd be the best!"
	done
	
SchoolKidMR13SeenText:
	text "I'm the strongest"
	line "trainer in my"
	cont "class!"
	done

SchoolKidMR13BeatenText:
	text "I guess I'm not"
	line "the strongest in"
	cont "the world."
	done

SchoolKidMR13AfterText:
	text "I know! I'll go"
	line "home and take a"
	cont "nap!"
	done
	
R13Blocker1Text:
	text "Hey, watch out!"
	
	para "We're in the"
	line "middle of a #-"
	cont "MON battle!"
	done
	
R13Blocker2Text:
	text "PATRAT: Prah!"
	done
	
R13Blocker3Text:
	text "PURRLOIN: Prrr-"
	done
	
R13Blocker4Text:
	text "Stop bothering"
	line "me! I'll battle"
	
	para "you when I'm"
	line "finished."
	done
	
R13SignText:
	text "GIANT CHASM"
	
	para "Beware of wild"
	line "#MON!"
	done
	
R13UndellaSignText:
	text "ROUTE 13"
	
	para "A beachside"
	line "stroll from"
	
	para "UNDELLA TOWN to"
	line "LACUNOSA TOWN."
	done

Rt13_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  8,  3, GIANT_CHASM_1F, 2
	warp_event 27, 49, R_13_UNDELLA_GATE, 1
	warp_event 28, 49, R_13_UNDELLA_GATE, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event  9,  5, BGEVENT_READ, R13Sign
	bg_event 28, 46, BGEVENT_READ, R13UndellaSign
	bg_event  4, 27, BGEVENT_UP, R13HiddenGrotto

	db 14 ; object events
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, R13Blocker1TextScript, EVENT_R13_BLOCKER
	object_event  5, 12, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, R13Blocker2TextScript, EVENT_R13_BLOCKER
	object_event  6, 12, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R13Blocker3TextScript, EVENT_R13_BLOCKER
	object_event  7, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, R13Blocker4TextScript, EVENT_R13_BLOCKER
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR13, EVENT_R13_TRAINER
	object_event  4, 16, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassR13, EVENT_R13_TRAINER
	object_event 15, 39, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidMR13, -1
	object_event  8, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 4, TrainerSchoolKidFR13, -1
	object_event 10, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R13Potion, EVENT_R_13_POTION
	object_event  4, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R13Pokeball, EVENT_R_13_POKEBALL
	object_event  6, 20, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R13FruitTree, -1
	object_event  4, 41, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R13SuperPotion, EVENT_R_13_SUPER_POTION
	object_event  5, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R13RareCandy, EVENT_R_13_RARE_CANDY
	object_event 21, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R13Nugget, EVENT_R_13_NUGGET
	