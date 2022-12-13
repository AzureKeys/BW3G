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
	copyvartobyte wBattleHouseOpponent
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
	text "..."
	done
	
BattleHouseMarlonWinLossText:
	text "..."
	done
	
BattleHouseMarlonAfterText:
	text "..."
	done
	
BattleHouseShauntalIntroText:
	text "..."
	done
	
BattleHouseShauntalWinLossText:
	text "..."
	done
	
BattleHouseShauntalAfterText:
	text "..."
	done
	
BattleHouseBurghIntroText:
	text "..."
	done
	
BattleHouseBurghWinLossText:
	text "..."
	done
	
BattleHouseBurghAfterText:
	text "..."
	done
	
BattleHouseRoxieIntroText:
	text "..."
	done
	
BattleHouseRoxieWinLossText:
	text "..."
	done
	
BattleHouseRoxieAfterText:
	text "..."
	done
	
BattleHouseCherenIntroText:
	text "..."
	done
	
BattleHouseCherenWinLossText:
	text "..."
	done
	
BattleHouseCherenAfterText:
	text "..."
	done
	
BattleHouseCilanIntroText:
	text "..."
	done
	
BattleHouseCilanWinLossText:
	text "..."
	done
	
BattleHouseCilanAfterText:
	text "..."
	done
	
BattleHouseSkylaIntroText:
	text "..."
	done
	
BattleHouseSkylaWinLossText:
	text "..."
	done
	
BattleHouseSkylaAfterText:
	text "..."
	done
	
BattleHouseDraydenIntroText:
	text "..."
	done
	
BattleHouseDraydenWinLossText:
	text "..."
	done
	
BattleHouseDraydenAfterText:
	text "..."
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
	