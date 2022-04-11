	const_def 2 ; object constants
	const R5_FRUIT_TREE
	const R5_FRIEND_BALL
	const R5_CALCIUM
	const R5_REVIVE
	const R5_HEART_SCALE
	const R5_SUPER_NERD_1
	const R5_SUPER_NERD_2
	const R5_POKEFAN_F
	const R5_YOUNGSTER
	const R5_POKEMANIAC
	const R5_PSYCHIC
	const R5_BIKER

Rt5_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R5CharlesScript:
	faceplayer
	checkevent EVENT_R_5_DAWN_STONE
	iftrue .beaten
	checkevent EVENT_BEAT_BIKER_R5
	iftrue .offerstone
	opentext
	writetext R5CharlesSeenText
	waitbutton
	closetext
	winlosstext R5CharlesWinText, 0
	setlasttalked R5_BIKER
	loadtrainer BIKER, BIKER_R5
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIKER_R5
.offerstone
	opentext
	writetext R5CharlesGiveStoneText
	buttonsound
	waitsfx
	verbosegiveitem DAWN_STONE
	iffalse .NoRoom
	setevent EVENT_R_5_DAWN_STONE
.NoRoom
	closetext
	end

.beaten:
	opentext
	writetext R5CharlesBeatenText
	waitbutton
	closetext
	end

TrainerSuperNerd1R5:
	trainer SUPER_NERD, SUPER_NERD_R5_1, EVENT_BEAT_SUPER_NERD_R5_1, SuperNerd1R5SeenText, SuperNerd1R5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerd1R5AfterText
	waitbutton
	closetext
	end

TrainerSuperNerd2R5:
	trainer SUPER_NERD, SUPER_NERD_R5_2, EVENT_BEAT_SUPER_NERD_R5_2, SuperNerd2R5SeenText, SuperNerd2R5BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_SUPERNERD_ERIC
	opentext
	checkflag ENGINE_ERIC_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_SUPERNERD_ERIC
	iftrue .NumberAccepted
	checkevent EVENT_ERIC_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext SuperNerd2R5AfterText
	buttonsound
	setevent EVENT_ERIC_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SUPERNERD_ERIC
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_ERIC
	trainertotext SUPER_NERD, SUPER_NERD_R5_2, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext SuperNerd2R5BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight3
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight2
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftrue .LoadFight1
; Fight0
	loadtrainer SUPER_NERD, SUPER_NERD_R5_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer SUPER_NERD, ERIC_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	end
.LoadFight2
	loadtrainer SUPER_NERD, ERIC_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	end
.LoadFight3
	loadtrainer SUPER_NERD, ERIC_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
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

TrainerPokefanFR5:
	trainer POKEFANF, POKEFANF_R5, EVENT_BEAT_POKEFANF_R5, PokefanFR5SeenText, PokefanFR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanFR5AfterText
	waitbutton
	closetext
	end

TrainerYoungsterR5:
	trainer YOUNGSTER_D, YOUNGSTER_R5, EVENT_BEAT_YOUNGSTER_R5, YoungsterR5SeenText, YoungsterR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterR5AfterText
	waitbutton
	closetext
	end

TrainerPokemaniacR5:
	trainer POKEMANIAC, POKEMANIAC_R5, EVENT_BEAT_POKEMANIAC_R5, PokemaniacR5SeenText, PokemaniacR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacR5AfterText
	waitbutton
	closetext
	end

TrainerPsychicR5:
	trainer PSYCHIC_T, PSYCHIC_R5, EVENT_BEAT_PSYCHIC_R5, PsychicR5SeenText, PsychicR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicR5AfterText
	waitbutton
	closetext
	end
	
R5FruitTree:
	fruittree FRUITTREE_R_5
	
R5FriendBall:
	itemball FRIEND_BALL
	
R5Calcium:
	itemball CALCIUM
	
R5Revive:
	itemball REVIVE
	
R5HeartScale:
	itemball HEART_SCALE
	
R5BridgeSign:
	jumptext R5BridgeSignText
	
R5NimbasaSign:
	jumptext R5NimbasaSignText
	
R5HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_5
	
R5CharlesSeenText:
	text "I am… CHARLES…"
	line "I am…"
	cont "heartbreaker…"

	para "You… You wish to"
	line "challenge…"
	cont "CHARLES…?"
	
	para "Prepare… to be…"
	line "heartbroken…"
	done

