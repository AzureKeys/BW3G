	const_def 2 ; object constants
	const R16_RARE_CANDY
	const R16_TINYMUSHROOM
	const R16_QUICK_CLAW
	const R16_TM_SUNNY_DAY
	const R16_BACKPACKERM
	const R16_BACKPACKERF
	const R16_BACKERSM_1
	const R16_BACKERSM_2
	const R16_CYCLISTM
	const R16_CYCLISTF

Rt16_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerCyclistFR16:
	trainer CYCLISTF, CYCLISTF_R16, EVENT_BEAT_CYCLISTF_R16, CyclistFR16SeenText, CyclistFR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CyclistFR16AfterText
	waitbutton
	closetext
	end

TrainerBackpackerMR16:
	trainer BACKPACKERM, BACKPACKERM_R16, EVENT_BEAT_BACKPACKERM_R16, BackpackerMR16SeenText, BackpackerMR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMR16AfterText
	waitbutton
	closetext
	end

TrainerBackpackerFR16:
	trainer BACKPACKERF, BACKPACKERF_R16, EVENT_BEAT_BACKPACKERF_R16, BackpackerFR16SeenText, BackpackerFR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFR16AfterText
	waitbutton
	closetext
	end

TrainerBackersMR16:
	trainer BACKERSM, BACKERSM_R16, EVENT_BEAT_BACKERSM_R16, BackersMR16SeenText, BackersMR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackersMR16AfterText
	waitbutton
	closetext
	end

TrainerCyclistMR16:
	trainer CYCLISTM, CYCLISTM_R16, EVENT_BEAT_CYCLISTM_R16, CyclistMR16SeenText, CyclistMR16BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CyclistMR16AfterText
	waitbutton
	closetext
	end
	
R16Sign:
	jumptext R16SignText
	
R16RareCandy:
	itemball RARE_CANDY
	
R16Tinymushroom:
	itemball TINYMUSHROOM
	
R16QuickClaw:
	itemball QUICK_CLAW
	
R16TMSunnyDay:
	itemball TM_SUNNY_DAY
	
CyclistFR16SeenText:
	text "Ting-a-ling-ling!"
	line "Full speed attack,"
	cont "coming your way!"
	done

CyclistFR16BeatenText:
	text "Ting-a-ling-ling!"
	line "Ting-a-ling-ling!"
	done

CyclistFR16AfterText:
	text "When people are"
	line "running by, you"

	para "can't help but"
	line "stop and look at"
	cont "them."
	done
	
BackpackerMR16SeenText:
	text "A spot of greenery"
	line "growing right next"
	cont "to a big city!"
	
	para "Truly an oasis! I"
	line "feel so refreshed…"
	
	para "And now I'd like"
	line "to battle!"
	done

BackpackerMR16BeatenText:
	text "Oh… It no longer"
	line "feels like an"
	cont "oasis if I lose."
	done

BackpackerMR16AfterText:
	text "There are some"
	line "moves that can be"

	para "used on things in"
	line "the environment."
	
	para "Do you know any"
	line "of them?"
	done
	
BackpackerFR16SeenText:
	text "City #MON or"
	line "#MON that live"
	cont "in the forest…"
	
	para "Which do you"
	line "prefer?"
	done

BackpackerFR16BeatenText:
	text "I love both kinds"
	line "of #MON, but I"
	cont "don't like losing…"
	done

BackpackerFR16AfterText:
	text "The best place for"
	line "humans to live"
	
	para "isn't necessarily"
	line "the best place for"
	cont "#MON."
	
	para "Of course, the"
	line "best place for me"
	
	para "to live is in my"
	line "bed!"
	done
	
BackersMR16SeenText:
	text "Tomorrow will be a"
	line "home run!"
	done

BackersMR16BeatenText:
	text "Farewell, you won!"
	done

BackersMR16AfterText:
	text "Your #MON"
	line "certainly have"
	cont "what it takes!"
	done
	
CyclistMR16SeenText:
	text "When I'm riding my"
	line "bicycle, don't you"
	
	para "think I look"
	line "stronger?"
	done

CyclistMR16BeatenText:
	text "The cool breeze in"
	line "my face stopped!"
	done

CyclistMR16AfterText:
	text "Cycling is a sport"
	line "too! Follow the"
	
	para "rules and ride"
	line "safely!"
	done
	
R16SignText:
	text "NIMBASA CITY"
	line "ahead."
	done

Rt16_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 20,  4, R_16_LOSTLORN_GATE, 3
	warp_event 20,  5, R_16_LOSTLORN_GATE, 4
	warp_event  4, 22, R_16_NIMBASA_GATE, 3
	warp_event  4, 23, R_16_NIMBASA_GATE, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5, 20, BGEVENT_READ, R16Sign

	db 10 ; object events
	object_event 29, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R16RareCandy, EVENT_R_16_RARE_CANDY
	object_event 17,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R16Tinymushroom, EVENT_R_16_TINYMUSHROOM
	object_event  8, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R16QuickClaw, EVENT_R_16_QUICK_CLAW
	object_event 33, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R16TMSunnyDay, EVENT_R_16_TM_SUNNY_DAY
	object_event 18, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBackpackerMR16, -1
	object_event 22,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerBackpackerFR16, -1
	object_event 14, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersMR16, -1
	object_event 15, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBackersMR16, -1
	object_event 30, 22, SPRITE_CYCLIST_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCyclistMR16, -1
	object_event 13, 18, SPRITE_CYCLIST_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCyclistFR16, -1
	