	const_def 2 ; object constants
	const NSROOM_N

NsRoom_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .AppearN
	
.AppearN:
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalse .Disappear
	checkevent EVENT_OPENED_TWIST_MOUNTAIN
	iftrue .Disappear
	appear NSROOM_N
	jump .done
.Disappear
	disappear NSROOM_N
.done
	return
	
NsRoomScript:
	faceplayer
	opentext
	writetext NsRoomIntroText
	waitbutton
	closetext
	winlosstext NWinText, 0
	loadtrainer N, N1
	startbattle
	reloadmapafterbattle
	opentext
	writetext NsRoomAfterBattleText
	waitbutton
	closetext
	setevent EVENT_OPENED_TWIST_MOUNTAIN
	special FadeOutMusic
	special FadeBlackQuickly
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NSROOM_N
	pause 15
	special FadeInQuickly
	playmusic MUSIC_VICTORY_ROAD
	end
	
NsRoomIntroText:
	text "You…"
	
	para "You're the one who"
	line "stopped the PLASMA"
	
	para "SHADOWs' ill"
	line "conceived plan,"
	cont "aren't you?"
	
	para "Their plot was a"
	line "foolish one, but I"
	
	para "wouldn't neces-"
	line "sarily call them"
	cont "evil…"
	
	para "I can understand"
	line "the desire to get"
	
	para "back someone"
	line "precious to you,"
	
	para "even if you know"
	line "deep down that it"
	
	para "will never be the"
	line "same as it once"
	cont "was…"
	
	para "But they put an"
	line "innocent #MON"
	
	para "in danger, and"
	line "that, I cannot"
	cont "forgive."
	
	para "That creature…"
	
	para "Though it was"
	line "created artific-"
	cont "ially, it is still"
	cont "a #MON."
	
	para "It deserves to"
	line "live a happy life,"
	
	para "as all #MON and"
	line "people do."
	
	para "You… You've come"
	line "in search of the"
	cont "#MON, right?"
	
	para "Well, it's no"
	line "longer here."
	
	para "But before I tell"
	line "you where it went,"
	
	para "I need to see what"
	line "kind of a trainer"
	cont "you are."
	
	para "Come! Show me the"
	line "power of the #-"
	cont "MON who defeated"
	cont "TEAM PLASMA!"
	done
	
NWinText:
	text "I see… So that's"
	line "the kind of"
	cont "trainer you are…"
	done
	
NsRoomAfterBattleText:
	text "Your #MON…"
	
	para "I can hear them."
	
	para "You truly are a"
	line "kind and noble"
	cont "trainer."
	
	para "Very well, I will"
	line "tell you."
	
	para "The artificial"
	line "#MON left this"
	
	para "place, and took"
	line "off across the"
	cont "sky."
	
	para "It was headed"
	line "toward TWIST"
	cont "MOUNTAIN, right"
	
	para "outside of ICIRRUS"
	line "CITY."
	
	para "You should be able"
	line "to find it there…"
	
	para "I am glad I had"
	line "this meeting with"
	cont "you, trainer."
	
	para "Good luck on your"
	line "travels, and never"
	
	para "forget to treat"
	line "all #MON with"
	cont "kindness."
	
	para "Farewell…"
	done

NsRoom_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  0,  4, VICTORY_ROAD_CASTLE_OUTSIDE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_N, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NsRoomScript, EVENT_NS_ROOM_N
	