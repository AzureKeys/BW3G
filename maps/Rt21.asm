	const_def 2 ; object constants
	const R21_BIG_PEARL
	const R21_HP_UP
	const R21_SWIMMERM_1
	const R21_SWIMMERM_2
	const R21_SWIMMERF_1
	const R21_SWIMMERF_2
	const R21_SWIMMERF_3
	const R21_FISHER
	const R21_BATTLE_GIRL

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

TrainerFisherR21:
	trainer FISHER_D, FISHER_R21, EVENT_BEAT_FISHER_R21, FisherR21SeenText, FisherR21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherR21AfterText
	waitbutton
	closetext
	end

TrainerBattleGirlR21:
	trainer BATTLE_GIRL, BATTLE_GIRL_R21, EVENT_BEAT_BATTLE_GIRL_R21, BattleGirlR21SeenText, BattleGirlR21BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlR21AfterText
	waitbutton
	closetext
	end
	
R21BigPearl:
	itemball BIG_PEARL
	
R21HPUp:
	itemball HP_UP
	
SwimmerM2R21SeenText:
	text "I feel so much"
	line "lighter in water."
	done

SwimmerM2R21BeatenText:
	text "Oh, no!"
	done

SwimmerM2R21AfterText:
	text "Swimming exercises"
	line "your full body."

	para "It's really good"
	line "for you."
	done
	
SwimmerF1R21SeenText:
	text "What an impressive"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmerF1R21BeatenText:
	text "No!"
	done

SwimmerF1R21AfterText:
	text "SURF isn't the"
	line "only HM move"
	cont "you use in water."
	
SwimmerF2R21SeenText:
	text "I guess it's im-"
	line "possible to swim"

	para "all the way across"
	line "the ocean."
	done

SwimmerF2R21BeatenText:
	text "Aiyah!"
	done

SwimmerF2R21AfterText:
	text "Besides the sea, I"
	line "can also swim in"
	cont "ponds and rivers."
	done
	
SwimmerM1R21SeenText:
	text "Land ho! Gotta"
	line "keep going!"
	done

SwimmerM1R21BeatenText:
	text "Glug…"
	done

SwimmerM1R21AfterText:
	text "Just a little"
	line "farther to"
	cont "HUMILAU CITY…"
	done
	
FisherR21SeenText:
	text "I'm bored by fish-"
	line "ing. Let's battle!"
	done

FisherR21BeatenText:
	text "Utter failure…"
	done

FisherR21AfterText:
	text "I'll just go back"
	line "to fishing…"
	done
	
BattleGirlR21SeenText:
	text "Hm? You're good,"
	line "aren't you?"
	done

BattleGirlR21BeatenText:
	text "Just as I thought!"
	done

BattleGirlR21AfterText:
	text "A good trainer can"
	line "recognize other"
	cont "good trainers."
	done
	
SwimmerF3R21SeenText:
	text "If I win, you have"
	line "to help me with my"
	cont "suntan lotion!"
	done

SwimmerF3R21BeatenText:
	text "I'm worried about"
	line "sunburn…"
	done

SwimmerF3R21AfterText:
	text "I have to watch"
	line "out for blemishes"
	cont "caused by the sun."
	done

Rt21_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 12, 45, SEASIDE_CAVE_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 9 ; object events
	object_event  9,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R21BigPearl, EVENT_R21_BIG_PEARL
	object_event 10, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R21HPUp, EVENT_R21_HP_UP
	object_event  4, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSwimmerM1R21, -1
	object_event 13, 24, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerM2R21, -1
	object_event  4,  7, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerF1R21, -1
	object_event 18, 32, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSwimmerF2R21, -1
	object_event  3, 20, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSwimmerF3R21, -1
	object_event  5, 32, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerFisherR21, -1
	object_event 15, 46, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlR21, -1
	