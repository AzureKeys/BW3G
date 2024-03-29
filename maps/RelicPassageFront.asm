	const_def 2 ; object constants
	const RELICPASSAGEFRONT_BOULDER
	const RELICPASSAGEFRONT_HARD_STONE
	const RELICPASSAGEFRONT_ESCAPE_ROPE
	const RELICPASSAGEFRONT_NURSE
	const RELICPASSAGEFRONT_PSYCHICM
	const RELICPASSAGEFRONT_HIKER_1
	const RELICPASSAGEFRONT_HIKER_2
	const RELICPASSAGEFRONT_BACKPACKERF
	
RelicPassageFront_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_RELIC_PASSAGE_FRONT_BOULDER
	iffalse .done
	changeblock 16, 14, $6F ; boulder in pit
.done
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 4, RELICPASSAGEFRONT_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext RelicPassageFrontBoulderFellText
	waitbutton
	disappear RELICPASSAGEFRONT_BOULDER
	changeblock 16, 14, $6F ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	;earthquake 80
	end
	
TrainerNurseRelicPassage:
	trainer NURSE, NURSE_RELIC_PASSAGE, EVENT_BEAT_NURSE_RELIC_PASSAGE, RelicPassageNurseIntroText, RelicPassageNurseWinText, 0, .Script

.Script:
	faceplayer
	opentext
	writetext RelicPassageNurseHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	end

TrainerPsychicMRelicPassage:
	trainer PSYCHICM_T, PSYCHICM_RELIC_PASSAGE, EVENT_BEAT_PSYCHICM_RELIC_PASSAGE, PsychicMRelicPassageSeenText, PsychicMRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMRelicPassageAfterText
	waitbutton
	closetext
	end

TrainerHiker1RelicPassage:
	trainer HIKER, HIKER_RELIC_PASSAGE_1, EVENT_BEAT_HIKER_RELIC_PASSAGE_1, Hiker1RelicPassageSeenText, Hiker1RelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker1RelicPassageAfterText
	waitbutton
	closetext
	end

TrainerHiker2RelicPassage:
	trainer HIKER_D, HIKER_RELIC_PASSAGE_2, EVENT_BEAT_HIKER_RELIC_PASSAGE_2, Hiker2RelicPassageSeenText, Hiker2RelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker2RelicPassageAfterText
	waitbutton
	closetext
	end

TrainerBackpackerFRelicPassage:
	trainer BACKPACKERF, BACKPACKERF_RELIC_PASSAGE, EVENT_BEAT_BACKPACKERF_RELIC_PASSAGE, BackpackerFRelicPassageSeenText, BackpackerFRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFRelicPassageAfterText
	waitbutton
	closetext
	end
	
RelicPassageHardStone:
	itemball HARD_STONE
	
RelicPassageEscapeRope:
	itemball ESCAPE_ROPE
	
RelicPassageMaxRepel:
	hiddenitem MAX_REPEL, EVENT_RELIC_PASSAGE_MAX_REPEL
	
RelicPassageRareCandy:
	hiddenitem RARE_CANDY, EVENT_RELIC_PASSAGE_RARE_CANDY
	
RelicPassageRedShard:
	hiddenitem RED_SHARD, EVENT_RELIC_PASSAGE_RED_SHARD
	
RelicPassageFrontBoulder:
	jumpstd strengthboulder
	
RelicPassageNurseIntroText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
RelicPassageNurseWinText:
	text "Ah, I see."
	done
	
RelicPassageNurseHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
PsychicMRelicPassageSeenText:
	text "It's coming… It's"
	line "coming! The"
	
	para "ancient spiritual"
	line "power!"
	done

PsychicMRelicPassageBeatenText:
	text "The ancient power!"
	line "The sacred power!"
	done

PsychicMRelicPassageAfterText:
	text "I feel an extra-"
	line "ordinary power"
	
	para "emanating from up"
	line "ahead!"
	
	para "Yes! It is a power"
	line "that burns as warm"
	
	para "and bright as the"
	line "sun!"
	done
	
Hiker1RelicPassageSeenText:
	text "Hold up! Did you"
	line "know this path was"
	
	para "supposedly made"
	line "ages and ages ago?"
	done

Hiker1RelicPassageBeatenText:
	text "S-sorry… I just"
	line "got so excited…"
	done

Hiker1RelicPassageAfterText:
	text "Did people really"
	line "make a tunnel this"
	
	para "long all those"
	line "ages ago?"
	
	para "No, they must have"
	line "had many #MON"
	
	para "helping them with"
	line "the work."
	done
	
Hiker2RelicPassageSeenText:
	text "Just because you"
	line "work hard doesn't"
	
	para "mean you're gonna"
	line "get what you want!"
	
	para "But if you don't"
	line "work hard, there"
	
	para "are many things"
	line "you can't do!"
	done

Hiker2RelicPassageBeatenText:
	text "Everything went"
	line "dark all of a"
	cont "sudden!"
	done

Hiker2RelicPassageAfterText:
	text "This tunnel was"
	line "dug out of the"
	cont "rock by #MON!"
	done
	
BackpackerFRelicPassageSeenText:
	text "My path and yours…"
	line "They cross here"
	cont "and now…"
	done

BackpackerFRelicPassageBeatenText:
	text "Now that I think"
	line "about it, I've"
	cont "come quite far…"
	done

BackpackerFRelicPassageAfterText:
	text "I am going"
	line "wherever I can"
	
	para "have glorious"
	line "battles against"
	cont "new people…"
	
	para "It sounds quite"
	line "daring, doesn't"
	cont "it?"
	done
	
RelicPassageFrontBoulderFellText:
	text "The boulder fell"
	line "through!"
	done

RelicPassageFront_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 37, 23, CASTELIA_SEWERS, 7
	warp_event  5,  7, RELIC_PASSAGE_BACK, 1
	warp_event  9,  1, RELIC_PASSAGE_BACK, 2
	warp_event 17, 14, RELIC_PASSAGE_FRONT, 5
	warp_event 18, 14, RELIC_PASSAGE_FRONT, 5

	db 0 ; coord events

	db 3 ; bg events
	bg_event 35, 14, BGEVENT_ITEM, RelicPassageMaxRepel
	bg_event 43, 19, BGEVENT_ITEM, RelicPassageRareCandy
	bg_event 22, 10, BGEVENT_ITEM, RelicPassageRedShard
	
	db 8 ; object events
	object_event 13, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RelicPassageFrontBoulder, EVENT_RELIC_PASSAGE_FRONT_BOULDER
	object_event 28,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RelicPassageHardStone, EVENT_RELIC_PASSAGE_HARD_STONE
	object_event 29, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RelicPassageEscapeRope, EVENT_RELIC_PASSAGE_ESCAPE_ROPE
	object_event 37, 22, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerNurseRelicPassage, -1
	object_event 43,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMRelicPassage, -1
	object_event 13, 20, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerHiker1RelicPassage, -1
	object_event 31, 14, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerHiker2RelicPassage, -1
	object_event 27, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBackpackerFRelicPassage, -1
	