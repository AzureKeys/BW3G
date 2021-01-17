	const_def 2 ; object constants
	const VIRBANKCOMPLEXOUTSIDE_GRUNTM_1
	const VIRBANKCOMPLEXOUTSIDE_GRUNTM_2
	const VIRBANKCOMPLEXOUTSIDE_GRUNTF
	const VIRBANKCOMPLEXOUTSIDE_X_SPEED
	const VIRBANKCOMPLEXOUTSIDE_ETHER
	const VIRBANKCOMPLEXOUTSIDE_RARE_CANDY
	const VIRBANKCOMPLEXOUTSIDE_FERRY_TICKET
	const VIRBANKCOMPLEXOUTSIDE_CHEREN

VirbankComplexOutside_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.DummyScene0:
	end
	
.SetTiles:
	checkevent EVENT_VIRBANK_COMPLEX_UPPER_FLOOR
	iffalse .done
	changeblock 12, 30, $8C
	changeblock 14, 30, $8D
	changeblock 12, 36, $90
	changeblock 14, 36, $91
	changeblock 16, 36, $92
.done
	return
	
VirbankComplexUpperFloorScript:
	checkevent EVENT_VIRBANK_COMPLEX_UPPER_FLOOR
	iftrue .done
	changeblock 12, 30, $8C
	changeblock 14, 30, $8D
	changeblock 12, 36, $90
	changeblock 14, 36, $91
	changeblock 16, 36, $92
	setevent EVENT_VIRBANK_COMPLEX_UPPER_FLOOR
.done
	end
	
VirbankComplexLowerFloorScript:
	checkevent EVENT_VIRBANK_COMPLEX_UPPER_FLOOR
	iffalse .done
	changeblock 12, 30, $3C
	changeblock 14, 30, $3D
	changeblock 12, 36, $49
	changeblock 14, 36, $4A
	changeblock 16, 36, $4B
	clearevent EVENT_VIRBANK_COMPLEX_UPPER_FLOOR
.done
	end
	
VirbankComplexOutsideCherenScript:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_CHEREN_THEME
	faceplayer
	opentext
	writetext VirbankComplexOutsideCherenIntroText
	buttonsound
	verbosegiveitem LIFT_KEY
	buttonsound
	writetext VirbankComplexOutsideCherenLeaveText
	waitbutton
	closetext
	checkcode VAR_FACING
	ifequal LEFT, .cherenmove
	ifequal RIGHT, .cherenmove
	applymovement PLAYER, VirbankComplexPlayerMovement
.cherenmove
	applymovement VIRBANKCOMPLEXOUTSIDE_CHEREN, VirbankComplexCherenMovement
	disappear VIRBANKCOMPLEXOUTSIDE_CHEREN
	special FadeOutMusic
	pause 15
	playmusic MUSIC_VIRBANK_CITY
	playmapmusic
	end

TrainerGruntM1VirbankComplexOutside:
	trainer GRUNTM, GRUNTM_VIRBANK_COMPLEX_1, EVENT_BEAT_GRUNTM_VIRBANK_COMPLEX_1, GruntM1VirbankComplexOutsideSeenText, GruntM1VirbankComplexOutsideBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM1VirbankComplexOutsideAfterText
	waitbutton
	closetext
	end

TrainerGruntM2VirbankComplexOutside:
	trainer GRUNTM, GRUNTM_VIRBANK_COMPLEX_2, EVENT_BEAT_GRUNTM_VIRBANK_COMPLEX_2, GruntM2VirbankComplexOutsideSeenText, GruntM2VirbankComplexOutsideBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM2VirbankComplexOutsideAfterText
	waitbutton
	closetext
	end

TrainerGruntFVirbankComplexOutside:
	trainer GRUNTF, GRUNTF_VIRBANK_COMPLEX_1, EVENT_BEAT_GRUNTF_VIRBANK_COMPLEX_1, GruntFVirbankComplexOutsideSeenText, GruntFVirbankComplexOutsideBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntFVirbankComplexOutsideAfterText
	waitbutton
	closetext
	end
	
VirbankComplexOutsideXSpeed:
	itemball X_SPEED
	
VirbankComplexOutsideEther:
	itemball ETHER
	
VirbankComplexOutsideRareCandy:
	itemball RARE_CANDY
	
VirbankComplexOutsideFerryTicket:
	itemball S_S_TICKET
	
VirbankComplexOutsidePearl:
	hiddenitem PEARL, EVENT_VIRBANK_COMPLEX_OUTSIDE_PEARL
	
VirbankComplexPlayerMovement:
	step LEFT
	turn_head RIGHT
	step_end
	
VirbankComplexCherenMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
VirbankComplexOutsideCherenIntroText:
	text "CHEREN: <PLAY_G>,"
	line "good timing."
	
	para "I've been invest-"
	line "igating this"
	cont "COMPLEX."
	
	para "It's as I thought,"
	line "TEAM PLASMA has"
	
	para "infiltrated the"
	line "COMPLEX. They"
	
	para "must be after"
	line "something…"
	
	para "I managed to snag"
	line "a key to the lift"
	
	para "that leads into"
	line "the facility."
	
	para "Here, you should"
	line "take it."
	done
	
VirbankComplexOutsideCherenLeaveText:
	text "CHEREN: I'm going"
	line "to head inside to"
	cont "look around."
	
	para "Hopefully we can"
	line "stop TEAM PLASMA"
	
	para "from taking what"
	line "they want this"
	cont "time."
	done
	
GruntM1VirbankComplexOutsideSeenText:
	text "Ha! I bet you"
	line "thought I was a"
	cont "worker here!"
	done

GruntM1VirbankComplexOutsideBeatenText:
	text "Grrrr…"
	done

GruntM1VirbankComplexOutsideAfterText:
	text "TEAM PLASMA has"
	line "taken over this"
	cont "COMPLEX."

	para "What are we up to?"
	line "I'll never tell!"
	done
	
GruntM2VirbankComplexOutsideSeenText:
	text "Are you lost? No,"
	line "you can't be."

	para "You don't have"
	line "that scared look."

	para "I'll give you"
	line "something to be"
	cont "scared about!"
	done

GruntM2VirbankComplexOutsideBeatenText:
	text "How could you?"
	done

GruntM2VirbankComplexOutsideAfterText:
	text "Go wherever you'd"
	line "like! Get lost!"
	cont "See if I care!"
	done
	
GruntFVirbankComplexOutsideSeenText:
	text "They ditched this"
	line "project when we"
	cont "ran them off."

	para "I'm searching for"
	line "leftover loot."
	done

GruntFVirbankComplexOutsideBeatenText:
	text "Over the top!"
	done

GruntFVirbankComplexOutsideAfterText:
	text "VIRBANK COMPLEX?"

	para "What do you want"
	line "to go there for?"

	para "There's nothing"
	line "down there."
	done
	
VirbankComplexOutside_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 15, 45, VIRBANK_COMPLEX_ELEVATOR, 1
	warp_event 14,  4, VIRBANK_CITY, 9
	warp_event 15,  4, VIRBANK_CITY, 10
	warp_event 16,  4, VIRBANK_CITY, 11
	warp_event 17,  4, VIRBANK_CITY, 12

	db 9 ; coord events
	coord_event  6, 38, SCENE_DEFAULT, VirbankComplexUpperFloorScript
	coord_event  4, 28, SCENE_DEFAULT, VirbankComplexUpperFloorScript
	coord_event  6, 40, SCENE_DEFAULT, VirbankComplexLowerFloorScript
	coord_event  4, 30, SCENE_DEFAULT, VirbankComplexLowerFloorScript
	coord_event 13,  4, SCENE_DEFAULT, VirbankComplexLowerFloorScript
	coord_event 14,  5, SCENE_DEFAULT, VirbankComplexLowerFloorScript
	coord_event 15,  5, SCENE_DEFAULT, VirbankComplexLowerFloorScript
	coord_event 16,  5, SCENE_DEFAULT, VirbankComplexLowerFloorScript
	coord_event 17,  5, SCENE_DEFAULT, VirbankComplexLowerFloorScript

	db 1 ; bg events
	bg_event  9,  9, BGEVENT_ITEM, VirbankComplexOutsidePearl

	db 8 ; object events
	object_event 14, 46, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerGruntM1VirbankComplexOutside, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 15, 38, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGruntM2VirbankComplexOutside, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event 21, 36, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerGruntFVirbankComplexOutside, EVENT_VIRBANK_COMPLEX_GRUNTS
	object_event  9, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexOutsideXSpeed, EVENT_VIRBANK_COMPLEX_OUTSIDE_X_SPEED
	object_event 21, 46, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexOutsideEther, EVENT_VIRBANK_COMPLEX_OUTSIDE_ETHER
	object_event 23, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexOutsideRareCandy, EVENT_VIRBANK_COMPLEX_OUTSIDE_RARE_CANDY
	object_event 22, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VirbankComplexOutsideFerryTicket, EVENT_VIRBANK_COMPLEX_OUTSIDE_FERRY_TICKET
	object_event  5, 30, SPRITE_CHEREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VirbankComplexOutsideCherenScript, EVENT_VIRBANK_COMPLEX_OUTSIDE_CHEREN
	