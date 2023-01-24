	const_def 2 ; object constants
	const ALDERSHOUSE_ALDER

AldersHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
AldersHouseAlderScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ALDER
	iftrue .Rematch
	checkevent EVENT_SPOKE_TO_ALDER_POSTGAME
	iftrue .AlreadyMet
	writetext AldersHouseInitialText
	setevent EVENT_SPOKE_TO_ALDER_POSTGAME
	jump .StartBattle
	
.AlreadyMet
	writetext AldersHouseAlreadyMetText
	jump .StartBattle
	
.Rematch
	checkflag ENGINE_ALDER
	iftrue .AlreadyBeaten
	writetext AldersHouseAlreadyMetText
	
.StartBattle
	waitbutton
	closetext
	winlosstext AlderWinLossText, 0
	loadtrainer ALDER, ALDER1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ALDER
	setflag ENGINE_ALDER
	opentext
.AlreadyBeaten
	writetext AldersHouseAfterBattleText
	waitbutton
	closetext
	end
	
AldersHouseInitialText:
	text "Hm? I haven't seen"
	line "you around here"
	cont "before."
	
	para "The name's ALDER."
	line "I was the Champion"
	
	para "of the #MON"
	line "LEAGUE once,"
	
	para "though that was a"
	line "while ago now."
	
	para "I mostly keep to"
	line "my home here, and"
	
	para "teach the local"
	line "kids about #MON"
	cont "training."
	
	para "How's about a"
	line "battle? Maybe I"
	
	para "could even teach"
	line "you something!"
	done
	
AldersHouseAlreadyMetText:
	text "Hi, <PLAY_G>. Are"
	line "you keeping up"
	cont "your training?"
	
	para "How's about a"
	line "battle? Maybe I"
	
	para "could even teach"
	line "you something!"
	done

AldersHouseAfterBattleText:
	text "That was truly a"
	line "rousing battle! I"
	
	para "could tell that"
	line "all of the #MON"
	
	para "were enjoying"
	line "themselves as"
	
	para "well! You should"
	line "come by again"
	
	para "sometime, and"
	line "maybe I'll have"
	
	para "something new to"
	line "teach you!"
	done

AlderWinLossText:
	text "Well done! You"
	line "certainly are an"
	cont "unmatched talent!"
	done

AldersHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, FLOCCESY_TOWN, 4
	warp_event  5,  9, FLOCCESY_TOWN, 4

	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event  5,  2, SPRITE_ALDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AldersHouseAlderScript, -1
	