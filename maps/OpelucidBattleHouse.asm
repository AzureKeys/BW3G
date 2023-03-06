	const_def 2 ; object constants
	const OPELUCIDBATTLEHOUSE_GYM_GUY
	const OPELUCIDBATTLEHOUSE_MARLON
	const OPELUCIDBATTLEHOUSE_BURGH
	const OPELUCIDBATTLEHOUSE_CILAN
	const OPELUCIDBATTLEHOUSE_BLUE

OpelucidBattleHouse_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .SetupBattler
	
.SetupBattler:
	checkevent EVENT_BEAT_DRAYDEN
	iffalse .done ; Battlers don't appear until Drayden is beaten
	checkflag ENGINE_BATTLE_HOUSE
	iftrue .done ; Battlers already set up
	clearevent EVENT_BATTLE_HOUSE_DONE
	disappear OPELUCIDBATTLEHOUSE_MARLON
	disappear OPELUCIDBATTLEHOUSE_BURGH
	disappear OPELUCIDBATTLEHOUSE_CILAN
	disappear OPELUCIDBATTLEHOUSE_BLUE
; Get a random number to determine the battler
	random 8
	ifequal 0, .Marlon
	ifequal 1, .Shauntal
	ifequal 2, .Burgh
	ifequal 3, .Roxie
	ifequal 4, .Cheren
	ifequal 5, .Cilan
	ifequal 6, .Skyla
; Drayden
	variablesprite SPRITE_BATTLE_HOUSE_BLUE, SPRITE_DRAYDEN
	special LoadUsedSpritesGFX
	appear OPELUCIDBATTLEHOUSE_BLUE
	loadvar wBattleHouseOpponent, 5
	setflag ENGINE_BATTLE_HOUSE
	jump .done
.Marlon
	appear OPELUCIDBATTLEHOUSE_MARLON
	setflag ENGINE_BATTLE_HOUSE
	jump .done
.Shauntal
	variablesprite SPRITE_BATTLE_HOUSE_BLUE, SPRITE_SHAUNTAL
	special LoadUsedSpritesGFX
	appear OPELUCIDBATTLEHOUSE_BLUE
	loadvar wBattleHouseOpponent, 1
	setflag ENGINE_BATTLE_HOUSE
	jump .done
.Burgh
	appear OPELUCIDBATTLEHOUSE_BURGH
	setflag ENGINE_BATTLE_HOUSE
	jump .done
.Roxie
	variablesprite SPRITE_BATTLE_HOUSE_BLUE, SPRITE_ROXIE
	special LoadUsedSpritesGFX
	appear OPELUCIDBATTLEHOUSE_BLUE
	loadvar wBattleHouseOpponent, 2
	setflag ENGINE_BATTLE_HOUSE
	jump .done
.Cheren
	variablesprite SPRITE_BATTLE_HOUSE_BLUE, SPRITE_CHEREN
	special LoadUsedSpritesGFX
	appear OPELUCIDBATTLEHOUSE_BLUE
	loadvar wBattleHouseOpponent, 3
	setflag ENGINE_BATTLE_HOUSE
	jump .done
.Cilan
	appear OPELUCIDBATTLEHOUSE_CILAN
	setflag ENGINE_BATTLE_HOUSE
	jump .done
.Skyla
	variablesprite SPRITE_BATTLE_HOUSE_BLUE, SPRITE_SKYLA
	special LoadUsedSpritesGFX
	appear OPELUCIDBATTLEHOUSE_BLUE
	loadvar wBattleHouseOpponent, 4
	setflag ENGINE_BATTLE_HOUSE
.done
	return
	
BattleHouseMarlonScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseMarlonIntroText
	waitbutton
	closetext
	winlosstext BattleHouseMarlonWinLossText, 0
	loadtrainer MARLON, MARLON2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseMarlonAfterText
	waitbutton
	closetext
	end
	
BattleHouseShauntalScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseShauntalIntroText
	waitbutton
	closetext
	winlosstext BattleHouseShauntalWinLossText, 0
	loadtrainer SHAUNTAL, SHAUNTAL2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseShauntalAfterText
	waitbutton
	closetext
	end
	
BattleHouseBurghScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseBurghIntroText
	waitbutton
	closetext
	winlosstext BattleHouseBurghWinLossText, 0
	loadtrainer BURGH, BURGH2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseBurghAfterText
	waitbutton
	closetext
	end
	
BattleHouseRoxieScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseRoxieIntroText
	waitbutton
	closetext
	winlosstext BattleHouseRoxieWinLossText, 0
	loadtrainer ROXIE, ROXIE2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseRoxieAfterText
	waitbutton
	closetext
	end
	
BattleHouseCherenScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseCherenIntroText
	waitbutton
	closetext
	winlosstext BattleHouseCherenWinLossText, 0
	loadtrainer CHEREN, CHEREN2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseCherenAfterText
	waitbutton
	closetext
	end
	
BattleHouseCilanScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseCilanIntroText
	waitbutton
	closetext
	winlosstext BattleHouseCilanWinLossText, 0
	loadtrainer CILAN, CILAN2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseCilanAfterText
	waitbutton
	closetext
	end
	
BattleHouseSkylaScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseSkylaIntroText
	waitbutton
	closetext
	winlosstext BattleHouseSkylaWinLossText, 0
	loadtrainer SKYLA, SKYLA2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseSkylaAfterText
	waitbutton
	closetext
	end
	
BattleHouseBlueScript:
	copybytetovar wBattleHouseOpponent
	ifequal 1, BattleHouseShauntalScript
	ifequal 2, BattleHouseRoxieScript
	ifequal 3, BattleHouseCherenScript
	ifequal 4, BattleHouseSkylaScript
; fallthrough
BattleHouseDraydenScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLE_HOUSE_DONE
	iftrue .beaten
	writetext BattleHouseDraydenIntroText
	waitbutton
	closetext
	winlosstext BattleHouseDraydenWinLossText, 0
	loadtrainer DRAYDEN, DRAYDEN2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BATTLE_HOUSE_DONE
	opentext
.beaten
	writetext BattleHouseDraydenAfterText
	waitbutton
	closetext
	end
	
BattleHouseGymGuyScript:
	checkevent EVENT_BEAT_DRAYDEN
	iffalse .not_open
	jumptextfaceplayer BattleHouseGymGuyText
	
.not_open
	jumptextfaceplayer BattleHouseGymGuyNotOpenText
	
BattleHouseStatue:
	jumptext BattleHouseStatueText
	
BattleHouseMarlonIntroText:
	text "Hey there,"
	line "<PLAY_G>!"
	
	para "You ready for a"
	line "battle? Show me"
	cont "what you've got!"
	done
	
BattleHouseMarlonWinLossText:
	text "Ah, ya got me!"
	done
	
BattleHouseMarlonAfterText:
	text "You've really"
	line "gotten strong"
	
	para "since ya first"
	line "started training"
	cont "#MON!"
	
	para "Your vibes are"
	line "immaculate!"
	done
	
BattleHouseShauntalIntroText:
	text "Hm? Oh, I'm just"
	line "taking a little"
	
	para "break from my"
	line "novel to practice"
	
	para "my #MON"
	line "training."
	
	para "Would you like to"
	line "be my challenger?"
	done
	
BattleHouseShauntalWinLossText:
	text "Wow, I'm"
	line "dumbstruck!"
	done
	
BattleHouseShauntalAfterText:
	text "I'm just going to"
	line "stay and practice"
	cont "a little longer."
	
	para "I just need a"
	line "little more"
	
	para "inspiration before"
	line "getting back to my"
	cont "writing…"
	done
	
BattleHouseBurghIntroText:
	text "Why hello there,"
	line "young trainer!"
	
	para "How would you like"
	line "to experience the"
	
	para "incredible art-"
	line "istry of my #-"
	cont "MON and I?"
	done
	
BattleHouseBurghWinLossText:
	text "Oh, ho ho! You're"
	line "quite the feisty"
	cont "one!"
	done
	
BattleHouseBurghAfterText:
	text "Every now and"
	line "then, I get a"
	
	para "case of artists"
	line "block, but every"
	
	para "time I battle with"
	line "#MON, I feel"
	
	para "the urge to draw,"
	line "and I just can't"
	cont "stop!"
	done
	
BattleHouseRoxieIntroText:
	text "HEY!"
	
	para "Let's fight!"
	line "Ready, go!"
	done
	
BattleHouseRoxieWinLossText:
	text "Wait! I wasn't"
	line "finished yet!"
	done
	
BattleHouseRoxieAfterText:
	text "Battling tough"
	line "opponents gives me"
	
	para "just the kind of"
	line "motivation I need"
	cont "to rock out!"
	done
	
BattleHouseCherenIntroText:
	text "Ah, <PLAY_G>."
	line "Welcome to the"
	cont "BATTLE HOUSE."
	
	para "I come here every"
	line "now and then to"
	
	para "hone my skills as"
	line "a GYM LEADER."
	
	para "How'd you like to"
	line "be my opponent"
	cont "today?"
	done
	
