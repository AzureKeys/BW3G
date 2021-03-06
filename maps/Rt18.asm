	const_def 2 ; object constants
	const R18_PEARL
	const R18_CALCIUM
	const R18_MAX_ELIXER
	const R18_TM_REFLECT
	const R18_HIKER
	const R18_BLACKBELT
	const R18_BATTLE_GIRL
	const R18_COOLTRAINER_M
	const R18_COOLTRAINER_F

Rt18_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerCooltrainerFR18:
	trainer COOLTRAINERF_D, COOLTRAINERF_R18, EVENT_BEAT_COOLTRAINERF_R18, CooltrainerFR18SeenText, CooltrainerFR18BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_COOLTRAINER_JENNY
	opentext
	checkflag ENGINE_JENNY_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_COOLTRAINER_JENNY
	iftrue .NumberAccepted
	checkevent EVENT_JENNY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext CooltrainerFR18AfterText
	buttonsound
	setevent EVENT_JENNY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_COOLTRAINER_JENNY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_JENNY
	trainertotext COOLTRAINERF_D, COOLTRAINERF_R18, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext CooltrainerFR18BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight1
; Fight0
	loadtrainer COOLTRAINERF_D, COOLTRAINERF_R18
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer COOLTRAINERF_D, JENNY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
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

TrainerHikerR18:
	trainer HIKER, HIKER_R18, EVENT_BEAT_HIKER_R18, HikerR18SeenText, HikerR18BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerR18AfterText
	waitbutton
	closetext
	end

TrainerBlackbeltR18:
	trainer BLACKBELT_T, BLACKBELT_R18, EVENT_BEAT_BLACKBELT_R18, BlackbeltR18SeenText, BlackbeltR18BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltR18AfterText
	waitbutton
	closetext
	end

TrainerBattleGirlR18:
	trainer BATTLE_GIRL, BATTLE_GIRL_R18, EVENT_BEAT_BATTLE_GIRL_R18, BattleGirlR18SeenText, BattleGirlR18BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlR18AfterText
	waitbutton
	closetext
	end

TrainerCooltrainerMR18:
	trainer COOLTRAINERM_D, COOLTRAINERM_R18, EVENT_BEAT_COOLTRAINERM_R18, CooltrainerMR18SeenText, CooltrainerMR18BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMR18AfterText
	waitbutton
	closetext
	end
	
R18HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_18
	
R18Pearl:
	itemball PEARL
	
R18Calcium:
	itemball CALCIUM
	
R18MaxElixer:
	itemball MAX_ELIXER
	
R18TMReflect:
	itemball TM_REFLECT
	
R18BigPearl:
	hiddenitem BIG_PEARL, EVENT_R18_BIG_PEARL
	
HikerR18SeenText:
	text "Awright! I'll show"
	line "you the power of"
	cont "mountain #MON!"
	done

HikerR18BeatenText:
	text "Mercy! You showed"
	line "me your power!"
	done

HikerR18AfterText:
	text "It's over. I don't"
	line "mind. We HIKERS"
	cont "are like that."
	done
	
BlackbeltR18SeenText:
	text "Be prepared for"
	line "anything!"

	para "Let me see if your"
	line "#MON have been"
	cont "raised properly!"
	done

BlackbeltR18BeatenText:
	text "Oh, I lost that!"
	done

BlackbeltR18AfterText:
	text "I'll have to train"
	line "some more."
	done
	
BattleGirlR18SeenText:
	text "I'm gonna win,"
	line "for sure!"
	done

BattleGirlR18BeatenText:
	text "Arrgh… That's a"
	line "shocking loss…"
	done

BattleGirlR18AfterText:
	text "It's important to"
	line "have conviction"
	cont "on your side."
	done
	
CooltrainerMR18SeenText:
	text "What are your"
	line "thoughts on rais-"
	cont "ing #MON?"
	done

CooltrainerMR18BeatenText:
	text "You've won my"
	line "respect."
	done

CooltrainerMR18AfterText:
	text "I see you're rais-"
	line "ing your #MON"
	cont "with care."

	para "The bond you build"
	line "will save you in"
	cont "tough situations."
	done
	
CooltrainerFR18SeenText:
	text "What is your"
	line "battle strategy?"

	para "It is foolish to"
	line "use strong moves"
	cont "indiscriminately."
	done

CooltrainerFR18BeatenText:
	text "Fine. I lost."
	done

CooltrainerFR18AfterText:
	text "I'm not in favor"
	line "of overly power-"
	cont "ful moves."

	para "I want to win, but"
	line "I also don't want"
	cont "to harm #MON."
	done

Rt18_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 17, 16, R_18_HOUSE, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 36, 28, BGEVENT_ITEM, R18BigPearl
	bg_event 29, 31, BGEVENT_UP, R18HiddenGrotto
	bg_event 30, 31, BGEVENT_UP, R18HiddenGrotto

	db 9 ; object events
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18Pearl, EVENT_R18_PEARL
	object_event 39, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18Calcium, EVENT_R18_CALCIUM
	object_event  2, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18MaxElixer, EVENT_R18_MAX_ELIXER
	object_event 24, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R18TMReflect, EVENT_R18_TM_REFLECT
	object_event 31, 22, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHikerR18, -1
	object_event 25, 23, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltR18, -1
	object_event  9,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlR18, -1
	object_event 33, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerMR18, -1
	object_event 26, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFR18, -1
	