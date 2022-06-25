	const_def 2 ; object constants
	const DESERT_SUPER_POTION
	const DESERT_FRESH_WATER
	const DESERT_RARE_CANDY
	const DESERT_HEART_SCALE
	const DESERT_ROUGHNECK
	const DESERT_HEX_MANIAC
	const DESERT_FIREBREATHER
	const DESERT_POKEFANM
	const DESERT_LASS1
	const DESERT_CAMPER
	const DESERT_PICNICKER
	const DESERT_LASS2
	const DESERT_NURSE
	const DESERT_SAND_MAN

DesertResort_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DesertSandManScript:
	faceplayer
	opentext
	checkevent EVENT_DESERT_SOFT_SAND
	iftrue .GotSand
	writetext DesertSandManGiveText
	buttonsound
	verbosegiveitem SOFT_SAND
	iffalse .NoRoom
	setevent EVENT_DESERT_SOFT_SAND
.GotSand:
	writetext DesertSandManGaveText
	waitbutton
.NoRoom:
	closetext
	end
	
DesertNurseScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_NURSE_DESERT
	iftrue .beaten
	writetext DesertNurseIntroText
	waitbutton
	closetext
	winlosstext DesertNurseWinText, 0
	setlasttalked DESERT_NURSE
	loadtrainer NURSE, NURSE_DESERT
	writecode VAR_BATTLETYPE, BATTLETYPE_NORMAL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NURSE_DESERT
	opentext
.beaten
	writetext DesertNurseHealText
	waitbutton
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	closetext
	end

TrainerRoughneckDesert:
	trainer ROUGHNECK, ROUGHNECK_DESERT, EVENT_BEAT_ROUGHNECK_DESERT, RoughneckDesertSeenText, RoughneckDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RoughneckDesertAfterText
	waitbutton
	closetext
	end

TrainerHexManiacDesert:
	trainer HEX_MANIAC, HEX_MANIAC_DESERT, EVENT_BEAT_HEX_MANIAC_DESERT, HexManiacDesertSeenText, HexManiacDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacDesertAfterText
	waitbutton
	closetext
	end

TrainerFirebreatherDesert:
	trainer FIREBREATHER, FIREBREATHER_DESERT, EVENT_BEAT_FIREBREATHER_DESERT, FirebreatherDesertSeenText, FirebreatherDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherDesertAfterText
	waitbutton
	closetext
	end

TrainerPokefanMDesert:
	trainer POKEFANM, POKEFANM_DESERT, EVENT_BEAT_POKEFANM_DESERT, PokefanMDesertSeenText, PokefanMDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanMDesertAfterText
	waitbutton
	closetext
	end

TrainerCamperDesert:
	trainer CAMPER_D, CAMPER_DESERT, EVENT_BEAT_CAMPER_DESERT, CamperDesertSeenText, CamperDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDesertAfterText
	waitbutton
	closetext
	end

TrainerPicnickerDesert:
	trainer PICNICKER, PICNICKER_DESERT, EVENT_BEAT_PICNICKER_DESERT, PicnickerDesertSeenText, PicnickerDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerDesertAfterText
	waitbutton
	closetext
	end

TrainerLass1Desert:
	trainer LASS, LASS_DESERT_1, EVENT_BEAT_LASS_DESERT_1, Lass1DesertSeenText, Lass1DesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass1DesertAfterText
	waitbutton
	closetext
	end

TrainerLass2Desert:
	trainer LASS_D, LASS_DESERT_2, EVENT_BEAT_LASS_DESERT_2, Lass2DesertSeenText, Lass2DesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Lass2DesertAfterText
	waitbutton
	closetext
	end
	
DesertSuperPotion:
	itemball SUPER_POTION
	
DesertFreshWater:
	itemball FRESH_WATER
	
DesertRareCandy:
	itemball RARE_CANDY
	
DesertHeartScale:
	itemball HEART_SCALE
	
DesertNugget:
	hiddenitem NUGGET, EVENT_DESERT_NUGGET
	
DesertHyperPotion:
	hiddenitem HYPER_POTION, EVENT_DESERT_HYPER_POTION

DesertSandManGiveText:
	text "You're a #MON"
	line "trainer, right?"

	para "Here, this may"
	line "help you."
	done

DesertSandManGaveText:
	text "Give this special"
	line "sand to a #MON"
	
	para "to hold, and its"
	line "GROUND type"
	
	para "attacks will get"
	line "stronger."
	done
	
