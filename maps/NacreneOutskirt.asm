	const_def 2 ; object constants
	const NACRENEOUTSKIRT_YOUNGSTER
	const NACRENEOUTSKIRT_FULL_HEAL
	const NACRENEOUTSKIRT_IRON
	const NACRENEOUTSKIRT_NUGGET
	const NACRENEOUTSKIRT_PP_MAX
	const NACRENEOUTSKIRT_SCHOOL_KIDM
	const NACRENEOUTSKIRT_SCHOOL_KIDF
	const NACRENEOUTSKIRT_PARASOL_LADY
	const NACRENEOUTSKIRT_RICH_BOY

NacreneOutskirt_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSchoolKidMNacrene:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_NACRENE_OUTSKIRT, EVENT_BEAT_SCHOOL_KIDM_NACRENE_OUTSKIRT, SchoolKidMNacreneSeenText, SchoolKidMNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidMNacreneAfterText
	waitbutton
	closetext
	end

TrainerSchoolKidFNacrene:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_NACRENE_OUTSKIRT, EVENT_BEAT_SCHOOL_KIDF_NACRENE_OUTSKIRT, SchoolKidFNacreneSeenText, SchoolKidFNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidFNacreneAfterText
	waitbutton
	closetext
	end

TrainerParasolLadyNacrene:
	trainer PARASOL_LADY, PARASOL_LADY_NACRENE_OUTSKIRT, EVENT_BEAT_PARASOL_LADY_NACRENE_OUTSKIRT, ParasolLadyNacreneSeenText, ParasolLadyNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ParasolLadyNacreneAfterText
	waitbutton
	closetext
	end

TrainerRichBoyNacrene:
	trainer RICH_BOY, RICH_BOY_NACRENE_OUTSKIRT, EVENT_BEAT_RICH_BOY_NACRENE_OUTSKIRT, RichBoyNacreneSeenText, RichBoyNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RichBoyNacreneAfterText
	waitbutton
	closetext
	end
	
NacreneOutskirtYoungsterScript:
	jumptextfaceplayer NacreneOutskirtYoungsterText
	
NacreneOutskirtFullHeal:
	itemball FULL_HEAL
	
NacreneOutskirtIron:
	itemball IRON
	
NacreneOutskirtNugget:
	itemball NUGGET
	
NacreneOutskirtPPMax:
	itemball PP_MAX
	
NacreneOutskirtSign:
	jumptext NacreneOutskirtSignText
	
NacreneOutskirtYoungsterText:
	text "There are cops in"
	line "the forest. They"
	
	para "wouldn't let me"
	line "through!"
	done
	
SchoolKidMNacreneSeenText:
	text "..."
	done

SchoolKidMNacreneBeatenText:
	text "..."
	done

SchoolKidMNacreneAfterText:
	text "..."
	done
	
SchoolKidFNacreneSeenText:
	text "..."
	done

SchoolKidFNacreneBeatenText:
	text "..."
	done

SchoolKidFNacreneAfterText:
	text "..."
	done
	
ParasolLadyNacreneSeenText:
	text "..."
	done

ParasolLadyNacreneBeatenText:
	text "..."
	done

ParasolLadyNacreneAfterText:
	text "..."
	done
	
RichBoyNacreneSeenText:
	text "..."
	done

RichBoyNacreneBeatenText:
	text "..."
	done

RichBoyNacreneAfterText:
	text "..."
	done
	
NacreneOutskirtSignText:
	text "West to PINWHEEL"
	line "FOREST."
	
	para "Stay on the road!"
	done

NacreneOutskirt_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  8, PINWHEEL_FOREST, 2
	warp_event  3,  9, PINWHEEL_FOREST, 3

	db 0 ; coord events
	
	db 1 ; bg events
	bg_event 15,  4, BGEVENT_READ, NacreneOutskirtSign

	db 9 ; object events
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NacreneOutskirtYoungsterScript, -1
	object_event 13, 44, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtFullHeal, EVENT_NACRENE_OUTSKIRT_FULL_HEAL
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtIron, EVENT_NACRENE_OUTSKIRT_IRON
	object_event  8, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtNugget, EVENT_NACRENE_OUTSKIRT_NUGGET
	object_event 19, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtPPMax, EVENT_NACRENE_OUTSKIRT_PP_MAX
	object_event  6, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidMNacrene, -1
	object_event 15, 29, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidFNacrene, -1
	object_event  5, 34, SPRITE_BUENA, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerParasolLadyNacrene, -1
	object_event 19, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerRichBoyNacrene, -1
	