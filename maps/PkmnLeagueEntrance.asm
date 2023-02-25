	const_def 2 ; object constants
	const PKMNLEAGUEENTRANCE_INFER

PkmnLeagueEntrance_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .PrepareEliteFour

.DummyScene0:
	end

.DummyScene1:
	end
	
.PrepareEliteFour:
	setmapscene PKMN_LEAGUE_MAIN, SCENE_ELITE_FOUR_ROOM_ENTER
	setmapscene HALL_OF_FAME, SCENE_DEFAULT
	clearevent EVENT_BEAT_CHAMPION
	checkmapscene CHAMPIONS_ROOM_ENTRANCE
	ifequal SCENE_DEFAULT, .ClearEliteFour
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iffalse .done
.ClearEliteFour
	clearevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	clearevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	clearevent EVENT_BEAT_ELITE_FOUR_ELESA
	clearevent EVENT_BEAT_ELITE_FOUR_COLRESS
.done
	return
	
PkmnLeagueInferScript1:
	special FadeOutMusic
	pause 15
	opentext
	writetext PkmnLeagueEntranceInferHeyText
	waitbutton
	closetext
	appear PKMNLEAGUEENTRANCE_INFER
	playsound SFX_ENTER_DOOR
	waitsfx
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, DOWN
	applymovement PKMNLEAGUEENTRANCE_INFER, PkmnLeagueInferApproachMovement1
	jump PkmnLeagueInferScript
	
PkmnLeagueInferScript2:
	special FadeOutMusic
	pause 15
	opentext
	writetext PkmnLeagueEntranceInferHeyText
	waitbutton
	closetext
	appear PKMNLEAGUEENTRANCE_INFER
	playsound SFX_ENTER_DOOR
	waitsfx
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, DOWN
	applymovement PKMNLEAGUEENTRANCE_INFER, PkmnLeagueInferApproachMovement2
; fallthrough

PkmnLeagueInferScript:
	opentext
	writetext PkmnLeagueEntranceInferIntroText
	waitbutton
	closetext
	setevent EVENT_PKMN_LEAGUE_ENTRANCE_INFER
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftrue .Snivy
; Tepig
	winlosstext PkmnLeagueEntranceInferWinText, 0
	setlasttalked PKMNLEAGUEENTRANCE_INFER
	loadtrainer INFER2, INFER7_OSHAWOTT
	startbattle
	reloadmapafterbattle
	jump .AfterBattle
	
.Oshawott:
	winlosstext PkmnLeagueEntranceInferWinText, 0
	setlasttalked PKMNLEAGUEENTRANCE_INFER
	loadtrainer INFER2, INFER7_SNIVY
	startbattle
	reloadmapafterbattle
	jump .AfterBattle
	
.Snivy:
	winlosstext PkmnLeagueEntranceInferWinText, 0
	setlasttalked PKMNLEAGUEENTRANCE_INFER
	loadtrainer INFER2, INFER7_TEPIG
	startbattle
	reloadmapafterbattle
	; fallthrough
	
.AfterBattle:
	playmapmusic
	opentext
	writetext PkmnLeagueEntranceInferAfterText
	buttonsound
	verbosegiveitem TM_EARTHQUAKE
	writetext PkmnLeagueEntranceInferLeaveText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement PKMNLEAGUEENTRANCE_INFER, PkmnLeagueInferLeaveMovement
	disappear PKMNLEAGUEENTRANCE_INFER
	setflag ENGINE_FLYPOINT_PKMN_LEAGUE
	setscene SCENE_FINISHED
	end
	
PkmnLeagueInferApproachMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
PkmnLeagueInferApproachMovement2:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
PkmnLeagueInferLeaveMovement:
	teleport_from
	step_end
	
PkmnLeagueEntranceInferHeyText:
	text "Hey!"
	done
	
PkmnLeagueEntranceInferIntroText:
	text "I figured I'd find"
	line "you here. I've"
	
	para "done a lot of"
	line "thinking since the"
	cont "last time we met."
	
	para "All that stuff"
	line "that happened back"
	cont "at the tower…"
	
	para "I'm… I'm sorry"
	line "about all that."
	
	para "I just wanted to"
	line "be a great #MON"
	cont "trainer so bad,"
	
	para "and it made me so"
	line "mad that I just"
	cont "couldn't beat you."
	
	para "But it wasn't just"
	line "you, I was mad at"
	cont "a lot of things…"
	
	para "My grandpa…"
	line "TEAM PLASMA…"
	
	para "All that anger"
	line "made me lose sight"
	
	para "of why I wanted to"
	line "be a #MON"
	cont "trainer in the"
	cont "first place…"
	
	para "Because I love"
	line "#MON! With all"
	cont "my heart!"
	
	para "I'm going to be a"
	line "better trainer"
	
	para "from here on out,"
	line "for my #MON's"
	cont "sake."
	
	para "So I'm not mad at"
	line "you anymore,"
	cont "<PLAY_G>."
	
	para "And I want to"
	line "challenge you one"
	cont "last time!"
	
	para "So come on! Give"
	line "it everything"
	cont "you've got!"
	done
	
PkmnLeagueEntranceInferWinText:
	text "So that's how it"
	line "ends, huh…"
	done
	
PkmnLeagueEntranceInferAfterText:
	text "I had a feeling it"
	line "would end this"
	cont "way…"
	
	para "Looks like I've"
	line "still got a lot to"
	cont "learn."
	
	para "Before I go, I"
	line "want you to have"
	
	para "this. Think of it"
	line "as an apology for"
	
	para "all the hassle I"
	line "put you through."
	done
	
PkmnLeagueEntranceInferLeaveText:
	text "That TM teaches"
	line "EARTHQUAKE. It's"
	
	para "one of the most"
	line "powerful moves out"
	
	para "there. You'll need"
	line "it if you want to"
	
	para "take on the ELITE"
	line "FOUR. Good luck in"
	
	para "there! And you'd"
	line "better not lose!"
	
	para "If you can take"
	line "out the #MON"
	
	para "LEAGUE, I won't"
	line "feel as bad for"
	cont "losing to you!"
	
	para "See you, <PLAY_G>!"
	done

PkmnLeagueEntrance_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 18, 17, VICTORY_ROAD_CAVE_3F, 4
	warp_event 13,  5, PKMN_LEAGUE_MAIN, 1
	warp_event 14,  5, PKMN_LEAGUE_MAIN, 2
	warp_event  7,  9, PKMN_LEAGUE_POKECENTER_1F, 1

	db 2 ; coord events
	coord_event 13, 15, SCENE_DEFAULT, PkmnLeagueInferScript1
	coord_event 14, 15, SCENE_DEFAULT, PkmnLeagueInferScript2

	db 0 ; bg events

	db 1 ; object events
	object_event 18, 17, SPRITE_INFER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, 0, EVENT_PKMN_LEAGUE_ENTRANCE_INFER
	