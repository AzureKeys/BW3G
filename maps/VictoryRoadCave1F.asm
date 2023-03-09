	const_def 2 ; object constants
	const VICTORYROADCAVE1F_BOULDER_1
	const VICTORYROADCAVE1F_BOULDER_2
	const VICTORYROADCAVE1F_CALCIUM
	const VICTORYROADCAVE1F_FULL_RESTORE
	const VICTORYROADCAVE1F_ESCAPE_ROPE
	const VICTORYROADCAVE1F_RARE_CANDY
	const VICTORYROADCAVE1F_LIFE_ORB
	const VICTORYROADCAVE1F_ACE_TRAINERM
	const VICTORYROADCAVE1F_ACE_TRAINERF
	const VICTORYROADCAVE1F_VETERANM
	const VICTORYROADCAVE1F_VETERANF
	const VICTORYROADCAVE1F_PSYCHICM
	const VICTORYROADCAVE1F_PSYCHICF
	const VICTORYROADCAVE1F_HEX_MANIAC

VictoryRoadCave1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.DummyScene0:
	end

.Boulders:
	checkevent EVENT_VICTORY_ROAD_RUINS_BOULDER_1
	iffalse .check2
	changeblock 10, 22, $7b ; boulder in pit
.check2
	checkevent EVENT_VICTORY_ROAD_RUINS_BOULDER_2
	iffalse .check_level
	changeblock 32, 10, $6f ; boulder in pit
.check_level
	checkevent EVENT_VICTORY_ROAD_CAVE_LOWER
	iffalse .done
	changeblock 16, 20, $7e ; bridge top left
	changeblock 18, 20, $7f ; bridge top right
	changeblock 16, 22, $82 ; bridge left
	changeblock 18, 22, $83 ; bridge right
	changeblock 16, 24, $86 ; bridge bot left
	changeblock 18, 24, $87 ; bridge bot right
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 10, VICTORYROADCAVE1F_BOULDER_1, .Boulder1
	stonetable 11, VICTORYROADCAVE1F_BOULDER_2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave1FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE1F_BOULDER_1
	changeblock 10, 22, $7b ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave1FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE1F_BOULDER_2
	changeblock 32, 10, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end
	
VictoryRoadCave1FLowerScript:
	checkevent EVENT_VICTORY_ROAD_CAVE_LOWER
	iftrue .done
	changeblock 16, 20, $7e ; bridge top left
	changeblock 18, 20, $7f ; bridge top right
	changeblock 16, 22, $82 ; bridge left
	changeblock 18, 22, $83 ; bridge right
	changeblock 16, 24, $86 ; bridge bot left
	changeblock 18, 24, $87 ; bridge bot right
	setevent EVENT_VICTORY_ROAD_CAVE_LOWER
.done
	end
	
VictoryRoadCave1FUpperScript:
	checkevent EVENT_VICTORY_ROAD_CAVE_LOWER
	iffalse .done
	changeblock 16, 20, $36 ; bridge top left
	changeblock 18, 20, $3b ; bridge top right
	changeblock 16, 22, $3e ; bridge left
	changeblock 18, 22, $3e ; bridge right
	changeblock 16, 24, $42 ; bridge bot left
	changeblock 18, 24, $43 ; bridge bot right
	clearevent EVENT_VICTORY_ROAD_CAVE_LOWER
.done
	end
	
VictoryRoadCave1FBoulder:
	jumpstd strengthboulder

TrainerAceTrainerMVictoryRoadCave1F:
	trainer ACE_TRAINERM, ACE_TRAINERM_VICTORY_ROAD_INT_1, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_INT_1, AceTrainerMVictoryRoadCave1FSeenText, AceTrainerMVictoryRoadCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMVictoryRoadCave1FAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerFVictoryRoadCave1F:
	trainer ACE_TRAINERF_D, ACE_TRAINERF_VICTORY_ROAD_INT_2, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_INT_2, AceTrainerFVictoryRoadCave1FSeenText, AceTrainerFVictoryRoadCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFVictoryRoadCave1FAfterText
	waitbutton
	closetext
	end

TrainerVeteranMVictoryRoadCave1F:
	trainer VETERANM, VETERANM_VICTORY_ROAD_INT_1, EVENT_BEAT_VETERANM_VICTORY_ROAD_INT_1, VeteranMVictoryRoadCave1FSeenText, VeteranMVictoryRoadCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranMVictoryRoadCave1FAfterText
	waitbutton
	closetext
	end

