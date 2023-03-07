	const_def 2 ; object constants
	const MISTRALTONCAVE2F_BOULDER_1
	const MISTRALTONCAVE2F_BOULDER_2
	const MISTRALTONCAVE2F_BOULDER_3
	const MISTRALTONCAVE2F_PP_UP
	const MISTRALTONCAVE2F_DUSK_BALL
	const MISTRALTONCAVE2F_REVIVE
	const MISTRALTONCAVE2F_KINGS_ROCK
	const MISTRALTONCAVE2F_ACE_TRAINER_M
	const MISTRALTONCAVE2F_ACE_TRAINER_F

MistraltonCave2F_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable
	
.SetTiles:
	checkevent EVENT_MISTRALTON_CAVE_2F_BOULDER_1
	iffalse .check2
	changeblock  8, 18, $6f ; boulder in pit
.check2
	checkevent EVENT_MISTRALTON_CAVE_2F_BOULDER_2
	iffalse .check3
	changeblock 18, 10, $6f ; boulder in pit
.check3
	checkevent EVENT_MISTRALTON_CAVE_2F_BOULDER_3
	iffalse .done
	changeblock 10, 12, $6f ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 3, MISTRALTONCAVE2F_BOULDER_1, .Boulder1
	stonetable 4, MISTRALTONCAVE2F_BOULDER_2, .Boulder2
	stonetable 5, MISTRALTONCAVE2F_BOULDER_3, .Boulder3
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave2FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE2F_BOULDER_1
	changeblock  8, 18, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave2FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE2F_BOULDER_2
	changeblock 18, 10, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder3:
	pause 30
	scall .FX
	opentext
	writetext MistraltonCave2FBoulderFellText
	waitbutton
	disappear MISTRALTONCAVE2F_BOULDER_3
	changeblock 10, 12, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end

TrainerAceTrainerMMistraltonCave:
	trainer ACE_TRAINERM, ACE_TRAINERM_MISTRALTON_CAVE, EVENT_BEAT_ACE_TRAINERM_MISTRALTON_CAVE, AceTrainerMMistraltonCaveSeenText, AceTrainerMMistraltonCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMMistraltonCaveAfterText
	waitbutton
	closetext
	end

TrainerAceTrainerFMistraltonCave:
	trainer ACE_TRAINERF, ACE_TRAINERF_MISTRALTON_CAVE, EVENT_BEAT_ACE_TRAINERF_MISTRALTON_CAVE, AceTrainerFMistraltonCaveSeenText, AceTrainerFMistraltonCaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFMistraltonCaveAfterText
	waitbutton
	closetext
	end
	
MistraltonCave2FBoulder:
	jumpstd strengthboulder
	
MistraltonCave2FPPUp:
	itemball PP_UP
	
MistraltonCave2FDuskBall:
	itemball DUSK_BALL
	
MistraltonCave2FRevive:
	itemball REVIVE
	
MistraltonCave2FKingsRock:
	itemball KINGS_ROCK
	
MistraltonCave2FHyperPotion:
	hiddenitem HYPER_POTION, EVENT_MISTRALTON_CAVE_HYPER_POTION
	
MistraltonCave2FMaxRepel:
	hiddenitem MAX_REPEL, EVENT_MISTRALTON_CAVE_MAX_REPEL
	
MistraltonCave2FProtein:
	hiddenitem PROTEIN, EVENT_MISTRALTON_CAVE_PROTEIN
	
MistraltonCave2FMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_MISTRALTON_CAVE_MAX_REVIVE
	
AceTrainerMMistraltonCaveSeenText:
	text "Behold my"
	line "impressive"
	
	para "physique. It's"
	line "fitting of an ACE"
	cont "TRAINER!"
	done

AceTrainerMMistraltonCaveBeatenText:
	text "My #MON didn't"
	line "do my physique"
	cont "justice!"
	done

AceTrainerMMistraltonCaveAfterText:
	text "You can do all"
	line "sorts of crazy"
	
	para "stuff as long as"
	line "you've got energy!"
	done
	
AceTrainerFMistraltonCaveSeenText:
	text "Why don't you prove"
	line "to me how much you"
	
	para "and your #MON"
	line "are capable of!"
	done

AceTrainerFMistraltonCaveBeatenText:
	text "You are capable of"
	line "far more than we"
	cont "are!"
	done

AceTrainerFMistraltonCaveAfterText:
	text "There actually"
	line "wasn't any need to"
	
	para "prove how strong"
	line "we are. I already"
	
	para "know how capable"
	line "my #MON and I"
	cont "are!"
	done
	
MistraltonCave2FBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

MistraltonCave2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  3, 15, MISTRALTON_CAVE_1F, 2
	warp_event 15,  7, MISTRALTON_CAVE_3F, 1
	warp_event  9, 18, MISTRALTON_CAVE_2F, 1
	warp_event 19, 10, MISTRALTON_CAVE_2F, 1
	warp_event 11, 12, MISTRALTON_CAVE_2F, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 14, 17, BGEVENT_ITEM, MistraltonCave2FHyperPotion
	bg_event 18, 16, BGEVENT_ITEM, MistraltonCave2FMaxRepel
	bg_event  3,  7, BGEVENT_ITEM, MistraltonCave2FProtein
	bg_event  9, 23, BGEVENT_ITEM, MistraltonCave2FMaxRevive
	
	db 9 ; object events
	object_event  7, 17, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave2FBoulder, EVENT_MISTRALTON_CAVE_2F_BOULDER_1
	object_event 22,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave2FBoulder, EVENT_MISTRALTON_CAVE_2F_BOULDER_2
	object_event 14, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistraltonCave2FBoulder, EVENT_MISTRALTON_CAVE_2F_BOULDER_3
	object_event  6,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave2FPPUp, EVENT_MISTRALTON_CAVE_PP_UP
	object_event 17, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave2FDuskBall, EVENT_MISTRALTON_CAVE_DUSK_BALL
	object_event 21, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave2FRevive, EVENT_MISTRALTON_CAVE_REVIVE
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MistraltonCave2FKingsRock, EVENT_MISTRALTON_CAVE_KINGS_ROCK
	object_event  3, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerMMistraltonCave, -1
	object_event 23,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerFMistraltonCave, -1
	