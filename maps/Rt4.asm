	const_def 2 ; object constants
	const R4_GREAT_BALL
	const R4_X_ACCURACY
	const R4_ETHER
	const R4_SUPER_POTION
	const R4_BIRD_KEEPER
	const R4_BUG_CATCHER
	const R4_FISHER1
	const R4_FISHER2
	const R4_BEAUTY
	const R4_PICNICKER
	const R4_OFFICER1
	const R4_OFFICER2
	const R4_POKEFANM
	const R4_BIKER

Rt4_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBeautyR4:
	trainer BEAUTY_D, BEAUTY_R4, EVENT_BEAT_BEAUTY_R4, BeautyR4SeenText, BeautyR4BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_BEAUTY_LACEY
	opentext
	checkflag ENGINE_LACEY_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_BEAUTY_LACEY
	iftrue .NumberAccepted
	checkevent EVENT_LACEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext BeautyR4AfterText
	buttonsound
	setevent EVENT_LACEY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_BEAUTY_LACEY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_LACEY
	trainertotext BEAUTY_D, BEAUTY_R4, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext BeautyR4BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight2
	checkevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	iftrue .LoadFight1
; Fight0
	loadtrainer BEAUTY_D, BEAUTY_R4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer BEAUTY_D, LACEY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
	end
.LoadFight2
	loadtrainer BEAUTY_D, LACEY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LACEY_READY_FOR_REMATCH
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

TrainerBirdKeeperR4:
	trainer BIRD_KEEPER, BIRD_KEEPER_R4, EVENT_BEAT_BIRD_KEEPER_R4, BirdKeeperR4SeenText, BirdKeeperR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperR4AfterText
	waitbutton
	closetext
	end

TrainerBugCatcherR4:
	trainer BUG_CATCHER, BUG_CATCHER_R4, EVENT_BEAT_BUG_CATCHER_R4, BugCatcherR4SeenText, BugCatcherR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherR4AfterText
	waitbutton
	closetext
	end

TrainerFisher1R4:
	trainer FISHER, FISHER_R4_1, EVENT_BEAT_FISHER_R4_1, Fisher1R4SeenText, Fisher1R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher1R4AfterText
	waitbutton
	closetext
	end

TrainerFisher2R4:
	trainer FISHER_D, FISHER_R4_2, EVENT_BEAT_FISHER_R4_2, Fisher2R4SeenText, Fisher2R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Fisher2R4AfterText
	waitbutton
	closetext
	end

TrainerPicnickerR4:
	trainer PICNICKER_D, PICNICKER_R4, EVENT_BEAT_PICNICKER_R4, PicnickerR4SeenText, PicnickerR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerR4AfterText
	waitbutton
	closetext
	end

TrainerOfficer1R4:
	trainer OFFICER, OFFICER_R4_1, EVENT_BEAT_OFFICER_R4_1, Officer1R4SeenText, Officer1R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Officer1R4AfterText
	waitbutton
	closetext
	end

TrainerOfficer2R4:
	trainer OFFICER, OFFICER_R4_2, EVENT_BEAT_OFFICER_R4_2, Officer2R4SeenText, Officer2R4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Officer2R4AfterText
	waitbutton
	closetext
	end

TrainerPokefanMR4:
	trainer POKEFANM, POKEFANM_R4, EVENT_BEAT_POKEFANM_R4, PokefanMR4SeenText, PokefanMR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanMR4AfterText
	waitbutton
	closetext
	end

TrainerBikerR4:
	trainer BIKER, BIKER_R4, EVENT_BEAT_BIKER_R4, BikerR4SeenText, BikerR4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerR4AfterText
	waitbutton
	closetext
	end
	
R4GreatBall:
	itemball GREAT_BALL
	
R4XAccuracy:
	itemball X_ACCURACY
	
R4Ether:
	itemball ETHER
	
R4SuperPotion:
	itemball SUPER_POTION
	
R4UltraBall:
	hiddenitem ULTRA_BALL, EVENT_R_4_ULTRA_BALL
	
R4Pearl:
	hiddenitem PEARL, EVENT_R_4_PEARL
	
R4BurnHeal:
	hiddenitem BURN_HEAL, EVENT_R_4_BURN_HEAL
	
R4Ether2:
	hiddenitem ETHER, EVENT_R_4_ETHER_2
	
R4DesertSign:
	jumptext R4DesertSignText
	
R4CasteliaSign:
	jumptext R4CasteliaSignText
	
BirdKeeperR4SeenText:
	text "I can do so much"
	line "with my #MON--"
	cont "it's super-fun!"
	done

BirdKeeperR4BeatenText:
	text "Losing isn't fun"
	line "at all…"
	done

BirdKeeperR4AfterText:
	text "We were going to"
	line "the DESERT RESORT."
	done
	
BugCatcherR4SeenText:
	text "I'm gonna win,"
	line "for sure!"
	done

BugCatcherR4BeatenText:
	text "Arrgh… That's a"
	line "shocking loss…"
	done

