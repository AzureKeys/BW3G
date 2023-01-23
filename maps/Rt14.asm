	const_def 2 ; object constants
	const R14_PRESCHOOLERM_1
	const R14_PRESCHOOLERF_1
	const R14_PRESCHOOLERM_2
	const R14_PRESCHOOLERF_2
	const R14_PRIZE_GIVER
	const R14_ANTIDOTE
	const R14_POTION
	const R14_NET_BALL
	const R14_HEART_SCALE
	const R14_TM_BULK_UP
	const R14_FRUIT_TREE

Rt14_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerPreschoolerM1R14:
	trainer PRESCHOOLERM, PRESCHOOLERM_R14_1, EVENT_BEAT_PRESCHOOLERM_R14_1, PreschoolerM1R14SeenText, PreschoolerM1R14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PreschoolerM1R14AfterText
	waitbutton
	closetext
	end

TrainerPreschoolerM2R14:
	trainer PRESCHOOLERM, PRESCHOOLERM_R14_2, EVENT_BEAT_PRESCHOOLERM_R14_2, PreschoolerM2R14SeenText, PreschoolerM2R14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PreschoolerM2R14AfterText
	waitbutton
	closetext
	end

TrainerPreschoolerF1R14:
	trainer PRESCHOOLERF, PRESCHOOLERF_R14_1, EVENT_BEAT_PRESCHOOLERF_R14_1, PreschoolerF1R14SeenText, PreschoolerF1R14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PreschoolerF1R14AfterText
	waitbutton
	closetext
	end

TrainerPreschoolerF2R14:
	trainer PRESCHOOLERF, PRESCHOOLERF_R14_2, EVENT_BEAT_PRESCHOOLERF_R14_2, PreschoolerF2R14SeenText, PreschoolerF2R14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PreschoolerF2R14AfterText
	waitbutton
	closetext
	end
	
TrainerR14PrizeGiver:
	faceplayer
	checkevent EVENT_GOT_RIOLU_EGG
	iftrue .beaten
	checkevent EVENT_BEAT_NURSERY_AIDE_R14
	iftrue .offeregg
	opentext
	writetext R14PrizeGiverSeenText
	waitbutton
	closetext
	winlosstext R14PrizeGiverWinText, 0
	setlasttalked R14_PRIZE_GIVER
	loadtrainer NURSERY_AIDE, NURSERY_AIDE_R14
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NURSERY_AIDE_R14
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
	
R14HeartScale:
	itemball HEART_SCALE
	
R14TMBulkUp:
	itemball TM_BULK_UP
	
R14FruitTree:
	fruittree FRUITTREE_R_14
	
PreschoolerM1R14SeenText:
	text "We're the five"
	line "trainers of the"
	cont "UNDELLA TOWN"
	cont "school!"

	para "Can you beat all"
	line "of us?"
	done

PreschoolerM1R14BeatenText:
	text "Wha? I lost?"
	done

PreschoolerM1R14AfterText:
	text "I did my best,"
	line "so that's good,"
	cont "I guess."
	done
	
PreschoolerF1R14SeenText:
	text "I'm number two!"
	line "I won't go easy!"
	done

PreschoolerF1R14BeatenText:
	text "Uh-oh, I lost…"
	done

PreschoolerF1R14AfterText:
	text "Teacher says to"
	line "try my hardest."
	
	para "So I'm not mad,"
	line "not even a little!"
	done
	
PreschoolerM2R14SeenText:
	text "What comes after"
	line "two? It's three!"
	
	para "Everyone knows"
	line "that!"
	done

PreschoolerM2R14BeatenText:
	text "Ow! I got beat!"
	done

PreschoolerM2R14AfterText:
	text "I'm better at my"
	line "numbers than I am"
	cont "at #MON."
	done
	
PreschoolerF2R14SeenText:
	text "Are you tired yet?"
	line "If you can beat"
	
	para "me, you get to"
	line "battle Teacher!"
	done

PreschoolerF2R14BeatenText:
	text "I lost too…"
	done

PreschoolerF2R14AfterText:
	text "I hope Teacher saw"
	line "how I did!"
	done
	
R14PrizeGiverSeenText:
	text "Good job making it"
	line "past our little"
	cont "test, trainer!"

	para "If you can beat"
	line "me, you'll receive"
	cont "a fabulous prize!"
	
	para "Go on, let's get"
	line "started!"
	done
	
R14PrizeGiverWinText:
	text "Oh, congrats! You"
	line "did it!"
	done
	
R14PrizeGiverGiveEggText:
	text "You've beaten me,"
	line "and won our school"
	cont "challenge!"
	
	para "As a prize from"
	line "us, take this rare"
	cont "#MON egg!"
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

	db 11 ; object events
	object_event 31,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPreschoolerM1R14, -1
	object_event 20,  9, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPreschoolerF1R14, -1
	object_event 18, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPreschoolerM2R14, -1
	object_event 10, 22, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPreschoolerF2R14, -1
	object_event  4, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerR14PrizeGiver, -1
	object_event 31,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R14Antidote, EVENT_R_14_ANTIDOTE
	object_event 14, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R14Potion, EVENT_R_14_POTION
	object_event 15, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R14NetBall, EVENT_R_14_NET_BALL
	object_event 11, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R14HeartScale, EVENT_R_14_HEART_SCALE
	object_event 17,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R14TMBulkUp, EVENT_R_14_TM_BULK_UP
	object_event 23, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R14FruitTree, -1
	