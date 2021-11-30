	const_def 2 ; object constants
	const CASTELIASEWERS_X_SPECIAL
	const CASTELIASEWERS_X_SPCL_DEF
	const CASTELIASEWERS_PEARL
	const CASTELIASEWERS_LEFTOVERS
	const CASTELIASEWERS_TM_SLUDGE_BOMB
	const CASTELIASEWERS_HM_STRENGTH
	const CASTELIASEWERS_SCIENTISTM
	const CASTELIASEWERS_SCIENTISTF
	const CASTELIASEWERS_POKEFANM
	const CASTELIASEWERS_GRUNTM_1
	const CASTELIASEWERS_GRUNTM_2
	const CASTELIASEWERS_GRUNTF_1
	const CASTELIASEWERS_GRUNTF_2
	const CASTELIASEWERS_BLOCKER
	const CASTELIASEWERS_BOULDER_1
	const CASTELIASEWERS_BOULDER_2

CasteliaSewers_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .SetTiles

.SetTiles:
	checkevent EVENT_CASTELIA_SEWER_WATER
	iffalse .done
	changeblock  4,  8, $4B ; water
	changeblock  4, 10, $4B ; water
	changeblock  4, 12, $4B ; water
	changeblock  4, 14, $4B ; water
	changeblock  4, 16, $4B ; water
	changeblock  4, 18, $4B ; water
	changeblock  4, 20, $4B ; water
	changeblock  4, 22, $4B ; water
	changeblock 12,  8, $4B ; water
	changeblock 12, 14, $4B ; water
	changeblock 14, 16, $4B ; water
	changeblock 14, 18, $4B ; water
	changeblock 14, 22, $4B ; water
	changeblock 14, 26, $4B ; water
	changeblock 18, 12, $4B ; water
	changeblock 18, 14, $4B ; water
	changeblock 20, 12, $4B ; water
	changeblock 20, 14, $4B ; water
	changeblock 30, 14, $4B ; water
	changeblock 32, 14, $4B ; water
	changeblock 26, 18, $4B ; water
	changeblock 26, 22, $4B ; water
	changeblock 26, 24, $4B ; water
	changeblock 26, 28, $4B ; water
	changeblock 28, 22, $4B ; water
	changeblock 30, 22, $4B ; water
	changeblock 32, 22, $4B ; water
	changeblock 34, 22, $4B ; water
	changeblock 36, 22, $4B ; water
	changeblock 36, 26, $4B ; water
	changeblock 36, 28, $4B ; water
	changeblock 36, 30, $4B ; water
	changeblock 38, 28, $4B ; water
	changeblock 38, 30, $4B ; water
	changeblock 40, 28, $4B ; water
	changeblock 36, 34, $4B ; water
	changeblock 36, 36, $4B ; water
	changeblock 36, 38, $4B ; water
	changeblock 36, 40, $4B ; water
	changeblock 26, 34, $4B ; water
	changeblock 26, 36, $4B ; water
	changeblock 26, 38, $4B ; water
	changeblock 26, 40, $4B ; water
	changeblock 14, 32, $4B ; water
	changeblock 14, 36, $4B ; water
	changeblock 14, 38, $4B ; water
	changeblock 14, 40, $4B ; water
	changeblock  8, 30, $4B ; water
	changeblock 10, 30, $4B ; water
	changeblock 12, 30, $4B ; water
	changeblock 14, 30, $4B ; water
	changeblock 16, 30, $4B ; water
	changeblock 18, 30, $4B ; water
	changeblock 20, 30, $4B ; water
	changeblock 22, 30, $4B ; water
	changeblock 24, 30, $4B ; water
	changeblock 26, 30, $4B ; water
	changeblock 28, 30, $4B ; water
	changeblock 30, 30, $4B ; water
	changeblock 32, 30, $4B ; water
	changeblock 36, 18, $4B ; water
	changeblock 36, 16, $4B ; water
	changeblock 38, 16, $4B ; water
	changeblock 36, 14, $4B ; water
	changeblock 36, 12, $4B ; water
	changeblock 36, 10, $4B ; water
	changeblock 36,  8, $4B ; water
	changeblock 36,  6, $4B ; water
	changeblock 36,  4, $4B ; water
	changeblock 38,  6, $4B ; water
	changeblock 42,  4, $4B ; water
	changeblock 42,  6, $4B ; water
	changeblock 42,  8, $4B ; water
	changeblock 44,  4, $4B ; water
	changeblock 44,  6, $4B ; water
	changeblock 46,  4, $4B ; water
	changeblock 46,  6, $4B ; water
	changeblock 50,  4, $4B ; water
	
	changeblock  6, 14, $AD ; wall top water l
	changeblock  6, 22, $AD ; wall top water l
	changeblock 16, 40, $AD ; wall top water l
	changeblock 28, 40, $AD ; wall top water l
	changeblock 38, 40, $AD ; wall top water l
	changeblock 14, 14, $AD ; wall top water l
	
	changeblock 24, 40, $AE ; wall top water r
	changeblock 34, 40, $AE ; wall top water r
	changeblock 28, 14, $AE ; wall top water r
	changeblock 10, 14, $AE ; wall top water r
	
	changeblock  8, 14, $62 ; wall top water
	changeblock  8, 22, $62 ; wall top water
	changeblock 10, 22, $62 ; wall top water
	changeblock 18, 22, $62 ; wall top water
	changeblock 20, 22, $62 ; wall top water
	changeblock 22, 22, $62 ; wall top water
	changeblock 26, 14, $62 ; wall top water
	changeblock 30, 12, $62 ; wall top water
	changeblock 18, 40, $62 ; wall top water
	changeblock 20, 40, $62 ; wall top water
	changeblock 22, 40, $62 ; wall top water
	changeblock 30, 40, $62 ; wall top water
	changeblock 32, 40, $62 ; wall top water
	changeblock 40, 40, $62 ; wall top water
	
	changeblock 12, 10, $63 ; water with gate
	changeblock 14, 20, $63 ; water with gate
	changeblock 14, 28, $63 ; water with gate
	changeblock 26, 16, $63 ; water with gate
	changeblock 26, 20, $63 ; water with gate
	changeblock 26, 32, $63 ; water with gate
	changeblock 36, 20, $63 ; water with gate
	changeblock 36, 32, $63 ; water with gate
	
	changeblock 12, 12, $49 ; left-right bridge
	changeblock 14, 24, $49 ; left-right bridge
	changeblock 14, 34, $49 ; left-right bridge
	changeblock 26, 26, $49 ; left-right bridge
	changeblock 36, 24, $49 ; left-right bridge
	
	changeblock 12, 22, $4A ; up-down bridge
	changeblock 16, 14, $4A ; up-down bridge
	changeblock 16, 22, $4A ; up-down bridge
	changeblock 24, 22, $4A ; up-down bridge
	changeblock 40,  6, $4A ; up-down bridge
	changeblock 48,  4, $4A ; up-down bridge
	
	changeblock 34, 30, $5F ; wall right water
	changeblock 34, 14, $5F ; wall right water
	
	changeblock 38, 14, $60 ; up-right stairs water
	changeblock 38, 26, $60 ; up-right stairs water
	changeblock  4, 30, $60 ; up-right stairs water
	
	changeblock  6, 30, $61 ; up-left stairs water
	changeblock 24, 18, $61 ; up-left stairs water
	
	changeblock 32, 32, $82 ; floor
	
	changeblock 48,  6, $6E ; flooded stairs right
	changeblock 22, 12, $6E ; flooded stairs right
	
	changeblock 16, 12, $6F ; flooded stairs left
	changeblock 12, 26, $6F ; flooded stairs left
	changeblock 40,  4, $6F ; flooded stairs left
	changeblock 40,  8, $6F ; flooded stairs left
	
	changeblock 34, 18, $69 ; flooded stairs left top
	changeblock 34, 20, $70 ; flooded stairs left bottom
	
	changeblock  6, 32, $72 ; flooded stairs top
	
	changeblock 28, 12, $71 ; flooded stairs left fixed
