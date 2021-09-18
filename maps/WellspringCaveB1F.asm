	const_def 2 ; object constants
	const WELLSPRINGCAVEB1F_TM_SHADOW_CLAW
	const WELLSPRINGCAVEB1F_CARBOS
	const WELLSPRINGCAVEB1F_MAX_POTION
	const WELLSPRINGCAVEB1F_BLACKBELT
	const WELLSPRINGCAVEB1F_BATTLE_GIRL
	const WELLSPRINGCAVEB1F_HIKER

WellspringCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBlackbeltWellspringB1F:
	trainer BLACKBELT_T, BLACKBELT_WELLSPRING_2, EVENT_BEAT_BLACKBELT_WELLSPRING_2, BlackbeltWellspringB1FSeenText, BlackbeltWellspringB1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltWellspringB1FAfterText
	waitbutton
	closetext
	end

TrainerHikerWellspringB1F:
	trainer HIKER, HIKER_WELLSPRING, EVENT_BEAT_HIKER_WELLSPRING, HikerWellspringB1FSeenText, HikerWellspringB1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerWellspringB1FAfterText
	waitbutton
	closetext
	end

TrainerBattleGirlWellspringB1F:
	trainer BATTLE_GIRL, BATTLE_GIRL_WELLSPRING, EVENT_BEAT_BATTLE_GIRL_WELLSPRING, BattleGirlWellspringB1FSeenText, BattleGirlWellspringB1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlWellspringB1FAfterText
	waitbutton
	closetext
	end
	
WellspringCaveB1FTMShadowClaw:
	itemball TM_SHADOW_CLAW
	
WellspringCaveB1FCarbos:
	itemball CARBOS
	
WellspringCaveB1FMaxPotion:
	itemball MAX_POTION
	
WellspringCaveB1FMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_WELLSPRING_CAVE_MAX_ELIXER
	
WellspringCaveB1FMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_WELLSPRING_CAVE_MAX_REVIVE
	
BlackbeltWellspringB1FSeenText:
	text "We martial artists"
	line "fear nothing!"
	done

BlackbeltWellspringB1FBeatenText:
	text "That's shocking!"
	done

BlackbeltWellspringB1FAfterText:
	text "Fighting #MON"
	line "are afraid of psy-"
	cont "chics…"
	done
	
BattleGirlWellspringB1FSeenText:
	text "Words are useless."
	line "Let your fists do"
	cont "the talking!"
	done

BattleGirlWellspringB1FBeatenText:
	text "…"
	done

BattleGirlWellspringB1FAfterText:
	text "I lost! "
	line "I'm speechless!"
	done
	
HikerWellspringB1FSeenText:
	text "There's no cheat-"
	line "ing in #MON."

	para "Let's keep it fair"
	line "and square!"
	done

HikerWellspringB1FBeatenText:
	text "Huh? How did this"
	line "happen?"
	done

HikerWellspringB1FAfterText:
	text "I fought fair and"
	line "square with honor."

	para "I don't regret"
	line "this at all."
	done

WellspringCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  3, 47, WELLSPRING_CAVE_1F, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  9, 29, BGEVENT_ITEM, WellspringCaveB1FMaxElixer
	bg_event 15,  3, BGEVENT_ITEM, WellspringCaveB1FMaxRevive
	
	db 6 ; object events
	object_event 11,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, WellspringCaveB1FTMShadowClaw, EVENT_WELLSPRING_CAVE_TM_SHADOW_CLAW
	object_event 18, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WellspringCaveB1FCarbos, EVENT_WELLSPRING_CAVE_CARBOS
	object_event 18, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WellspringCaveB1FMaxPotion, EVENT_WELLSPRING_CAVE_MAX_POTION
	object_event  9,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltWellspringB1F, -1
	object_event 12, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBattleGirlWellspringB1F, -1
	object_event 11, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerHikerWellspringB1F, -1
	