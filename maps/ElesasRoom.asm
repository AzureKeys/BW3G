	const_def 2 ; object constants
	const ELESASROOM_ELESA

ElesasRoom_MapScripts:
	db 3 ; scene scripts
	scene_script .Enter ; SCENE_ELITE_FOUR_ROOM_ENTER
	scene_script .DummyScene1 ; SCENE_ELITE_FOUR_ROOM_NOTHING
	scene_script .DummyScene2 ; SCENE_ELITE_FOUR_ROOM_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	
.Enter:
	priorityjump .ElesasRoomEnter
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
.SetTiles:
	checkscene
	ifequal SCENE_ELITE_FOUR_ROOM_ENTER, .Done
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalse .SetLights
	changeblock  8,  4, $8b
.SetLights
	changeblock  2,  2, $7b
	changeblock  2,  4, $7b
	changeblock  2,  6, $7b
	changeblock 10,  2, $87
	changeblock 10,  4, $83
	changeblock 10,  6, $8f
	changeblock  4, 10, $7b
	changeblock  8, 10, $90
	changeblock  4, 12, $7b
	changeblock  8, 12, $90
	changeblock  6,  8, $2b
.Done
	return
	
.ElesasRoomEnter:
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalse .MovePlayer
	changeblock  8,  4, $8b
.MovePlayer
	applymovement PLAYER, ElesasRoomEnterMovement1
	playsound SFX_MENU
	changeblock  4, 12, $7b
	changeblock  8, 12, $90
	refreshscreen
	applymovement PLAYER, ElesasRoomEnterMovement2
	playsound SFX_MENU
	changeblock  4, 10, $7b
	changeblock  8, 10, $90
	refreshscreen
	applymovement PLAYER, ElesasRoomEnterMovement3
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $2b
	refreshscreen
	waitsfx
	playsound SFX_MENU
	changeblock  2,  2, $7b
	changeblock  2,  4, $7b
	changeblock  2,  6, $7b
	changeblock 10,  2, $87
	changeblock 10,  4, $83
	changeblock 10,  6, $8f
	refreshscreen
	setscene SCENE_ELITE_FOUR_ROOM_NOTHING
	waitsfx
	end
	
EliteFourElesaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iftrue .beaten
	writetext EliteFourElesaIntroText
	waitbutton
	closetext
	winlosstext EliteFourElesaWinText, 0
	setlasttalked ELESASROOM_ELESA
	loadtrainer ELESA, ELESA1
	startbattle
	reloadmapafterbattle
	opentext
.beaten
	writetext EliteFourElesaAfterText
	waitbutton
	changeblock  8,  4, $8b
	reloadmappart
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_ELESA
	setscene SCENE_ELITE_FOUR_ROOM_FINISHED
	end
	
ElesasRoomEnterMovement1:
	step UP
	step_end
	
ElesasRoomEnterMovement2:
	step UP
	step UP
	step_end
	
ElesasRoomEnterMovement3:
	step UP
	step UP
	step UP
	step UP
	step_end
	
EliteFourElesaIntroText:
	text "..."
	done
	
EliteFourElesaWinText:
	text "..."
	done
	
EliteFourElesaAfterText:
	text "..."
	done

ElesasRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 6
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  4, SPRITE_ELESA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EliteFourElesaScript, -1