.done
	return

CasteliaSewersBlockerScript:
	faceplayer
	opentext
	writetext CasteliaSewersBlockerText
	waitbutton
	closetext
	turnobject CASTELIASEWERS_BLOCKER, UP
	end

TrainerScientistMCasteliaSewers:
	trainer SCIENTIST_M, SCIENTISTM_CASTELIA_SEWERS, EVENT_BEAT_SCIENTISTM_CASTELIA_SEWERS, ScientistMCasteliaSewersSeenText, ScientistMCasteliaSewersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMCasteliaSewersAfterText
	waitbutton
	closetext
	end

TrainerScientistFCasteliaSewers:
	trainer SCIENTIST_F, SCIENTISTF_CASTELIA_SEWERS, EVENT_BEAT_SCIENTISTF_CASTELIA_SEWERS, ScientistFCasteliaSewersSeenText, ScientistFCasteliaSewersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFCasteliaSewersAfterText
	waitbutton
	closetext
	end

TrainerPokefanMCasteliaSewers:
	trainer POKEFANM, POKEFANM_CASTELIA_SEWERS, EVENT_BEAT_POKEFANM_CASTELIA_SEWERS, PokefanMCasteliaSewersSeenText, PokefanMCasteliaSewersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanMCasteliaSewersAfterText
	waitbutton
	closetext
	end

