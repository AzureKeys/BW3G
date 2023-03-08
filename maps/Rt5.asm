	const_def 2 ; object constants
	const R5_FRUIT_TREE
	const R5_FRIEND_BALL
	const R5_CALCIUM
	const R5_REVIVE
	const R5_HEART_SCALE
	const R5_DANCER_1
	const R5_DANCER_2
	const R5_LINEBACKER
	const R5_BAKER
	const R5_ARTIST
	const R5_BACKERSF_1
	const R5_BACKERSF_2
	const R5_BIKER

Rt5_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
R5CharlesScript:
	faceplayer
	checkevent EVENT_R_5_DAWN_STONE
	iftrue .beaten
	checkevent EVENT_BEAT_BIKER_R5
	iftrue .offerstone
	opentext
	writetext R5CharlesSeenText
	waitbutton
	closetext
	winlosstext R5CharlesWinText, 0
	setlasttalked R5_BIKER
	loadtrainer BIKER, BIKER_R5
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIKER_R5
.offerstone
	opentext
	writetext R5CharlesGiveStoneText
	buttonsound
	waitsfx
	verbosegiveitem DAWN_STONE
	iffalse .NoRoom
	setevent EVENT_R_5_DAWN_STONE
.NoRoom
	closetext
	end

.beaten:
	opentext
	writetext R5CharlesBeatenText
	waitbutton
	closetext
	end

TrainerLinebackerR5:
	trainer LINEBACKER, LINEBACKER_R5, EVENT_BEAT_LINEBACKER_R5, LinebackerR5SeenText, LinebackerR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LinebackerR5AfterText
	waitbutton
	closetext
	end

TrainerDancer1R5:
	trainer DANCER, DANCER_R5_1, EVENT_BEAT_DANCER_R5_1, Dancer1R5SeenText, Dancer1R5BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_DANCER_ERIC
	opentext
	checkflag ENGINE_ERIC_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_DANCER_ERIC
	iftrue .NumberAccepted
	checkevent EVENT_ERIC_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext Dancer1R5AfterText
	buttonsound
	setevent EVENT_ERIC_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_DANCER_ERIC
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_ERIC
	trainertotext DANCER, DANCER_R5_1, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext Dancer1R5BeatenText, 0
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
	loadtrainer DANCER, DANCER_R5_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight1
	loadtrainer DANCER, ERIC_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight2
	loadtrainer DANCER, ERIC_REMATCH_2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight3
	loadtrainer DANCER, ERIC_REMATCH_3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight4
	loadtrainer DANCER, ERIC_REMATCH_4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
	jump .Gift
	
.LoadFight5
	loadtrainer DANCER, ERIC_REMATCH_5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIC_READY_FOR_REMATCH
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

TrainerDancer2R5:
	trainer DANCER, DANCER_R5_2, EVENT_BEAT_DANCER_R5_2, Dancer2R5SeenText, Dancer2R5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Dancer2R5AfterText
	waitbutton
	closetext
	end

TrainerBakerR5:
	trainer BAKER, BAKER_R5, EVENT_BEAT_BAKER_R5, BakerR5SeenText, BakerR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BakerR5AfterText
	waitbutton
	closetext
	end

TrainerArtistR5:
	trainer ARTIST, ARTIST_R5, EVENT_BEAT_ARTIST_R5, ArtistR5SeenText, ArtistR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ArtistR5AfterText
	waitbutton
	closetext
	end

TrainerBackersFR5:
	trainer BACKERSF, BACKERSF_R5, EVENT_BEAT_BACKERSF_R5, BackersFR5SeenText, BackersFR5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackersFR5AfterText
	waitbutton
	closetext
	end
	
R5FruitTree:
	fruittree FRUITTREE_R_5
	
R5FriendBall:
	itemball FRIEND_BALL
	
R5Calcium:
	itemball CALCIUM
	
R5Revive:
	itemball REVIVE
	
R5HeartScale:
	itemball HEART_SCALE
	
R5BridgeSign:
	jumptext R5BridgeSignText
	
R5NimbasaSign:
	jumptext R5NimbasaSignText
	
R5HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_5, HIDDENGROTTO_TIER_1
	
R5CharlesSeenText:
	text "I'm a heart-"
	line "breaker… My name…"
	cont "CHARLES…"

	para "You… You wish to"
	line "challenge me…?"
	
	para "Prepare… to be…"
	line "heartbroken…"
	done

R5CharlesWinText:
	text "…"
	line "CHARLES's heart…"
	cont "broken…"
	done

