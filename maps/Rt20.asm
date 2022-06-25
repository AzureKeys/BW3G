	const_def 2 ; object constants
	const R20_FRUIT_TREE
	const R20_MAX_POTION
	const R20_PP_MAX
	const R20_HEART_SCALE
	const R20_SCHOOL_KIDM_1
	const R20_SCHOOL_KIDM_2
	const R20_SCHOOL_KIDM_3
	const R20_SCHOOL_KIDM_4
	const R20_SCHOOL_KIDF_1
	const R20_SCHOOL_KIDF_2
	const R20_SCHOOL_KIDF_3
	const R20_TEACHER

Rt20_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSchoolKidM1R20:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_R20_1, EVENT_BEAT_SCHOOL_KIDM_R20_1, SchoolKidM1R20SeenText, SchoolKidM1R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidM1R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidM2R20:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_R20_2, EVENT_BEAT_SCHOOL_KIDM_R20_2, SchoolKidM2R20SeenText, SchoolKidM2R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidM2R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidM3R20:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_R20_3, EVENT_BEAT_SCHOOL_KIDM_R20_3, SchoolKidM3R20SeenText, SchoolKidM3R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidM3R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidM4R20:
	trainer SCHOOL_KIDM, SCHOOL_KIDM_R20_4, EVENT_BEAT_SCHOOL_KIDM_R20_4, SchoolKidM4R20SeenText, SchoolKidM4R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidM4R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidF1R20:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_R20_1, EVENT_BEAT_SCHOOL_KIDF_R20_1, SchoolKidF1R20SeenText, SchoolKidF1R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidF1R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidF2R20:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_R20_2, EVENT_BEAT_SCHOOL_KIDF_R20_2, SchoolKidF2R20SeenText, SchoolKidF2R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidF2R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolKidF3R20:
	trainer SCHOOL_KIDF, SCHOOL_KIDF_R20_3, EVENT_BEAT_SCHOOL_KIDF_R20_3, SchoolKidF3R20SeenText, SchoolKidF3R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolKidF3R20AfterText
	waitbutton
	closetext
	end

TrainerTeacherR20:
	trainer TEACHER, TEACHER_R20, EVENT_BEAT_TEACHER_R20, TeacherR20SeenText, TeacherR20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherR20AfterText
	waitbutton
	closetext
	end
	
R20FruitTree:
	fruittree FRUITTREE_R_20
	
R20MaxPotion:
	itemball MAX_POTION
	
R20PPMax:
	itemball PP_MAX
	
R20HeartScale:
	itemball HEART_SCALE
	
R20HPUp:
	hiddenitem HP_UP, EVENT_R_20_HP_UP
	
SchoolKidM1R20SeenText:
	text "My favorite class"
	line "is gym!"
	done

SchoolKidM1R20BeatenText:
	text "Oh, no!"
	line "How could I lose?"
	done

SchoolKidM1R20AfterText:
	text "If #MON were a"
	line "subject at school,"
	cont "I'd be the best!"
	done
	
SchoolKidM2R20SeenText:
	text "All right! Time"
	line "for a #MON"
	
	para "battle! Let's"
	line "begin!"
	done

SchoolKidM2R20BeatenText:
	text "Whew! You're way"
	line "too strong!"
	done

SchoolKidM2R20AfterText:
	text "Time for some"
	line "special #MON"
	cont "training!"
	done
	
SchoolKidM3R20SeenText:
	text "Let's battle."
	line "I won't lose!"
	done

SchoolKidM3R20BeatenText:
	text "I forgot to do my"
	line "homework!"
	done

SchoolKidM3R20AfterText:
	text "Sayonara! I just"
	line "learned that in my"
	cont "Japanese class."
	done
	
SchoolKidM4R20SeenText:
	text "I'm gonna get a"
	line "lot stronger so I"
	cont "can battle ROXIE!"
	done

SchoolKidM4R20BeatenText:
	text "Ahaha…"
	line "It can't be true…"
	done

SchoolKidM4R20AfterText:
	text "I want to get a"
	line "lot stronger so I"
	cont "can impress ROXIE!"
	done
	
SchoolKidF1R20SeenText:
	text "I have a feeling"
	line "that I can win."

	para "Let's see if I'm"
	line "right!"
	done

SchoolKidF1R20BeatenText:
	text "Aww, you are too"
	line "strong."
	done

SchoolKidF1R20AfterText:
	text "EEVEE appear at"
	line "the ranch!"

	para "It's my favorite"
	line "#MON!"
	done
	
SchoolKidF2R20SeenText:
	text "Um…"
	line "I…"
	done

SchoolKidF2R20BeatenText:
	text "…"
	done

SchoolKidF2R20AfterText:
	text "……I'll go train"
	line "some more…"
	done
	
SchoolKidF3R20SeenText:
	text "Hang on. I have to"
	line "phone my mom."
	done

SchoolKidF3R20BeatenText:
	text "Sorry, Mom!"
	line "I was beaten!"
	done

SchoolKidF3R20AfterText:
	text "My mom worries so"
	line "much about me, I"

	para "have to phone her"
	line "all the time."
	done
	
TeacherR20SeenText:
	text "I always give it"
	line "my best when I'm"

	para "around kids and"
	line "#MON!"
	done

TeacherR20BeatenText:
	text "Oh no! I'm not"
	line "being a very good"
	
	para "example to the"
	line "kids, am I?"
	done

TeacherR20AfterText:
	text "Every day is full"
	line "of amazing, new"
	
	para "discoveries when"
	line "I'm with children"
	cont "and #MON!"
	done

Rt20_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 39, 10, R_20_VIRBANK_GATE, 1
	warp_event 39, 11, R_20_VIRBANK_GATE, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 39, 14, BGEVENT_ITEM, R20HPUp

	db 12 ; object events
	object_event  6,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R20FruitTree, -1
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20MaxPotion, EVENT_R_20_MAX_POTION
	object_event 18, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20PPMax, EVENT_R_20_PP_MAX
	object_event  6, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20HeartScale, EVENT_R_20_HEART_SCALE
	object_event  9, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidM1R20, -1
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidM2R20, -1
	object_event 23,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidM3R20, -1
	object_event 36, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidM4R20, -1
	object_event 30, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidF1R20, -1
	object_event 21, 11, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidF2R20, -1
	object_event 33,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidF3R20, -1
	object_event 38,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerTeacherR20, -1
	