	const_def 2 ; object constants
	const R18_PEARL
	const R18_CALCIUM
	const R18_MAX_ELIXER
	const R18_BLACKBELT
	const R18_HEART_SCALE
	const R18_TM_CALM_MIND
	const R18_HIKER
	const R18_BLACKBELT_T
	const R18_BATTLE_GIRL
	const R18_BACKPACKERM
	const R18_BACKPACKERF

Rt18_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .Tiles

.DummyScene0:
	end
	
.Tiles:
	checkevent EVENT_R_18_LOWER
	iffalse .done
	changeblock 16, 22, $ce ; bridge top
	changeblock 16, 24, $cf ; bridge main
	changeblock 16, 26, $d0 ; up_wall
.done
	return
	
R18LowerScript:
	checkevent EVENT_R_18_LOWER
	iftrue .done
	changeblock 16, 22, $ce ; bridge top
	changeblock 16, 24, $cf ; bridge main
	changeblock 16, 26, $d0 ; up_wall
	setevent EVENT_R_18_LOWER
.done
	end
	
R18UpperScript:
	checkevent EVENT_R_18_LOWER
	iffalse .done
	changeblock 16, 22, $cc ; bridge top
	changeblock 16, 24, $cd ; bridge main
	changeblock 16, 26, $02 ; up_wall
	clearevent EVENT_R_18_LOWER
.done
	end

TrainerBackpackerFR18:
	trainer BACKPACKERF, BACKPACKERF_R18, EVENT_BEAT_BACKPACKERF_R18, BackpackerFR18SeenText, BackpackerFR18BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_BACKPACKER_JENNY
	opentext
	checkflag ENGINE_JENNY_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_BACKPACKER_JENNY
	iftrue .NumberAccepted
	checkevent EVENT_JENNY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext BackpackerFR18AfterText
	buttonsound
	setevent EVENT_JENNY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_BACKPACKER_JENNY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_JENNY
	trainertotext BACKPACKERF, BACKPACKERF_R18, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext BackpackerFR18BeatenText, 0
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .LoadFight3
	checkmapscene SEASIDE_CAVE_CHAMBER
	ifequal SCENE_FINISHED, .LoadFight2
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight1
; Fight0
	loadtrainer BACKPACKERF, BACKPACKERF_R18
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight1
	loadtrainer BACKPACKERF, JENNY_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight2
	loadtrainer BACKPACKERF, JENNY_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight3
	loadtrainer BACKPACKERF, JENNY_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JENNY_READY_FOR_REMATCH
	; fallthrough
	
.Gift:
	opentext
	scall .GiftText
	scall .GiveGift
	ifequal FALSE, .PackIsFull
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

.GiftText:
	jumpstd giftf
	end

.PackIsFull:
	jumpstd packfullf
	end
	
.GiveGift:
	rematchgift HIDDENGROTTO_TIER_2

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

TrainerBackpackerMR18:
	trainer BACKPACKERM, BACKPACKERM_R18, EVENT_BEAT_BACKPACKERM_R18, BackpackerMR18SeenText, BackpackerMR18BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMR18AfterText
	waitbutton
	closetext
	end
	
R18HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_18, HIDDENGROTTO_TIER_2
	
R18Pearl:
	itemball PEARL
	
R18Calcium:
	itemball CALCIUM
	
R18MaxElixer:
	itemball MAX_ELIXER
	
R18Blackbelt:
	itemball BLACKBELT
	
R18HeartScale:
	itemball HEART_SCALE
	
R18TMCalmMind:
	itemball TM_CALM_MIND
	
R18BigPearl:
	hiddenitem BIG_PEARL, EVENT_R18_BIG_PEARL
	
HikerR18SeenText:
	text "When I look down"
	line "from a high place,"
	cont "I feel very good!"
	
	para "#MON battles"
	line "are the same!"
	done

