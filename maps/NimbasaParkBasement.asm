	const_def 2 ; object constants
	const NIMBASAPARKBASEMENT_INFER
	const NIMBASAPARKBASEMENT_GIALLO
	const NIMBASAPARKBASEMENT_CHEREN
	const NIMBASAPARKBASEMENT_SHADOW

NimbasaParkBasement_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_NIMBASA_PARK_BASEMENT_INFER
	scene_script .DummyScene1 ; SCENE_NIMBASA_PARK_BASEMENT_PLASMA
	scene_script .DummyScene2 ; SCENE_NIMBASA_PARK_BASEMENT_NOTHING

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
NimbasaParkInferScript1:
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	turnobject PLAYER, LEFT
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement NIMBASAPARKBASEMENT_INFER, NimbasaParkInferArriveMovement1
	jump NimbasaParkInferScript
	
NimbasaParkInferScript2:
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement NIMBASAPARKBASEMENT_INFER, NimbasaParkInferArriveMovement2
	
NimbasaParkInferScript:
	opentext
	writetext NimbasaParkInferIntroText
	waitbutton
	closetext
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_SNIVY
	iftrue .Snivy
	winlosstext NimbasaParkInferWinText, 0
	setlasttalked NIMBASAPARKBASEMENT_INFER
	loadtrainer INFER, INFER3_OSHAWOTT
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .After
	
.Oshawott:
	winlosstext NimbasaParkInferWinText, 0
	setlasttalked NIMBASAPARKBASEMENT_INFER
	loadtrainer INFER, INFER3_SNIVY
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .After
	
.Snivy:
	winlosstext NimbasaParkInferWinText, 0
	setlasttalked NIMBASAPARKBASEMENT_INFER
	loadtrainer INFER, INFER3_TEPIG
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	
.After:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext NimbasaParkInferAfterText
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PLAYER, NimbasaParkPushedMovement
	turnobject PLAYER, RIGHT
	applymovement NIMBASAPARKBASEMENT_INFER, NimbasaParkInferLeaveMovement
	disappear NIMBASAPARKBASEMENT_INFER
	playsound SFX_ENTER_DOOR
	waitsfx
	special FadeOutMusic
	pause 30
	playmapmusic
	setscene SCENE_NIMBASA_PARK_BASEMENT_PLASMA
	end
	
NimbasaParkPlasmaScript1:
	applymovement PLAYER, NimbasaParkApproachGialloMovement
	jump NimbasaParkPlasmaScript
	
NimbasaParkPlasmaScript2:
	applymovement PLAYER, NimbasaParkEnterBasementMovement2
	
NimbasaParkPlasmaScript:
	turnobject NIMBASAPARKBASEMENT_GIALLO, DOWN
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext NimbasaParkGialloIntroText
	waitbutton
	writetext NimbasaParkCherenBasementIntroText
	waitbutton
	closetext
	applymovement PLAYER, NimbasaParkApproachGialloMovement
	applymovement NIMBASAPARKBASEMENT_SHADOW, NimbasaParkShadowInterruptMovement
	opentext
	writetext NimbasaParkShadowProtectText
	waitbutton
	closetext
	applymovement NIMBASAPARKBASEMENT_CHEREN, NimbasaParkEnterBasementMovement1
	turnobject NIMBASAPARKBASEMENT_CHEREN, RIGHT
	turnobject NIMBASAPARKBASEMENT_SHADOW, LEFT
	opentext
	writetext NimbasaParkCherenFightShadowText
	waitbutton
	closetext
	applymovement PLAYER, NimbasaParkFightingGialloMovement
	turnobject NIMBASAPARKBASEMENT_GIALLO, RIGHT
	opentext
	writetext NimbasaParkGialloStartFightText
	waitbutton
	closetext
	winlosstext NimbasaParkGialloBeatenText, 0
	setlasttalked NIMBASAPARKBASEMENT_GIALLO
	loadtrainer GIALLO, GIALLO1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext NimbasaParkGialloAfterText
	waitbutton
	closetext
	turnobject NIMBASAPARKBASEMENT_SHADOW, UP
	turnobject NIMBASAPARKBASEMENT_GIALLO, DOWN
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear NIMBASAPARKBASEMENT_SHADOW
	disappear NIMBASAPARKBASEMENT_GIALLO
	pause 15
	special FadeInQuickly
	playmusic MUSIC_ROCKET_HIDEOUT
	pause 15
	applymovement NIMBASAPARKBASEMENT_CHEREN, NimbasaParkCherenAfterMovement
	opentext
	writetext NimbasaParkCherenAfterText
	waitbutton
	closetext
	setscene SCENE_NIMBASA_PARK_BASEMENT_NOTHING
	setevent EVENT_NIMBASA_PARK_GRUNTS
	setevent EVENT_NIMBASA_PARK_HIDDEN_GRUNT
	setmapscene NIMBASA_PARK_OUTSIDE, SCENE_NIMBASA_PARK_OUTSIDE_AFTER
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear NIMBASAPARKBASEMENT_CHEREN
	warp NIMBASA_PARK_OUTSIDE, 41, 8
	end
	
