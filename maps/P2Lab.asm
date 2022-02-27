	const_def 2 ; object constants
	const P2LAB_LEVEL_BALL
	const P2LAB_HYPER_POTION
	const P2LAB_PROTEIN
	const P2LAB_FULL_HEAL
	const P2LAB_ESCAPE_ROPE
	const P2LAB_X_ACCURACY
	const P2LAB_TM_SWORDS_DANCE
	const P2LAB_GRUNTM_1
	const P2LAB_GRUNTM_2
	const P2LAB_GRUNTF_1
	const P2LAB_GRUNTF_2
	const P2LAB_SCIENTIST
	const P2LAB_GORM
	const P2LAB_SHADOW
	const P2LAB_JUNIPER

P2Lab_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end

.DummyScene1:
	end

.SetTiles:
	checkevent EVENT_P2_LAB_DOORS
	iffalse .done
	changeblock  2, 36, $55 ; left door
	changeblock 18, 26, $55 ; left door
	changeblock 20,  2, $55 ; left door
	changeblock  8,  2, $07 ; floor
	changeblock 20, 18, $07 ; floor
	changeblock  6, 26, $07 ; floor
	changeblock 12, 36, $07 ; floor
	changeblock  2, 32, $07 ; floor
.done
	return
	

	
P2LabGormScript1:
	applymovement PLAYER, P2LabPlayerMovement1
	jump P2LabGormScript

P2LabGormScript2:
	applymovement PLAYER, P2LabPlayerMovement2
	; fallthrough
	
P2LabGormScript:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext P2LabJuniperIntroText
	buttonsound
	writetext P2LabShadowIntroText
	waitbutton
	closetext
	applymovement P2LAB_GORM, P2LabGormMovement1
	opentext
	writetext P2LabGormText
	waitbutton
	closetext
	winlosstext P2LabGormBeatenText, 0
	setlasttalked P2LAB_GORM
	loadtrainer GORM, GORM1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement P2LAB_SHADOW, P2LabShadowMovement
	opentext
	writetext P2LabShadowLeaveText
	waitbutton
	closetext
	applymovement P2LAB_GORM, P2LabGormMovement2
	special FadeOutMusic
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	playsound SFX_ESCAPE_ROPE
	waitsfx
	disappear P2LAB_GORM
	disappear P2LAB_SHADOW
	disappear P2LAB_GRUNTM_1
	disappear P2LAB_GRUNTM_2
	disappear P2LAB_GRUNTF_1
	disappear P2LAB_GRUNTF_2
	disappear P2LAB_SCIENTIST
	pause 15
	special FadeInQuickly
	playmusic MUSIC_P2_LAB
	playmapmusic
	pause 15
	turnobject P2LAB_JUNIPER, DOWN
	turnobject PLAYER, UP
	opentext
	writetext P2LabJuniperAfterText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	setmapscene P2_LAB_ENTRANCE, SCENE_P2_LAB_ENTRANCE_AFTER
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	disappear P2LAB_JUNIPER
	warp P2_LAB_ENTRANCE, 4, 7
	end
	
P2LabDoorToggleScript:
	opentext
	writetext P2LabDoorText
	buttonsound
	yesorno
	iffalse .done
	playsound SFX_ENTER_DOOR
	checkevent EVENT_P2_LAB_DOORS
	iftrue .reset
	changeblock  2, 36, $55 ; left door
	changeblock 18, 26, $55 ; left door
	changeblock 20,  2, $55 ; left door
	changeblock  8,  2, $07 ; floor
	changeblock 20, 18, $07 ; floor
	changeblock  6, 26, $07 ; floor
	changeblock 12, 36, $07 ; floor
	changeblock  2, 32, $07 ; floor
	reloadmappart
	setevent EVENT_P2_LAB_DOORS
	jump .done
.reset
	changeblock  2, 36, $07 ; floor
	changeblock 18, 26, $07 ; floor
	changeblock 20,  2, $07 ; floor
	changeblock  8,  2, $55 ; left door
	changeblock 20, 18, $58 ; right door
	changeblock  6, 26, $58 ; right door
	changeblock 12, 36, $55 ; left door
	changeblock  2, 32, $55 ; left door
	reloadmappart
	clearevent EVENT_P2_LAB_DOORS
.done
	closetext
	end

TrainerGruntM1P2Lab:
	trainer GRUNTM, GRUNTM_P2_1, EVENT_BEAT_GRUNTM_P2_1, GruntM1P2LabSeenText, GruntM1P2LabBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM1P2LabAfterText
	waitbutton
	closetext
	end

TrainerGruntM2P2Lab:
	trainer GRUNTM, GRUNTM_P2_2, EVENT_BEAT_GRUNTM_P2_2, GruntM2P2LabSeenText, GruntM2P2LabBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM2P2LabAfterText
	waitbutton
	closetext
	end