TrainerVeteranFVictoryRoadCave1F:
	trainer VETERANF, VETERANF_VICTORY_ROAD_INT_1, EVENT_BEAT_VETERANF_VICTORY_ROAD_INT_1, VeteranFVictoryRoadCave1FSeenText, VeteranFVictoryRoadCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFVictoryRoadCave1FAfterText
	waitbutton
	closetext
	end

TrainerPsychicMVictoryRoadCave1F:
	trainer PSYCHICM_T, PSYCHICM_VICTORY_ROAD_INT, EVENT_BEAT_PSYCHICM_VICTORY_ROAD_INT, PsychicMVictoryRoadCave1FSeenText, PsychicMVictoryRoadCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMVictoryRoadCave1FAfterText
	waitbutton
	closetext
	end

TrainerPsychicFVictoryRoadCave1F:
	trainer PSYCHICF_T, PSYCHICF_VICTORY_ROAD_INT, EVENT_BEAT_PSYCHICF_VICTORY_ROAD_INT, PsychicFVictoryRoadCave1FSeenText, PsychicFVictoryRoadCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFVictoryRoadCave1FAfterText
	waitbutton
	closetext
	end

TrainerHexManiacVictoryRoadCave1F:
	trainer HEX_MANIAC, HEX_MANIAC_VICTORY_ROAD_INT, EVENT_BEAT_HEX_MANIAC_VICTORY_ROAD_INT, HexManiacVictoryRoadCave1FSeenText, HexManiacVictoryRoadCave1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacVictoryRoadCave1FAfterText
	waitbutton
	closetext
	end
	
VictoryRoadCave1FCalcium:
	itemball CALCIUM
	
VictoryRoadCave1FFullRestore:
	itemball FULL_RESTORE
	
VictoryRoadCave1FEscapeRope:
	itemball ESCAPE_ROPE
	
VictoryRoadCave1FRareCandy:
	itemball RARE_CANDY
	
VictoryRoadCave1FLifeOrb:
	itemball LIFE_ORB
	
VictoryRoadCave1FMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_VICTORY_ROAD_INT_MAX_ELIXER
	
VictoryRoadCave1FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done
	
AceTrainerMVictoryRoadCave1FSeenText:
	text "An ACE TRAINER"
	line "like me has pride,"
	cont "so I won't lose!"
	done

AceTrainerMVictoryRoadCave1FBeatenText:
	text "I couldn't protect"
	line "my pride! I'm"
	cont "mortified!"
	done

AceTrainerMVictoryRoadCave1FAfterText:
	text "Pride doesn't mean"
	line "acting arrogantly!"
	
	para "I'm really proud"
	line "of what I've"
	
	para "achieved in my"
	line "life!"
	done
	
AceTrainerFVictoryRoadCave1FSeenText:
	text "Challenging the"
	line "#MON LEAGUE?"
	
	para "It's no wonder you"
	line "might feel a bit"
	
	para "nervous, but you"
	line "just have to"
	
	para "believe in your"
	line "#MON and do it!"
	done

AceTrainerFVictoryRoadCave1FBeatenText:
	text "Am I really going"
	line "to be alright with"
	
	para "only this trifling"
	line "power?"
	done

AceTrainerFVictoryRoadCave1FAfterText:
	text "When you feel un-"
	line "easy or afraid,"
	
	para "just hug your"
	line "#MON real"
	cont "tight!"
	done
	
VeteranMVictoryRoadCave1FSeenText:
	text "You bothered to"
	line "come all the way"
	
	para "here? Good! I will"
	line "reward your hard"
	
	para "work by battling"
	line "with all of my"
	cont "strength!"
	done

VeteranMVictoryRoadCave1FBeatenText:
	text "A battle with a"
	line "good trainer fills"
	
	para "my heart with"
	line "warmth!"
	done

VeteranMVictoryRoadCave1FAfterText:
	text "The fact that you"
	line "made it out here…"
	
	para "That's it! It must"
	line "have been thanks"
	
	para "to a #MON using"
	line "a hidden move!"
	done
	
VeteranFVictoryRoadCave1FSeenText:
	text "Hey, since you"
	line "worked so hard to"
	
	para "get here, how"
	line "about I be your"
	cont "opponent?"
	done

VeteranFVictoryRoadCave1FBeatenText:
	text "Thanks a bunch. It"
	line "was a lot of fun!"
	done

VeteranFVictoryRoadCave1FAfterText:
	text "My #MON lets me"
	line "ride on its back"
	
	para "as it uses SURF or"
	line "WATERFALL. I"
	
	para "really feel its"
	line "love at those"
	cont "times!"
	done
	
PsychicMVictoryRoadCave1FSeenText:
	text "You… Who's brought"
	line "you this far?"
	done