BugCatcherR4AfterText:
	text "It's important to"
	line "have conviction"
	cont "on your side."
	done
	
Fisher1R4SeenText:
	text "Whoa!"

	para "You made me lose"
	line "that fish!"
	done

Fisher1R4BeatenText:
	text "Sploosh!"
	done

Fisher1R4AfterText:
	text "Calm, collected…"
	line "The essence of"

	para "fishing and #-"
	line "MON is the same."
	done
	
Fisher2R4SeenText:
	text "I'm really good at"
	line "both fishing and"
	cont "#MON."

	para "I'm not about to"
	line "lose to any kid!"
	done

Fisher2R4BeatenText:
	text "Tch! I tried to"
	line "rush things…"
	done

Fisher2R4AfterText:
	text "Fishing is a life-"
	line "long passion."

	para "#MON are life-"
	line "long friends!"
	done
	
BeautyR4SeenText:
	text "Oh, you are a cute"
	line "little trainer! "

	para "I like you, but I"
	line "won't hold back!"
	done

BeautyR4BeatenText:
	text "Let's see… Oops,"
	line "it's over?"
	done

BeautyR4AfterText:
	text "Wow, you must be"
	line "good to beat me!"
	cont "Keep it up!"
	done
	
BikerR4SeenText:
	text "Hey! Want to have"
	line "a speed battle?"
	done

BikerR4BeatenText:
	text "Yikes! You've got"
	line "awesome torque!"
	done

BikerR4AfterText:
	text "I love riding free"
	line "on the road!"
	done
	
PicnickerR4SeenText:
	text "Hi! Aren't you a"
	line "cute trainer!"

	para "May I see your"
	line "#MON?"
	done

PicnickerR4BeatenText:
	text "I'm glad I got to"
	line "see your #MON!"
	done

PicnickerR4AfterText:
	text "When I see #-"
	line "MON, it seems to"
	cont "soothe my nerves."
	done
	
Officer1R4SeenText:
	text "Who goes there?"
	line "What are you up"
	cont "to?"
	done

Officer1R4BeatenText:
	text "You're a tough"
	line "little kid."
	done

Officer1R4AfterText:
	text "Yep, I see nothing"
	line "wrong today. You"

	para "be good and stay"
	line "out of trouble."
	done
	
Officer2R4SeenText:
	text "Danger lurks in"
	line "the night!"
	done

Officer2R4BeatenText:
	text "Whoops!"
	done

Officer2R4AfterText:
	text "Your #MON look"
	line "pretty tough."

	para "You could go any-"
	line "where safely."
	done
	
PokefanMR4SeenText:
	text "This is a good"
	line "time to brag about"
	cont "my SEWADDLE!"
	done

PokefanMR4BeatenText:
	text "I had no time to"
	line "show off SEWADDLE…"
	done

PokefanMR4AfterText:
	text "I'm not listening"
	line "to your bragging!"

	para "We # FANS have"
	line "a policy of not"

	para "listening to other"
	line "people brag!"
	done
	
R4DesertSignText:
	text "DESERT RESORT"
	line "ahead."
	done
	
R4CasteliaSignText:
	text "Access to"
	line "CASTELIA CITY."
	done

Rt4_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 34,  3, R_4_NIMBASA_GATE, 3
	warp_event  3,  5, R_4_DESERT_GATE, 3
	warp_event 41, 29, R_4_HOUSE, 1
	warp_event 33, 55, R_4_CASTELIA_GATE, 1
	warp_event 34, 55, R_4_CASTELIA_GATE, 2

	db 0 ; coord events

	db 6 ; bg events
	bg_event  4,  6, BGEVENT_READ, R4DesertSign
	bg_event 36, 50, BGEVENT_READ, R4CasteliaSign
	bg_event 30, 52, BGEVENT_ITEM, R4UltraBall
	bg_event 12, 26, BGEVENT_ITEM, R4Pearl
	bg_event 23, 28, BGEVENT_ITEM, R4BurnHeal
	bg_event 10, 34, BGEVENT_ITEM, R4Ether2

	db 14 ; object events
	object_event 10, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4GreatBall, EVENT_R_4_GREAT_BALL
	object_event 17, 55, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4XAccuracy, EVENT_R_4_X_ACCURACY
	object_event 36, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4Ether, EVENT_R_4_ETHER_1
	object_event 25, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R4SuperPotion, EVENT_R_4_SUPER_POTION
	object_event 31, 39, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperR4, -1
	object_event 14, 30, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherR4, -1
	object_event 12, 49, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerFisher1R4, -1
	object_event 12, 53, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 0, TrainerFisher2R4, -1
	object_event 20, 35, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 4, TrainerBeautyR4, -1
	object_event 22, 20, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerPicnickerR4, -1
	object_event 17, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerOfficer1R4, -1
	object_event 32, 50, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerOfficer2R4, -1
	object_event 34,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerPokefanMR4, -1
	object_event 24, 46, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBikerR4, -1
	