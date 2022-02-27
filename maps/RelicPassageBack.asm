	const_def 2 ; object constants
	const RELICPASSAGEBACK_BOULDER_1
	const RELICPASSAGEBACK_BOULDER_2
	const RELICPASSAGEBACK_ULTRA_BALL
	const RELICPASSAGEBACK_PROTEIN
	const RELICPASSAGEBACK_SMOOTH_ROCK
	const RELICPASSAGEBACK_TM_ROCK_SLIDE
	const RELICPASSAGEBACK_HIKER
	const RELICPASSAGEBACK_LASS
	const RELICPASSAGEBACK_CAMPER
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

TrainerHiker3RelicPassage:
	trainer HIKER_D, HIKER_RELIC_PASSAGE_3, EVENT_BEAT_HIKER_RELIC_PASSAGE_3, Hiker3RelicPassageSeenText, Hiker3RelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker3RelicPassageAfterText
	waitbutton
	closetext
	end

TrainerLassRelicPassage:
	trainer LASS, LASS_RELIC_PASSAGE, EVENT_BEAT_LASS_RELIC_PASSAGE, LassRelicPassageSeenText, LassRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassRelicPassageAfterText
	waitbutton
	closetext
	end

TrainerCamperRelicPassage:
	trainer CAMPER, CAMPER_RELIC_PASSAGE, EVENT_BEAT_CAMPER_RELIC_PASSAGE, CamperRelicPassageSeenText, CamperRelicPassageBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperRelicPassageAfterText
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
	
Hiker3RelicPassageSeenText:
	text "My #MON are"
	line "strong enough to"
	cont "move boulders!"
	done

Hiker3RelicPassageBeatenText:
	text "Not strong enough!"
	done

Hiker3RelicPassageAfterText:
	text "I guess my #MON"
	line "need to get"
	cont "stronger!"
	done
	
LassRelicPassageSeenText:
	text "I couldn't get"
	line "across the bridge,"
	
	para "so I'm taking the"
	line "tunnel instead."
	done

LassRelicPassageBeatenText:
	text "You're good."
	done

LassRelicPassageAfterText:
	text "Is there something"
	line "going on in the"
	cont "city?"
	done
	
CamperRelicPassageSeenText:
	text "I'm an expert on"
	line "outdoor travel!"
	done

CamperRelicPassageBeatenText:
	text "It's too much!"
	done

CamperRelicPassageAfterText:
	text "I guess I'm not"
	line "an expert at #-"
	cont "MON battles yet."
	done
	
HexManiacRelicPassageSeenText:
	text "This tunnel is"
	line "connected to the"
	
	para "haunted castle in"
	line "the desert."
	done

HexManiacRelicPassageBeatenText:
	text "You're scary good…"
	done

HexManiacRelicPassageAfterText:
	text "There must be"
	line "something special"

	para "hidden in that"
	line "castle…"
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
	object_event 17, 22, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerHiker3RelicPassage, -1
	object_event 16, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerLassRelicPassage, -1
	object_event 23,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperRelicPassage, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerHexManiacRelicPassage, -1
	