	const_def 2 ; object constants
	const R21_BIG_PEARL
	const R21_HP_UP
	const R21_LURE_BALL
	const R21_SWIMMERM_1
	const R21_SWIMMERM_2
	const R21_SWIMMERM_3
	const R21_SWIMMERF_1
	const R21_SWIMMERF_2
	const R21_SWIMMERF_3
	const R21_BLACKBELT

Rt21_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSwimmerM1R21:
	trainer SWIMMERM, SWIMMER_M_R21_1, EVENT_BEAT_SWIMMERM_R21_1, SwimmerM1R21SeenText, SwimmerM1R21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerM1R21AfterText
	waitbutton
	closetext
	end

TrainerSwimmerM2R21:
	trainer SWIMMERM_D, SWIMMER_M_R21_2, EVENT_BEAT_SWIMMERM_R21_2, SwimmerM2R21SeenText, SwimmerM2R21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerM2R21AfterText
	waitbutton
	closetext
	end

TrainerSwimmerM3R21:
	trainer SWIMMERM_D, SWIMMER_M_R21_3, EVENT_BEAT_SWIMMERM_R21_3, SwimmerM3R21SeenText, SwimmerM3R21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerM3R21AfterText
	waitbutton
	closetext
	end

TrainerSwimmerF1R21:
	trainer SWIMMERF, SWIMMER_F_R21_1, EVENT_BEAT_SWIMMERF_R21_1, SwimmerF1R21SeenText, SwimmerF1R21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerF1R21AfterText
	waitbutton
	closetext
	end

TrainerSwimmerF2R21:
	trainer SWIMMERF, SWIMMER_F_R21_2, EVENT_BEAT_SWIMMERF_R21_2, SwimmerF2R21SeenText, SwimmerF2R21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerF2R21AfterText
	waitbutton
	closetext
	end

TrainerSwimmerF3R21:
	trainer SWIMMERF_D, SWIMMER_F_R21_3, EVENT_BEAT_SWIMMERF_R21_3, SwimmerF3R21SeenText, SwimmerF3R21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerF3R21AfterText
	waitbutton
	closetext
	end

TrainerBlackbeltR21:
	trainer BLACKBELT_T, BLACKBELT_R21, EVENT_BEAT_BLACKBELT_R21, BlackbeltR21SeenText, BlackbeltR21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltR21AfterText
	waitbutton
	closetext
	end
	
R21BigPearl:
	itemball BIG_PEARL
	
R21LureBall:
	itemball LURE_BALL
	
R21HPUp:
	itemball HP_UP
	
SwimmerM2R21SeenText:
	text "It is said that"
	line "water will not"
	
	para "grow stagnant as"
	line "long as it keeps"
	cont "flowing…"
	
	para "So as long as I"
	line "keep moving on…"
	done

SwimmerM2R21BeatenText:
	text "Looks like I've"
	line "gotten stagnant…"
	done

SwimmerM2R21AfterText:
	text "When floating in"
	line "the water, keep"

	para "moving to keep"
	line "yourself limber!"
	done
	
SwimmerF1R21SeenText:
	text "The thing about"
	line "water is that it's"
	cont "always changing…"

	para "From the piercing"
	line "strength of a jet,"
	
	para "to the crushing"
	line "power of a wave…"
	
	para "That's what I'm"
	line "about to show you!"
	done

SwimmerF1R21BeatenText:
	text "You're just as"
	line "strong, perhaps"
	cont "even stronger!"
	done

SwimmerF1R21AfterText:
	text "All #MON have"
	line "their own"
	
	para "strengths. I've"
	line "got to learn more"
	
	para "about the"
	line "strengths of my"
	cont "own #MON!"
	done
	
SwimmerF2R21SeenText:
	text "Catch this! My"
	line "#MON is huge!"
	done

SwimmerF2R21BeatenText:
	text "Wow, you're even"
	line "more than I"
	cont "expected!"
	done

SwimmerF2R21AfterText:
	text "Some #MON are"
	line "huge, but they can"
	
	para "still fit inside"
	line "a #BALL!"
	done
	
SwimmerM1R21SeenText:
	text "I trained with"
	line "MARLON, the gym"
	
	para "leader of HUMILAU"
	line "CITY!"
	done

SwimmerM1R21BeatenText:
	text "I still have room"
	line "to improve!"
	done

SwimmerM1R21AfterText:
	text "They say that"
	line "MARLON can stay in"
	
	para "the ocean for"
	line "seven days and"
	cont "seven nights!"
	done
	
SwimmerM3R21SeenText:
	text "You see this enor-"
	line "mous puddle? They"
	cont "call it an ocean!"
	done

SwimmerM3R21BeatenText:
	text "Woah! You're"
	line "enormous too!"
	done

SwimmerM3R21AfterText:
	text "Big things are"
	line "awesome! Why?"
	
	para "Because they're"
	line "big!"
	done
	
BlackbeltR21SeenText:
	text "Hi-yah! Hi-yah!"
	line "I'm practicing my"
	
	para "punching technique"
	line "in front of the"
	
	para "sea! Give it a"
	line "try!"
	done

BlackbeltR21BeatenText:
	text "I won't stop"
	line "punching just"
	cont "because I lost!"
	done

BlackbeltR21AfterText:
	text "I'm training to"
	line "not be fooled by"
	
	para "the swimming"
	line "ladies… I'm not"
	
	para "just looking at"
	line "them!"
	done
	
SwimmerF3R21SeenText:
	text "I learned all the"
	line "good points of my"
	
	para "water type #MON"
	line "by swimming with"
	cont "them!"
	done

SwimmerF3R21BeatenText:
	text "What a fresh"
	line "trainer! Really,"
	cont "really fresh!"
	done

SwimmerF3R21AfterText:
	text "I'm a girl with"
	line "everything…"
	
	para "Well, everything"
	line "but a place to put"
	cont "my #BALLs!"
	done

Rt21_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 12, 45, SEASIDE_CAVE_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 10 ; object events
	object_event  9,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R21BigPearl, EVENT_R21_BIG_PEARL
	object_event 10, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R21HPUp, EVENT_R21_HP_UP
	object_event 19, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R21LureBall, EVENT_R21_LURE_BALL
	object_event  4, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSwimmerM1R21, -1
	object_event 13, 24, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerM2R21, -1
	object_event  5, 31, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerM3R21, -1
	object_event  4,  7, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerF1R21, -1
	object_event 18, 32, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSwimmerF2R21, -1
	object_event  3, 20, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerF3R21, -1
	object_event 15, 46, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltR21, -1
	