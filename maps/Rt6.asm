	const_def 2 ; object constants
	const R6_FRUIT_TREE
	const R6_HYPER_POTION
	const R6_ELIXER
	const R6_FRIEND_BALL
	const R6_TINYMUSHROOM
	const R6_BIG_MUSHROOM
	const R6_AMOONGUSS_1
	const R6_AMOONGUSS_2
	const R6_AMOONGUSS_3
	const R6_PARASOL_LADY_1
	const R6_PARASOL_LADY_2
	const R6_PKMN_RANGERM
	const R6_PKMN_RANGERF
	const R6_PKMN_BREEDERF
	const R6_PKMN_BREEDERM
	const R6_SCIENTIST_M
	const R6_SCIENTIST_F

Rt6_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AmoongussScript1:
	opentext
	writetext AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R6_AMOONGUSS_1
	reloadmapafterbattle
	end

AmoongussScript2:
	opentext
	writetext AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R6_AMOONGUSS_2
	reloadmapafterbattle
	end

AmoongussScript3:
	opentext
	writetext AmoongussText
	cry AMOONGUSS
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	loadwildmon AMOONGUSS, 35
	startbattle
	disappear R6_AMOONGUSS_3
	reloadmapafterbattle
	end

TrainerScientistMR6:
	trainer SCIENTISTM, SCIENTISTM_R6, EVENT_BEAT_SCIENTISTM_R6, ScientistMR6SeenText, ScientistMR6BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_SCIENTIST_MARCO
	opentext
	checkflag ENGINE_MARCO_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_SCIENTIST_MARCO
	iftrue .NumberAccepted
	checkevent EVENT_MARCO_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext ScientistMR6AfterText
	buttonsound
	setevent EVENT_MARCO_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SCIENTIST_MARCO
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_MARCO
	trainertotext SCIENTISTM, SCIENTISTM_R6, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext ScientistMR6BeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight2
	checkmapscene SEASIDE_CAVE_CHAMBER
	ifequal SCENE_FINISHED, .LoadFight1
; Fight0
	loadtrainer SCIENTISTM, SCIENTISTM_R6
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_MARCO_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer SCIENTISTM, MARCO_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_MARCO_READY_FOR_REMATCH
	end
.LoadFight2
	loadtrainer SCIENTISTM, MARCO_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_MARCO_READY_FOR_REMATCH
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

TrainerPkmnRangerMR6:
	trainer PKMN_RANGERM, PKMN_RANGERM_R6, EVENT_BEAT_PKMN_RANGERM_R6, PkmnRangerMR6SeenText, PkmnRangerMR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMR6AfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerFR6:
	trainer PKMN_RANGERF, PKMN_RANGERF_R6, EVENT_BEAT_PKMN_RANGERF_R6, PkmnRangerFR6SeenText, PkmnRangerFR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFR6AfterText
	waitbutton
	closetext
	end

TrainerParasolLady1R6:
	trainer PARASOL_LADY, PARASOL_LADY_R6_1, EVENT_BEAT_PARASOL_LADY_R6_1, ParasolLady1R6SeenText, ParasolLady1R6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ParasolLady1R6AfterText
	waitbutton
	closetext
	end

TrainerParasolLady2R6:
	trainer PARASOL_LADY, PARASOL_LADY_R6_2, EVENT_BEAT_PARASOL_LADY_R6_2, ParasolLady2R6SeenText, ParasolLady2R6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ParasolLady2R6AfterText
	waitbutton
	closetext
	end

TrainerPkmnBreederFR6:
	trainer PKMN_BREEDERF, PKMN_BREEDERF_R6, EVENT_BEAT_PKMN_BREEDERF_R6, PkmnBreederFR6SeenText, PkmnBreederFR6BeatenText, 0, .Script

