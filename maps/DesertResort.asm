	const_def 2 ; object constants
	const DESERT_SUPER_POTION
	const DESERT_FRESH_WATER
	const DESERT_RARE_CANDY
	const DESERT_HEART_SCALE
	const DESERT_ROUGHNECK
	const DESERT_HEX_MANIAC
	const DESERT_YOUNGSTER
	const DESERT_BACKPACKERM
	const DESERT_BACKPACKERF
	const DESERT_PKMN_RANGERM
	const DESERT_PKMN_RANGERF
	const DESERT_LASS
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
	trainer NURSE, NURSE_DESERT, EVENT_BEAT_NURSE_DESERT, DesertNurseIntroText, DesertNurseWinText, 0, .Script

.Script:
	faceplayer
	opentext
	writetext DesertNurseHealText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
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

TrainerYoungsterDesert:
	trainer YOUNGSTER_D, YOUNGSTER_DESERT, EVENT_BEAT_YOUNGSTER_DESERT, YoungsterDesertSeenText, YoungsterDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterDesertAfterText
	waitbutton
	closetext
	end

TrainerBackpackerMDesert:
	trainer BACKPACKERM, BACKPACKERM_DESERT, EVENT_BEAT_BACKPACKERM_DESERT, BackpackerMDesertSeenText, BackpackerMDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMDesertAfterText
	waitbutton
	closetext
	end

TrainerBackpackerFDesert:
	trainer BACKPACKERF, BACKPACKERF_DESERT, EVENT_BEAT_BACKPACKERF_DESERT, BackpackerFDesertSeenText, BackpackerFDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFDesertAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerMDesert:
	trainer PKMN_RANGERM, PKMN_RANGERM_DESERT, EVENT_BEAT_PKMN_RANGERM_DESERT, PkmnRangerMDesertSeenText, PkmnRangerMDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerMDesertAfterText
	waitbutton
	closetext
	end

TrainerPkmnRangerFDesert:
	trainer PKMN_RANGERF, PKMN_RANGERF_DESERT, EVENT_BEAT_PKMN_RANGERF_DESERT, PkmnRangerFDesertSeenText, PkmnRangerFDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PkmnRangerFDesertAfterText
	waitbutton
	closetext
	end

TrainerLassDesert:
	trainer LASS, LASS_DESERT, EVENT_BEAT_LASS_DESERT, LassDesertSeenText, LassDesertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassDesertAfterText
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
	text "My shiny head is a"
	line "reflection of my"
	cont "fighting spirit!"
	done

RoughneckDesertBeatenText:
	text "My shine is set"
	line "to blind!"
	done

RoughneckDesertAfterText:
	text "My dumb little bro"
	line "decided to follow"

	para "in my footsteps"
	line "and became a bad"
	
	para "dude. I really"
	line "wanted him to grow"
	
	para "up and live resp-"
	line "ectfully though…"
	done
	
HexManiacDesertSeenText:
	text "Hm… You're strong,"
	line "aren't you?"
	
	para "It's tough when"
	line "you know that"
	
	para "before you even"
	line "start the fight."
	done

HexManiacDesertBeatenText:
	text "Urk… I can't do"
	line "anything to you…"
	done

HexManiacDesertAfterText:
	text "I like to play tag"
	line "with my #MON"
	cont "that teleport."
	done
	
BackpackerMDesertSeenText:
	text "If you want to"
	line "know what I've got"

	para "in my backpack,"
	line "why don't you try"
	cont "to beat me!"
	done

BackpackerMDesertBeatenText:
	text "Wooah! I'm going"
	line "to be buried!"
	done

BackpackerMDesertAfterText:
	text "My backpack is"
	line "full of sand from"
	cont "the desert."
	done
	
YoungsterDesertSeenText:
	text "Starting a day"
	line "ago, I decided to"
	cont "become a bad dude!"
	done

YoungsterDesertBeatenText:
	text "I guess I can't"
	line "just become a bad"
	
	para "dude. It's tougher"
	line "than it looks!"
	done

YoungsterDesertAfterText:
	text "I want to be like"
	line "my big bro and"
	cont "have a shiny head!"
	done
	
PkmnRangerMDesertSeenText:
	text "I will show you"
	line "the harshness of"
	
	para "the desert through"
	line "a battle!"
	done

PkmnRangerMDesertBeatenText:
	text "Desert… hot…"
	line "Mouth… dry…"
	done

PkmnRangerMDesertAfterText:
	text "Beware of burns!"
	line "If a #MON gets"

	para "a burn, it also"
	line "weakens physical"
	cont "attacks."
	done
	
PkmnRangerFDesertSeenText:
	text "A scorching"
	line "deset! A passion"
	
	para "for adventure! And"
	line "a heated battle!"
	done

PkmnRangerFDesertBeatenText:
	text "Hot! Hot! Hot!"
	line "Hot!!!"
	done

PkmnRangerFDesertAfterText:
	text "Whether it's hot"
	line "or cold, there is"
	
	para "no problem if you"
	line "have passion!"
	done
	
LassDesertSeenText:
	text "No matter how"
	line "desperately I try"
	
	para "to scoop up the"
	line "sand, it flows"
	cont "through my hands."
	
	para "It's kind of sad"
	line "somehow…"
	done

LassDesertBeatenText:
	text "Victory slips"
	line "away… Just like"
	cont "the sand…"
	done

LassDesertAfterText:
	text "Be careful, but"
	line "never be afraid"
	cont "of the journey."
	done
	
BackpackerFDesertSeenText:
	text "A desert is like"
	line "one giant sandbox,"

	para "right? So come on,"
	line "let's let our"
	cont "#MON play!"
	done

BackpackerFDesertBeatenText:
	text "Since this is for"
	line "play, whoever has"
	cont "the most fun wins!"
	done

BackpackerFDesertAfterText:
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
	object_event 49, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 4, TrainerYoungsterDesert, -1
	object_event 21,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBackpackerMDesert, -1
	object_event 14, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBackpackerFDesert, -1
	object_event 39, 38, SPRITE_RANGER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerMDesert, -1
	object_event 24, 14, SPRITE_RANGER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPkmnRangerFDesert, -1
	object_event 51, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerLassDesert, -1
	object_event 54, 38, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, DesertNurseScript, -1
	object_event 12,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DesertSandManScript, -1
	