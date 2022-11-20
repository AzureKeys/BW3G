	const_def 2 ; object constants
	const GRIMSLEYSROOM_GRIMSLEY

GrimsleysRoom_MapScripts:
	db 3 ; scene scripts
	scene_script .Enter ; SCENE_ELITE_FOUR_ROOM_ENTER
	scene_script .DummyScene1 ; SCENE_ELITE_FOUR_ROOM_NOTHING
	scene_script .DummyScene2 ; SCENE_ELITE_FOUR_ROOM_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	
.Enter:
	priorityjump .GrimsleysRoomEnter
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
.SetTiles:
	checkscene
	ifequal SCENE_ELITE_FOUR_ROOM_ENTER, .Done
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalse .SetFire
	changeblock  8,  4, $1f
.SetFire
	changeblock  2,  4, $06
	changeblock  4, 10, $06
	changeblock  4, 12, $06
	changeblock 10,  4, $12
	changeblock  8, 10, $07
	changeblock  8, 12, $07
	changeblock  6,  8, $09
.Done
	return
	
.GrimsleysRoomEnter:
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalse .MovePlayer
	changeblock  8,  4, $1f
.MovePlayer
	applymovement PLAYER, GrimsleysRoomEnterMovement1
	playsound SFX_EMBER
	changeblock  2,  4, $06
	changeblock  4, 10, $06
	changeblock  4, 12, $06
	changeblock 10,  4, $12
	changeblock  8, 10, $07
	changeblock  8, 12, $07
	refreshscreen
	waitsfx
	applymovement PLAYER, GrimsleysRoomEnterMovement2
	playsound SFX_STRENGTH
	earthquake 80
	changeblock  6,  8, $09
	refreshscreen
	setscene SCENE_ELITE_FOUR_ROOM_NOTHING
	waitsfx
	end
	
EliteFourGrimsleyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iftrue .beaten
	writetext EliteFourGrimsleyIntroText
	waitbutton
	closetext
	winlosstext EliteFourGrimsleyWinText, 0
	setlasttalked GRIMSLEYSROOM_GRIMSLEY
	loadtrainer GRIMSLEY, GRIMSLEY1
	startbattle
	reloadmapafterbattle
	opentext
.beaten
	writetext EliteFourGrimsleyAfterText
	waitbutton
	changeblock  8,  4, $1f
	reloadmappart
	closetext
	setevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	setscene SCENE_ELITE_FOUR_ROOM_FINISHED
	end
	
GrimsleysRoomEnterMovement1:
	step UP
	step UP
	step UP
	step UP
	step_end
	
GrimsleysRoomEnterMovement2:
	step UP
	step UP
	step_end
	
EliteFourGrimsleyIntroText:
	text "..."
	done
	
EliteFourGrimsleyWinText:
	text "..."
	done
	
EliteFourGrimsleyAfterText:
	text "..."
	done

GrimsleysRoom_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7, 13, PKMN_LEAGUE_MAIN, 4
	warp_event  9,  5, PKMN_LEAGUE_MAIN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  4, SPRITE_GRIMSLEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EliteFourGrimsleyScript, -1