R5CharlesGiveStoneText:
	text "You have defeated"
	line "CHARLES…"

	para "Take this with"
	line "you…"

	para "A gift… From"
	line "CHARLES's heart…"
	done

R5CharlesBeatenText:
	text "CHARLES has more"
	line "battles to win…"

	para "More hearts to"
	line "break…"

	para "I am… CHARLES…"
	line "I am…"
	cont "heartbreaker…"
	done
	
LinebackerR5SeenText:
	text "Heheh! Nobody can"
	line "beat my speed and"
	cont "fury!"
	done

LinebackerR5BeatenText:
	text "I have lost! I am"
	line "such a loser!"
	done

LinebackerR5AfterText:
	text "Ah! Maybe I should"
	line "just pick up my"

	para "ball and charge"
	line "outta here! No one"
	
	para "would doubt how"
	line "wild I am then!"
	done
	
Dancer1R5SeenText:
	text "Turn around, and"
	line "it's my turn. Turn"

	para "around, and it's"
	line "your turn!"
	done

Dancer1R5BeatenText:
	text "Turn around, turn"
	line "around… and turn"
	cont "around some more!"
	done

Dancer1R5AfterText:
	text "My #MON are"
	line "masters of dance!"
	done
	
Dancer2R5SeenText:
	text "I can feel it in"
	line "the air… This"

	para "battle will be"
	line "electrifying!"
	done

Dancer2R5BeatenText:
	text "What electrifying"
	line "strength! You"
	cont "shocked me good!"
	done

Dancer2R5AfterText:
	text "I'm shocked! I"
	line "need a CHERI"
	cont "BERRY!"
	done
	
BakerR5SeenText:
	text "These #MON"
	line "usually help me"

	para "bake. But today,"
	line "they'll help me"
	cont "battle you!"
	done

BakerR5BeatenText:
	text "Battling is much"
	line "more difficult"
	cont "than baking!"
	done

BakerR5AfterText:
	text "My #MON and I"
	line "bake bread. It's"
	cont "so fun!"
	done
	
ArtistR5SeenText:
	text "Art is explosions!"
	line "Life forces colli-"
	cont "ding together!"
	done

ArtistR5BeatenText:
	text "Oh, I just got"
	line "whitewashed!"
	done

ArtistR5AfterText:
	text "Boom!"
	
	para "Colors collide to"
	line "form new colors!"
	done
	
BackersFR5SeenText:
	text "After watching a"
	line "football game, we"
	
	para "want to get rowdy"
	line "ourselves!"
	done

BackersFR5BeatenText:
	text "Too rowdy!"
	done

BackersFR5AfterText:
	text "Keeping track of"
	line "wins is important,"

	para "but don't lose"
	line "sight of every-"
	cont "thing else!"
	done
	
R5BridgeSignText:
	text "DRIFTVEIL"
	line "DRAWBRIDGE."
	
	para "Inquire inside"
	line "for bridge access."
	done
	
R5NimbasaSignText:
	text "NIMBASA CITY"
	line "ahead."
	done

Rt5_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  4, 12, R_5_BRIDGE_GATE, 1
	warp_event  4, 13, R_5_BRIDGE_GATE, 2
	warp_event 33, 14, R_5_NIMBASA_GATE, 1
	warp_event 33, 15, R_5_NIMBASA_GATE, 2
	warp_event 24, 11, R_5_TRUCK, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event  5, 10, BGEVENT_READ, R5BridgeSign
	bg_event 32, 13, BGEVENT_READ, R5NimbasaSign
	bg_event 31,  5, BGEVENT_UP, R5HiddenGrotto
	bg_event 32,  5, BGEVENT_UP, R5HiddenGrotto

	db 13 ; object events
	object_event 28, 11, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R5FruitTree, -1
	object_event 33,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5FriendBall, EVENT_R_5_FRIEND_BALL
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5Calcium, EVENT_R_5_CALCIUM
	object_event  9, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5Revive, EVENT_R_5_REVIVE
	object_event 17, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R5HeartScale, EVENT_R_5_HEART_SCALE
	object_event 22, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerDancer1R5, -1
	object_event 20, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerDancer2R5, -1
	object_event 17, 14, SPRITE_LINEBACKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerLinebackerR5, -1
	object_event 10, 13, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBakerR5, -1
	object_event 14, 16, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerArtistR5, -1
	object_event 12, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersFR5, -1
	object_event 13, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersFR5, -1
	object_event  7, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, R5CharlesScript, -1
	