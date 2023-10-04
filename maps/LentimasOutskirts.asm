	const_def 2 ; object constants
	const LENTIMASOUTSKIRTS_GREAT_BALL
	const LENTIMASOUTSKIRTS_POTION
	const LENTIMASOUTSKIRTS_AWAKENING
	const LENTIMASOUTSKIRTS_QUICK_BALL
	const LENTIMASOUTSKIRTS_RED_SHARD
	const LENTIMASOUTSKIRTS_SCHOOL_KIDM
	const LENTIMASOUTSKIRTS_CYCLISTM
	const LENTIMASOUTSKIRTS_CYCLISTF
	const LENTIMASOUTSKIRTS_YOUNGSTER
	const LENTIMASOUTSKIRTS_PKMN_RANGERM
	const LENTIMASOUTSKIRTS_PKMN_RANGERF
	const LENTIMASOUTSKIRTS_DOCTOR

LentimasOutskirts_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetStrangeHouse
	
.SetStrangeHouse:
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_DEFAULT, .done
	checkmapscene STRANGE_HOUSE_1F
	ifequal SCENE_STRANGE_HOUSE_FINISHED, .done
	setmapscene STRANGE_HOUSE_1F, SCENE_STRANGE_HOUSE_1
.done:
	return
	
OutskirtsDoctorScript:
	trainer DOCTOR, DOCTOR_OUTSKIRTS, EVENT_BEAT_DOCTOR_OUTSKIRTS, OutskirtsDoctorIntroText, OutskirtsDoctorWinText, 0, .Script

.Script:
	faceplayer
	opentext
	writetext OutskirtsDoctorHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerCyclistMOutskirts:
	trainer CYCLISTM, CYCLISTM_OUTSKIRTS, EVENT_BEAT_CYCLISTM_OUTSKIRTS, CyclistMOutskirtsSeenText, CyclistMOutskirtsBeatenText, 0, .Script

.Script:
	faceplayer
	writecode VAR_CALLERID, PHONE_CYCLIST_FREDDY
	opentext
	checkflag ENGINE_FREDDY_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_CYCLIST_FREDDY
	iftrue .NumberAccepted
	checkevent EVENT_FREDDY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext CyclistMOutskirtsAfterText
	buttonsound
	setevent EVENT_FREDDY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_CYCLIST_FREDDY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_FREDDY
	trainertotext CYCLISTM, CYCLISTM_OUTSKIRTS, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext CyclistMOutskirtsBeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight5
	checkmapscene SEASIDE_CAVE_CHAMBER
	ifequal SCENE_FINISHED, .LoadFight4
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight3
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight2
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftrue .LoadFight1
; Fight0
	loadtrainer CYCLISTM, CYCLISTM_OUTSKIRTS
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight1
	loadtrainer CYCLISTM, FREDDY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight2
	loadtrainer CYCLISTM, FREDDY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight3
	loadtrainer CYCLISTM, FREDDY_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight4
	loadtrainer CYCLISTM, FREDDY_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight5
	loadtrainer CYCLISTM, FREDDY_REMATCH_5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	scall .GiftText
	scall .GiveGift
	ifequal FALSE, .PackIsFull
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

.GiftText:
	jumpstd giftm
	end

.PackIsFull:
	jumpstd packfullm
	end
	
.GiveGift:
	rematchgift HIDDENGROTTO_TIER_1

TrainerCyclistFOutskirts:
	trainer CYCLISTF, CYCLISTF_OUTSKIRTS, EVENT_BEAT_CYCLISTF_OUTSKIRTS, CyclistFOutskirtsSeenText, CyclistFOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CyclistFOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerYoungsterOutskirts:
	trainer YOUNGSTER, YOUNGSTER_OUTSKIRTS, EVENT_BEAT_YOUNGSTER_OUTSKIRTS, YoungsterOutskirtsSeenText, YoungsterOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerMOutskirts:
	trainer PKMN_RANGERM, PKMN_RANGERM_OUTSKIRTS, EVENT_BEAT_PKMN_RANGERM_OUTSKIRTS, PkmnRangerMOutskirtsSeenText, PkmnRangerMOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerFOutskirts:
	trainer PKMN_RANGERF, PKMN_RANGERF_OUTSKIRTS, EVENT_BEAT_PKMN_RANGERF_OUTSKIRTS, PkmnRangerFOutskirtsSeenText, PkmnRangerFOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerSchoolKidMOutskirts:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_OUTSKIRTS, EVENT_BEAT_SCHOOL_KIDM_OUTSKIRTS, SchoolKidMOutskirtsSeenText, SchoolKidMOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidMOutskirtsAfterText
	waitbutton
	closetext
	end
	
LentimasOutskirtsGreatBall:
	itemball GREAT_BALL
	
LentimasOutskirtsPotion:
	itemball POTION
	
LentimasOutskirtsAwakening:
	itemball AWAKENING
	
LentimasOutskirtsQuickBall:
	itemball QUICK_BALL
	
LentimasOutskirtsRedShard:
	itemball RED_SHARD
	
