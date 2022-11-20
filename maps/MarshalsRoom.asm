	const_def 2 ; object constants
	const MARSHALSROOM_MARSHAL

MarshalsRoom_MapScripts:
	db 3 ; scene scripts
	scene_script .Enter ; SCENE_ELITE_FOUR_ROOM_ENTER
	scene_script .DummyScene1 ; SCENE_ELITE_FOUR_ROOM_NOTHING
	scene_script .DummyScene2 ; SCENE_ELITE_FOUR_ROOM_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	
.Enter:
	priorityjump .MarshalsRoomEnter
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
.SetTiles:
	checkscene
	ifequal SCENE_ELITE_FOUR_ROOM_ENTER, .Done
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalse .SetCage
	changeblock  8,  4, $37
.SetCage
	changeblock  4,  6, $7c
	changeblock  6,  6, $7d
	changeblock  8,  6, $7e
	changeblock 10,  6, $7f
	changeblock  6,  8, $2b
.Done
	return
	
.MarshalsRoomEnter:
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalse .MovePlayer
	changeblock  8,  4, $37
.MovePlayer
	applymovement PLAYER, MarshalsRoomEnterMovement
	playsound SFX_MEGA_PUNCH
	changeblock  4,  6, $7c
	changeblock  6,  6, $7d
	changeblock  8,  6, $7e
	changeblock 10,  6, $7f
	refreshscreen
	waitsfx
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $2b
	refreshscreen
	waitsfx
	pause 30
	setscene SCENE_ELITE_FOUR_ROOM_NOTHING
	waitsfx
	end
	
EliteFourMarshalScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iftrue .beaten
	writetext EliteFourMarshalIntroText
	waitbutton
	closetext
	winlosstext EliteFourMarshalWinText, 0
	setlasttalked MARSHALSROOM_MARSHAL
	loadtrainer MARSHAL, MARSHAL1
	startbattle
	reloadmapafterbattle
	opentext
.beaten
	writetext EliteFourMarshalAfterText
	waitbutton
	changeblock  8,  4, $37
	reloadmappart
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	setscene SCENE_ELITE_FOUR_ROOM_FINISHED
	end
	
MarshalsRoomEnterMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
EliteFourMarshalIntroText:
	text "..."
	done
	
EliteFourMarshalWinText:
	text "..."
	done
	
EliteFourMarshalAfterText:
	text "..."
	done

MarshalsRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 5
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  4, SPRITE_MARSHAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EliteFourMarshalScript, -1
