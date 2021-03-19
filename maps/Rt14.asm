	const_def 2 ; object constants
	const R14_YOUNGSTER
	const R14_SCHOOLGIRL
	const R14_SCHOOLBOY
	const R14_PICNICKER
	const R14_PRIZE_GIVER
	const R14_ANTIDOTE
	const R14_POTION
	const R14_TM_BULK_UP
	const R14_FRUIT_TREE

Rt14_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerSchoolgirlR14:
	trainer SCHOOLGIRL_D, SCHOOLGIRL_R14, EVENT_BEAT_SCHOOLGIRL_R14, SchoolgirlR14SeenText, SchoolgirlR14BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_SCHOOLGIRL_JEWEL
	opentext
	checkflag ENGINE_JEWEL_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_SCHOOLGIRL_JEWEL
	iftrue .NumberAccepted
	checkevent EVENT_JEWEL_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext SchoolgirlR14AfterText
	buttonsound
	setevent EVENT_JEWEL_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SCHOOLGIRL_JEWEL
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_JEWEL
	trainertotext SCHOOLGIRL_D, SCHOOLGIRL_R14, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext SchoolgirlR14BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight4
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight3
	checkevent EVENT_BIANCA_CASTELIA_CALL
	iftrue .LoadFight2
	checkevent EVENT_BEAT_MARLON
	iftrue .LoadFight1
; Fight0
	loadtrainer SCHOOLGIRL_D, SCHOOLGIRL_R14
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JEWEL_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer SCHOOLGIRL_D, JEWEL_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JEWEL_READY_FOR_REMATCH
	end
.LoadFight2
	loadtrainer SCHOOLGIRL_D, JEWEL_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JEWEL_READY_FOR_REMATCH
	end
.LoadFight3
	loadtrainer SCHOOLGIRL_D, JEWEL_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JEWEL_READY_FOR_REMATCH
	end
.LoadFight4
	loadtrainer SCHOOLGIRL_D, JEWEL_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JEWEL_READY_FOR_REMATCH
	end
	
.AskNumber1:
	jumpstd asknumber1f
	end
	
.AskNumber2:
	jumpstd asknumber2f
	end

.RegisteredNumber:
	jumpstd registerednumberf
	end

.NumberAccepted:
	jumpstd numberacceptedf
	end

.NumberDeclined:
	jumpstd numberdeclinedf
	end

.PhoneFull:
	jumpstd phonefullf
	end

.Rematch:
	jumpstd rematchf
	end

TrainerYoungsterR14:
	trainer YOUNGSTER_D, YOUNGSTER_R14, EVENT_BEAT_YOUNGSTER_R14, YoungsterR14SeenText, YoungsterR14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterR14AfterText
	waitbutton
	closetext
	end

TrainerSchoolboyR14:
	trainer SCHOOLBOY, SCHOOLBOY_R14, EVENT_BEAT_SCHOOLBOY_R14, SchoolboyR14SeenText, SchoolboyR14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyR14AfterText
	waitbutton
	closetext
	end

TrainerPicnickerR14:
	trainer PICNICKER, PICNICKER_R14, EVENT_BEAT_PICNICKER_R14, PicnickerR14SeenText, PicnickerR14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerR14AfterText
	waitbutton
	closetext
	end
	
TrainerR14PrizeGiver:
	faceplayer
	checkevent EVENT_GOT_RIOLU_EGG
	iftrue .beaten
	checkevent EVENT_BEAT_CAMPER_R14
	iftrue .offeregg
	opentext
	writetext R14PrizeGiverSeenText
	waitbutton
	closetext
	winlosstext R14PrizeGiverWinText, 0
	setlasttalked R14_PRIZE_GIVER
	loadtrainer CAMPER_D, CAMPER_R14
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CAMPER_R14
.offeregg
	opentext
	writetext R14PrizeGiverGiveEggText
	buttonsound
	waitsfx
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	giveegg RIOLU, 5
	stringtotext .eggname, MEM_BUFFER_1
	scall .R14GiveEgg
	closetext
	setevent EVENT_GOT_RIOLU_EGG
	end

.beaten:
	opentext
	writetext R14PrizeGiverBeatenText
	waitbutton
	closetext
	end
	
.eggname
	db "EGG@"

.R14GiveEgg:
	jumpstd receivetogepiegg
	end

.PartyFull:
	writetext R14PrizeGiverPartyFullText
	waitbutton
	closetext
	end
	
R14Antidote:
	itemball ANTIDOTE
	
R14Potion:
	itemball POTION
	
R14NetBall:
	itemball NET_BALL
	
R14TMBulkUp:
	itemball TM_BULK_UP
	
R14FruitTree:
	fruittree FRUITTREE_R_14
	
YoungsterR14SeenText:
	text "Beat the five of"
	line "us trainers to win"
	cont "a fabulous prize!"

	para "Think you've got"
	line "what it takes?"
	done

YoungsterR14BeatenText:
	text "Whoo! Good stuff."
	done

YoungsterR14AfterText:
	text "I did my best."
	line "I have no regrets."
	done
	
SchoolgirlR14SeenText:
	text "I'm second."
	line "Now it's serious!"
	done

SchoolgirlR14BeatenText:
	text "How could I lose?"
	done

SchoolgirlR14AfterText:
	text "I did my best."
	line "I have no regrets."
	done
	
SchoolboyR14SeenText:
	text "Here's No. 3!"
	line "I won't be easy."
	done

SchoolboyR14BeatenText:
	text "Ow! Stomped flat!"
	done

SchoolboyR14AfterText:
	text "I did my best."
	line "I have no regrets."
	done
	
PicnickerR14SeenText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

PicnickerR14BeatenText:
	text "I lost too…"
	done

PicnickerR14AfterText:
	text "I did my best."
	line "I have no regrets."
	done
	
R14PrizeGiverSeenText:
	text "Congratulations"
	line "on making it this"
	cont "far, trainer!"

	para "I am the final"
	line "challenge. If you"
	
	para "beat me, you'll"
	line "receive a fabulous"
	cont "prize!"
	
	para "Come on, show me"
	line "what you're made"
	cont "of!"
	done
	
R14PrizeGiverWinText:
	text "No way, I lost!"
	done
	
R14PrizeGiverGiveEggText:
	text "You've beaten me!"
	line "As a reward for"
	
	para "beating all five"
	line "of us, take this"
	cont "rare #MON egg!"
	done
	
R14PrizeGiverPartyFullText:
	text "Uh-oh, looks like"
	line "you have no room!"
	
	para "Come back when"
	line "you've made room,"
	
	para "and you can claim"
	line "your prize!"
	done
	
R14PrizeGiverBeatenText:
	text "If you keep that"
	line "egg with you on"
	
	para "your travels, it"
	line "will hatch into"
	cont "something great!"
	done

Rt14_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 10 ; object events
	object_event 31,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR14, -1
	object_event 20,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolgirlR14, -1
	object_event 18, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSchoolboyR14, -1
	object_event 10, 22, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPicnickerR14, -1
	object_event  4, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, TrainerR14PrizeGiver, -1
	object_event 31,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R14Antidote, EVENT_R_14_ANTIDOTE
	object_event 14, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R14Potion, EVENT_R_14_POTION
	object_event 15, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R14NetBall, EVENT_R_14_NET_BALL
	object_event 15,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R14TMBulkUp, EVENT_R_14_TM_BULK_UP
	object_event 23, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R14FruitTree, -1
	