.Script:
	opentext
	checkjustbattled
	iftrue .RematchText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RematchText
	writetext PkmnBreederFR6SeenText
	waitbutton
	closetext
	winlosstext PkmnBreederFR6BeatenText, 0
	setlasttalked R6_PKMN_BREEDERF
	loadtrainer PKMN_BREEDERF, PKMN_BREEDERF_R6
	startbattle
	reloadmapafterbattle
	opentext
; fallthrough
.RematchText
	writetext PkmnBreederFR6AfterText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

TrainerPkmnBreederMR6:
	trainer PKMN_BREEDERM, PKMN_BREEDERM_R6, EVENT_BEAT_PKMN_BREEDERM_R6, PkmnBreederMR6SeenText, PkmnBreederMR6BeatenText, 0, .Script

.Script:
	opentext
	checkjustbattled
	iftrue .RematchText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .RematchText
	writetext PkmnBreederMR6SeenText
	waitbutton
	closetext
	winlosstext PkmnBreederMR6BeatenText, 0
	setlasttalked R6_PKMN_BREEDERM
	loadtrainer PKMN_BREEDERM, PKMN_BREEDERM_R6
	startbattle
	reloadmapafterbattle
	opentext
; fallthrough
.RematchText
	writetext PkmnBreederMR6AfterText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	end

TrainerScientistFR6:
	trainer SCIENTISTF, SCIENTISTF_R6, EVENT_BEAT_SCIENTISTF_R6, ScientistFR6SeenText, ScientistFR6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFR6AfterText
	waitbutton
	closetext
	end
	
R6FruitTree:
	fruittree FRUITTREE_R_6
	
R6HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_6, HIDDENGROTTO_TIER_3
	
R6HyperPotion:
	itemball HYPER_POTION
	
R6FriendBall:
	itemball FRIEND_BALL
	
R6Elixer:
	itemball ELIXER
	
R6TinyMushroom:
	itemball TINYMUSHROOM
	
R6BigMushroom:
	itemball BIG_MUSHROOM

R6Sign:
	jumptext R6SignText

R6LabSign:
	jumptext R6LabText

R6ChargestoneSign:
	jumptext R6ChargestoneText
	
PkmnRangerMR6SeenText:
	text "Nature!"
	done

PkmnRangerMR6BeatenText:
	text "Natuuure!"
	done

PkmnRangerMR6AfterText:
	text "When we are"
	line "surrounded by"
	
	para "green, we feel"
	line "more energetic."
	cont "Don't you think?"
	done
	
PkmnRangerFR6SeenText:
	text "There are some"
	line "#MON that can"
	
	para "disguise them-"
	line "selves!"
	done

PkmnRangerFR6BeatenText:
	text "I lost…"
	done

PkmnRangerFR6AfterText:
	text "Be careful when"
	line "checking for"
	cont "items!"
	done
	
ParasolLady1R6SeenText:
	text "Pouring rain…"
	line "Fighting #MON…"
	done

ParasolLady1R6BeatenText:
	text "Ah, the sad melody"
	line "of a total defeat…"
	done

ParasolLady1R6AfterText:
	text "Rain, rain! I love"
	line "rain! If I'm"
	
	para "crying, I can hide"
	line "my tears with my"
	cont "parasol!"
	done
	
ParasolLady2R6SeenText:
	text "Water fun with"
	line "#MON! Do you"
	
	para "want to play with"
	line "us?"
	done

ParasolLady2R6BeatenText:
	text "My oh my… I lost."
	done

ParasolLady2R6AfterText:
	text "I'll go home and"
	line "get my boyfriend"
	
	para "to… No, I'll get"
	line "my #MON to"
	cont "cheer me up!"
	done
	
PkmnBreederFR6SeenText:
	text "Going through"
	line "trials is the best"
	
	para "for growing"
	line "stronger!"
	done

PkmnBreederFR6BeatenText:
	text "You were the"
	line "perfect trial!"
	done

