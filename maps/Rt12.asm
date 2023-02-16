	const_def 2 ; object constants
	const R12_INFER
	const R12_MARLON
	const R12_FRUIT_TREE
	const R12_ANTIDOTE
	const R12_YOUNGSTER
	const R12_LASS
	const R12_POKEFAN_F

Rt12_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

R12InferTopScript:
	applymovement PLAYER, R12Infer_TopMovement
	jump R12InferScript
R12InferMidScript:
	applymovement PLAYER, R12Infer_MidMovement
	jump R12InferScript
R12InferBotScript:
	applymovement PLAYER, R12Infer_BotMovement
	
R12InferScript:
	special FadeOutMusic
	pause 15
	opentext
	writetext R12InferText_Bridge
	waitbutton
	closetext
	showemote EMOTE_SHOCK, R12_INFER, 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject R12_INFER, RIGHT
	opentext
	writetext R12InferText_Fight
	waitbutton
	closetext
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftrue .Snivy
	winlosstext R12InferWinText, R12InferLossText
	setlasttalked R12_INFER
	loadtrainer INFER, INFER1_OSHAWOTT
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat
	
.Oshawott:
	winlosstext R12InferWinText, R12InferLossText
	setlasttalked R12_INFER
	loadtrainer INFER, INFER1_SNIVY
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.Snivy:
	winlosstext R12InferWinText, R12InferLossText
	setlasttalked R12_INFER
	loadtrainer INFER, INFER1_TEPIG
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext R12InferText_YouWon
	waitbutton
	closetext
	jump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext R12InferText_YouLost
	waitbutton
	closetext
.FinishRival:
	playsound SFX_TACKLE
	applymovement PLAYER, R12Infer_PushesYouMovement
	turnobject PLAYER, RIGHT
	applymovement R12_INFER, R12Infer_RunAwayMovement
	disappear R12_INFER
	special FadeOutMusic
	pause 30
	opentext
	writetext R12MarlonText_Hey
	waitbutton
	closetext
	playmusic MUSIC_MARLON_THEME
	appear R12_MARLON
	applymovement R12_MARLON, R12Marlon_ArriveMovement
	opentext
	writetext R12MarlonText_Greeting
	waitbutton
	closetext
	showemote EMOTE_SHOCK, R12_MARLON, 15
	opentext
	writetext R12MarlonText_Package
	buttonsound
	waitsfx
	writetext R12_GetDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext R12MarlonText_Pokedex
	buttonsound
	itemtotext POKE_BALL, MEM_BUFFER_1
	scall MarlonScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	itemnotify
	writetext R12MarlonText_Pokeballs
	buttonsound
	closetext
	applymovement R12_MARLON, R12Marlon_LeaveMovement
	disappear R12_MARLON
	special HealParty
	setscene SCENE_FINISHED
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	special FadeOutMusic
	pause 15
	playmapmusic
	end

MarlonScript_ReceiveTheBalls:
	jumpstd receiveitem
	end
	
R12YoungsterTextScript:
	jumptextfaceplayer R12YoungsterText
	
R12LassTextScript:
	jumptextfaceplayer R12LassText
	
R12PokefanFTextScript:
	jumptextfaceplayer R12PokefanFText
	
R12FruitTree:
	fruittree FRUITTREE_R_12
	
R12Antidote:
	itemball ANTIDOTE
	
R12FullHeal:
	hiddenitem FULL_HEAL, EVENT_R_12_FULL_HEAL

R12Sign:
	jumptext R12SignText
	
R12BridgeSign:
	jumptext R12BridgeSignText
	
R12Infer_TopMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end
	
R12Infer_MidMovement:
	step DOWN
	step LEFT
	step LEFT
	step_end
	
R12Infer_BotMovement:
	step LEFT
	step LEFT
	step_end
	
R12Infer_PushesYouMovement:
	big_step UP
	turn_head DOWN
	step_end
	
R12Infer_RunAwayMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end
	
R12Marlon_ArriveMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
R12Marlon_LeaveMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
R12InferText_Bridge:
	text "Darn! What a"
	line "lousy time for"
	
	para "the bridge to"
	line "be out…"
	done
	
R12InferText_Fight:
	text "What? You again?"
	
	para "I told you not"
	line "to follow me!"
	
	para "I guess I'll have"
	line "to teach you a"
	cont "lesson!"
	done

R12InferWinText:
	text "Darn… I wasn't"
	line "good enough."
	done

R12InferLossText:
	text "Humph. What a"
	line "waste of time."
	done
	
R12InferText_YouWon:
	text "Okay fine, you"
	line "can have the"
	
	para "package I stole"
	line "back."
	
	para "It wasn't even"
	line "what I was"
	
	para "looking for"
	line "anyway!"
	
	para "My name is INFER."
	
	para "Remember my name,"
	line "I'm going to be"
	
	para "the strongest"
	line "#MON trainer"
	cont "in the world!"
	
	para "Don't follow me!"
	done
	
