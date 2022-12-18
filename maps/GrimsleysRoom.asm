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
	pause 10
	playsound SFX_EMBER
	changeblock  4, 12, $06
	changeblock  8, 12, $07
	refreshscreen
	applymovement PLAYER, GrimsleysRoomEnterMovement1
	playsound SFX_EMBER
	changeblock  4, 10, $06
	changeblock  8, 10, $07
	refreshscreen
	applymovement PLAYER, GrimsleysRoomEnterMovement2
	playsound SFX_EMBER
	changeblock  2,  4, $06
	changeblock 10,  4, $12
	pause 30
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
	checkevent EVENT_BEAT_ELITE_FOUR_MARSHAL
	iffalse .done
	checkevent EVENT_BEAT_ELITE_FOUR_COLRESS
	iffalse .done
	checkevent EVENT_BEAT_ELITE_FOUR_ELESA
	iffalse .done
	setmapscene PKMN_LEAGUE_MAIN, SCENE_ELITE_FOUR_ROOM_FINISHED
.done
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
	step UP
	step_end
	
EliteFourGrimsleyIntroText:
	text "What will be"
	line "determined here is"
	cont "which of us can"
	
	para "absorb the oppo-"
	line "nent's light and"
	cont "shine…"
	
	para "But who will"
	line "decide that? It"
	
	para "shall be I,"
	line "GRIMSLEY of the"
	cont "ELITE FOUR, and I"
	
	para "will fulfill my"
	line "duty to be your"
	cont "opponent."
	done
	
EliteFourGrimsleyWinText:
	text "Whether or not you"
	line "get to fight at"
	
	para "full strength,"
	line "whether or not"
	
	para "luck smiles on"
	line "you- none of that"
	
	para "matters. Only"
	line "results matter."
	
	para "And a loss is a"
	line "loss. See, victory"
	
	para "shines like a"
	line "bright light. And"
	
	para "right now, you and"
	line "your #MON are"
	cont "shining!"
	done
	
EliteFourGrimsleyAfterText:
	text "Now, I'm nothing"
	line "more than the one"
	cont "who lost my light…"
	
	para "But this loss will"
	line "make me shine even"
	
	para "brighter the next"
	line "time…"
	
	para "If I think that"
	line "way, it's not too"
	
	para "bad. Sigh… You"
	line "should take that"
	
	para "strength and test"
	line "it against the"
	
	para "rest of the ELITE"
	line "FOUR."
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
