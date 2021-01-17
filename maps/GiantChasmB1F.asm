	const_def 2 ; object constants
	const GIANTCHASMB1F_BLACKBELT
	const GIANTCHASMB1F_X_DEFEND
	const GIANTCHASMB1F_X_SPEED
	const GIANTCHASMB1F_HYPER_POTION
	const GIANTCHASMB1F_ELIXER
	const GIANTCHASMB1F_COOLTRAINERF_1
	const GIANTCHASMB1F_COOLTRAINERF_2
	const GIANTCHASMB1F_COOLTRAINERM
	const GIANTCHASMB1F_POKEMANIAC_1
	const GIANTCHASMB1F_POKEMANIAC_2

GiantChasmB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerCooltrainerF1GiantChasm:
	trainer COOLTRAINERF, COOLTRAINERF_GIANT_CHASM_1, EVENT_BEAT_COOLTRAINERF_GIANT_CHASM_1, CooltrainerF1GiantChasmSeenText, CooltrainerF1GiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF1GiantChasmAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerF2GiantChasm:
	trainer COOLTRAINERF_D, COOLTRAINERF_GIANT_CHASM_2, EVENT_BEAT_COOLTRAINERF_GIANT_CHASM_2, CooltrainerF2GiantChasmSeenText, CooltrainerF2GiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerF2GiantChasmAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerMGiantChasm:
	trainer COOLTRAINERM, COOLTRAINERM_GIANT_CHASM, EVENT_BEAT_COOLTRAINERM_GIANT_CHASM, CooltrainerMGiantChasmSeenText, CooltrainerMGiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMGiantChasmAfterText
	waitbutton
	closetext
	end

TrainerPokemaniac1GiantChasm:
	trainer POKEMANIAC, POKEMANIAC_GIANT_CHASM_1, EVENT_BEAT_POKEMANIAC_GIANT_CHASM_1, Pokemaniac1GiantChasmSeenText, Pokemaniac1GiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pokemaniac1GiantChasmAfterText
	waitbutton
	closetext
	end

TrainerPokemaniac2GiantChasm:
	trainer POKEMANIAC, POKEMANIAC_GIANT_CHASM_2, EVENT_BEAT_POKEMANIAC_GIANT_CHASM_2, Pokemaniac2GiantChasmSeenText, Pokemaniac2GiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Pokemaniac2GiantChasmAfterText
	waitbutton
	closetext
	end
	
GiantChasmB1FHiddenGrotto:
	hiddengrotto HIDDENGROTTO_GIANT_CHASM
	
GiantChasmB1FBlackbelt:
	itemball BLACKBELT
	
GiantChasmB1FXDefend:
	itemball X_DEFEND
	
GiantChasmB1FXSpeed:
	itemball X_SPEED
	
GiantChasmB1FHyperPotion:
	itemball HYPER_POTION
	
GiantChasmB1FElixer:
	itemball ELIXER
	
GiantChasmB1FRareCandy:
	hiddenitem RARE_CANDY, EVENT_GIANT_CHASM_B1F_RARE_CANDY
	
GiantChasmB1FMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_GIANT_CHASM_B1F_MAX_REVIVE
	
CooltrainerF1GiantChasmSeenText:
	text "It's rare to see"
	line "anyone come here."

	para "Are you training"
	line "on your own?"
	done

CooltrainerF1GiantChasmBeatenText:
	text "Oh! You're really"
	line "strong!"
	done

CooltrainerF1GiantChasmAfterText:
	text "I'm checking out"
	line "pre- and post-"
	cont "evolution #MON."

	para "Evolution really"
	line "does make #MON"
	cont "stronger."

	para "But evolved forms"
	line "also learn moves"
	cont "later on."
	done
	
CooltrainerF2GiantChasmSeenText:
	text "I'll tell you a"
	line "secret."

	para "But first, we"
	line "battle!"
	done

CooltrainerF2GiantChasmBeatenText:
	text "Oh, dang!"
	line "I lost that…"
	done

CooltrainerF2GiantChasmAfterText:
	text "There's a cave up"
	line "past a small"
	cont "waterfall."
	done
	
CooltrainerMGiantChasmSeenText:
	text "I can tell you're"
	line "a good trainer by"
	cont "looking at you."

	para "I'm good at #-"
	line "MON, and I can see"
	cont "that you are too."
	done

CooltrainerMGiantChasmBeatenText:
	text "Tch! It's a total"
	line "loss on my part."
	done

CooltrainerMGiantChasmAfterText:
	text "Wow. You have a"
	line "lot of BADGES."

	para "No wonder you're"
	line "so tough."

	para "I wonder if"
	line "OPELUCID GYM's"

	para "LEADER is still in"
	line "training?"

	para "He really hammered"
	line "me."
	done
	
Pokemaniac1GiantChasmSeenText:
	text "I'll do anything"
	line "to get my hands on"
	cont "rare #MON!"
	done

Pokemaniac1GiantChasmBeatenText:
	text "Oooh, your #MON"
	line "are so appealing."
	done

Pokemaniac1GiantChasmAfterText:
	text "If a #MON has"
	line "different colors"

	para "from usual, it's"
	line "more valuable."

	para "What? You mean"
	line "that's not true?"
	done
	
Pokemaniac2GiantChasmSeenText:
	text "I love #MON!"

	para "That's why I"
	line "started--and why"

	para "I'll keep on col-"
	line "lecting #MON!"
	done

Pokemaniac2GiantChasmBeatenText:
	text "How could you do"
	line "this to me?"
	done

Pokemaniac2GiantChasmAfterText:
	text "What else do I"
	line "like besides"
	cont "#MON?"
	done
	
GiantChasmB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 35, GIANT_CHASM_ROOMS, 2
	warp_event 32,  1, GIANT_CHASM_ROOMS, 3

	db 0 ; coord events

	db 3 ; bg events
	bg_event 31, 24, BGEVENT_ITEM, GiantChasmB1FRareCandy
	bg_event  2, 10, BGEVENT_ITEM, GiantChasmB1FMaxRevive
	bg_event 13, 27, BGEVENT_UP, GiantChasmB1FHiddenGrotto

	db 10 ; object events
	object_event 24, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FBlackbelt, EVENT_GIANT_CHASM_B1F_BLACKBELT
	object_event 28, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FXDefend, EVENT_GIANT_CHASM_B1F_X_DEFEND
	object_event  3, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FXSpeed, EVENT_GIANT_CHASM_B1F_X_SPEED
	object_event 26, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FHyperPotion, EVENT_GIANT_CHASM_B1F_HYPER_POTION
	object_event 14, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FElixer, EVENT_GIANT_CHASM_B1F_ELIXER
	object_event 13, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerF1GiantChasm, -1
	object_event 20, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerF2GiantChasm, -1
	object_event 36, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMGiantChasm, -1
	object_event 10, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPokemaniac1GiantChasm, -1
	object_event 16, 26, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPokemaniac2GiantChasm, -1
	