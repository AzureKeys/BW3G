	const_def 2 ; object constants
	const R20_FRUIT_TREE
	const R20_MAX_POTION
	const R20_PP_MAX
	const R20_SCHOOLBOY_1
	const R20_SCHOOLBOY_2
	const R20_SCHOOLBOY_3
	const R20_SCHOOLBOY_4
	const R20_SCHOOLGIRL_1
	const R20_SCHOOLGIRL_2
	const R20_SCHOOLGIRL_3
	const R20_TEACHER

Rt20_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSchoolboy1R20:
	trainer SCHOOLBOY, SCHOOLBOY_R20_1, EVENT_BEAT_SCHOOLBOY_R20_1, Schoolboy1R20SeenText, Schoolboy1R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Schoolboy1R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolboy2R20:
	trainer SCHOOLBOY, SCHOOLBOY_R20_2, EVENT_BEAT_SCHOOLBOY_R20_2, Schoolboy2R20SeenText, Schoolboy2R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Schoolboy2R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolboy3R20:
	trainer SCHOOLBOY_D, SCHOOLBOY_R20_3, EVENT_BEAT_SCHOOLBOY_R20_3, Schoolboy3R20SeenText, Schoolboy3R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Schoolboy3R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolboy4R20:
	trainer SCHOOLBOY_D, SCHOOLBOY_R20_4, EVENT_BEAT_SCHOOLBOY_R20_4, Schoolboy4R20SeenText, Schoolboy4R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Schoolboy4R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolgirl1R20:
	trainer SCHOOLGIRL, SCHOOLGIRL_R20_1, EVENT_BEAT_SCHOOLGIRL_R20_1, Schoolgirl1R20SeenText, Schoolgirl1R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Schoolgirl1R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolgirl2R20:
	trainer SCHOOLGIRL_D, SCHOOLGIRL_R20_2, EVENT_BEAT_SCHOOLGIRL_R20_2, Schoolgirl2R20SeenText, Schoolgirl2R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Schoolgirl2R20AfterText
	waitbutton
	closetext
	end

TrainerSchoolgirl3R20:
	trainer SCHOOLGIRL_D, SCHOOLGIRL_R20_3, EVENT_BEAT_SCHOOLGIRL_R20_3, Schoolgirl3R20SeenText, Schoolgirl3R20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Schoolgirl3R20AfterText
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
	
R20HPUp:
	hiddenitem HP_UP, EVENT_R_20_HP_UP
	
Schoolboy1R20SeenText:
	text "My favorite class"
	line "is gym!"
	done

Schoolboy1R20BeatenText:
	text "Oh, no!"
	line "How could I lose?"
	done

Schoolboy1R20AfterText:
	text "If #MON were a"
	line "subject at school,"
	cont "I'd be the best!"
	done
	
Schoolboy2R20SeenText:
	text "I can run like the"
	line "wind!"
	done

Schoolboy2R20BeatenText:
	text "Blown away!"
	done

Schoolboy2R20AfterText:
	text "I wear shorts the"
	line "whole year round."

	para "That's my fashion"
	line "policy."
	done
	
Schoolboy3R20SeenText:
	text "Let's battle."
	line "I won't lose!"
	done

Schoolboy3R20BeatenText:
	text "I forgot to do my"
	line "homework!"
	done

Schoolboy3R20AfterText:
	text "Sayonara! I just"
	line "learned that in my"
	cont "Japanese class."
	done
	
Schoolboy4R20SeenText:
	text "We're on a field"
	line "trip to FLOCCESY"

	para "RANCH for"
	line "social studies."
	done

Schoolboy4R20BeatenText:
	text "You're wickedly"
	line "tough!"
	done

Schoolboy4R20AfterText:
	text "I'm tired of walk-"
	line "ing. I need to"
	cont "take a break."
	done
	
Schoolgirl1R20SeenText:
	text "I have a feeling"
	line "that I can win."

	para "Let's see if I'm"
	line "right!"
	done

Schoolgirl1R20BeatenText:
	text "Aww, you are too"
	line "strong."
	done

Schoolgirl1R20AfterText:
	text "EEVEE appear at"
	line "the ranch!"

	para "It's my favorite"
	line "#MON!"
	done
	
Schoolgirl2R20SeenText:
	text "Um…"
	line "I…"
	done

Schoolgirl2R20BeatenText:
	text "…"
	done

Schoolgirl2R20AfterText:
	text "……I'll go train"
	line "some more…"
	done
	
Schoolgirl3R20SeenText:
	text "Hang on. I have to"
	line "phone my mom."
	done

Schoolgirl3R20BeatenText:
	text "Sorry, Mom!"
	line "I was beaten!"
	done

Schoolgirl3R20AfterText:
	text "My mom worries so"
	line "much about me, I"

	para "have to phone her"
	line "all the time."
	done
	
TeacherR20SeenText:
	text "On sunny days, I"
	line "think that the"

	para "kids would rather"
	line "be playing in the"

	para "schoolyard than"
	line "studying in class."
	done

TeacherR20BeatenText:
	text "I didn't want to"
	line "lose…"
	done

TeacherR20AfterText:
	text "Studying is impor-"
	line "tant, but exercise"
	cont "is just as vital."
	done

Rt20_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 39, 10, R_20_VIRBANK_GATE, 1
	warp_event 39, 11, R_20_VIRBANK_GATE, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 39, 14, BGEVENT_ITEM, R20HPUp

	db 11 ; object events
	object_event  6,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R20FruitTree, -1
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20MaxPotion, EVENT_R_20_MAX_POTION
	object_event 18, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20PPMax, EVENT_R_20_PP_MAX
	object_event  9, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboy1R20, -1
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboy2R20, -1
	object_event 23,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolboy3R20, -1
	object_event 36, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolboy4R20, -1
	object_event 30, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSchoolgirl1R20, -1
	object_event 21, 11, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolgirl2R20, -1
	object_event 33,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolgirl3R20, -1
	object_event 38,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerTeacherR20, -1
	