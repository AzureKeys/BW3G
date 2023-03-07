	const_def 2 ; object constants
	const VICTORYROADOUTDOOR2F_BOULDER
	const VICTORYROADOUTDOOR2F_PP_MAX
	const VICTORYROADOUTDOOR2F_MAX_REVIVE
	const VICTORYROADOUTDOOR2F_MAX_ELIXER
	const VICTORYROADOUTDOOR2F_VETERANM
	const VICTORYROADOUTDOOR2F_VETERANF
	const VICTORYROADOUTDOOR2F_ACE_TRAINERM
	const VICTORYROADOUTDOOR2F_ACE_TRAINERF
	const VICTORYROADOUTDOOR2F_SCIENTISTM
	const VICTORYROADOUTDOOR2F_SCIENTISTF
	const VICTORYROADOUTDOOR2F_BLACKBELT
	const VICTORYROADOUTDOOR2F_BATTLE_GIRL

VictoryRoadOutdoor2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_VICTORY_ROAD_OUTDOOR_BOULDER
	iffalse .done
	changeblock 18,  8, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable  7, VICTORYROADOUTDOOR2F_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadOutdoor2FBoulderFellText
	waitbutton
	disappear VICTORYROADOUTDOOR2F_BOULDER
	changeblock 18,  8, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end
	
VictoryRoadOutdoor2FBoulder:
	jumpstd strengthboulder

TrainerVeteranMVictoryRoadOutdoor2F:
	trainer VETERANM, VETERANM_VICTORY_ROAD_EXT_2, EVENT_BEAT_VETERANM_VICTORY_ROAD_EXT_2, VeteranMVictoryRoadOutdoor2FSeenText, VeteranMVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranMVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerVeteranFVictoryRoadOutdoor2F:
	trainer VETERANF, VETERANF_VICTORY_ROAD_EXT_2, EVENT_BEAT_VETERANF_VICTORY_ROAD_EXT_2, VeteranFVictoryRoadOutdoor2FSeenText, VeteranFVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerMVictoryRoadOutdoor2F:
	trainer ACE_TRAINERM, ACE_TRAINERM_VICTORY_ROAD_EXT_1, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_EXT_1, AceTrainerMVictoryRoadOutdoor2FSeenText, AceTrainerMVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerFVictoryRoadOutdoor2F:
	trainer ACE_TRAINERF_D, ACE_TRAINERF_VICTORY_ROAD_EXT_2, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_EXT_2, AceTrainerFVictoryRoadOutdoor2FSeenText, AceTrainerFVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerScientistMVictoryRoadOutdoor2F:
	trainer SCIENTISTM, SCIENTISTM_VICTORY_ROAD_EXT, EVENT_BEAT_SCIENTISTM_VICTORY_ROAD_EXT, ScientistMVictoryRoadOutdoor2FSeenText, ScientistMVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerScientistFVictoryRoadOutdoor2F:
	trainer SCIENTISTF, SCIENTISTF_VICTORY_ROAD_EXT, EVENT_BEAT_SCIENTISTF_VICTORY_ROAD_EXT, ScientistFVictoryRoadOutdoor2FSeenText, ScientistFVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltVictoryRoadOutdoor2F:
	trainer BLACKBELT_T, BLACKBELT_VICTORY_ROAD_EXT, EVENT_BEAT_BLACKBELT_VICTORY_ROAD_EXT, BlackbeltVictoryRoadOutdoor2FSeenText, BlackbeltVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlVictoryRoadOutdoor2F:
	trainer BATTLE_GIRL, BATTLE_GIRL_VICTORY_ROAD_EXT, EVENT_BEAT_BATTLE_GIRL_VICTORY_ROAD_EXT, BattleGirlVictoryRoadOutdoor2FSeenText, BattleGirlVictoryRoadOutdoor2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlVictoryRoadOutdoor2FAfterText
	waitbutton
	closetext
	end
	
VictoryRoadOutdoor2FPPMax:
	itemball PP_MAX
	
VictoryRoadOutdoor2FMaxRevive:
	itemball MAX_REVIVE
	
VictoryRoadOutdoor2FMaxElixer:
	itemball MAX_ELIXER
	
VictoryRoadOutdoor2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done
	
VeteranMVictoryRoadOutdoor2FSeenText:
	text "The people who"
	line "pass by here have"
	
	para "such different"
	line "moods! It's fun to"
	
	para "watch, and even"
	line "more fun to fight"
	cont "against them!"
	done

VeteranMVictoryRoadOutdoor2FBeatenText:
	text "Mwa haha!"
	line "It's fun!"
	done

VeteranMVictoryRoadOutdoor2FAfterText:
	text "Your #MON was"
	line "in a really good"
	
	para "mood the moment"
	line "that you won!"
	done
	
VeteranFVictoryRoadOutdoor2FSeenText:
	text "Are you sure? I'm"
	line "strong, you know."
	
	para "You still want to"
	line "take me on?"
	done

VeteranFVictoryRoadOutdoor2FBeatenText:
	text "Yes, I'm sure…"
	done

VeteranFVictoryRoadOutdoor2FAfterText:
	text "Not wanting to"
	line "admit my own"
	
	para "limits, I am cont-"
	line "inuing to battle…"
	
	para "That's right! At"
	line "least I'm"
	cont "persistent!"
	done
	
AceTrainerMVictoryRoadOutdoor2FSeenText:
	text "When I win, and"
	line "even when the"
	
	para "impossible happens"
	line "and I lose, I"
	
	para "analyze every one"
	line "of my battles to"
	cont "grow stronger."
	done

