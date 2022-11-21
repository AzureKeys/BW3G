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
	; setmapscene COLRESSS_ROOM, SCENE_ELITE_FOUR_ROOM_ENTER
	
	checkscene 
	ifequal SCENE_ELITE_FOUR_ROOM_ENTER, .Done
	changeblock 12, 14, $b9
	changeblock 14, 14, $ba
	checkscene 
	ifnotequal SCENE_ELITE_FOUR_ROOM_FINISHED, .CheckMarshal
	changeblock 12, 12, $ee
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
	iffalse .Done
	changeblock 10, 12, $c8
.Done
	return
	
.PkmnLeagueEnter:
	applymovement PLAYER, PkmnLeagueMainEnterMovement
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 12, 14, $b9
	changeblock 14, 14, $ba
	refreshscreen
	setscene SCENE_ELITE_FOUR_ROOM_NOTHING
	waitsfx
	end
	
PkmnLeagueMainEnterMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

PkmnLeagueMain_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 13, 19, PKMN_LEAGUE_ENTRANCE, 2
	warp_event 14, 19, PKMN_LEAGUE_ENTRANCE, 3
	warp_event 13, 13, PKMN_LEAGUE_MAIN, 3
	warp_event 10,  5, GRIMSLEYS_ROOM, 1
	warp_event 21,  9, MARSHALS_ROOM, 1
	warp_event 17,  5, ELESAS_ROOM, 1
	;warp_event  6,  9, COLRESSS_ROOM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
	