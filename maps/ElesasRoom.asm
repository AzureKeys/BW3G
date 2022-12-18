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
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalse .done
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalse .done
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalse .done
	setmapscene PKMN_LEAGUE_MAIN, SCENE_ELITE_FOUR_ROOM_FINISHED
.done
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
	text "Welcome to the"
	line "main stage! I am"
	
	para "ELESA! World-"
	line "renowed model and"
	cont "#MON master!"
	
	para "From this grand"
	line "stage in the sky,"
	
	para "every performance"
	line "of battle from my"
	
	para "#MON are broad-"
	line "cast across the"
	cont "world!"
	
	para "Now, my beloved"
	line "#MON and your"
	
	para "#MON shall"
	line "compete! We're"
	
	para "going to see whose"
	line "star shines"
	cont "brightest!"
	done
	
EliteFourElesaWinText:
	text "You've shocked me"
	line "through and"

	para "through! You've"
	line "melted my heart!"
	
	para "You're an even"
	line "more wonderful"
	
	para "trainer than I"
	line "expected. Your"
	
	para "sweet fighting"
	line "style swept me off"
	cont "my feet!"
	done
	
EliteFourElesaAfterText:
	text "A model always has"
	line "to make other"
	
	para "people's dreams a"
	line "reality without"
	
	para "losing sight of"
	line "herself. It's"
	
	para "similar for #-"
	line "MON trainers. They"
	
	para "have to give"
	line "everything they"
	
	para "have to make their"
	line "#MON feel like"
	
	para "they can win, no"
	line "matter the"
	cont "situation."
	
	para "Remember that as"
	line "you aim for even"
	cont "greater heights!"
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
