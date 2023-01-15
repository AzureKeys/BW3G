	const_def 2 ; object constants
	const R20_FRUIT_TREE
	const R20_MAX_POTION
	const R20_PP_MAX
	const R20_HEART_SCALE
	const R20_SCHOOL_KIDM_1
	const R20_SCHOOL_KIDM_2
	const R20_SCHOOL_KIDM_3
	const R20_TWINS_1
	const R20_TWINS_2
	const R20_SCHOOL_KIDF_1
	const R20_SCHOOL_KIDF_2
	const R20_SCHOOL_KIDF_3
	const R20_NURSERY_AIDE

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

TrainerTwinsR20:
	trainer TWINS, TWINS_R20, EVENT_BEAT_TWINS_R20, TwinsR20SeenText, TwinsR20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsR20AfterText
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

TrainerNurseryAideR20:
	trainer NURSERY_AIDE, NURSERY_AIDE_R20, EVENT_BEAT_NURSERY_AIDE_R20, NurseryAideR20SeenText, NurseryAideR20BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NurseryAideR20AfterText
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
	text "To me, the battle-"
	line "field is a place"
	cont "for learning!"
	done

SchoolKidM1R20BeatenText:
	text "W-wait! I've got"
	line "to analyze this"
	cont "defeat!"
	done

SchoolKidM1R20AfterText:
	text "By losing, you can"
	line "discover what your"
	cont "true strength is!"
	done
	
SchoolKidM2R20SeenText:
	text "Hey, you! You're"
	line "gonna lose and"
	cont "cry!"
	done

SchoolKidM2R20BeatenText:
	text "…Grrr!"
	done

SchoolKidM2R20AfterText:
	text "That's it! I'm"
	line "gonna become the"
	
	para "Champion, and then"
	line "I'll blow you out"
	cont "of the water!"
	done
	
SchoolKidM3R20SeenText:
	text "You look tough!"
	
	para "All right! My"
	line "#MON are burn-"
	cont "ing for a fight"
	
	para "against a tough"
	line "opponent!"
	done

SchoolKidM3R20BeatenText:
	text "Arg! I wasn't able"
	line "to give good"
	cont "orders!"
	done

SchoolKidM3R20AfterText:
	text "What do you think"
	line "would happen if we"
	
	para "had our #MON"
	line "fight without any"
	cont "orders?"
	done
	
TwinsR20SeenText:
	text "The two of us make"
	line "an amazing"
	cont "combination!"
	
	para "Let's battle!"
	done

TwinsR20BeatenText:
	text "Our amazing"
	line "combination…"
	done

TwinsR20AfterText:
	text "Even though we"
	line "look the same, our"
	
	para "parents can always"
	line "tell us apart!"
	done
	
SchoolKidF1R20SeenText:
	text "Is that a #DEX?"

	para "I'd love it if you"
	line "would show me lots"
	
	para "of different kinds"
	line "of #MON!"
	done

SchoolKidF1R20BeatenText:
	text "I've never seen a"
	line "#MON like that!"
	done

SchoolKidF1R20AfterText:
	text "Hmm… I wonder if I"
	line "would meet some"

	para "new #MON if I"
	line "went to the RANCH?"
	done
	
SchoolKidF2R20SeenText:
	text "Hi, hi! Trainer!"
	line "Please show me"
	
	para "what kinds of"
	line "#MON you are"
	cont "training!"
	done

SchoolKidF2R20BeatenText:
	text "Great, great! I"
	line "didn't know that"
	
	para "way to raise #-"
	line "MON!"
	done

SchoolKidF2R20AfterText:
	text "When you let a"
	line "#MON evolve, it"
	
	para "will be stronger,"
	line "but if you don't"
	
	para "let it evolve, it"
	line "will learn moves"
	cont "quicker."
	done
	
SchoolKidF3R20SeenText:
	text "Ta-da! Here's my"
	line "cute #MON!"
	done

SchoolKidF3R20BeatenText:
	text "Oh maaaan!"
	done

SchoolKidF3R20AfterText:
	text "…It's okay. My"
	line "precious #MON"

	para "will make me feel"
	line "better when we get"
	cont "home."
	done
	
NurseryAideR20SeenText:
	text "I always give it"
	line "my best when I'm"

	para "around kids and"
	line "#MON!"
	done

NurseryAideR20BeatenText:
	text "Oh no! I'm not"
	line "being a very good"
	
	para "example to the"
	line "kids, am I?"
	done

NurseryAideR20AfterText:
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

	db 13 ; object events
	object_event  6,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R20FruitTree, -1
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20MaxPotion, EVENT_R_20_MAX_POTION
	object_event 18, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20PPMax, EVENT_R_20_PP_MAX
	object_event  6, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R20HeartScale, EVENT_R_20_HEART_SCALE
	object_event  9, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidM1R20, -1
	object_event 36, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidM2R20, -1
	object_event 23,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidM3R20, -1
	object_event 12,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsR20, -1
	object_event 13,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsR20, -1
	object_event 30, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidF1R20, -1
	object_event 21, 11, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerSchoolKidF2R20, -1
	object_event 33,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerSchoolKidF3R20, -1
	object_event 38,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerNurseryAideR20, -1
	