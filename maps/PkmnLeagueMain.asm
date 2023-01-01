	const_def 2 ; object constants

PkmnLeagueMain_MapScripts:
	db 3 ; scene scripts
	scene_script .Enter ; SCENE_ELITE_FOUR_ROOM_ENTER
	scene_script .DummyScene1 ; SCENE_ELITE_FOUR_ROOM_NOTHING
	scene_script .DummyScene2 ; SCENE_ELITE_FOUR_ROOM_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	
.Enter:
	priorityjump .PkmnLeagueEnter
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
.SetTiles:
; Set E4 Rooms to Enter Scene, so entry animation will play if Player re-enters a room
	setmapscene MARSHALS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	setmapscene GRIMSLEYS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	setmapscene ELESAS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	setmapscene COLRESSS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	
	checkscene 
	ifequal SCENE_ELITE_FOUR_ROOM_ENTER, .CheckMarshal
	changeblock 12, 14, $b9
	changeblock 14, 14, $ba
.CheckMarshal
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalse .CheckElesa
	changeblock 16, 12, $c9
.CheckElesa
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalse .CheckGrimsley
	changeblock 16,  8, $c9
.CheckGrimsley
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalse .CheckColress
	changeblock 10,  8, $c8
.CheckColress
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalse .CheckFinished
	changeblock 10, 12, $c8
.CheckFinished
	checkscene 
	ifequal SCENE_ELITE_FOUR_ROOM_FINISHED, .Finished
	checkmapscene CHAMPIONS_ROOM_ENTRANCE
	ifequal SCENE_DEFAULT, .Done
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .Done
.Finished
	changeblock 12, 12, $ee
.Done
	return
	
.PkmnLeagueEnter:
	applymovement PLAYER, PkmnLeagueMainEnterMovement
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 12, 14, $b9
	changeblock 14, 14, $ba
	refreshscreen
	waitsfx
	checkmapscene CHAMPIONS_ROOM_ENTRANCE
	ifequal SCENE_DEFAULT, .nothing
	checkevent EVENT_BEAT_POKEMON_LEAGUE
	iftrue .nothing
	setscene SCENE_ELITE_FOUR_ROOM_FINISHED
	end
	
.nothing
	setscene SCENE_ELITE_FOUR_ROOM_NOTHING
	end
	
PkmnLeagueStatueScript:
	checkscene
	ifequal SCENE_ELITE_FOUR_ROOM_FINISHED, .warp
	opentext
	writetext PkmnLeagueMainStatueText
	waitbutton
	closetext
	end
	
.warp
	special FadeOutMusic
	pause 15
	special FadeBlackQuickly
	playsound SFX_ELEVATOR
	pause 60
	warp CHAMPIONS_ROOM_ENTRANCE,  7, 16
	end
	
PkmnLeagueMainEnterMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
PkmnLeagueMainStatueText:
	text "Four great"
	line "warriors form this"
	cont "#MON LEAGUE."
	
	para "To the southwest"
	line "is one who has"
	
	para "great knowledge of"
	line "the steel type."
	
	para "To the southeast"
	line "is one who"
	
	para "channels the power"
	line "of the fighting"
	cont "type."
	
	para "To the northwest"
	line "is one who has"
	
	para "mastered the dark"
	line "type."
	
	para "To the northeast"
	line "is one who shines"
	
	para "with the electric"
	line "type."
	
	para "If you can defeat"
	line "these warriors"
	
	para "with your courage"
	line "and wisdom, you"
	
	para "shall be led to"
	line "the summit, where"
	
	para "the strongest"
	line "CHAMPION awaits."
	done

PkmnLeagueMain_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 13, 19, PKMN_LEAGUE_ENTRANCE, 2
	warp_event 14, 19, PKMN_LEAGUE_ENTRANCE, 3
	warp_event 13, 13, PKMN_LEAGUE_MAIN, 3
	warp_event 10,  5, GRIMSLEYS_ROOM, 1
	warp_event 21,  9, MARSHALS_ROOM, 1
	warp_event 17,  5, ELESAS_ROOM, 1
	warp_event  6,  9, COLRESSS_ROOM, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 13, 11, BGEVENT_UP, PkmnLeagueStatueScript
	bg_event 14, 11, BGEVENT_UP, PkmnLeagueStatueScript

	db 0 ; object events
	