PkmnBreederFR6AfterText:
	text "We raise our #-"
	line "MON by having them"
	cont "battle!"
	
	para "If you want to"
	line "battle again, come"
	cont "and see me!"
	done
	
PkmnBreederMR6SeenText:
	text "I love stomping"
	line "in puddles!"
	done

PkmnBreederMR6BeatenText:
	text "Woah!"
	done

PkmnBreederMR6AfterText:
	text "I'm gonna go stomp"
	line "around to cheer"
	cont "myself up!"
	done
	
ScientistMR6SeenText:
	text "Testing out one's"
	line "theory is all a"
	cont "part of science!"
	done

ScientistMR6BeatenText:
	text "Analyzing the"
	line "current situation"
	
	para "is also a part of"
	line "science!"
	done

ScientistMR6AfterText:
	text "Just because a"
	line "previous method"
	
	para "worked before,"
	line "doesn't mean it"
	cont "will again!"
	done
	
ScientistFR6SeenText:
	text "I shall uncover"
	line "the mechanism"
	
	para "behind trainer and"
	line "#MON relation-"
	cont "ships!"
	done

ScientistFR6BeatenText:
	text "Why are #MON"
	line "able to understand"
	
	para "their trainers'"
	line "orders?"
	done

ScientistFR6AfterText:
	text "I wonder if PROF."
	line "ROWAN of the"
	
	para "SINNOH region has"
	line "managed to unlock"
	
	para "the mystery of how"
	line "#MON evolve."
	done

AmoongussText:
	text "Ooong!"
	done

R6SignText:
	text "ROUTE 6."
	line "West to CHARGE-"
	cont "STONE CAVE."
	done

R6LabText:
	text "ROUTE 6"
	line "Weather Lab."
	done

R6ChargestoneText:
	text "CHARGESTONE CAVE"
	line "ahead."
	
	para "Passage to"
	line "MISTRALTON CITY."
	done

Rt6_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 15, 17, R_6_HOUSE, 1
	warp_event 31, 21, R_6_LAB, 1
	warp_event  8,  3, CHARGESTONE_CAVE_1F, 1
	warp_event 46, 42, DRIFTVEIL_CITY, 8
	warp_event 46, 43, DRIFTVEIL_CITY, 9
	warp_event 46, 15, MISTRALTON_CAVE_1F, 1

	db 0 ; coord events

	db 5 ; bg events
	bg_event 43, 42, BGEVENT_READ, R6Sign
	bg_event 29, 21, BGEVENT_READ, R6LabSign
	bg_event  7, 13, BGEVENT_READ, R6ChargestoneSign
	bg_event 27, 33, BGEVENT_UP, R6HiddenGrotto
	bg_event 28, 33, BGEVENT_UP, R6HiddenGrotto

	db 17 ; object events
	object_event 27, 19, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R6FruitTree, -1
	object_event 37, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6HyperPotion, EVENT_R_6_HYPER_POTION
	object_event 44, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6Elixer, EVENT_R_6_ELIXER
	object_event 12, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6FriendBall, EVENT_R_6_FRIEND_BALL
	object_event 10, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6TinyMushroom, EVENT_R_6_TINYMUSHROOM
	object_event  4, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R6BigMushroom, EVENT_R_6_BIG_MUSHROOM
	object_event  8, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmoongussScript1, EVENT_R_6_AMOONGUSS_1
	object_event 16, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmoongussScript2, EVENT_R_6_AMOONGUSS_2
	object_event 45, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmoongussScript3, EVENT_R_6_AMOONGUSS_3
	object_event 36, 32, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerParasolLady1R6, -1
	object_event 27, 37, SPRITE_BUENA, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerParasolLady2R6, -1
	object_event  5, 24, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerMR6, -1
	object_event 43, 27, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPkmnRangerFR6, -1
	object_event 44, 34, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederFR6, -1
	object_event 14, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPkmnBreederMR6, -1
	object_event 24, 22, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistMR6, -1
	object_event 30, 22, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistFR6, -1
	