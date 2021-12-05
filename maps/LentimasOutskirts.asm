	const_def 2 ; object constants
	const LENTIMASOUTSKIRTS_GREAT_BALL
	const LENTIMASOUTSKIRTS_POTION
	const LENTIMASOUTSKIRTS_AWAKENING
	const LENTIMASOUTSKIRTS_DUSK_BALL
	const LENTIMASOUTSKIRTS_PICNICKER
	const LENTIMASOUTSKIRTS_SCHOOLBOY
	const LENTIMASOUTSKIRTS_HIKER
	const LENTIMASOUTSKIRTS_BIRD_KEEPER
	const LENTIMASOUTSKIRTS_BLACKBELT
	const LENTIMASOUTSKIRTS_FIREBREATHER
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
	faceplayer
	opentext
	checkevent EVENT_BEAT_DOCTOR_OUTSKIRTS
	iftrue .beaten
	writetext OutskirtsDoctorIntroText
	waitbutton
	closetext
	winlosstext OutskirtsDoctorWinText, 0
	setlasttalked LENTIMASOUTSKIRTS_DOCTOR
	loadtrainer DOCTOR, DOCTOR_OUTSKIRTS
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DOCTOR_OUTSKIRTS
	opentext
.beaten
	writetext OutskirtsDoctorHealText
	waitbutton
	closetext
	special FadeOutPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	end

TrainerBirdKeeperOutskirts:
	trainer BIRD_KEEPER, BIRD_KEEPER_OUTSKIRTS, EVENT_BEAT_BIRD_KEEPER_OUTSKIRTS, BirdKeeperOutskirtsSeenText, BirdKeeperOutskirtsBeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_BIRDKEEPER_FREDDY
	opentext
	checkflag ENGINE_FREDDY_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_BIRDKEEPER_FREDDY
	iftrue .NumberAccepted
	checkevent EVENT_FREDDY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext BirdKeeperOutskirtsAfterText
	buttonsound
	setevent EVENT_FREDDY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_BIRDKEEPER_FREDDY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_FREDDY
	trainertotext BIRD_KEEPER, BIRD_KEEPER_OUTSKIRTS, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext BirdKeeperOutskirtsBeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight3
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight2
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftrue .LoadFight1
; Fight0
	loadtrainer BIRD_KEEPER, BIRD_KEEPER_OUTSKIRTS
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer BIRD_KEEPER, FREDDY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	end
.LoadFight2
	loadtrainer BIRD_KEEPER, FREDDY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
	end
.LoadFight3
	loadtrainer BIRD_KEEPER, FREDDY_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_FREDDY_READY_FOR_REMATCH
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

TrainerPicnickerOutskirts:
	trainer PICNICKER_D, PICNICKER_OUTSKIRTS, EVENT_BEAT_PICNICKER_OUTSKIRTS, PicnickerOutskirtsSeenText, PicnickerOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerHikerOutskirts:
	trainer HIKER_D, HIKER_OUTSKIRTS, EVENT_BEAT_HIKER_OUTSKIRTS, HikerOutskirtsSeenText, HikerOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltOutskirts:
	trainer BLACKBELT_T, BLACKBELT_OUTSKIRTS, EVENT_BEAT_BLACKBELT_OUTSKIRTS, BlackbeltOutskirtsSeenText, BlackbeltOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerFirebreatherOutskirts:
	trainer FIREBREATHER, FIREBREATHER_OUTSKIRTS, EVENT_BEAT_FIREBREATHER_OUTSKIRTS, FirebreatherOutskirtsSeenText, FirebreatherOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOutskirtsAfterText
	waitbutton
	closetext
	end

TrainerSchoolboyOutskirts:
	trainer SCHOOLBOY_D, SCHOOLBOY_OUTSKIRTS, EVENT_BEAT_SCHOOLBOY_OUTSKIRTS, SchoolboyOutskirtsSeenText, SchoolboyOutskirtsBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyOutskirtsAfterText
	waitbutton
	closetext
	end
	
LentimasOutskirtsGreatBall:
	itemball GREAT_BALL
	
LentimasOutskirtsPotion:
	itemball POTION
	
