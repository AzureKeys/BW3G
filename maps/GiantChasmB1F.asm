	const_def 2 ; object constants
	const GIANTCHASMB1F_TM_HAIL
	const GIANTCHASMB1F_X_DEFEND
	const GIANTCHASMB1F_X_SPEED
	const GIANTCHASMB1F_HYPER_POTION
	const GIANTCHASMB1F_ELIXER
	const GIANTCHASMB1F_BACKPACKERM
	const GIANTCHASMB1F_BACKPACKERF
	const GIANTCHASMB1F_ACE_TRAINERF
	const GIANTCHASMB1F_ACE_TRAINERM
	const GIANTCHASMB1F_HIKER

GiantChasmB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBackpackerMGiantChasm:
	trainer BACKPACKERM, BACKPACKERM_GIANT_CHASM, EVENT_BEAT_BACKPACKERM_GIANT_CHASM, BackpackerMGiantChasmSeenText, BackpackerMGiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMGiantChasmAfterText
	waitbutton
	closetext
	end

TrainerBackpackerFGiantChasm:
	trainer BACKPACKERF, BACKPACKERF_GIANT_CHASM, EVENT_BEAT_BACKPACKERF_GIANT_CHASM, BackpackerFGiantChasmSeenText, BackpackerFGiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFGiantChasmAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerFGiantChasm:
	trainer ACE_TRAINERF_D, ACE_TRAINERF_GIANT_CHASM, EVENT_BEAT_ACE_TRAINERF_GIANT_CHASM, AceTrainerFGiantChasmSeenText, AceTrainerFGiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFGiantChasmAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerMGiantChasm:
	trainer ACE_TRAINERM_D, ACE_TRAINERM_GIANT_CHASM, EVENT_BEAT_ACE_TRAINERM_GIANT_CHASM, AceTrainerMGiantChasmSeenText, AceTrainerMGiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMGiantChasmAfterText
	waitbutton
	closetext
	end

TrainerHikerGiantChasm:
	trainer HIKER_D, HIKER_GIANT_CHASM, EVENT_BEAT_HIKER_GIANT_CHASM, HikerGiantChasmSeenText, HikerGiantChasmBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerGiantChasmAfterText
	waitbutton
	closetext
	end
	
GiantChasmB1FHiddenGrotto:
	hiddengrotto HIDDENGROTTO_GIANT_CHASM, HIDDENGROTTO_TIER_3
	
GiantChasmB1FTMHail:
	itemball TM_HAIL
	
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
	
BackpackerFGiantChasmSeenText:
	text "I may be a Back-"
	line "packer, but I'm"

	para "also a treasure"
	line "hunter!"
	done

BackpackerFGiantChasmBeatenText:
	text "I missed that"
	line "elusive treasure"
	cont "called victory."
	done

BackpackerFGiantChasmAfterText:
	text "There is a cave in"
	line "the back of this"

	para "crater, up past"
	line "the waterfall. I"

	para "just know there's"
	line "treasure in there!"
	done
	
AceTrainerFGiantChasmSeenText:
	text "Have you ever"
	line "noticed the stone"
	cont "cones in the cave?"
	done

AceTrainerFGiantChasmBeatenText:
	text "That marvelous"
	line "power of yours! I"
	cont "wasn't aware!"
	done

AceTrainerFGiantChasmAfterText:
	text "Droplets of water"
	line "containing lime"
	
	para "keep dripping down"
	line "for hundreds of"
	
	para "years… The they"
	line "harden into stone"
	
	para "cones. Those are"
	line "what we call"
	cont "stalagmites!"
	done
	
AceTrainerMGiantChasmSeenText:
	text "Let's train! We'll"
	line "get stronger with"
	cont "our #MON!"
	done

AceTrainerMGiantChasmBeatenText:
	text "Not yet! I still"
	line "haven't shared my"
	cont "true strength!"
	done

AceTrainerMGiantChasmAfterText:
	text "My #MON are"
	line "very important to"

	para "me. They've always"
	line "been by my side to"

	para "see my smiles of"
	line "joy and tears of"
	cont "frustration!"
	done
	
HikerGiantChasmSeenText:
	text "I'll do anything"
	line "to get my hands on"
	cont "rare #MON!"
	done

HikerGiantChasmBeatenText:
	text "Oooh, your #MON"
	line "are so appealing."
	done

HikerGiantChasmAfterText:
	text "If a #MON has"
	line "different colors"

	para "from usual, it's"
	line "more valuable."

	para "What? You mean"
	line "that's not true?"
	done
	
BackpackerMGiantChasmSeenText:
	text "What's this? A"
	line "visitor? Ooh, I'm"

	para "so happy to meet"
	line "someone else here!"

	para "Could I ask you to"
	line "be my opponent?"
	done

BackpackerMGiantChasmBeatenText:
	text "There is a certain"
	line "thrill to battling"
	cont "another trainer!"
	done

BackpackerMGiantChasmAfterText:
	text "Backpacking is"
	line "exciting, but it"
	
	para "can sometimes get"
	line "lonely…"
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
	object_event 24, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FTMHail, EVENT_GIANT_CHASM_B1F_TM_HAIL
	object_event 28, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FXDefend, EVENT_GIANT_CHASM_B1F_X_DEFEND
	object_event  3, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FXSpeed, EVENT_GIANT_CHASM_B1F_X_SPEED
	object_event 26, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FHyperPotion, EVENT_GIANT_CHASM_B1F_HYPER_POTION
	object_event 14, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiantChasmB1FElixer, EVENT_GIANT_CHASM_B1F_ELIXER
	object_event 16, 26, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerBackpackerMGiantChasm, -1
	object_event 13, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBackpackerFGiantChasm, -1
	object_event 20, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerFGiantChasm, -1
	object_event 36, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerMGiantChasm, -1
	object_event 10, 28, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerHikerGiantChasm, -1
	