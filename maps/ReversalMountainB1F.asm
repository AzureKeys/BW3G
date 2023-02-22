	const_def 2 ; object constants
	const REVERSALMOUNTAIN_MOON_STONE
	const REVERSALMOUNTAIN_TM_ROCK_TOMB
	const REVERSALMOUNTAIN_X_ATTACK
	const REVERSALMOUNTAIN_HIKER_1
	const REVERSALMOUNTAIN_BATTLE_GIRL

ReversalMountainB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerHiker1Reversal:
	trainer HIKER, HIKER_REVERSAL_1, EVENT_BEAT_HIKER_REVERSAL_1, Hiker1ReversalSeenText, Hiker1ReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Hiker1ReversalAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlReversal:
	trainer BATTLE_GIRL, BATTLE_GIRL_REVERSAL, EVENT_BEAT_BATTLE_GIRL_REVERSAL, BattleGirlReversalSeenText, BattleGirlReversalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlReversalAfterText
	waitbutton
	closetext
	end
	
ReversalMountainMoonStone:
	itemball MOON_STONE
	
ReversalMountainTMRockTomb:
	itemball TM_ROCK_TOMB
	
ReversalMountainXAttack:
	itemball X_ATTACK
	
ReversalMountainHyperPotion:
	hiddenitem HYPER_POTION, EVENT_REVERSAL_MOUNTAIN_HYPER_POTION
	
Hiker1ReversalSeenText:
	text "Me and my #MON"
	line "are professional"

	para "tunnellers! We"
	line "have no rival!"
	done

Hiker1ReversalBeatenText:
	text "To hit a wall like"
	line "this…"
	done

Hiker1ReversalAfterText:
	text "When we dig"
	line "through tunnels,"
	
	para "I get all wound"
	line "up!"
	done
	
BattleGirlReversalSeenText:
	text "I can feel the"
	line "energy that over-"
	
	para "flows from the"
	line "earth!"
	done

BattleGirlReversalBeatenText:
	text "I felt the energy"
	line "that overflowed"
	cont "from your #MON!"
	done

BattleGirlReversalAfterText:
	text "This mountain was"
	line "once a volcano."

	para "And volcanoes hold"
	line "the planet's"
	cont "energy!"
	done
	
ReversalMountainB1F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 23,  9, UNDELLA_TOWN, 5
	warp_event 19,  3, REVERSAL_MOUNTAIN_1F, 1
	warp_event  7, 11, LENTIMAS_OUTSKIRTS, 1
	warp_event 11,  5, REVERSAL_MOUNTAIN_1F, 4
	warp_event 27, 21, REVERSAL_MOUNTAIN_1F, 2
	warp_event  7, 27, REVERSAL_MOUNTAIN_1F, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event 21,  7, BGEVENT_ITEM, ReversalMountainHyperPotion

	db 5 ; object events
	object_event 20, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainMoonStone, EVENT_REVERSAL_MOUNTAIN_MOON_STONE
	object_event  6, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, ReversalMountainTMRockTomb, EVENT_REVERSAL_MOUNTAIN_TM_ROCK_TOMB
	object_event  4,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReversalMountainXAttack, EVENT_REVERSAL_MOUNTAIN_X_ATTACK
	object_event 21, 22, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHiker1Reversal, -1
	object_event  6,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBattleGirlReversal, -1
	