	const_def 2 ; object constants
	const VICTORYROADCAVE2F_BOULDER_1
	const VICTORYROADCAVE2F_BOULDER_2
	const VICTORYROADCAVE2F_ULTRA_BALL
	const VICTORYROADCAVE2F_MAX_REPEL
	const VICTORYROADCAVE2F_METAL_COAT
	const VICTORYROADCAVE2F_ACE_TRAINERM
	const VICTORYROADCAVE2F_ACE_TRAINERF
	const VICTORYROADCAVE2F_PKMN_RANGERM
	const VICTORYROADCAVE2F_PKMN_RANGERF
	const VICTORYROADCAVE2F_VETERANM
	const VICTORYROADCAVE2F_BACKPACKERM

VictoryRoadCave2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_VICTORY_ROAD_CAVE_BOULDER_1
	iffalse .check2
	changeblock 22, 32, $ab ; boulder in pit
.check2
	checkevent EVENT_VICTORY_ROAD_CAVE_BOULDER_2
	iffalse .done
	changeblock 24, 30, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable  9, VICTORYROADCAVE2F_BOULDER_1, .Boulder1
	stonetable 10, VICTORYROADCAVE2F_BOULDER_2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave2FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE2F_BOULDER_1
	changeblock 22, 32, $ab ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext VictoryRoadCave2FBoulderFellText
	waitbutton
	disappear VICTORYROADCAVE2F_BOULDER_2
	changeblock 24, 30, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end
	
VictoryRoadCave2FBoulder:
	jumpstd strengthboulder

TrainerAceTrainerMVictoryRoadCave2F:
	trainer ACE_TRAINERM_D, ACE_TRAINERM_VICTORY_ROAD_INT_2, EVENT_BEAT_ACE_TRAINERM_VICTORY_ROAD_INT_2, AceTrainerMVictoryRoadCave2FSeenText, AceTrainerMVictoryRoadCave2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMVictoryRoadCave2FAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerFVictoryRoadCave2F:
	trainer ACE_TRAINERF, ACE_TRAINERF_VICTORY_ROAD_INT_1, EVENT_BEAT_ACE_TRAINERF_VICTORY_ROAD_INT_1, AceTrainerFVictoryRoadCave2FSeenText, AceTrainerFVictoryRoadCave2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFVictoryRoadCave2FAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerMVictoryRoadCave2F:
	trainer PKMN_RANGERM, PKMN_RANGERM_VICTORY_ROAD_INT, EVENT_BEAT_PKMN_RANGERM_VICTORY_ROAD_INT, PkmnRangerMVictoryRoadCave2FSeenText, PkmnRangerMVictoryRoadCave2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMVictoryRoadCave2FAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerFVictoryRoadCave2F:
	trainer PKMN_RANGERF, PKMN_RANGERF_VICTORY_ROAD_INT, EVENT_BEAT_PKMN_RANGERF_VICTORY_ROAD_INT, PkmnRangerFVictoryRoadCave2FSeenText, PkmnRangerFVictoryRoadCave2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFVictoryRoadCave2FAfterText
	waitbutton
	closetext
	end

TrainerVeteranMVictoryRoadCave2F:
	trainer VETERANM, VETERANM_VICTORY_ROAD_INT_2, EVENT_BEAT_VETERANM_VICTORY_ROAD_INT_2, VeteranMVictoryRoadCave2FSeenText, VeteranMVictoryRoadCave2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranMVictoryRoadCave2FAfterText
	waitbutton
	closetext
	end

TrainerBackpackerMVictoryRoadCave2F:
	trainer BACKPACKERM, BACKPACKERM_VICTORY_ROAD_INT, EVENT_BEAT_BACKPACKERM_VICTORY_ROAD_INT, BackpackerMVictoryRoadCave2FSeenText, BackpackerMVictoryRoadCave2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMVictoryRoadCave2FAfterText
	waitbutton
	closetext
	end
	
VictoryRoadCave2FUltraBall:
	itemball ULTRA_BALL
	
VictoryRoadCave2FMaxRepel:
	itemball MAX_REPEL
	
VictoryRoadCave2FMetalCoat:
	itemball METAL_COAT
	
VictoryRoadCave2FProtein:
	hiddenitem PROTEIN, EVENT_VICTORY_ROAD_INT_PROTEIN
	
VictoryRoadCave2FMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_VICTORY_ROAD_INT_MAX_REVIVE_2
	
VictoryRoadCave2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done
	
AceTrainerMVictoryRoadCave2FSeenText:
	text "It's not enough for"
	line "me just to be"
	
	para "together with"
	line "#MON! I want to"
	cont "win!"
	done

AceTrainerMVictoryRoadCave2FBeatenText:
	text "How… How could you"
	line "defeat me this"
	cont "utterly?"
	done

AceTrainerMVictoryRoadCave2FAfterText:
	text "It's not enough for"
	line "me just to be"
	
	para "together with"
	line "#MON! I want to"
	cont "win!"
	
	para "But I do know that"
	line "some people feel"
	
	para "at ease just by"
	line "being with their"
	cont "#MON…"
	done
	