TrainerGruntM1CasteliaSewers:
	trainer GRUNTM, GRUNTM_CASTELIA_SEWERS_1, EVENT_BEAT_GRUNTM_CASTELIA_SEWERS_1, GruntM1CasteliaSewersSeenText, GruntM1CasteliaSewersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM1CasteliaSewersAfterText
	waitbutton
	closetext
	end

TrainerGruntM2CasteliaSewers:
	trainer GRUNTM, GRUNTM_CASTELIA_SEWERS_2, EVENT_BEAT_GRUNTM_CASTELIA_SEWERS_2, GruntM2CasteliaSewersSeenText, GruntM2CasteliaSewersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM2CasteliaSewersAfterText
	waitbutton
	closetext
	end

TrainerGruntF1CasteliaSewers:
	trainer GRUNTF, GRUNTF_CASTELIA_SEWERS_1, EVENT_BEAT_GRUNTF_CASTELIA_SEWERS_1, GruntF1CasteliaSewersSeenText, GruntF1CasteliaSewersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF1CasteliaSewersAfterText
	waitbutton
	closetext
	end

TrainerGruntF2CasteliaSewers:
	trainer GRUNTF, GRUNTF_CASTELIA_SEWERS_2, EVENT_BEAT_GRUNTF_CASTELIA_SEWERS_2, GruntF2CasteliaSewersSeenText, GruntF2CasteliaSewersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF2CasteliaSewersAfterText
	waitbutton
	closetext
	end
	
CasteliaSewersXSpecial:
	itemball X_SPECIAL
	
CasteliaSewersXSpclDef:
	itemball X_SP_DEF
	
CasteliaSewersPearl:
	itemball PEARL
	
CasteliaSewersLeftovers:
	itemball LEFTOVERS
	
CasteliaSewersTMSludgeBomb:
	itemball TM_SLUDGE_BOMB
	
CasteliaSewersHMStrength:
	itemball HM_STRENGTH
	
CasteliaSewersMaxRepel:
	hiddenitem MAX_REPEL, EVENT_CASTELIA_SEWERS_MAX_REPEL
	
CasteliaSewersNugget:
	hiddenitem NUGGET, EVENT_CASTELIA_SEWERS_NUGGET
	
CasteliaSewersBoulder:
	jumpstd strengthboulder
	
ScientistMCasteliaSewersSeenText:
	text "I'm studying the"
	line "environment here."
	done

ScientistMCasteliaSewersBeatenText:
	text "Oh! Too much data!"
	done

ScientistMCasteliaSewersAfterText:
	text "There are machines"
	line "that let water in"
	cont "and out of the"
	cont "sewers."
	done
	
ScientistFCasteliaSewersSeenText:
	text "Hi, would you like"
	line "to assist in my"
	cont "research?"
	done

ScientistFCasteliaSewersBeatenText:
	text "Duly noted!"
	done

ScientistFCasteliaSewersAfterText:
	text "I'm interested in"
	line "the drainage"
	cont "system down here."
	done
	
PokefanMCasteliaSewersSeenText:
	text "There's a tunnel"
	line "in the back of"
	cont "the sewers."

	para "If you can beat"
	line "me, I'll tell you"
	cont "how to get there."
	done

PokefanMCasteliaSewersBeatenText:
	text "Okay, I'll tell"
	line "you!"
	done

