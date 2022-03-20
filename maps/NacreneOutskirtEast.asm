	const_def 2 ; object constants
	const NACRENEOUTSKIRTEAST_BLACKBELT
	const NACRENEOUTSKIRTEAST_BATTLE_GIRL

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
	text "..."
	done

BattleGirlNacreneBeatenText:
	text "..."
	done

BattleGirlNacreneAfterText:
	text "..."
	done
	
BlackbeltNacreneSeenText:
	text "..."
	done

BlackbeltNacreneBeatenText:
	text "..."
	done

BlackbeltNacreneAfterText:
	text "..."
	done

NacreneOutskirtEast_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events
	
	db 2 ; bg events
	bg_event 17, 12, BGEVENT_ITEM, NacreneOutskirtUltraBall
	bg_event 20, 10, BGEVENT_ITEM, NacreneOutskirtMaxElixer

	db 2 ; object events
	object_event 17, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltNacrene, -1
	object_event 21, 16, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlNacrene, -1
	