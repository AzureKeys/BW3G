	const_def 2 ; object constants
	const R17_BIG_PEARL
	const R17_DIVE_BALL
	const R17_RARE_CANDY
	const R17_DAMP_ROCK
	const R17_FISHER_1
	const R17_FISHER_2
	const R17_SWIMMERM_1
	const R17_SWIMMERM_2
	const R17_SWIMMERF_1
	const R17_SWIMMERF_2
	const R17_DOCTOR

Rt17_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R17DoctorScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_DOCTOR_R17
	iftrue .beaten
	writetext R17DoctorIntroText
	waitbutton
	closetext
	winlosstext R17DoctorWinText, 0
	setlasttalked R17_DOCTOR
	loadtrainer DOCTOR, DOCTOR_R17
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DOCTOR_R17
	opentext
.beaten
	writetext R17DoctorHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerFisher1R17:
	trainer FISHER, FISHER_R17_1, EVENT_BEAT_FISHER_R17_1, Fisher1R17SeenText, Fisher1R17BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher1R17AfterText
	waitbutton
	closetext
	end

TrainerFisher2R17:
	trainer FISHER_D, FISHER_R17_2, EVENT_BEAT_FISHER_R17_2, Fisher2R17SeenText, Fisher2R17BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher2R17AfterText
	waitbutton
	closetext
	end

TrainerSwimmerM1R17:
	trainer SWIMMERM, SWIMMER_M_R17_1, EVENT_BEAT_SWIMMERM_R17_1, SwimmerM1R17SeenText, SwimmerM1R17BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerM1R17AfterText
	waitbutton
	closetext
	end

TrainerSwimmerM2R17:
	trainer SWIMMERM_D, SWIMMER_M_R17_2, EVENT_BEAT_SWIMMERM_R17_2, SwimmerM2R17SeenText, SwimmerM2R17BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerM2R17AfterText
	waitbutton
	closetext
	end

TrainerSwimmerF1R17:
	trainer SWIMMERF, SWIMMER_F_R17_1, EVENT_BEAT_SWIMMERF_R17_1, SwimmerF1R17SeenText, SwimmerF1R17BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerF1R17AfterText
	waitbutton
	closetext
	end

TrainerSwimmerF2R17:
	trainer SWIMMERF_D, SWIMMER_F_R17_2, EVENT_BEAT_SWIMMERF_R17_2, SwimmerF2R17SeenText, SwimmerF2R17BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerF2R17AfterText
	waitbutton
	closetext
	end
	
R17BigPearl:
	itemball BIG_PEARL
	
R17DiveBall:
	itemball DIVE_BALL
	
R17DampRock:
	itemball DAMP_ROCK
	
R17RareCandy:
	itemball RARE_CANDY
	
R17Sign:
	jumptext R17SignText
	
R17DoctorIntroText:
	text "I'm a doctor, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
R17DoctorWinText:
	text "Ah, I see."
	done
	
R17DoctorHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
Fisher1R17SeenText:
	text "I'm in a slump."

	para "Maybe it's the"
	line "gear I'm using."

	para "Let's battle for a"
	line "change of pace!"
	done

Fisher1R17BeatenText:
	text "I lost, but I feel"
	line "better anyway."
	done

Fisher1R17AfterText:
	text "The LURE BALL"
	line "is the best for"

	para "catching hooked"
	line "#MON."

	para "It's much more"
	line "effective than a"
	cont "ULTRA BALL."
	done
	
Fisher2R17SeenText:
	text "Let me demonstrate"
	line "the power of the"
	cont "#MON I caught!"
	done

Fisher2R17BeatenText:
	text "What? That's not"
	line "right."
	done

Fisher2R17AfterText:
	text "I want to become"
	line "the trainer CHAMP"

	para "using the #MON"
	line "I caught."

	para "That's the best"
	line "part of fishing!"
	done
	
SwimmerM1R17SeenText:
	text "Have you ever gone"
	line "swimming in the"
	cont "sea at night?"
	done

SwimmerM1R17BeatenText:
	text "Glub…"
	done

SwimmerM1R17AfterText:
	text "At night, the sea"
	line "turns black. It"

	para "feels like it will"
	line "swallow you up."
	done
	
SwimmerM2R17SeenText:
	text "Pant, pant…"
	line "Just… a little…"

	para "farther… to…"
	line "land…"
	done

SwimmerM2R17BeatenText:
	text "I'm drowning!"
	done

SwimmerM2R17AfterText:
	text "I… asked my girl-"
	line "friend to swim to"
	cont "ROUTE 18… Gasp…"
	done
	
SwimmerF1R17SeenText:
	text "I'm disgusted by"
	line "wimpy people!"
	done

SwimmerF1R17BeatenText:
	text "I could beat you"
	line "at swimming…"
	done

SwimmerF1R17AfterText:
	text "It's a quick swim"
	line "between ROUTE 18"
	cont "and NUVEMA TOWN…"

	para "Sheesh, some big"
	line "man my boyfriend"

	para "is! What a wimp!"
	done
	
SwimmerF2R17SeenText:
	text "Swimming?"
	line "I'm lousy at it."

	para "I'm just splashing"
	line "around in these"
	cont "shallow waters."
	done

SwimmerF2R17BeatenText:
	text "I thought I could"
	line "win."
	done

SwimmerF2R17AfterText:
	text "I might be bad at"
	line "swimming, but I"
	cont "love the sea."
	done
	
R17SignText:
	text "ROUTE 17"
	
	para "Watch for strong"
	line "currents!"
	done

Rt17_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 39, 28, R_1_R_17_GATE, 1
	warp_event 39, 29, R_1_R_17_GATE, 2
	warp_event 34,  3, P2_LAB_ENTRANCE, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 37, 27, BGEVENT_READ, R17Sign

	db 11 ; object events
	object_event 10, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17BigPearl, EVENT_R17_BIG_PEARL
	object_event 29, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17DiveBall, EVENT_R17_DIVE_BALL
	object_event 18, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17RareCandy, EVENT_R17_RARE_CANDY
	object_event 20, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17DampRock, EVENT_R17_DAMP_ROCK
	object_event 27, 28, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerFisher1R17, -1
	object_event 18,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerFisher2R17, -1
	object_event  7, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSwimmerM1R17, -1
	object_event 14, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerSwimmerM2R17, -1
	object_event  7, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSwimmerF1R17, -1
	object_event 17, 32, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerF2R17, -1
	object_event 35,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R17DoctorScript, -1
	