TrainerGruntF1P2Lab:
	trainer GRUNTF, GRUNTF_P2_1, EVENT_BEAT_GRUNTF_P2_1, GruntF1P2LabSeenText, GruntF1P2LabBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF1P2LabAfterText
	waitbutton
	closetext
	end

TrainerGruntF2P2Lab:
	trainer GRUNTF, GRUNTF_P2_2, EVENT_BEAT_GRUNTF_P2_2, GruntF2P2LabSeenText, GruntF2P2LabBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF2P2LabAfterText
	waitbutton
	closetext
	end

TrainerScientistP2Lab:
	trainer SCIENTIST_M, SCIENTISTM_P2, EVENT_BEAT_SCIENTISTM_P2, ScientistP2LabSeenText, ScientistP2LabBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistP2LabAfterText
	waitbutton
	closetext
	end
	
P2LabDiaryScript1:
	jumptext P2LabDiaryText1
	
P2LabDiaryScript2:
	jumptext P2LabDiaryText2
	
P2LabDiaryScript3:
	jumptext P2LabDiaryText3
	
P2LabDiaryScript4:
	jumptext P2LabDiaryText4
	
P2LabLevelBall:
	itemball LEVEL_BALL
	
P2LabHyperPotion:
	itemball HYPER_POTION
	
P2LabProtein:
	itemball PROTEIN
	
P2LabFullHeal:
	itemball FULL_HEAL
	
P2LabEscapeRope:
	itemball ESCAPE_ROPE
	
P2LabXAccuracy:
	itemball X_ACCURACY
	
P2LabTMSwordsDance:
	itemball TM_SWORDS_DANCE
	
P2LabIron:
	hiddenitem IRON, EVENT_P2_LAB_IRON
	
P2LabElixer:
	hiddenitem ELIXER, EVENT_P2_LAB_ELIXER
	
P2LabCarbos:
	hiddenitem CARBOS, EVENT_P2_LAB_CARBOS
	
P2LabPlayerMovement1:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step_end
	
P2LabPlayerMovement2:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step LEFT
	step_end
	
P2LabGormMovement1:
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
P2LabGormMovement2:
	step LEFT
	step UP
	step UP
	step_end
	
P2LabShadowMovement:
	big_step LEFT
	big_step UP
	big_step UP
	step_end

P2LabJuniperIntroText:
	text "JUNIPER: <PLAY_G>!"
	line "It's just as I"

	para "thought, TEAM"
	line "PLASMA is trying"
	
	para "to get something"
	line "out of that"
	cont "chamber!"
	done

P2LabShadowIntroText:
	text "SHADOW: SAGE GORM,"
	line "has the prototype"

	para "been safely"
	line "removed?"
	
	para "GORM: … … …"
	
	para "SHADOW: Then why"
	line "don't we take care"
	cont "of these"
	cont "intruders?"
	done

P2LabGormText:
	text "GORM: … … …"
	done

P2LabGormBeatenText:
	text "GORM: … … … ?"
	done

P2LabShadowLeaveText:
	text "SHADOW: Quickly,"
	line "my SAGE! We must"
	cont "go!"
	done

P2LabJuniperAfterText:
	text "JUNIPER: That"
	line "thing they took…"

	para "It must be some"
	line "kind of experi-"
	cont "mental weapon…"
	
	para "Come on, <PLAY_G>,"
	line "let's get out of"
	cont "here."
	done
	
GruntM1P2LabSeenText:
	text "You want to find"
	line "the secret of this"
	cont "LAB?"

	para "That won't be pos-"
	line "sible because I'm"
	cont "going to beat you!"
	done

GruntM1P2LabBeatenText:
	text "No! Unbelievable!"
	done

GruntM1P2LabAfterText:
	text "I don't believe"
	line "it! I was beaten!"
	done
	
GruntM2P2LabSeenText:
	text "Stop! I'm known as"
	line "the TEAM PLASMA"
	cont "fortress!"

	para "You're not taking"
	line "another step!"
	done

GruntM2P2LabBeatenText:
	text "The fortress came"
	line "down!"
	done

GruntM2P2LabAfterText:
	text "You've earned my"
	line "respect, so here's"
	cont "some advice."

	para "It's not too late."
	line "You can still turn"
	cont "back."
	done
	
GruntF1P2LabSeenText:
	text "Don't I think"
	line "#MON are cute?"

	para "I'll think my"
	line "#MON are cute--"

	para "after they beat"
	line "yours!"
	done

GruntF1P2LabBeatenText:
	text "Oh, no! They're so"
	line "useless!"
	done

GruntF1P2LabAfterText:
	text "I love my"
	line "beautiful self!"

	para "Who cares about"
	line "#MON?"
	done
	