BattleHouseCherenWinLossText:
	text "I see, so that was"
	line "your strategy."
	done
	
BattleHouseCherenAfterText:
	text "If you want to be"
	line "a great #MON"
	
	para "trainer, you've"
	line "got to keep imp-"
	cont "roving yourself."
	
	para "Keep focusing on"
	line "your goals, and go"
	
	para "as far as your"
	line "dreams can take"
	cont "you!"
	done
	
BattleHouseCilanIntroText:
	text "I've been working"
	line "on a recipe for a"
	
	para "new type of #-"
	line "MON strategy."
	
	para "Here, I'll give"
	line "you a taste!"
	done
	
BattleHouseCilanWinLossText:
	text "A truly savory"
	line "outcome!"
	done
	
BattleHouseCilanAfterText:
	text "Cooking is just"
	line "like #MON"
	
	para "battles. There's"
	line "no one right way"
	cont "to go about it!"
	
	para "You've just got to"
	line "keep trying diff-"
	cont "erent things until"
	
	para "you find something"
	line "that works for"
	cont "you!"
	done
	
BattleHouseSkylaIntroText:
	text "Hi there! I came"
	line "here for a battle"
	
	para "that can really"
	line "test my limits as"
	cont "a #MON trainer!"
	
	para "You've got me"
	line "excited! Let's go!"
	done
	
BattleHouseSkylaWinLossText:
	text "Whew… That was"
	line "really something!"
	done
	
BattleHouseSkylaAfterText:
	text "When I think of a"
	line "good battle, I"
	
	para "want to start"
	line "training again."
	
	para "Maybe I should"
	line "take my #MON"
	
	para "out on my plane"
	line "for a training"
	cont "trip soon!"
	done
	
BattleHouseDraydenIntroText:
	text "Greetings, young"
	line "<PLAY_G>."
	
	para "If you've come to"
	line "the BATTLE HOUSE,"
	
	para "you must be"
	line "serious about your"
	cont "#MON training."
	
	para "Allow me to put"
	line "that training to"
	cont "the test."
	done
	
BattleHouseDraydenWinLossText:
	text "Your #MON are"
	line "filled with the"
	cont "heat of battle!"
	done
	
BattleHouseDraydenAfterText:
	text "People and #MON"
	line "don't age because"
	
	para "of the passage of"
	line "time, but because"
	
	para "the energy flowing"
	line "through their"
	cont "hearts dries up."
	
	para "Heh… If I keep up"
	line "my training like"
	
	para "this, I may just"
	line "go on living"
	cont "forever!"
	done
	
BattleHouseGymGuyText:
	text "Hi, welcome to the"
	line "BATTLE HOUSE!"
	
	para "GYM LEADERS from"
	line "all over UNOVA"
	
	para "come here to spar"
	line "with each other!"
	
	para "A different LEADER"
	line "comes by each day,"
	
	para "so you never know"
	line "who you'll be up"
	cont "against!"
	
	para "How exciting!"
	done
	
BattleHouseGymGuyNotOpenText:
	text "Hi, welcome to the"
	line "BATTLE HOUSE!"
	
	para "GYM LEADERS from"
	line "all over UNOVA"
	
	para "come here to spar"
	line "with each other!"
	
	para "…unfortunately,"
	line "we're not open"
	cont "quite yet."
	
	para "You should come"
	line "back and check us"
	cont "out later!"
	done
	
BattleHouseStatueText:
	text "OPELUCID CITY"
	line "BATTLE HOUSE"
	
	para "Where the best"
	line "come to battle!"
	done

OpelucidBattleHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, OPELUCID_CITY, 5
	warp_event  5,  7, OPELUCID_CITY, 5
	
	db 0 ; coord events

	db 2 ; bg events
	bg_event  2,  5, BGEVENT_READ, BattleHouseStatue
	bg_event  7,  5, BGEVENT_READ, BattleHouseStatue
	
	db 5 ; object events
	object_event  3,  5, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleHouseGymGuyScript, -1
	object_event  5,  2, SPRITE_MARLON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_SCRIPT, 0, BattleHouseMarlonScript, EVENT_BATTLE_HOUSE_MARLON
	object_event  5,  2, SPRITE_BURGH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BattleHouseBurghScript, EVENT_BATTLE_HOUSE_BURGH
	object_event  5,  2, SPRITE_CILAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BattleHouseCilanScript, EVENT_BATTLE_HOUSE_CILAN
	object_event  5,  2, SPRITE_BATTLE_HOUSE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleHouseBlueScript, EVENT_BATTLE_HOUSE_BLUE
	