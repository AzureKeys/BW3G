	const_def 2 ; object constants
	const NUVEMAMOMHOUSE_MOM
	const NUVEMAMOMHOUSE_HILBERT
	const NUVEMAMOMHOUSE_HILDA

NuvemaMomHouse_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .HilbertHilda
	
.HilbertHilda:
	checkevent EVENT_HILBERT_HILDA_READY_FOR_BATTLE
	iffalse .Disappear
	checkevent EVENT_BEAT_HILBERT_HILDA
	iffalse .AppearHilbertHilda
	checkcode VAR_WEEKDAY
	ifnotequal SATURDAY, .Disappear
	checkflag ENGINE_HILBERT_HILDA
	iftrue .Disappear
	
.AppearHilbertHilda
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Hilda
	disappear NUVEMAMOMHOUSE_HILDA
	appear NUVEMAMOMHOUSE_HILBERT
	jump .Done
.Hilda
	disappear NUVEMAMOMHOUSE_HILBERT
	appear NUVEMAMOMHOUSE_HILDA
	jump .Done
	
.Disappear
	disappear NUVEMAMOMHOUSE_HILBERT
	disappear NUVEMAMOMHOUSE_HILDA
.Done
	return

NuvemaMomScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_HIDDEN_POWER
	iftrue .GotTM
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female
	writetext NuvemaMomIntroTextM
	jump .GiveTM
.female
	writetext NuvemaMomIntroTextF
.GiveTM
	buttonsound
	verbosegiveitem TM_HIDDEN_POWER
	setevent EVENT_GOT_TM_HIDDEN_POWER
.GotTM:
	writetext NuvemaMomGaveTMText
	waitbutton
	closetext
	end
	
NuvemaHilbertHildaScript:
	faceplayer
	opentext
	writetext NuvemaHilbertHildaText
	waitbutton
	closetext
	winlosstext HilbertHildaWinText, 0
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Hilda
; Hilbert
	checkevent EVENT_GOT_SNIVY
	iftrue .HilbertSnivy
	checkevent EVENT_GOT_TEPIG
	iftrue .HilbertTepig
; HilbertOshawott
	loadtrainer HILBERT, HILBERT_OSHAWOTT
	jump .BattleStart
.HilbertSnivy
	loadtrainer HILBERT, HILBERT_SNIVY
	jump .BattleStart
.HilbertTepig
	loadtrainer HILBERT, HILBERT_TEPIG
	jump .BattleStart
	
.Hilda
	checkevent EVENT_GOT_SNIVY
	iftrue .HildaSnivy
	checkevent EVENT_GOT_TEPIG
	iftrue .HildaTepig
; HildaOshawott
	loadtrainer HILDA, HILDA_OSHAWOTT
	jump .BattleStart
.HildaSnivy
	loadtrainer HILDA, HILDA_SNIVY
	jump .BattleStart
.HildaTepig
	loadtrainer HILDA, HILDA_TEPIG
; fallthrough
.BattleStart
	startbattle
	reloadmapafterbattle
	opentext
	writetext NuvemaHilbertHildaText
	waitbutton
	closetext
	special FadeOutMusic
	special FadeBlackQuickly
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NUVEMAMOMHOUSE_HILBERT
	disappear NUVEMAMOMHOUSE_HILDA
	pause 15
	special FadeInQuickly
	setflag ENGINE_HILBERT_HILDA
	checkevent EVENT_BEAT_HILBERT_HILDA
	iffalse .Credits
	playmapmusic
	end
	
.Credits
	pause 30
	special HealParty
	refreshscreen
	setevent EVENT_BEAT_HILBERT_HILDA
	credits
	end
	
NuvemaMomHouseConsole:
	jumptext NuvemaMomHouseConsoleText

NuvemaMomHouseBookshelf:
	jumpstd magazinebookshelf

NuvemaMomIntroTextM:
	text "You're a #MON"
	line "trainer, right?"

	para "My son is a #-"
	line "MON trainer too."
	
	para "He always treated"
	line "his #MON with"
	cont "care."
	
	para "Each #MON has"
	line "its own special"
	cont "power."
	
	para "Here, take this"
	line "TM."
	done

NuvemaMomIntroTextF:
	text "You're a #MON"
	line "trainer, right?"

	para "My daughter is a"
	line "#MON trainer"
	cont "too."
	
	para "She always treated"
	line "her #MON with"
	cont "care."
	
	para "Each #MON has"
	line "its own special"
	cont "power."
	
	para "Here, take this"
	line "TM."
	done

NuvemaMomGaveTMText:
	text "HIDDEN POWER is a"
	line "special move with"

	para "a different type"
	line "based on the #-"
	cont "MON using it."
	
	para "Try it with all"
	line "kinds of different"
	cont "#MON!"
	done
	
NuvemaHilbertHildaText:
	text "..."
	done
	
HilbertHildaWinText:
	text "...!"
	done
	
NuvemaMomHouseConsoleText:
	text "It's a classic"
	line "game console, a"
	cont "Nintendo 64!"
	
	para "Whoever lived here"
	line "must have been"
	
	para "excited when they"
	line "got this as a kid!"
	done

NuvemaMomHouse_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  7, NUVEMA_TOWN, 1
	warp_event  5,  7, NUVEMA_TOWN, 1
	warp_event  9,  0, NUVEMA_MOM_HOUSE, 4
	warp_event  7, 12, NUVEMA_MOM_HOUSE, 3

	db 0 ; coord events

	db 3 ; bg events
	bg_event  2,  1, BGEVENT_READ, NuvemaMomHouseBookshelf
	bg_event  3,  1, BGEVENT_READ, NuvemaMomHouseBookshelf
	bg_event  4, 17, BGEVENT_READ, NuvemaMomHouseConsole

	db 3 ; object events
	object_event  4,  4, SPRITE_REDS_MOM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NuvemaMomScript, -1
	object_event  3, 14, SPRITE_HILBERT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NuvemaHilbertHildaScript, EVENT_NUVEMA_TOWN_HILBERT
	object_event  3, 14, SPRITE_HILDA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NuvemaHilbertHildaScript, EVENT_NUVEMA_TOWN_HILDA
	