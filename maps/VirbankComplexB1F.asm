	const_def 2 ; object constants
	const VIRBANKCOMPLEXB1F_SCIENTISTF
	const VIRBANKCOMPLEXB1F_ROCKY_HELMET
	const VIRBANKCOMPLEXB1F_HYPER_POTION
	const VIRBANKCOMPLEXB1F_CHEREN
	const VIRBANKCOMPLEXB1F_SHADOW_1
	const VIRBANKCOMPLEXB1F_SHADOW_2
	const VIRBANKCOMPLEXB1F_BRONIUS

VirbankComplexB1F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .CheckDoor

.DummyScene0:
	end

.DummyScene1:
	end
	
.CheckDoor:
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH1
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH2
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH3
	clearevent EVENT_VIRBANK_COMPLEX_B2F_SWITCH4
	checkevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
	iffalse .Done
	changeblock  2,  4, $07 ; floor
.Done
	return
	
VirbankComplexBroniusScript1:
	applymovement PLAYER, VirbankComplexB1FPlayerMovement1
	jump VirbankComplexBroniusScript

VirbankComplexBroniusScript2:
	applymovement PLAYER, VirbankComplexB1FPlayerMovement2
	; fallthrough
	
VirbankComplexBroniusScript:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext VirbankComplexB1FCherenIntroText
	buttonsound
	writetext VirbankComplexB1FBroniusIntroText
	waitbutton
	applymovement VIRBANKCOMPLEXB1F_BRONIUS, VirbankComplexB1FBroniusTurnMovement
	writetext VirbankComplexB1FBroniusCommandText
	waitbutton
	closetext
	applymovement VIRBANKCOMPLEXB1F_BRONIUS, VirbankComplexB1FBroniusMovement
	opentext
	writetext VirbankComplexB1FBroniusBattleText
	waitbutton
	closetext
	winlosstext VirbankComplexB1FBroniusBeatenText, 0
	setlasttalked VIRBANKCOMPLEXB1F_BRONIUS
	loadtrainer BRONIUS, BRONIUS1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext VirbankComplexB1FShadowText
	waitbutton
	applymovement VIRBANKCOMPLEXB1F_BRONIUS, VirbankComplexB1FBroniusTurnMovement
	writetext VirbankComplexB1FBroniusEscapeText
	waitbutton
	closetext
	applymovement VIRBANKCOMPLEXB1F_SHADOW_2, VirbankComplexB1FShadowMovement
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear VIRBANKCOMPLEXB1F_BRONIUS
	disappear VIRBANKCOMPLEXB1F_SHADOW_1
	disappear VIRBANKCOMPLEXB1F_SHADOW_2
	disappear VIRBANKCOMPLEXB1F_SCIENTISTF
	pause 15
	special FadeInQuickly
	playmusic MUSIC_CHEREN_THEME
	pause 15
	applymovement VIRBANKCOMPLEXB1F_CHEREN, VirbankComplexB1FCherenTurnMovement
	applymovement PLAYER, VirbankComplexB1FPlayerTurnMovement
	opentext
	writetext VirbankComplexB1FCherenAfterText
	buttonsound
	verbosegiveitem HM_FLY
	writetext VirbankComplexB1FCherenLeaveText
	waitbutton
	closetext
	applymovement VIRBANKCOMPLEXB1F_CHEREN, VirbankComplexB1FCherenMovement
	disappear VIRBANKCOMPLEXB1F_CHEREN
	setevent EVENT_BEAT_VIRBANK_COMPLEX_BRONIUS
	setevent EVENT_ASPERTIA_CITY_BLOCKER
	specialphonecall SPECIALCALL_BIANCA_VIRBANK
	setscene SCENE_FINISHED
	special FadeOutMusic
	pause 15
	playmusic MUSIC_P2_LAB
	playmapmusic
	end
	
TrainerScientistFVirbankComplexB1F:
	trainer SCIENTISTF, SCIENTISTF_VIRBANK_COMPLEX_1, EVENT_BEAT_SCIENTISTF_VIRBANK_COMPLEX_1, ScientistFVirbankComplexB1FSeenText, ScientistFVirbankComplexB1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFVirbankComplexB1FAfterText
	waitbutton
	closetext
	end
	
VirbankComplexDoorScript:
	checkevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
	iftrue .done
	opentext
	writetext VirbankComplexOpenDoorText
	waitbutton
	changeblock  2,  4, $07 ; floor
	playsound SFX_ENTER_DOOR
	reloadmappart
	waitsfx
	closetext
	setevent EVENT_OPENED_VIRBANK_COMPLEX_DOOR
.done
	end
	
VirbankComplexB1FRockyHelmet:
	itemball ROCKY_HELMET
	
VirbankComplexB1FHyperPotion:
	itemball HYPER_POTION
	
VirbankComplexB1FPlayerMovement1:
	step DOWN
	step RIGHT
	step_end
	
