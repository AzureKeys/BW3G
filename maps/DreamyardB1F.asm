	const_def 2 ; object constants
	const DREAMYARDB1F_HP_UP
	const DREAMYARDB1F_IRON
	const DREAMYARDB1F_CALCIUM
	const DREAMYARDB1F_RARE_CANDY
	const DREAMYARDB1F_SCIENTISTM
	const DREAMYARDB1F_SCIENTISTF
	const DREAMYARDB1F_PSYCHICM
	const DREAMYARDB1F_PSYCHICF

DreamyardB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerScientistMDreamyard:
	trainer SCIENTISTM, SCIENTISTM_DREAMYARD, EVENT_BEAT_SCIENTISTM_DREAMYARD, ScientistMDreamyardSeenText, ScientistMDreamyardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMDreamyardAfterText
	waitbutton
	closetext
	end

TrainerScientistFDreamyard:
	trainer SCIENTISTF, SCIENTISTF_DREAMYARD, EVENT_BEAT_SCIENTISTF_DREAMYARD, ScientistFDreamyardSeenText, ScientistFDreamyardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistFDreamyardAfterText
	waitbutton
	closetext
	end

TrainerPsychicMDreamyard:
	trainer PSYCHICM_T, PSYCHICM_DREAMYARD, EVENT_BEAT_PSYCHICM_DREAMYARD, PsychicMDreamyardSeenText, PsychicMDreamyardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMDreamyardAfterText
	waitbutton
	closetext
	end

TrainerPsychicFDreamyard:
	trainer PSYCHICF_T, PSYCHICF_DREAMYARD, EVENT_BEAT_PSYCHICF_DREAMYARD, PsychicFDreamyardSeenText, PsychicFDreamyardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFDreamyardAfterText
	waitbutton
	closetext
	end
	
DreamyardHPUp:
	itemball HP_UP
	
DreamyardIron:
	itemball IRON
	
DreamyardCalcium:
	itemball CALCIUM
	
DreamyardRareCandy:
	itemball RARE_CANDY
	
DreamyardMaxRepel:
	hiddenitem MAX_REPEL, EVENT_DREAMYARD_MAX_REPEL
	
DreamyardFullHeal:
	hiddenitem FULL_HEAL, EVENT_DREAMYARD_FULL_HEAL
	
ScientistMDreamyardSeenText:
	text "..."
	done

ScientistMDreamyardBeatenText:
	text "..."
	done

ScientistMDreamyardAfterText:
	text "..."
	done
	
ScientistFDreamyardSeenText:
	text "..."
	done

ScientistFDreamyardBeatenText:
	text "..."
	done

ScientistFDreamyardAfterText:
	text "..."
	done
	
PsychicMDreamyardSeenText:
	text "..."
	done

PsychicMDreamyardBeatenText:
	text "..."
	done

PsychicMDreamyardAfterText:
	text "..."
	done
	
PsychicFDreamyardSeenText:
	text "..."
	done

PsychicFDreamyardBeatenText:
	text "..."
	done

PsychicFDreamyardAfterText:
	text "..."
	done

DreamyardB1F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  2, 16, DREAMYARD, 4
	warp_event  2, 17, DREAMYARD, 5
	warp_event 21, 22, DREAMYARD, 6
	warp_event 21, 23, DREAMYARD, 7
	warp_event 21,  2, DREAMYARD, 8
	warp_event 21,  3, DREAMYARD, 9

	db 0 ; coord events

	db 2 ; bg events
	bg_event  9, 23, BGEVENT_ITEM, DreamyardFullHeal
	bg_event 19, 14, BGEVENT_ITEM, DreamyardMaxRepel
	
	db 8 ; object events
	object_event  5,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardHPUp, EVENT_DREAMYARD_HP_UP
	object_event 21,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardIron, EVENT_DREAMYARD_IRON
	object_event  2, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardCalcium, EVENT_DREAMYARD_CALCIUM
	object_event  8,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DreamyardRareCandy, EVENT_DREAMYARD_RARE_CANDY
	object_event  3, 23, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistMDreamyard, -1
	object_event 19,  8, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerScientistFDreamyard, -1
	object_event  7,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMDreamyard, -1
	object_event 14, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicFDreamyard, -1
	