HikerR18BeatenText:
	text "You're great! I"
	line "can't help but look"
	cont "up to you!"
	done

HikerR18AfterText:
	text "We climb mountains"
	line "because, no matter"
	
	para "how hard it is,"
	line "the higher we"
	
	para "climb, the closer"
	line "we get to the sky!"
	done
	
BlackbeltR18SeenText:
	text "I just won a"
	line "battle back there,"

	para "so I'm feeling"
	line "good!"
	done

BlackbeltR18BeatenText:
	text "Oh whatever! I'm"
	line "in a terrible mood"
	cont "now!"
	done

BlackbeltR18AfterText:
	text "I think I'm gonna"
	line "go to bed…"
	done
	
BattleGirlR18SeenText:
	text "Number! Eight!"
	line "Teen!"
	done

BattleGirlR18BeatenText:
	text "OK! Thank you very"
	line "much!"
	done

BattleGirlR18AfterText:
	text "Whether they win"
	line "or lose, #MON"
	
	para "can become just a"
	line "bit stronger after"
	cont "each battle."
	done
	
BackpackerMR18SeenText:
	text "BACKPACKERs are"
	line "exactly what they"
	cont "sound like."
	
	para "They set out on"
	line "the road with only"
	
	para "the packs on their"
	line "backs and the"
	
	para "#MON in their"
	line "#BALLs!"
	done

BackpackerMR18BeatenText:
	text "I wish I could"
	line "pack some wins in"
	cont "my backpack too…"
	done

BackpackerMR18AfterText:
	text "The purpose of the"
	line "journey is found"

	para "in those that I"
	line "meet! Isn't it"
	
	para "great to encounter"
	line "all the different"
	
	para "#MON there are"
	line "in the world?"
	done
	
BackpackerFR18SeenText:
	text "Your #MON and"
	line "your strategy!"

	para "I'll be taking"
	line "notes on both!"
	done

BackpackerFR18BeatenText:
	text "There's still so"
	line "much more to"
	cont "learn!"
	done

BackpackerFR18AfterText:
	text "Stronger #MON…"
	line "An unbeatable"
	cont "strategy… "

	para "There are no such"
	line "certainties in"
	
	para "#MON… and that's"
	line "why it's so deep!"
	done

Rt18_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 17, 16, R_18_HOUSE, 1

	db 8 ; coord events
	coord_event  6, 24, SCENE_DEFAULT, R18LowerScript
	coord_event  6, 25, SCENE_DEFAULT, R18LowerScript
	coord_event  5, 24, SCENE_DEFAULT, R18UpperScript
	coord_event  5, 25, SCENE_DEFAULT, R18UpperScript
	coord_event 25, 16, SCENE_DEFAULT, R18UpperScript
	coord_event 25, 17, SCENE_DEFAULT, R18UpperScript
	coord_event  4, 20, SCENE_DEFAULT, R18UpperScript
	coord_event  5, 20, SCENE_DEFAULT, R18UpperScript

	db 3 ; bg events
	bg_event 36, 28, BGEVENT_ITEM, R18BigPearl
	bg_event 29, 31, BGEVENT_UP, R18HiddenGrotto
	bg_event 30, 31, BGEVENT_UP, R18HiddenGrotto

	db 11 ; object events
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18Pearl, EVENT_R18_PEARL
	object_event 39, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18Calcium, EVENT_R18_CALCIUM
	object_event  2, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18MaxElixer, EVENT_R18_MAX_ELIXER
	object_event 24, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18Blackbelt, EVENT_R18_BLACKBELT
	object_event  5, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R18HeartScale, EVENT_R18_HEART_SCALE
	object_event 25, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R18TMCalmMind, EVENT_R18_TM_CALM_MIND
	object_event 31, 22, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHikerR18, -1
	object_event 25, 23, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltR18, -1
	object_event  9,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlR18, -1
	object_event 33, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBackpackerMR18, -1
	object_event 26, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBackpackerFR18, -1
	