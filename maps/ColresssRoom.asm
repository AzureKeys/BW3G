	const_def 2 ; object constants
	const COLRESSSROOM_COLRESS

ColresssRoom_MapScripts:
	db 3 ; scene scripts
	scene_script .Enter ; SCENE_ELITE_FOUR_ROOM_ENTER
	scene_script .DummyScene1 ; SCENE_ELITE_FOUR_ROOM_NOTHING
	scene_script .DummyScene2 ; SCENE_ELITE_FOUR_ROOM_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	
.Enter:
	priorityjump .ColresssRoomEnter
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
.SetTiles:
	checkscene
	ifequal SCENE_ELITE_FOUR_ROOM_ENTER, .Done
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalse .SetGate
	changeblock  8,  4, $9b
.SetGate
	changeblock  6,  8, $a2
.Done
	return
	
.ColresssRoomEnter:
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalse .MovePlayer
	changeblock  8,  4, $9b
.MovePlayer
	applymovement PLAYER, ColresssRoomEnterMovement
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $a2
	refreshscreen
	setscene SCENE_ELITE_FOUR_ROOM_NOTHING
	waitsfx
	end
	
EliteFourColressScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iftrue .beaten
	writetext EliteFourColressIntroText
	waitbutton
	closetext
	winlosstext EliteFourColressWinText, 0
	setlasttalked COLRESSSROOM_COLRESS
	loadtrainer COLRESS, COLRESS1
	startbattle
	reloadmapafterbattle
	opentext
.beaten
	writetext EliteFourColressAfterText
	waitbutton
	changeblock  8,  4, $9b
	reloadmappart
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_COLRESS
	setscene SCENE_ELITE_FOUR_ROOM_FINISHED
	end
	
ColresssRoomEnterMovement:
    set_sliding
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	remove_sliding
	step UP
	step_end
	
EliteFourColressIntroText:
	text "..."
	done
	
EliteFourColressWinText:
	text "..."
	done
	
EliteFourColressAfterText:
	text "..."
	done

ColresssRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 7
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  4, SPRITE_COLRESS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EliteFourColressScript, -1