R12InferText_YouLost:
	text "It doesn't matter."
	line "That package"
	
	para "wasn't what I was"
	line "looking for"
	cont "anyway."
	
	para "You can have it"
	line "back, it's"
	cont "useless to me."
	
	para "My name is INFER."
	
	para "Remember my name,"
	line "I'm going to be"
	
	para "the strongest"
	line "#MON trainer"
	cont "in the world!"
	
	para "Don't follow me!"
	done
	
R12MarlonText_Hey:
	text "<PLAY_G>!"
	done
	
R12MarlonText_Greeting:
	text "MARLON: Hey, that"
	line "was some battle!"
	
	para "Sorry I didn't"
	line "step in earlier,"
	
	para "I saw ya battling"
	line "and wanted to see"
	
	para "how you'd hang in"
	line "there!"
	
	para "I'm impressed!"
	line "You're a natural"
	cont "with #MON!"
	
	para "Oh! That reminds"
	line "me, I'd asked ya"
	
	para "to swing by my"
	line "place today."
	
	para "See, I had this"
	line "feelin' that you'd"
	
	para "make a pretty fine"
	line "#MON trainer,"
	
	para "so I asked the"
	line "PROF. to send over"
	
	para "some #MON for"
	line "you to pick from."
	
	para "Looks like my"
	line "hunch was right!"
	done
	
R12MarlonText_Package:
	text "Oh! My package!"
	
	para "That's right! That"
	line "girl ran off with"
	
	para "a package from my"
	line "GYM, so I took off"
	
	para "and tailed her"
	line "here."
	
	para "Looks like you"
	line "managed to get"
	cont "it back."
	
	para "Go ahead, open"
	line "it up!"
	done
	
R12MarlonText_Pokedex:
	text "That's a #DEX!"
	
	para "It'll keep track"
	line "of any #MON"
	cont "ya come across!"
	
	para "The PROF. sent it"
	line "for ya along with"
	cont "the #MON."
	
	para "Wonder what that"
	line "girl wanted with"
	cont "it…"
	
	para "Oh! And now that"
	line "ya have a #-"
	cont "DEX, you should"
	
	para "have some of"
	line "these!"
	done
	
R12MarlonText_Pokeballs:
	text "You can use those"
	line "to catch #-"
	cont "MON!"
	
	para "Well, I think I'm"
	line "gonna head on down"
	cont "to UNDELLA TOWN."
	
	para "You can get there"
	line "by passin' through"
	
	para "LACUNOSA TOWN, and"
	line "then just head"
	
	para "South along the"
	line "beach on ROUTE 13."
	
	para "I'll meet ya"
	line "there!"
	done

R12_GetDexText:
	text "<PLAYER> received"
	line "#DEX!"
	done
	
R12YoungsterText:
	text "#MON battles"
	line "begin when eyes"
	cont "meet!"
	
	para "If I were a #-"
	line "MON trainer, you"
	
	para "and I would be"
	line "battling now!"
	
	para "…But I don't have"
	line "any #MON yet…"
	done
	
R12LassText:
	text "ROUTE 12 is a good"
	line "place to find"
	cont "wild #MON!"
	
	para "I'm looking for"
	line "a SHROOMISH, or"
	cont "maybe a RALTS!"
	done
	
R12PokefanFText:
	text "This ROUTE is so"
	line "nice! It's close"
	
	para "to town, so I"
	line "don't have to"
	
	para "worry about my"
	line "#MON fainting."
	done
	
R12SignText:
	text "ROUTE 12"
	
	para "West to VILLAGE"
	line "BRIDGE."
	done
	
R12BridgeSignText:
	text "VILLAGE BRIDGE"
	
	para "Passage to"
	line "OPELUCID CITY."
	done

Rt12_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  8, R_12_VILLAGE_BRIDGE_GATE, 1
	warp_event  4,  9, R_12_VILLAGE_BRIDGE_GATE, 2

	db 3 ; coord events
	coord_event  9,  7, SCENE_DEFAULT, R12InferTopScript
	coord_event  9,  8, SCENE_DEFAULT, R12InferMidScript
	coord_event  9,  9, SCENE_DEFAULT, R12InferBotScript

	db 3 ; bg events
	bg_event 23, 13, BGEVENT_READ, R12Sign
	bg_event  6,  8, BGEVENT_READ, R12BridgeSign
	bg_event 23,  5, BGEVENT_ITEM, R12FullHeal

	db 7 ; object events
	object_event  6,  9, SPRITE_INFER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, -1, -1, EVENT_R12_INFER
	object_event 13,  8, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_R12_MARLON
	object_event 15,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R12FruitTree, -1
	object_event  4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R12Antidote, EVENT_R_12_ANTIDOTE
	object_event 22, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_SCRIPT, 0, R12YoungsterTextScript, -1
	object_event 13, 12, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, R12LassTextScript, -1
	object_event 19,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, R12PokefanFTextScript, -1
	