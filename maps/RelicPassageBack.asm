	const_def 2 ; object constants
	const RELICPASSAGEBACK_BOULDER_1
	const RELICPASSAGEBACK_BOULDER_2
	const RELICPASSAGEBACK_ULTRA_BALL
	const RELICPASSAGEBACK_PROTEIN
	const RELICPASSAGEBACK_SMOOTH_ROCK
	const RELICPASSAGEBACK_TM_ROCK_SLIDE
	const RELICPASSAGEBACK_WORKER
	const RELICPASSAGEBACK_PSYCHICF
	const RELICPASSAGEBACK_BACKPACKERM
	const RELICPASSAGEBACK_HEX_MANIAC

RelicPassageBack_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_RELIC_PASSAGE_BACK_BOULDER_1
	iffalse .next
	changeblock 26,  2, $6F ; boulder in pit
.next
	checkevent EVENT_RELIC_PASSAGE_BACK_BOULDER_2
	iffalse .done
	changeblock 12,  4, $6F ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 4, RELICPASSAGEBACK_BOULDER_1, .Boulder1
	stonetable 6, RELICPASSAGEBACK_BOULDER_2, .Boulder2
	db -1 ; end

.Boulder1:
	pause 30
	scall .FX
	opentext
	writetext RelicPassageBackBoulderFellText
	waitbutton
	disappear RELICPASSAGEBACK_BOULDER_1
	changeblock 26,  2, $6F ; boulder in pit
	reloadmappart
	closetext
	end

.Boulder2:
	pause 30
	scall .FX
	opentext
	writetext RelicPassageBackBoulderFellText
	waitbutton
	disappear RELICPASSAGEBACK_BOULDER_2
	changeblock 12,  4, $6F ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

TrainerWorkerRelicPassage:
	trainer WORKER, WORKER_RELIC_PASSAGE, EVENT_BEAT_WORKER_RELIC_PASSAGE, WorkerRelicPassageSeenText, WorkerRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WorkerRelicPassageAfterText
	waitbutton
	closetext
	end

TrainerPsychicFRelicPassage:
	trainer PSYCHICF_T, PSYCHICF_RELIC_PASSAGE, EVENT_BEAT_PSYCHICF_RELIC_PASSAGE, PsychicFRelicPassageSeenText, PsychicFRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFRelicPassageAfterText
	waitbutton
	closetext
	end

TrainerBackpackerMRelicPassage:
	trainer BACKPACKERM, BACKPACKERM_RELIC_PASSAGE, EVENT_BEAT_BACKPACKERM_RELIC_PASSAGE, BackpackerMRelicPassageSeenText, BackpackerMRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMRelicPassageAfterText
	waitbutton
	closetext
	end

TrainerHexManiacRelicPassage:
	trainer HEX_MANIAC, HEX_MANIAC_RELIC_PASSAGE, EVENT_BEAT_HEX_MANIAC_RELIC_PASSAGE, HexManiacRelicPassageSeenText, HexManiacRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacRelicPassageAfterText
	waitbutton
	closetext
	end
	
RelicPassageUltraBall:
	itemball ULTRA_BALL
	
RelicPassageProtein:
	itemball PROTEIN
	
RelicPassageSmoothRock:
	itemball SMOOTH_ROCK
	
RelicPassageTMRockSlide:
	itemball TM_ROCK_SLIDE
	
RelicPassageBackBoulder:
	jumpstd strengthboulder
	
WorkerRelicPassageSeenText:
	text "The fact that you"
	line "are here means…"
	
	para "You are also part"
	line "of the sewers?!"
	
	para "Then I will survey"
	line "you too!"
	done

WorkerRelicPassageBeatenText:
	text "Huh… Where am I?"
	line "Who are you?"
	done

WorkerRelicPassageAfterText:
	text "What? I got so"
	line "caught up in my"
	
	para "survey of the"
	line "sewer that I ended"
	
	para "up in the RELIC"
	line "PASSAGE?"
	done
	
PsychicFRelicPassageSeenText:
	text "The sewer and this"
	line "RELIC PASSAGE…"
	
	para "Is it really"
	line "coincidence that"
	
	para "they exist so"
	line "close to each"
	cont "other?"
	done

PsychicFRelicPassageBeatenText:
	text "No! There must be"
	line "a reason why!"
	done

PsychicFRelicPassageAfterText:
	text "Modern men make"
	line "sewers, ancient"
	
	para "men made these"
	line "paths…"
	done
	
BackpackerMRelicPassageSeenText:
	text "First, one big"
	line "last gulp…"
	
	para "Hold your breath!"
	done

BackpackerMRelicPassageBeatenText:
	text "Puuaaah!"
	line "Holding your"
	
	para "breath is really"
	line "tough…"
	done

BackpackerMRelicPassageAfterText:
	text "The air that I"
	line "just breathed in…"
	
	para "It could actually"
	line "be really ancient"
	
	para "air that hasn't"
	line "changed for ages,"
	cont "you know?"
	done
	
HexManiacRelicPassageSeenText:
	text "Just being here"
	line "fills me with"
	cont "magical power…"
	done

HexManiacRelicPassageBeatenText:
	text "You seem to be"
	line "full of magical"
	cont "power, too…"
	done

HexManiacRelicPassageAfterText:
	text "In ancient places,"
	line "magical energy"
	cont "remains…"

	para "I can understand"
	line "it. So much sorrow"
	cont "and joy…"
	done
	
RelicPassageBackBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

RelicPassageBack_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 25, 29, RELIC_PASSAGE_FRONT, 2
	warp_event 27, 23, RELIC_PASSAGE_FRONT, 3
	warp_event  3,  3, PWT_OUTSIDE, 1
	warp_event 27,  2, RELIC_PASSAGE_BACK, 5
	warp_event 26,  2, RELIC_PASSAGE_BACK, 5
	warp_event 13,  4, RELIC_PASSAGE_BACK, 7
	warp_event 14,  4, RELIC_PASSAGE_BACK, 7
	warp_event 27,  1, RELIC_CASTLE_B4F, 4

	db 0 ; coord events

	db 0 ; bg events
	
	db 10 ; object events
	object_event 27,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RelicPassageBackBoulder, EVENT_RELIC_PASSAGE_BACK_BOULDER_1
	object_event 10,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RelicPassageBackBoulder, EVENT_RELIC_PASSAGE_BACK_BOULDER_2
	object_event 17,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RelicPassageUltraBall, EVENT_RELIC_PASSAGE_ULTRA_BALL
	object_event 25,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RelicPassageProtein, EVENT_RELIC_PASSAGE_PROTEIN
	object_event 11, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RelicPassageSmoothRock, EVENT_RELIC_PASSAGE_SMOOTH_ROCK
	object_event 26, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RelicPassageTMRockSlide, EVENT_RELIC_PASSAGE_TM_ROCK_SLIDE
	object_event 17, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerWorkerRelicPassage, -1
	object_event 16, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicFRelicPassage, -1
	object_event 23,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBackpackerMRelicPassage, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerHexManiacRelicPassage, -1
	