DesertNurseIntroText:
	text "I'm a nurse, but"
	line "I'm also a #-"
	cont "MON trainer."

	para "If you can defeat"
	line "me in a battle,"
	cont "I'll heal your"
	cont "#MON."
	done
	
DesertNurseWinText:
	text "Ah, I see."
	done
	
DesertNurseHealText:
	text "I'll restore your"
	line "#MON back to"
	cont "full health."
	done
	
RoughneckDesertSeenText:
	text "I've hiked all"
	line "over, so I know"

	para "about all sorts of"
	line "#MON!"
	done

RoughneckDesertBeatenText:
	text "Your skill is"
	line "world class!"
	done

RoughneckDesertAfterText:
	text "All kinds of peo-"
	line "ple around the"

	para "world live happily"
	line "with #MON."
	done
	
HexManiacDesertSeenText:
	text "Hmmm… This is a"
	line "strange place."
	done

HexManiacDesertBeatenText:
	text "…"
	done

HexManiacDesertAfterText:
	text "I like thinking"
	line "here."
	done
	
PokefanMDesertSeenText:
	text "HEY!"

	para "This is my secret"
	line "place! Get lost,"
	cont "you outsider!"
	done

PokefanMDesertBeatenText:
	text "I should have"
	line "picked that move…"
	done

PokefanMDesertAfterText:
	text "You're working on"
	line "a #DEX?"

	para "Wow, you must know"
	line "some pretty rare"
	cont "#MON!"

	para "May I please see"
	line "it. Please?"
	done
	
FirebreatherDesertSeenText:
	text "Ah! The weather's"
	line "as fine as ever."
	done

FirebreatherDesertBeatenText:
	text "It's sunny, but"
	line "I'm all wet…"
	done

FirebreatherDesertAfterText:
	text "When it rains,"
	line "it's hard to get"
	cont "ignition…"
	done
	
CamperDesertSeenText:
	text "Hmmm… I don't know"
	line "what to do…"
	done

CamperDesertBeatenText:
	text "I knew I'd lose…"
	done

CamperDesertAfterText:
	text "You looked strong."

	para "I was afraid to"
	line "take you on…"
	done
	
PicnickerDesertSeenText:
	text "You look strong."

	para "Good trainers seek"
	line "tough opponents"
	cont "instinctively."
	done

PicnickerDesertBeatenText:
	text "Nope! This won't"
	line "do at all."
	done

PicnickerDesertAfterText:
	text "We all get better"
	line "by experiencing"
	cont "many battles."
	done
	
Lass1DesertSeenText:
	text "I love #MON!"

	para "That's why I"
	line "started--and why"

	para "I'll keep on col-"
	line "lecting #MON!"
	done

Lass1DesertBeatenText:
	text "How could you do"
	line "this to me?"
	done

Lass1DesertAfterText:
	text "What else do I"
	line "like besides"
	cont "#MON?"
	done
	
Lass2DesertSeenText:
	text "Be prepared for"
	line "anything!"

	para "Let me see if your"
	line "#MON have been"
	cont "raised properly!"
	done

Lass2DesertBeatenText:
	text "Oh, I lost that!"
	done

Lass2DesertAfterText:
	text "I'll have to do"
	line "more training in"
	cont "the DESERT RESORT."
	done

DesertResort_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 55, 41, R_4_DESERT_GATE, 1
	warp_event 56, 41, R_4_DESERT_GATE, 2
	warp_event 38,  7, RELIC_CASTLE_1F, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 25, 43, BGEVENT_ITEM, DesertNugget
	bg_event  2, 43, BGEVENT_ITEM, DesertHyperPotion

	db 14 ; object events
	object_event 25, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DesertSuperPotion, EVENT_DESERT_SUPER_POTION
	object_event 10, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DesertFreshWater, EVENT_DESERT_FRESH_WATER
	object_event 11, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DesertRareCandy, EVENT_DESERT_RARE_CANDY
	object_event 39, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DesertHeartScale, EVENT_DESERT_HEART_SCALE
	object_event 34, 26, SPRITE_ROUGHNECK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerRoughneckDesert, -1
	object_event  2, 28, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerHexManiacDesert, -1
	object_event 49, 22, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherDesert, -1
	object_event 21,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerPokefanMDesert, -1
	object_event 51, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerLass1Desert, -1
	object_event 39, 38, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE_D, OBJECTTYPE_TRAINER, 3, TrainerCamperDesert, -1
	object_event 24, 14, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerDesert, -1
	object_event 14, 24, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerLass2Desert, -1
	object_event 54, 38, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DesertNurseScript, -1
	object_event 12,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DesertSandManScript, -1
	