VirbankComplexB1FPlayerMovement2:
	step RIGHT
	step_end
	
VirbankComplexB1FBroniusTurnMovement:
	turn_head RIGHT
	step_end
	
VirbankComplexB1FBroniusMovement:
	step LEFT
	step LEFT
	step UP
	turn_head LEFT
	step_end
	
VirbankComplexB1FShadowMovement:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end
	
VirbankComplexB1FCherenTurnMovement:
	turn_head DOWN
	step_end
	
VirbankComplexB1FPlayerTurnMovement:
	turn_head UP
	step_end
	
VirbankComplexB1FCherenMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
VirbankComplexB1FCherenIntroText:
	text "CHEREN: <PLAY_G>!"
	line "I've found another"
	cont "PLASMA leader!"
	
	para "He's trying to"
	line "take something"
	cont "from the boiler!"
	
	para "Quick! Stop him!"
	done
	
VirbankComplexB1FBroniusIntroText:
	text "???: Darn! I'm so"
	line "close! The FIRE"
	cont "ELEMENT is nearly"
	cont "ours!"
	done
	
VirbankComplexB1FBroniusCommandText:
	text "???: SHADOW!"
	line "Finish extracting"
	
	para "the ELEMENT, I'll"
	line "deal with this"
	cont "pest."
	
	para "SHADOW: As you"
	line "command, SAGE"
	cont "BRONIUS."
	done
	
VirbankComplexB1FBroniusBattleText:
	text "BRONIUS: Let's see"
	line "if you have what"
	
	para "it takes to stand"
	line "up to the might of"
	cont "TEAM PLASMA!"
	done
	
VirbankComplexB1FBroniusBeatenText:
	text "No! This is"
	line "impossible!"
	done
	
VirbankComplexB1FShadowText:
	text "SHADOW: My SAGE,"
	line "the extraction is"
	cont "complete."
	done
	
VirbankComplexB1FBroniusEscapeText:
	text "BRONIUS: Good"
	line "work, now let's"
	cont "get out of here!"
	done
	
VirbankComplexB1FCherenAfterText:
	text "CHEREN: … … …"
	
	para "I can't believe"
	line "it. They got away"
	cont "again…"
	
	para "Thanks for your"
	line "help again,"
	cont "<PLAY_G>."
	
	para "Here, I'd like you"
	line "to have this as"
	cont "thanks."
	done
	
VirbankComplexB1FCherenLeaveText:
	text "CHEREN: That HM"
	line "contains FLY."
	
	para "It's a very useful"
	line "technique, you can"
	
	para "use it to return"
	line "to any city or"
	
	para "town you've prev-"
	line "iously visited."
	
	para "You'll need the"
	line "GYM badge from"
	
	para "here in VIRBANK"
	line "CITY in order to"
	cont "use it though."
	
	para "I'm heading back"
	line "home to ASPERTIA"
	
	para "CITY. I'm the GYM"
	line "LEADER there, by"
	cont "the way."
	
	para "You should stop by"
	line "and challenge me"
	cont "sometime."
	
	para "See you, <PLAY_G>!"
	done
	
ScientistFVirbankComplexB1FSeenText:
	text "An unknown child"
	line "wandering here?"

	para "Who are you?"
	done

ScientistFVirbankComplexB1FBeatenText:
	text "Tch! I took you"
	line "too lightly!"
	done

ScientistFVirbankComplexB1FAfterText:
	text "Bwahahaha…"

	para "You'll never stop"
	line "our experiment!"
	done

VirbankComplexOpenDoorText:
	text "The door opened!"
	done
	
VirbankComplexB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  0, VIRBANK_COMPLEX_ELEVATOR, 1
	warp_event  7,  4, VIRBANK_COMPLEX_B2F, 2

	db 2 ; coord events
	coord_event  9,  8, SCENE_DEFAULT, VirbankComplexBroniusScript1
	coord_event  9,  9, SCENE_DEFAULT, VirbankComplexBroniusScript2

	db 2 ; bg events
	bg_event  2,  5, BGEVENT_UP, VirbankComplexDoorScript
	bg_event  3,  5, BGEVENT_UP, VirbankComplexDoorScript

	db 7 ; object events
	object_event 14,  2, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerScientistFVirbankComplexB1F, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexB1FRockyHelmet, EVENT_VIRBANK_COMPLEX_B1F_ROCKY_HELMET
	object_event  2,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexB1FHyperPotion, EVENT_VIRBANK_COMPLEX_B1F_HYPER_POTION
	object_event 10,  8, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_VIRBANK_COMPLEX_B1F_CHEREN
	object_event 11,  8, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_VIRBANK_COMPLEX_B1F_BRONIUS
	object_event 14, 10, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_VIRBANK_COMPLEX_B1F_BRONIUS
	object_event 13, 10, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, -1, EVENT_VIRBANK_COMPLEX_B1F_BRONIUS
	