NimbasaParkPushedMovement:
	big_step UP
	turn_head DOWN
	step_end
	
NimbasaParkInferArriveMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
NimbasaParkInferArriveMovement2:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
NimbasaParkInferLeaveMovement:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end
	
NimbasaParkEnterBasementMovement1:
	step UP
	step UP
	step_end
	
NimbasaParkEnterBasementMovement2:
	step LEFT
	step UP
	step_end
	
NimbasaParkApproachGialloMovement:
	step UP
	step_end
	
NimbasaParkShadowInterruptMovement:
	big_step RIGHT
	turn_head DOWN
	step_end
	
NimbasaParkFightingGialloMovement:
	step RIGHT
	step UP
	step UP
	turn_head LEFT
	step_end
	
NimbasaParkCherenAfterMovement:
	step UP
	step RIGHT
	step_end
	
NimbasaParkInferIntroText:
	text "INFER: You! What"
	line "are you doing"
	cont "here?"
	
	para "TEAM PLASMA? I"
	line "thought I told you"
	
	para "not to mess around"
	line "with TEAM PLASMA."
	
	para "What am I doing"
	line "here? Tch… You've"
	
	para "got some nerve"
	line "asking me that."
	
	para "I'll beat you to"
	line "test how I've"
	cont "improved."
	
	para "Come on!"
	done

NimbasaParkInferWinText:
	text "Darn… still not"
	line "good enough."
	done
	
NimbasaParkInferAfterText:
	text "No… Even after my"
	line "training, I still"
	cont "can't beat you!"
	
	para "Whatever! You'd"
	line "better keep your"
	
	para "nose out of TEAM"
	line "PLASMA's business!"
	done
	
NimbasaParkGialloIntroText:
	text "You fools, you've"
	line "been interfering"
	
	para "with TEAM PLASMA's"
	line "plans, but you're"
	cont "too late."
	
	para "The THUNDER ELE-"
	line "MENT has already"
	
	para "been extracted"
	line "from the"
	cont "generator."
	done
	
NimbasaParkCherenBasementIntroText:
	text "CHEREN: Whatever"
	line "you're planning,"
	
	para "you won't succeed."
	line "We'll stop you!"
	done
	
NimbasaParkShadowProtectText:
	text "I will protect"
	line "you, SAGE GIALLO…"
	done
	
NimbasaParkCherenFightShadowText:
	text "CHEREN: <PLAY_G>,"
	line "I'll handle him,"
	cont "you take the SAGE."
	done
	
NimbasaParkGialloStartFightText:
	text "GIALLO: Foolish"
	line "child! You think"
	
	para "you are a match"
	line "for a SAGE of TEAM"
	cont "PLASMA?"
	
	para "Allow me to show"
	line "how outclassed"
	cont "you truly are!"
	done
	
NimbasaParkGialloBeatenText:
	text "No! This cannot"
	line "be!"
	done
	
NimbasaParkGialloAfterText:
	text "GIALLO: It matters"
	line "not, we have what"
	cont "we came for."
	
	para "Come, SHADOW, take"
	line "us out of here!"
	done
	
NimbasaParkCherenAfterText:
	text "CHEREN: Darn, they"
	line "got away…"
	
	para "C'mon, let's go."
	line "I'll take us"
	cont "back outside."
	done

NimbasaParkBasement_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 13,  2, NIMBASA_PARK_RUNWAY, 3
	warp_event  1,  0, NIMBASA_PARK_BASEMENT, 3
	warp_event  4, 17, NIMBASA_PARK_BASEMENT, 2
	warp_event  5, 17, NIMBASA_PARK_BASEMENT, 2

	db 4 ; coord events
	coord_event  6,  2, SCENE_NIMBASA_PARK_BASEMENT_INFER, NimbasaParkInferScript1
	coord_event  6,  3, SCENE_NIMBASA_PARK_BASEMENT_INFER, NimbasaParkInferScript2
	coord_event  4, 16, SCENE_NIMBASA_PARK_BASEMENT_PLASMA, NimbasaParkPlasmaScript1
	coord_event  5, 16, SCENE_NIMBASA_PARK_BASEMENT_PLASMA, NimbasaParkPlasmaScript2

	db 0 ; bg events

	db 4 ; object events
	object_event  1,  2, SPRITE_INFER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, -1, -1, EVENT_NIMBASA_PARK_INFER
	object_event  4, 12, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_NIMBASA_PARK_GIALLO
	object_event  3, 15, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_NIMBASA_PARK_BASEMENT_CHEREN
	object_event  3, 13, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, -1, -1, EVENT_NIMBASA_PARK_SHADOW
	