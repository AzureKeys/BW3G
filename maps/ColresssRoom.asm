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
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalse .done
	checkevent EVENT_BEAT_ELITE_FOUR_GRIMSLEY
	iffalse .done
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalse .done
	setmapscene PKMN_LEAGUE_MAIN, SCENE_ELITE_FOUR_ROOM_FINISHED
.done
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
	text "Greetings. I am"
	line "a scientist. My"
	cont "name is COLRESS."
	
	para "As a member of the"
	line "ELITE FOUR, I am"
	
	para "able to carry out"
	line "my research on the"
	
	para "most powerful"
	line "trainers across"
	cont "the region."
	
	para "The theme of my"
	line "research is bring-"
	cont "ing out the power"
	cont "of #MON."
	
	para "Is it possible to"
	line "bring out their"
	
	para "maximum power"
	line "through the bond"
	
	para "they share with"
	line "their trainers?"
	
	para "Or is there some"
	line "other different"
	
	para "method? I'd like"
	line "to test my theory"
	cont "by battling you."
	
	para "Do you find this"
	line "acceptable?"
	done
	
EliteFourColressWinText:
	text "Just as I"
	line "expected! Your"
	
	para "#MON must be"
	line "happy to be by"
	cont "your side!"
	
	para "You bring out the"
	line "best in their"
	cont "power!"
	done
	
EliteFourColressAfterText:
	text "In #MON battles"
	line "where you can't"
	
	para "afford to make a"
	line "mistake, the true"
	
	para "nature of the"
	line "trainer's person-"
	cont "ality becomes"
	cont "clear."
	
	para "If trainers"
	line "believe in their"
	
	para "#MON to the"
	line "fullest extent,"
	
	para "as you do, their"
	line "#MON partners"
	
	para "will also give"
	line "everything they"
	
	para "have. I'm closer"
	line "now to the answer"
	cont "I'm looking for."
	
	para "I am glad you won."
	line "Now, use that"
	
	para "power against the"
	line "rest of the ELITE"
	cont "FOUR!"
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