AceTrainerMVictoryRoadOutdoor2FBeatenText:
	text "I want to ride"
	line "away on my #-"
	
	para "MON so I can"
	line "ponder why I lost…"
	done

AceTrainerMVictoryRoadOutdoor2FAfterText:
	text "Riding on a #-"
	line "MON and thinking"
	
	para "about things is so"
	line "nice that you'll"
	
	para "find you come up"
	line "with all kinds of"
	cont "good ideas."
	done
	
AceTrainerFVictoryRoadOutdoor2FSeenText:
	text "To battle in a"
	line "high-up place…"
	
	para "This is a perfect"
	line "situation for an"
	
	para "ACE TRAINER such"
	line "as I!"
	done

AceTrainerFVictoryRoadOutdoor2FBeatenText:
	text "To tell the truth…"
	line "I'm actually"
	cont "afraid of heights…"
	done

AceTrainerFVictoryRoadOutdoor2FAfterText:
	text "Overcoming one's"
	line "fears is an"
	
	para "important part of"
	line "being an ACE"
	cont "TRAINER!"
	
	para "But still, I hate"
	line "being up so high…"
	done
	
ScientistMVictoryRoadOutdoor2FSeenText:
	text "Hm… What could be"
	line "the key to #MON"
	
	para "battles and #-"
	line "MON growth?"
	
	para "This, I will study"
	line "in battle with"
	cont "you!"
	done

ScientistMVictoryRoadOutdoor2FBeatenText:
	text "This was very"
	line "helpful…"
	done

ScientistMVictoryRoadOutdoor2FAfterText:
	text "#MON are like a"
	line "science to me."
	
	para "I must study them"
	line "at the height of"
	
	para "their growth if I"
	line "am to understand!"
	done
	
ScientistFVictoryRoadOutdoor2FSeenText:
	text "When I'm stuck"
	line "inside the lab"
	
	para "every day, I get"
	line "so stressed out!"
	done

ScientistFVictoryRoadOutdoor2FBeatenText:
	text "Aaaaah! So"
	line "frustrating!"
	done

ScientistFVictoryRoadOutdoor2FAfterText:
	text "Battling #MON"
	line "really helps blow"
	cont "off steam!"
	
	para "I'm much less"
	line "stressed now!"
	done
	
BlackbeltVictoryRoadOutdoor2FSeenText:
	text "Let's fight!"
	done

BlackbeltVictoryRoadOutdoor2FBeatenText:
	text "You took a win"
	line "from me! It's so"
	cont "frustrating!"
	done

BlackbeltVictoryRoadOutdoor2FAfterText:
	text "I'll use the"
	line "bitterness of this"
	
	para "defeat to reach"
	line "even greater"
	cont "heights!"
	done
	
BattleGirlVictoryRoadOutdoor2FSeenText:
	text "Life is all about"
	line "overcoming"
	
	para "hurdles! Could you"
	line "be a hurdle for"
	cont "me?"
	done

BattleGirlVictoryRoadOutdoor2FBeatenText:
	text "I couldn't overcome"
	line "the hurdle you"
	cont "presented to me…"
	done

BattleGirlVictoryRoadOutdoor2FAfterText:
	text "If you can't over-"
	line "come a hurdle, you"
	
	para "can always just go"
	line "around it. Head up"
	
	para "here, and you'll"
	line "find the greatest"
	
	para "hurdle for #MON"
	line "trainers: the"
	cont "#MON LEAGUE!"
	done

VictoryRoadOutdoor2F_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event  9, 34, VICTORY_ROAD_CAVE_2F, 4
	warp_event 37, 34, VICTORY_ROAD_CAVE_2F, 5
	warp_event 17, 14, VICTORY_ROAD_CAVE_2F, 6
	warp_event 29, 12, VICTORY_ROAD_CAVE_3F, 1
	warp_event 17, 20, VICTORY_ROAD_CAVE_3F, 2
	warp_event 19,  1, VICTORY_ROAD_CAVE_3F, 3
	warp_event 18,  8, VICTORY_ROAD_OUTDOOR_2F, 8
	warp_event 16,  8, VICTORY_ROAD_OUTDOOR_2F, 8
	warp_event 23, 20, VICTORY_ROAD_CASTLE_OUTSIDE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 12 ; object events
	object_event 20,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadOutdoor2FBoulder, EVENT_VICTORY_ROAD_OUTDOOR_BOULDER
	object_event 13, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadOutdoor2FPPMax, EVENT_VICTORY_ROAD_EXT_PP_MAX
	object_event 16, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadOutdoor2FMaxRevive, EVENT_VICTORY_ROAD_EXT_MAX_REVIVE
	object_event 28, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadOutdoor2FMaxElixer, EVENT_VICTORY_ROAD_EXT_MAX_ELIXER_2
	object_event 18,  3, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerVeteranMVictoryRoadOutdoor2F, -1
	object_event 20,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerVeteranFVictoryRoadOutdoor2F, -1
	object_event  6, 31, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerMVictoryRoadOutdoor2F, -1
	object_event 35, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerFVictoryRoadOutdoor2F, -1
	object_event 29, 35, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistMVictoryRoadOutdoor2F, -1
	object_event 22, 15, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerScientistFVictoryRoadOutdoor2F, -1
	object_event 35, 26, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltVictoryRoadOutdoor2F, -1
	object_event  5, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBattleGirlVictoryRoadOutdoor2F, -1
	