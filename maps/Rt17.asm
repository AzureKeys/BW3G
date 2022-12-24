	const_def 2 ; object constants
	const R17_BIG_PEARL
	const R17_DIVE_BALL
	const R17_RARE_CANDY
	const R17_DAMP_ROCK
	const R17_BLUE_SHARD
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
	trainer DOCTOR, DOCTOR_R17, EVENT_BEAT_DOCTOR_R17, R17DoctorIntroText, R17DoctorWinText, 0, .Script

.Script:
	faceplayer
	opentext
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
	
R17BlueShard:
	itemball BLUE_SHARD
	
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
	text "I'm showing off"
	line "the sea to my"
	cont "beloved #MON…"
	done

Fisher1R17BeatenText:
	text "Wow! How powerful!"
	done

Fisher1R17AfterText:
	text "I want to see all"
	line "kinds of scenery!"

	para "You can only truly"
	line "have hope for"

	para "tomorrow when you"
	line "learn how big the"
	
	para "world is and how"
	line "small you are!"
	done
	
Fisher2R17SeenText:
	text "The sounds of"
	line "gently crashing"
	
	para "waves… The smell"
	line "of salt in the"
	
	para "air… And a battle"
	line "with a trainer!"
	done

Fisher2R17BeatenText:
	text "Simply excellent!"
	line "That's what being"
	cont "young is about!"
	done

Fisher2R17AfterText:
	text "I feel rejuvenated"
	line "when I get the"

	para "chance to have a"
	line "battle with some-"

	para "one younger than"
	line "myself!"
	done
	
SwimmerM1R17SeenText:
	text "I've been taking"
	line "on the #MON"
	
	para "Gyms all across"
	line "the world!"
	done

SwimmerM1R17BeatenText:
	text "I couldn't defeat"
	line "them all, but I"
	
	para "learned a lot, and"
	line "became stronger!"
	done

SwimmerM1R17AfterText:
	text "It's fine! I just"
	line "want to have fun"

	para "with #MON"
	line "battles!"
	done
	
SwimmerM2R17SeenText:
	text "We spend our lives"
	line "swimming! Of"

	para "course we battle"
	line "while swimming,"
	cont "too!"
	done

SwimmerM2R17BeatenText:
	text "I lost, but I'm"
	line "still cool. Not"
	
	para "many people can"
	line "say they've"
	
	para "battled while"
	line "swimming!"
	done

SwimmerM2R17AfterText:
	text "My #MON and I"
	line "saw it with our"
	
	para "own eyes! I'm"
	line "talking about the"
	
	para "secret lab on the"
	line "island here!"
	done
	
SwimmerF1R17SeenText:
	text "Time for an"
	line "aquatic battle in"
	cont "the sea!"
	done

SwimmerF1R17BeatenText:
	text "I'm just going to"
	line "float on by…"
	done

SwimmerF1R17AfterText:
	text "Sometimes jelly-"
	line "fish #MON are"

	para "floating in the"
	line "water around here!"
	done
	
SwimmerF2R17SeenText:
	text "Seeing a #MON"
	line "use its best moves"

	para "against another"
	line "#MON is really"
	cont "an adventure!"
	done

SwimmerF2R17BeatenText:
	text "The adventure is"
	line "over already."
	done

SwimmerF2R17AfterText:
	text "It appears that my"
	line "vacation shall"
	cont "never end."
	
	para "I wonder if that's"
	line "okay…"
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

	db 12 ; object events
	object_event 10, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17BigPearl, EVENT_R17_BIG_PEARL
	object_event 29, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17DiveBall, EVENT_R17_DIVE_BALL
	object_event 18, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17RareCandy, EVENT_R17_RARE_CANDY
	object_event 20, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17DampRock, EVENT_R17_DAMP_ROCK
	object_event 24, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R17BlueShard, EVENT_R17_BLUE_SHARD
	object_event 27, 28, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerFisher1R17, -1
	object_event 18,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerFisher2R17, -1
	object_event  7, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSwimmerM1R17, -1
	object_event 14, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerSwimmerM2R17, -1
	object_event  7, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSwimmerF1R17, -1
	object_event 17, 32, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerF2R17, -1
	object_event 35,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, R17DoctorScript, -1
	