LentimasOutskirtsSuperPotion:
	hiddenitem SUPER_POTION, EVENT_LENTIMAS_OUTSKIRTS_SUPER_POTION
	
LentimasReversalSign:
	jumptext LentimasReversalSignText
	
LentimasLostlornSign:
	jumptext LentimasLostlornSignText
	
OutskirtsDoctorIntroText:
	text "I'm a doctor, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
OutskirtsDoctorWinText:
	text "Ah, I see."
	done
	
OutskirtsDoctorHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
CyclistFOutskirtsSeenText:
	text "Shift gears and"
	line "Bob's your uncle!"

	para "You'll be going"
	line "full speed in no"
	cont "time!"
	done

CyclistFOutskirtsBeatenText:
	text "No matter how I"
	line "shift my gears, it"
	
	para "looks like I'll"
	line "never match your"
	cont "speed!"
	done

CyclistFOutskirtsAfterText:
	text "Whee! Mountain"
	line "biking is tough,"
	
	para "but that's why"
	line "it's so fun!"
	done
	
CyclistMOutskirtsSeenText:
	text "Yahooo! If you"
	line "call, I'll come"
	cont "right away!"
	done

CyclistMOutskirtsBeatenText:
	text "I'm on fire, baby!"
	line "On fire!"
	done

CyclistMOutskirtsAfterText:
	text "Riding a bicycle"
	line "is fun, but I want"

	para "to ride away on a"
	line "#MON!"
	done
	
PkmnRangerFOutskirtsSeenText:
	text "Every day is the"
	line "same. I get bored"

	para "when things don't"
	line "change, so I don't"
	cont "mind battling you!"
	done

PkmnRangerFOutskirtsBeatenText:
	text "It's been quite"
	line "some time since"
	
	para "I've had a #MON"
	line "battle!"
	done

PkmnRangerFOutskirtsAfterText:
	text "It's okay if"
	line "everything's the"
	
	para "same, it means"
	line "there aren't any"
	cont "problems!"
	done
	
YoungsterOutskirtsSeenText:
	text "I'm going to over-"
	line "whelm you with my"
	cont "speed!"
	done

YoungsterOutskirtsBeatenText:
	text "Roll, roll, roll,"
	line "roll on!"
	done

YoungsterOutskirtsAfterText:
	text "Your way of"
	line "battling, it's got"
	cont "style!"
	done
	
PkmnRangerMOutskirtsSeenText:
	text "I'm wandering the"
	line "world trying to"
	
	para "find a place where"
	line "I belong…"
	
	para "How about you?"
	done

PkmnRangerMOutskirtsBeatenText:
	text "I lost… So this"
	line "isn't where I"
	cont "belong either…"
	done

PkmnRangerMOutskirtsAfterText:
	text "You don't find"
	line "your place in the"
	
	para "world. You've got"
	line "to make it!"
	done
	
SchoolKidMOutskirtsSeenText:
	text "I've been training"
	line "to take on the"
	
	para "GYM. I won't give"
	line "up easily!"
	done

SchoolKidMOutskirtsBeatenText:
	text "What! My victory"
	line "was taken away"
	cont "from me!"
	done

SchoolKidMOutskirtsAfterText:
	text "The trainers in"
	line "the gym are tough."
	
	para "It's hard to even"
	line "hit their #MON!"
	done
	
LentimasReversalSignText:
	text "REVERSAL MOUNTAIN."
	
	para "Enter at your"
	line "own risk!"
	done
	
LentimasLostlornSignText:
	text "South to"
	line "LOSTLORN FOREST."
	done
	
LentimasOutskirts_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 14,  3, REVERSAL_MOUNTAIN_B1F, 3
	warp_event 33, 11, STRANGE_HOUSE_1F, 1
	warp_event  7, 19, LENTIMAS_LOSTLORN_GATE, 1
	warp_event  8, 19, LENTIMAS_LOSTLORN_GATE, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 15,  4, BGEVENT_READ, LentimasReversalSign
	bg_event  6, 16, BGEVENT_READ, LentimasLostlornSign
	bg_event 30, 15, BGEVENT_ITEM, LentimasOutskirtsSuperPotion

	db 12 ; object events
	object_event 12,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsGreatBall, EVENT_LENTIMAS_OUTSKIRTS_GREAT_BALL
	object_event 14, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsPotion, EVENT_LENTIMAS_OUTSKIRTS_POTION
	object_event  6,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsAwakening, EVENT_LENTIMAS_OUTSKIRTS_AWAKENING
	object_event  9, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsQuickBall, EVENT_LENTIMAS_OUTSKIRTS_QUICK_BALL
	object_event 35, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsRedShard, EVENT_LENTIMAS_OUTSKIRTS_RED_SHARD
	object_event 31, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSchoolKidMOutskirts, -1
	object_event 22, 18, SPRITE_CYCLIST_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCyclistMOutskirts, -1
	object_event 17,  9, SPRITE_CYCLIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCyclistFOutskirts, -1
	object_event 10, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungsterOutskirts, -1
	object_event  6, 12, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerMOutskirts, -1
	object_event 16, 17, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerFOutskirts, -1
	object_event 13,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, OutskirtsDoctorScript, -1
	