PsychicMVictoryRoadCave1FBeatenText:
	text "It's your reliable"
	line "#MON who've"
	
	para "brought you this"
	line "far, isn't it?"
	done

PsychicMVictoryRoadCave1FAfterText:
	text "All people know"
	line "what they can do"
	cont "alone, but…"
	
	para "There are things"
	line "you can only do"
	cont "with #MON."
	done
	
PsychicFVictoryRoadCave1FSeenText:
	text "I'll use my psychic"
	line "powers to release"
	
	para "my #MON from"
	line "its #BALL!"
	done

PsychicFVictoryRoadCave1FBeatenText:
	text "Well, that didn't"
	line "go the way I"
	cont "wanted it to!"
	done

PsychicFVictoryRoadCave1FAfterText:
	text "I heard that the"
	line "former ELITE FOUR"
	
	para "member, CAITLIN,"
	line "is an amazing"
	cont "PSYCHIC."
	
	para "I wonder why she"
	line "stepped down. I'd"
	
	para "sure love to have"
	line "faced her…"
	done
	
HexManiacVictoryRoadCave1FSeenText:
	text "You are no ordin-"
	line "ary opponent…"
	
	para "That is what my"
	line "ghost type #MON"
	
	para "is whispering to"
	line "me."
	done

HexManiacVictoryRoadCave1FBeatenText:
	text "My premonition was"
	line "spot on!"
	done

HexManiacVictoryRoadCave1FAfterText:
	text "Could it be that"
	line "you and your #-"
	
	para "MON are the ones"
	line "emitting that"
	cont "strong aura?!"
	done

VictoryRoadCave1F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event 31, 36, VICTORY_ROAD_ENTRANCE_NORTH, 1
	warp_event 32, 36, VICTORY_ROAD_ENTRANCE_NORTH, 2
	warp_event 33, 36, VICTORY_ROAD_ENTRANCE_NORTH, 3
	warp_event 34, 36, VICTORY_ROAD_ENTRANCE_NORTH, 4
	warp_event  5,  8, VICTORY_ROAD_GROVE, 1
	warp_event  6,  8, VICTORY_ROAD_GROVE, 2
	warp_event 15,  1, VICTORY_ROAD_OUTDOOR_1F, 4
	warp_event 21,  2, VICTORY_ROAD_OUTDOOR_1F, 5
	warp_event 22,  2, VICTORY_ROAD_OUTDOOR_1F, 6
	warp_event 11, 22, VICTORY_ROAD_CAVE_1F, 1
	warp_event 32, 10, VICTORY_ROAD_CAVE_1F, 1

	db 12 ; coord events
	coord_event 14,  5, SCENE_DEFAULT, VictoryRoadCave1FLowerScript
	coord_event 16, 32, SCENE_DEFAULT, VictoryRoadCave1FLowerScript
	coord_event 14,  4, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 17, 32, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 31, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 32, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 33, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 34, 35, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 21,  4, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event 22,  4, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event  5, 10, SCENE_DEFAULT, VictoryRoadCave1FUpperScript
	coord_event  6, 10, SCENE_DEFAULT, VictoryRoadCave1FUpperScript

	db 1 ; bg events
	bg_event 10, 35, BGEVENT_ITEM, VictoryRoadCave1FMaxElixer

	db 14 ; object events
	object_event 13, 23, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave1FBoulder, EVENT_VICTORY_ROAD_RUINS_BOULDER_1
	object_event 32,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave1FBoulder, EVENT_VICTORY_ROAD_RUINS_BOULDER_2
	object_event 13, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave1FCalcium, EVENT_VICTORY_ROAD_INT_CALCIUM
	object_event 28, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave1FFullRestore, EVENT_VICTORY_ROAD_INT_FULL_RESTORE_1
	object_event  6, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave1FEscapeRope, EVENT_VICTORY_ROAD_INT_ESCAPE_ROPE
	object_event 20, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave1FRareCandy, EVENT_VICTORY_ROAD_INT_RARE_CANDY
	object_event 22, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave1FLifeOrb, EVENT_VICTORY_ROAD_INT_LIFE_ORB
	object_event 24, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerMVictoryRoadCave1F, -1
	object_event 24, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerFVictoryRoadCave1F, -1
	object_event 15, 30, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerVeteranMVictoryRoadCave1F, -1
	object_event 15, 33, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranFVictoryRoadCave1F, -1
	object_event  5, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMVictoryRoadCave1F, -1
	object_event 24,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicFVictoryRoadCave1F, -1
	object_event 31, 24, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerHexManiacVictoryRoadCave1F, -1
	