R5CharlesWinText:
	text "…"
	line "CHARLES's heart…"
	cont "broken…"
	done

R5CharlesGiveStoneText:
	text "You have defeated"
	line "CHARLES…"

	para "Take this with"
	line "you…"

	para "A gift… From"
	line "CHARLES's heart…"
	done

R5CharlesBeatenText:
	text "CHARLES has more"
	line "battles to win…"

	para "More hearts to"
	line "break…"

	para "I am… CHARLES…"
	line "I am…"
	cont "heartbreaker…"
	done
	
SuperNerd1R5SeenText:
	text "Thanks to my stud-"
	line "ies, I'm ready for"
	cont "any #MON!"
	done

SuperNerd1R5BeatenText:
	text "Oops! Computation"
	line "error?"
	done

SuperNerd1R5AfterText:
	text "Darn. I study five"
	line "hours a day too."

	para "There's more to"
	line "learning than just"
	cont "reading books."
	done
	
SuperNerd2R5SeenText:
	text "Do you consider"
	line "type alignments in"
	cont "battle?"

	para "If you know your"
	line "type advantages,"

	para "you'll do better"
	line "in battle."
	done

SuperNerd2R5BeatenText:
	text "Ow, ow, ow!"
	done

SuperNerd2R5AfterText:
	text "I know my #MON"
	line "type alignments."

	para "But I'm not"
	line "actually any good…"
	done
	
PokefanFR5SeenText:
	text "You seem to be"
	line "good at #MON."

	para "If you are, how"
	line "about giving me"
	cont "some advice?"
	done

PokefanFR5BeatenText:
	text "I see. So you can"
	line "battle that way."
	done

PokefanFR5AfterText:
	text "I know something"
	line "good!"

	para "CHARLES the heart-"
	line "breaker will give"
	
	para "you something good"
	line "if you beat him"
	cont "in battle."
	done
	
YoungsterR5SeenText:
	text "Hey! Do you have"
	line "any rare #MON?"
	done

YoungsterR5BeatenText:
	text "Oh, my poor #-"
	line "MON!"
	done

YoungsterR5AfterText:
	text "I'd be happy just"
	line "to own a single"
	cont "rare #MON."
	done
	
PokemaniacR5SeenText:
	text "I think you have"
	line "some rare #MON"
	cont "with you."

	para "Let me see them!"
	done

PokemaniacR5BeatenText:
	text "Gaah! I lost!"
	line "That makes me mad!"
	done

PokemaniacR5AfterText:
	text "Are you making a"
	line "#DEX?"
	done
	
PsychicR5SeenText:
	text "I'm going to read"
	line "your thoughts!"
	done

PsychicR5BeatenText:
	text "I misread you!"
	done

PsychicR5AfterText:
	text "I'd be strong if"
	line "only I could tell"

	para "what my opponent"
	line "was thinking."
	done
	
R5BridgeSignText:
	text "DRIFTVEIL"
	line "DRAWBRIDGE."
	
	para "Inquire inside"
	line "for bridge access."
	done
	
R5NimbasaSignText:
	text "NIMBASA CITY"
	line "ahead."
	done

Rt5_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  4, 12, R_5_BRIDGE_GATE, 1
	warp_event  4, 13, R_5_BRIDGE_GATE, 2
	warp_event 33, 14, R_5_NIMBASA_GATE, 1
	warp_event 33, 15, R_5_NIMBASA_GATE, 2
	warp_event 24, 11, R_5_TRUCK, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event  5, 10, BGEVENT_READ, R5BridgeSign
	bg_event 32, 13, BGEVENT_READ, R5NimbasaSign
	bg_event 31,  5, BGEVENT_UP, R5HiddenGrotto
	bg_event 32,  5, BGEVENT_UP, R5HiddenGrotto

	db 12 ; object events
	object_event 28, 11, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R5FruitTree, -1
	object_event 33,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5FriendBall, EVENT_R_5_FRIEND_BALL
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5Calcium, EVENT_R_5_CALCIUM
	object_event  9, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5Revive, EVENT_R_5_REVIVE
	object_event 17, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5HeartScale, EVENT_R_5_HEART_SCALE
	object_event 22, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSuperNerd1R5, -1
	object_event 13, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSuperNerd2R5, -1
	object_event 10, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokefanFR5, -1
	object_event 14, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerYoungsterR5, -1
	object_event 20, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacR5, -1
	object_event 17, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPsychicR5, -1
	object_event  7, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R5CharlesScript, -1
	