PokefanMCasteliaSewersAfterText:
	text "The tunnel is"
	line "blocked by a"
	cont "boulder."

	para "You'll need a"
	line "special move to"
	cont "get past it."
	
	para "Maybe you can find"
	line "something like"
	cont "that in the"
	cont "sewers!"
	done
	
GruntM1CasteliaSewersSeenText:
	text "Hey! You're that"
	line "kid who's been"
	cont "messing with our"
	cont "plans!"
	done

GruntM1CasteliaSewersBeatenText:
	text "Grrr…"
	done

GruntM1CasteliaSewersAfterText:
	text "What are we up to?"

	para "Ha! Like I'd tell"
	line "you!"
	done
	
GruntM2CasteliaSewersSeenText:
	text "Uh-oh, busted!"
	done

GruntM2CasteliaSewersBeatenText:
	text "Darn!"
	done

GruntM2CasteliaSewersAfterText:
	text "My boss is gonna"
	line "be upset…"
	done
	
GruntF1CasteliaSewersSeenText:
	text "Hey, kid! You'd"
	line "better stay out"
	cont "of our way!"
	done

GruntF1CasteliaSewersBeatenText:
	text "Busted!"
	done

GruntF1CasteliaSewersAfterText:
	text "We won't let you"
	line "mess up our plans"
	cont "in the city."
	done
	
GruntF2CasteliaSewersSeenText:
	text "Kids are no match"
	line "for TEAM PLASMA!"
	done

GruntF2CasteliaSewersBeatenText:
	text "I was wrong!"
	done

GruntF2CasteliaSewersAfterText:
	text "Darn, we can't let"
	line "the plan be"
	cont "compromised…"
	done

CasteliaSewersBlockerText:
	text "Hey buddy, there's"
	line "important stuff"
	cont "going on in here."

	para "Buzz off!"
	done
	
CasteliaSewers_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 49, 10, CASTELIA_CITY_SOUTH, 14
	warp_event  9,  4, CASTELIA_SEWERS_ROOMS, 1
	warp_event  9, 10, CASTELIA_SEWERS_ROOMS, 3
	warp_event 19,  8, CASTELIA_SEWERS_ROOMS, 5
	warp_event 33,  8, CASTELIA_SEWERS_ROOMS, 7
	warp_event  5, 25, CASTELIA_SEWERS_ROOMS, 9
	warp_event 33,  0, RELIC_PASSAGE_FRONT, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 17, 27, BGEVENT_ITEM, CasteliaSewersMaxRepel
	bg_event 32, 28, BGEVENT_ITEM, CasteliaSewersNugget
	
	db 16 ; object events
	object_event  7, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersXSpecial, EVENT_CASTELIA_SEWERS_X_SPECIAL
	object_event 29, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersXSpclDef, EVENT_CASTELIA_SEWERS_X_SPCL_DEF
	object_event 30, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersPearl, EVENT_CASTELIA_SEWERS_PEARL
	object_event 33, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersLeftovers, EVENT_CASTELIA_SEWERS_LEFTOVERS
	object_event 15,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersTMSludgeBomb, EVENT_CASTELIA_SEWERS_TM_SLUDGE_BOMB
	object_event 41, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, CasteliaSewersHMStrength, EVENT_CASTELIA_SEWERS_HM_STRENGTH
	object_event  0,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistMCasteliaSewers, -1
	object_event 17, 10, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerScientistFCasteliaSewers, -1
	object_event 42, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokefanMCasteliaSewers, -1
	object_event 20, 19, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerGruntM1CasteliaSewers, EVENT_CASTELIA_SEWERS_GRUNTS
	object_event 21, 33, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerGruntM2CasteliaSewers, EVENT_CASTELIA_SEWERS_GRUNTS
	object_event 40, 21, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntF1CasteliaSewers, EVENT_CASTELIA_SEWERS_GRUNTS
	object_event 21, 25, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF2CasteliaSewers, EVENT_CASTELIA_SEWERS_GRUNTS
	object_event 33,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CasteliaSewersBlockerScript, EVENT_CASTELIA_SEWER_BLOCKER
	object_event 13,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSewersBoulder, -1
	object_event 36,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CasteliaSewersBoulder, -1
	