LentimasOutskirtsAwakening:
	itemball AWAKENING
	
LentimasOutskirtsDuskBall:
	itemball DUSK_BALL
	
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
	
PicnickerOutskirtsSeenText:
	text "That BADGE! It's"
	line "from HUMILAU CITY!"

	para "You beat MARLON?"
	done

PicnickerOutskirtsBeatenText:
	text "I know what my"
	line "weaknesses are."
	done

PicnickerOutskirtsAfterText:
	text "I should train"
	line "more at the GYM"
	cont "in LENTIMAS TOWN."
	done
	
BirdKeeperOutskirtsSeenText:
	text "I'm confident in"
	line "my ability to"
	cont "raise #MON."

	para "Want to see?"
	done

BirdKeeperOutskirtsBeatenText:
	text "Did I screw up my"
	line "training?"
	done

BirdKeeperOutskirtsAfterText:
	text "Maybe I should"
	line "take one to a DAY-"

	para "CARE. Or maybe use"
	line "some items…"
	done
	
HikerOutskirtsSeenText:
	text "I came through the"
	line "tunnel, but I"

	para "still have plenty"
	line "of energy left."
	done

HikerOutskirtsBeatenText:
	text "Whoa! You've got"
	line "more zip than me!"
	done

HikerOutskirtsAfterText:
	text "We HIKERS are at"
	line "our best in the"
	cont "mountains."
	done
	
BlackbeltOutskirtsSeenText:
	text "This is where I do"
	line "my training!"
	done

BlackbeltOutskirtsBeatenText:
	text "Beaten by a"
	line "passing stranger!"
	done

BlackbeltOutskirtsAfterText:
	text "I'm going to train"
	line "even harder."

	para "After all, I'm"
	line "trying to become"
	cont "a GYM LEADER."
	done
	
FirebreatherOutskirtsSeenText:
	text "I'm practicing my"
	line "fire breathing."
	done

FirebreatherOutskirtsBeatenText:
	text "Ow! I scorched the"
	line "tip of my nose!"
	done

FirebreatherOutskirtsAfterText:
	text "I'm so blown away,"
	line "I can't move."
	done
	
SchoolboyOutskirtsSeenText:
	text "I'm the best in my"
	line "class at #MON."
	done

SchoolboyOutskirtsBeatenText:
	text "No! There are bet-"
	line "ter trainers…"
	done

SchoolboyOutskirtsAfterText:
	text "I'm trying hard so"
	line "I can be the star"
	cont "in my class."
	done
	
LentimasReversalSignText:
	text "REVERSAL MOUNTAIN."
	
	para "Enter at your"
	line "own risk!"
	done
	
LentimasLostlornSignText:
	text "LOSTLORN FOREST"
	line "ahead."
	done
	
LentimasOutskirts_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 30,  3, REVERSAL_MOUNTAIN_B1F, 3
	warp_event 11,  5, STRANGE_HOUSE_1F, 1
	warp_event  7, 23, LENTIMAS_LOSTLORN_GATE, 1
	warp_event  8, 23, LENTIMAS_LOSTLORN_GATE, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 31,  4, BGEVENT_READ, LentimasReversalSign
	bg_event  7, 18, BGEVENT_READ, LentimasLostlornSign
	bg_event 14,  4, BGEVENT_ITEM, LentimasOutskirtsSuperPotion

	db 11 ; object events
	object_event 26,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsGreatBall, EVENT_LENTIMAS_OUTSKIRTS_GREAT_BALL
	object_event 26, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsPotion, EVENT_LENTIMAS_OUTSKIRTS_POTION
	object_event 18,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsAwakening, EVENT_LENTIMAS_OUTSKIRTS_AWAKENING
	object_event  9, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LentimasOutskirtsDuskBall, EVENT_LENTIMAS_OUTSKIRTS_DUSK_BALL
	object_event 31,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerPicnickerOutskirts, -1
	object_event 28, 17, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerHikerOutskirts, -1
	object_event 34, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperOutskirts, -1
	object_event 22, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltOutskirts, -1
	object_event 18, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherOutskirts, -1
	object_event 11, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolboyOutskirts, -1
	object_event 29,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OutskirtsDoctorScript, -1
	