AceTrainerFVictoryRoadCave2FSeenText:
	text "Our unity won't be"
	line "bested by anyone!"
	done

AceTrainerFVictoryRoadCave2FBeatenText:
	text "We couldn't win…"
	line "but that's alright."
	done

AceTrainerFVictoryRoadCave2FAfterText:
	text "My #MON was"
	line "once stolen by"
	cont "TEAM PLASMA."
	
	para "I'm just so grate-"
	line "ful that we can be"
	cont "together now."
	done
	
PkmnRangerFVictoryRoadCave2FSeenText:
	text "Something about"
	line "you reminds me of"
	
	para "that trainer from"
	line "years ago…"
	done

PkmnRangerFVictoryRoadCave2FBeatenText:
	text "Yes! That mix of"
	line "kindness and power"
	
	para "is just like that"
	line "trainer!"
	done

PkmnRangerFVictoryRoadCave2FAfterText:
	text "I wonder where"
	line "that trainer is"
	cont "now…"
	done
	
PkmnRangerMVictoryRoadCave2FSeenText:
	text "Behold the blind-"
	line "ing brilliance of"
	cont "my many BADGEs!"
	done

PkmnRangerMVictoryRoadCave2FBeatenText:
	text "Your skill is too"
	line "brilliant to"
	cont "behold!"
	done

PkmnRangerMVictoryRoadCave2FAfterText:
	text "That BADGE you"
	line "have there… No it"
	
	para "is your skill and"
	line "the #MON with"
	
	para "you that are so"
	line "brilliant!"
	done
	
VeteranMVictoryRoadCave2FSeenText:
	text "The endless cycle"
	line "of wins and"
	
	para "losses… Will it"
	line "always continue?"
	done

VeteranMVictoryRoadCave2FBeatenText:
	text "Every win and loss"
	line "is a precious"
	cont "memory."
	done

VeteranMVictoryRoadCave2FAfterText:
	text "Fighting together"
	line "with a young kid"
	
	para "like you makes me"
	line "feel young again"
	cont "myself."
	done
	
BackpackerMVictoryRoadCave2FSeenText:
	text "I'm gonna numb you"
	line "and your #MON!"
	done

BackpackerMVictoryRoadCave2FBeatenText:
	text "Unbelievable! I"
	line "was the one struck"
	cont "numb…"
	done

BackpackerMVictoryRoadCave2FAfterText:
	text "A fighting style"
	line "overflowing with"
	
	para "power or a strat-"
	line "egy that excels"
	cont "technically…"
	
	para "It depends on the"
	line "#MON, see!"
	done

VictoryRoadCave2F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  3, 47, VICTORY_ROAD_OUTDOOR_1F, 1
	warp_event 23, 49, VICTORY_ROAD_OUTDOOR_1F, 2
	warp_event 43, 47, VICTORY_ROAD_OUTDOOR_1F, 3
	warp_event  9, 29, VICTORY_ROAD_OUTDOOR_2F, 1
	warp_event 41, 29, VICTORY_ROAD_OUTDOOR_2F, 2
	warp_event 21,  3, VICTORY_ROAD_OUTDOOR_2F, 3
	warp_event 23, 27, VICTORY_ROAD_CAVE_2F, 8
	warp_event 15, 21, VICTORY_ROAD_CAVE_2F, 7
	warp_event 22, 33, VICTORY_ROAD_CAVE_2F, 11
	warp_event 25, 30, VICTORY_ROAD_CAVE_2F, 11
	warp_event 24, 33, VICTORY_ROAD_CAVE_2F, 11

	db 0 ; coord events

	db 2 ; bg events
	bg_event  9, 47, BGEVENT_ITEM, VictoryRoadCave2FMaxRevive
	bg_event 32, 42, BGEVENT_ITEM, VictoryRoadCave2FProtein

	db 11 ; object events
	object_event 22, 35, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave2FBoulder, EVENT_VICTORY_ROAD_CAVE_BOULDER_1
	object_event 24, 30, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadCave2FBoulder, EVENT_VICTORY_ROAD_CAVE_BOULDER_2
	object_event 43, 44, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave2FUltraBall, EVENT_VICTORY_ROAD_INT_ULTRA_BALL
	object_event  5, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave2FMaxRepel, EVENT_VICTORY_ROAD_INT_MAX_REPEL
	object_event 26, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadCave2FMetalCoat, EVENT_VICTORY_ROAD_INT_METAL_COAT
	object_event 15, 45, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerMVictoryRoadCave2F, -1
	object_event 15, 42, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerAceTrainerFVictoryRoadCave2F, -1
	object_event 36, 28, SPRITE_RANGER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 1, TrainerPkmnRangerMVictoryRoadCave2F, -1
	object_event 13, 28, SPRITE_RANGER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPkmnRangerFVictoryRoadCave2F, -1
	object_event  4, 45, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerVeteranMVictoryRoadCave2F, -1
	object_event 13, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBackpackerMVictoryRoadCave2F, -1
	