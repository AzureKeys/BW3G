	const_def 2 ; object constants
	const NACRENEOUTSKIRT_YOUNGSTER_2
	const NACRENEOUTSKIRT_FULL_HEAL
	const NACRENEOUTSKIRT_IRON
	const NACRENEOUTSKIRT_NUGGET
	const NACRENEOUTSKIRT_PP_MAX
	const NACRENEOUTSKIRT_YOUNGSTER
	const NACRENEOUTSKIRT_LASS
	const NACRENEOUTSKIRT_PARASOL_LADY
	const NACRENEOUTSKIRT_RICH_BOY

NacreneOutskirt_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerYoungsterNacrene:
	trainer YOUNGSTER_D, YOUNGSTER_NACRENE_OUTSKIRT, EVENT_BEAT_YOUNGSTER_NACRENE_OUTSKIRT, YoungsterNacreneSeenText, YoungsterNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterNacreneAfterText
	waitbutton
	closetext
	end

TrainerLassNacrene:
	trainer LASS, LASS_NACRENE_OUTSKIRT, EVENT_BEAT_LASS_NACRENE_OUTSKIRT, LassNacreneSeenText, LassNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassNacreneAfterText
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
	
YoungsterNacreneSeenText:
	text "I'm just gonna run"
	line "around! I've got"
	
	para "the whole field to"
	line "myself!"
	done

YoungsterNacreneBeatenText:
	text "I know… I shouldn't"
	line "take it all for"
	cont "myself…"
	done

YoungsterNacreneAfterText:
	text "I ran around a"
	line "ton today!"
	done
	
LassNacreneSeenText:
	text "Hey, trainer! Let's"
	line "have a refreshing"
	
	para "battle and blow"
	line "away all my"
	cont "troubles!"
	done

LassNacreneBeatenText:
	text "You guys feel like"
	line "an unbeatable"
	cont "combination!"
	done

LassNacreneAfterText:
	text "I've been thinking"
	line "lately. Even if I"
	
	para "were separated"
	line "from my #MON,"
	
	para "would they choose"
	line "me as their"
	cont "trainer again…?"
	done
	
ParasolLadyNacreneSeenText:
	text "A woman standing"
	line "alone with a para-"
	cont "sol in one hand…"
	
	para "Hi… Please have a"
	line "battle with me."
	done

ParasolLadyNacreneBeatenText:
	text "The parasol can't"
	line "block defeat…"
	done

ParasolLadyNacreneAfterText:
	text "I heard a parasol"
	line "is great… But I'm"
	
	para "the only one who"
	line "has one?"
	done
	
RichBoyNacreneSeenText:
	text "Are you ready to"
	line "experience a VIP"
	
	para "#MON battle"
	line "performance?"
	done

RichBoyNacreneBeatenText:
	text "My performance"
	line "wasn't up to VIP"
	cont "standards…"
	done

RichBoyNacreneAfterText:
	text "A true VIP exper-"
	line "ience is one where"
	
	para "you can truly see"
	line "the battle up"
	cont "close!"
	done
	
NacreneOutskirtSignText:
	text "West to PINWHEEL"
	line "FOREST."
	
	para "Stay on the road!"
	done

NacreneOutskirt_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3, 12, PINWHEEL_FOREST, 2
	warp_event  3, 13, PINWHEEL_FOREST, 3

	db 0 ; coord events
	
	db 1 ; bg events
	bg_event 15,  8, BGEVENT_READ, NacreneOutskirtSign

	db 9 ; object events
	object_event  9,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NacreneOutskirtYoungsterScript, -1
	object_event 13, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtFullHeal, EVENT_NACRENE_OUTSKIRT_FULL_HEAL
	object_event 13, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtIron, EVENT_NACRENE_OUTSKIRT_IRON
	object_event  8, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtNugget, EVENT_NACRENE_OUTSKIRT_NUGGET
	object_event 17, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NacreneOutskirtPPMax, EVENT_NACRENE_OUTSKIRT_PP_MAX
	object_event  6, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerYoungsterNacrene, -1
	object_event 15, 33, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLassNacrene, -1
	object_event  5, 38, SPRITE_BUENA, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerParasolLadyNacrene, -1
	object_event 18, 44, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerRichBoyNacrene, -1
	