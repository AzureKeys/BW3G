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
	; setmapscene MARSHALS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	; setmapscene GRIMSLEYS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	; setmapscene ELESAS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	; setmapscene COLRESSS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	setmapscene PKMN_LEAGUE_MAIN, SCENE_ELITE_FOUR_ROOM_ENTER
	clearevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	clearevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	clearevent EVENT_BEAT_ELITE_FOUR_ELESA
	clearevent EVENT_BEAT_ELITE_FOUR_COLRESS
	clearevent EVENT_BEAT_CHAMPION
	return
	
PkmnLeagueInferScript1:
	special FadeOutMusic
	pause 15
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
	appear PKMNLEAGUEENTRANCE_INFER
	playsound SFX_ENTER_DOOR
	waitsfx
	turnobject PLAYER, DOWN
	applymovement PKMNLEAGUEENTRANCE_INFER, PkmnLeagueInferApproachMovement2
; fallthrough

PkmnLeagueInferScript:
	opentext
	writetext PkmnLeagueEntranceInferIntroText
	waitbutton
	closetext
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
	
PkmnLeagueEntranceInferIntroText:
	text "..."
	done
	
PkmnLeagueEntranceInferWinText:
	text "..."
	done
	
PkmnLeagueEntranceInferAfterText:
	text "..."
	done
	
PkmnLeagueEntranceInferLeaveText:
	text "..."
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
	