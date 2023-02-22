	const_def 2 ; object constants
	const NACRENEOUTSKIRTEAST_BLACKBELT
	const NACRENEOUTSKIRTEAST_BATTLE_GIRL
	const NACRENEOUTSKIRTEAST_DUMMY_TRAINER
	const NACRENEOUTSKIRTEAST_DUMMY_ITEM

NacreneOutskirtEast_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBlackbeltNacrene:
	trainer BLACKBELT_T, BLACKBELT_NACRENE_OUTSKIRT, EVENT_BEAT_BLACKBELT_NACRENE_OUTSKIRT, BlackbeltNacreneSeenText, BlackbeltNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltNacreneAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlNacrene:
	trainer BATTLE_GIRL, BATTLE_GIRL_NACRENE_OUTSKIRT, EVENT_BEAT_BATTLE_GIRL_NACRENE_OUTSKIRT, BattleGirlNacreneSeenText, BattleGirlNacreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlNacreneAfterText
	waitbutton
	closetext
	end
	
NacreneOutskirtUltraBall:
	hiddenitem ULTRA_BALL, EVENT_NACRENE_OUTSKIRT_ULTRA_BALL
	
NacreneOutskirtMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_NACRENE_OUTSKIRT_MAX_ELIXER
	
BattleGirlNacreneSeenText:
	text "Heh, I wonder what"
	line "would happen if I"
	
	para "had all my #MON"
	line "attack at once?"
	done

BattleGirlNacreneBeatenText:
	text "I couldn't focus"
	line "on the target!"
	done

BattleGirlNacreneAfterText:
	text "A flood of attacks"
	line "from #MON…"
	
	para "I know! Jetstream"
	line "Attack! Let's call"
	cont "it that!"
	done
	
BlackbeltNacreneSeenText:
	text "I will read your"
	line "mind and predict"
	cont "your every move!"
	done

BlackbeltNacreneBeatenText:
	text "Your moves… They"
	line "are entirely"
	cont "unpredictable!"
	done

BlackbeltNacreneAfterText:
	text "I am a trainer who"
	line "fights as freely"
	
	para "as the clouds"
	line "drift in the sky!"
	done

NacreneOutskirtEast_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events
	
	db 2 ; bg events
	bg_event 17, 12, BGEVENT_ITEM, NacreneOutskirtUltraBall
	bg_event 20, 10, BGEVENT_ITEM, NacreneOutskirtMaxElixer

	db 4 ; object events
	object_event 17, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltNacrene, -1
	object_event 21, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlNacrene, -1
	object_event -2, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, 0, -1
	object_event -3,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, EVENT_NACRENE_OUTSKIRT_PP_MAX
	