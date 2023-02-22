	const_def 2 ; object constants
	const CHARGESTONECAVE1F_METAL_COAT
	const CHARGESTONECAVE1F_ESCAPE_ROPE
	const CHARGESTONECAVE1F_PARLYZ_HEAL
	const CHARGESTONECAVE1F_HYPER_POTION
	const CHARGESTONECAVE1F_TIMER_BALL
	const CHARGESTONECAVE1F_MAGNET
	const CHARGESTONECAVE1F_YELLOW_SHARD
	const CHARGESTONECAVE1F_GUITARIST
	const CHARGESTONECAVE1F_SCIENTISTM
	const CHARGESTONECAVE1F_PKMN_RANGERF
	const CHARGESTONECAVE1F_ACE_TRAINERM
	const CHARGESTONECAVE1F_ACE_TRAINERF
	const CHARGESTONECAVE1F_HIKER

ChargestoneCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerGuitarist1Chargestone:
	trainer GUITARIST, GUITARIST_CHARGESTONE_1, EVENT_BEAT_GUITARIST_CHARGESTONE_1, Guitarist1ChargestoneSeenText, Guitarist1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Guitarist1ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerScientistMChargestone:
	trainer SCIENTISTM, SCIENTISTM_CHARGESTONE, EVENT_BEAT_SCIENTISTM_CHARGESTONE, ScientistMChargestoneSeenText, ScientistMChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMChargestoneAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerFChargestone:
	trainer PKMN_RANGERF, PKMN_RANGERF_CHARGESTONE, EVENT_BEAT_PKMN_RANGERF_CHARGESTONE, PkmnRangerFChargestoneSeenText, PkmnRangerFChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFChargestoneAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerM1Chargestone:
	trainer ACE_TRAINERM, ACE_TRAINERM_CHARGESTONE_1, EVENT_BEAT_ACE_TRAINERM_CHARGESTONE_1, AceTrainerM1ChargestoneSeenText, AceTrainerM1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerM1ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerF1Chargestone:
	trainer ACE_TRAINERF, ACE_TRAINERF_CHARGESTONE_1, EVENT_BEAT_ACE_TRAINERF_CHARGESTONE_1, AceTrainerF1ChargestoneSeenText, AceTrainerF1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerF1ChargestoneAfterText
	waitbutton
	closetext
	end

TrainerHiker1Chargestone:
	trainer HIKER_D, HIKER_CHARGESTONE_1, EVENT_BEAT_HIKER_CHARGESTONE_1, Hiker1ChargestoneSeenText, Hiker1ChargestoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker1ChargestoneAfterText
	waitbutton
	closetext
	end
	
ChargestoneMetalCoat:
	itemball METAL_COAT
	
ChargestoneEscapeRope:
	itemball ESCAPE_ROPE
	
ChargestoneParlyzHeal:
	itemball PARLYZ_HEAL
	
ChargestoneHyperPotion:
	itemball HYPER_POTION
	
ChargestoneTimerBall:
	itemball TIMER_BALL
	
ChargestoneMagnet:
	itemball MAGNET
	
ChargestoneYellowShard:
	itemball YELLOW_SHARD
	
ChargestoneMaxPotion:
	hiddenitem MAX_POTION, EVENT_CHARGESTONE_MAX_POTION
	
Guitarist1ChargestoneSeenText:
	text "All right, let me"
	line "introduce you to"
	
	para "the other super-"
	line "cool and cute"
	cont "member of my band!"
	done

Guitarist1ChargestoneBeatenText:
	text "If we don't"
	line "recruit more"
	
	para "members, the sound"
	line "won't have enough"
	cont "depth."
	done

Guitarist1ChargestoneAfterText:
	text "Even though we"
	line "lost, I think my"
	cont "#MON had fun!"
	done
	
ScientistMChargestoneSeenText:
	text "This cave is full"
	line "of electricity-"
	cont "generating rocks!"
	
	para "It's charging me"
	line "up!"
	done

ScientistMChargestoneBeatenText:
	text "Yowch! A lightning"
	line "spark!"
	done

ScientistMChargestoneAfterText:
	text "The sources of my"
	line "energy are my"
	cont "precious #MON!"
	done
	
PkmnRangerFChargestoneSeenText:
	text "There was a"
	line "whisper on the"
	
	para "wind that told me"
	line "of your coming!"
	done

PkmnRangerFChargestoneBeatenText:
	text "I will become the"
	line "wind and go…"
	done

PkmnRangerFChargestoneAfterText:
	text "Wind blows into"
	line "caves when you're"
	
	para "close to an"
	line "entrance or exit."
	done
	
AceTrainerM1ChargestoneSeenText:
	text "Behold the force"
	line "created by my"
	cont "prized #MON!"
	done

AceTrainerM1ChargestoneBeatenText:
	text "Your combined"
	line "force as a team is"
	cont "greater than ours!"
	done

AceTrainerM1ChargestoneAfterText:
	text "Perhaps I need to"
	line "meet my #MON"
	
	para "head on… Then we"
	line "could be a"
	cont "stronger team!"
	done
	
AceTrainerF1ChargestoneSeenText:
	text "Hey! My #MON"
	line "are great. Look,"
	cont "look!"
	done

AceTrainerF1ChargestoneBeatenText:
	text "Argh!!"
	done

AceTrainerF1ChargestoneAfterText:
	text "I'm called an ACE"
	line "TRAINER, but that"
	
	para "doesn't sit well"
	line "with me. Cause I"
	
	para "just love #MON,"
	line "and I just want to"
	cont "be strong!"
	done
	
Hiker1ChargestoneSeenText:
	text "This HIKER wander-"
	line "ing the expanses"
	
	para "of the world will"
	line "teach a child like"
	
	para "you the harshness"
	line "of life and the"
	
	para "difficulty of"
	line "#MON battles!"
	done

Hiker1ChargestoneBeatenText:
	text "The teacher was"
	line "schooled… You're"
	
	para "very strict,"
	line "aren't you?"
	done

Hiker1ChargestoneAfterText:
	text "#MON are every-"
	line "where inside caves"
	cont "like this!"
	done

ChargestoneCave1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  3, 31, R_6, 3
	warp_event 13, 23, CHARGESTONE_CAVE_B1F, 1
	warp_event 39, 31, CHARGESTONE_CAVE_B1F, 2
	warp_event 29,  3, CHARGESTONE_CAVE_B1F, 3
	warp_event 43,  1, MISTRALTON_CITY, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4,  9, BGEVENT_ITEM, ChargestoneMaxPotion

	db 13 ; object events
	object_event 12, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneMetalCoat, EVENT_CHARGESTONE_METAL_COAT
	object_event  4, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneEscapeRope, EVENT_CHARGESTONE_ESCAPE_ROPE
	object_event 17,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneParlyzHeal, EVENT_CHARGESTONE_PARLYZ_HEAL
	object_event 28,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneHyperPotion, EVENT_CHARGESTONE_HYPER_POTION
	object_event 32, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneTimerBall, EVENT_CHARGESTONE_TIMER_BALL
	object_event 37, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneMagnet, EVENT_CHARGESTONE_MAGNET
	object_event 12,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChargestoneYellowShard, EVENT_CHARGESTONE_YELLOW_SHARD
	object_event  8,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerGuitarist1Chargestone, -1
	object_event 15, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistMChargestone, -1
	object_event 15, 25, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPkmnRangerFChargestone, -1
	object_event 39, 29, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerM1Chargestone, -1
	object_event 33,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerF1Chargestone, -1
	object_event 38, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerHiker1Chargestone, -1
	