GruntF2P2LabSeenText:
	text "It feels great"
	line "ordering #MON"
	cont "to commit crimes."
	done

GruntF2P2LabBeatenText:
	text "You're kidding!"
	done

GruntF2P2LabAfterText:
	text "I feel lousy over"
	line "losing!"

	para "Darn it! I hate"
	line "useless #MON!"
	done
	
ScientistP2LabSeenText:
	text "You! You've come"
	line "to steal my work!"
	
	para "I'll never let my"
	line "project be taken!"
	done

ScientistP2LabBeatenText:
	text "No! It's not"
	line "possible!"
	done

ScientistP2LabAfterText:
	text "No one could"
	line "possibly under-"
	cont "stand the power"
	
	para "Of the GENESIS"
	line "PROJECT…"
	done
	
P2LabDiaryText1:
	text "There's a document"
	line "on the PC…"
	
	para "GENESIS PROJECT-"
	
	para "Today, …e"
	line "spec…en arr…ed."
	
	para "… …st be"
	line "…ions of years"
	cont "ol… …"
	
	para "… …n't wait …"
	line "…n the proj… …"
	done
	
P2LabDiaryText2:
	text "There's a document"
	line "on the PC…"
	
	para "GENESIS PROJECT-"
	
	para "The …ect …"
	line "…ov… …lower tha…"
	cont "…pected…"
	
	para "… …have had"
	line "…ficulty … …ith"
	cont "…tegrati… the…"
	
	para "…bernetic parts"
	line "… …hout serio…"
	cont "…gradation."
	
	para "St… …e must"
	line "pr… on."
	done
	
P2LabDiaryText3:
	text "There's a document"
	line "on the PC…"
	
	para "GENESIS PROJECT-"
	
	para "… …reakthrough!"
	line "… project was"
	
	para "… …ught fully"
	line "onl… …oday."
	
	para "Despi… …oss of"
	line "contr… …he proof"
	cont "of conc… …as"
	cont "…idated!"
	
	para "…will not be"
	line "…ng now…"
	done
	
P2LabDiaryText4:
	text "There's a document"
	line "on the PC…"
	
	para "GENESIS PROJECT-"
	
	para "…rd fro… …pper"
	line "manag… …ject has"
	cont "…n cancel… …"
	
	para "…se fools do… …"
	line "… …will no… …"
	
	para "I wi… …rry out"
	line "… …NESIS P… …T to"
	cont "… …letion. I m… …"
	
	para "… … … …"
	done
	
P2LabDoorText:
	text "There's a switch."
	line "Press it?"
	done

P2Lab_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  5, 36, P2_LAB_ENTRANCE, 3

	db 2 ; coord events
	coord_event  6,  2, SCENE_DEFAULT, P2LabGormScript1
	coord_event  6,  3, SCENE_DEFAULT, P2LabGormScript2

	db 12 ; bg events
	bg_event  2, 40, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 22, 26, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 14, 16, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 22, 10, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 16,  8, BGEVENT_UP, P2LabDoorToggleScript
	bg_event 16, 38, BGEVENT_UP, P2LabDiaryScript1
	bg_event 10, 24, BGEVENT_UP, P2LabDiaryScript2
	bg_event 26, 14, BGEVENT_UP, P2LabDiaryScript3
	bg_event 26, 10, BGEVENT_UP, P2LabDiaryScript4
	bg_event 17, 35, BGEVENT_ITEM, P2LabIron
	bg_event 27, 26, BGEVENT_ITEM, P2LabElixer
	bg_event 13,  1, BGEVENT_ITEM, P2LabCarbos

	db 15 ; object events
	object_event 23, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, P2LabLevelBall, EVENT_P2_LAB_LEVEL_BALL
	object_event 22, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, P2LabHyperPotion, EVENT_P2_LAB_HYPER_POTION
	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, P2LabProtein, EVENT_P2_LAB_PROTEIN
	object_event 21,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, P2LabFullHeal, EVENT_P2_LAB_FULL_HEAL
	object_event 18, 41, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, P2LabEscapeRope, EVENT_P2_LAB_ESCAPE_ROPE
	object_event 27, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, P2LabXAccuracy, EVENT_P2_LAB_X_ACCURACY
	object_event  5, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, P2LabTMSwordsDance, EVENT_P2_LAB_TM_SWORDS_DANCE
	object_event 16, 17, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerGruntM1P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 14, 26, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerGruntM2P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 27, 31, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntF1P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 25, 12, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF2P2Lab, EVENT_P2_LAB_GRUNTS
	object_event 16,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistP2Lab, EVENT_P2_LAB_GRUNTS
	object_event  1,  2, SPRITE_PZMA_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_GORM
	object_event  2,  4, SPRITE_SHADOW, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_SHADOW
	object_event  3,  4, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, 0, EVENT_P2_LAB_JUNIPER
	