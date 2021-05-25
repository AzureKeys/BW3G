Marts:
; entries correspond to MART_* constants
	dw MartUnderground
	dw MartHumilau
	dw MartHumilauDex
	dw MartLacunosa
	dw MartLacunosaDex
	dw MartLentimas
	dw MartNimbasa
	dw MartNimbasaVitamin
	dw MartNimbasaBall
	dw MartR4NimbasaGate
	dw MartCastelia2F1
	dw MartCastelia2F2
	dw MartCastelia3F
	dw MartCastelia4F
	dw MartAspertia
	dw MartVirbank
	dw MartNacrene
	dw MartNacreneCafe
	dw MartStriaton
	dw MartAccumula
	dw MartDriftveil
	dw MartMerchant1
	dw MartMerchant2
	dw MartMistralton
	dw MartOpelucid
	dw MartIcirrus
.End

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end
	
MartHumilau:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end
	
MartHumilauDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end
	
MartLacunosa:
	db 5 ; # items
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end
	
MartLacunosaDex:
	db 6 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartLentimas:
	db 7 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db -1 ; end

MartNimbasa:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartNimbasaVitamin:
	db 5 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db -1 ; end

MartNimbasaBall:
	db 7 ; # items
	db FRIEND_BALL
	db HEAVY_BALL
	db LURE_BALL
	db FAST_BALL
	db LEVEL_BALL
	db NET_BALL
	db DUSK_BALL
	db -1 ; end

MartR4NimbasaGate:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartCastelia2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartCastelia2F2:
	db 7 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db -1 ; end

MartCastelia3F:
	db 8 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_SP_DEF
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartCastelia4F:
	db 4 ; # items
	db TM_PROTECT
	db TM_THUNDER_WAVE
	db TM_DOUBLE_TEAM
	db TM_ATTRACT
	db -1 ; end

MartAspertia:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db -1 ; end

MartVirbank:
	db 7 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartNacrene:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db SUPER_REPEL
	db -1 ; end

MartNacreneCafe:
	db 3 ; # items
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db -1 ; end
	
MartStriaton:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db SUPER_REPEL
	db FULL_HEAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db -1 ; end

MartAccumula:
	db 7 ; # items
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end

MartDriftveil:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_REPEL
	db FULL_HEAL
	db X_ATTACK
	db X_DEFEND
	db -1 ; end

MartMerchant1:
	db 4 ; # items
	db SILK_SCARF
	db MIRACLE_SEED
	db CHARCOAL
	db MYSTIC_WATER
	db -1 ; end

MartMerchant2:
	db 2 ; # items
	db RAZOR_FANG
	db FOCUS_BAND
	db -1 ; end

MartMistralton:
	db 6 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db MAX_REPEL
	db X_SPEED
	db X_DEFEND
	db -1 ; end

MartOpelucid:
	db 7 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_REPEL
	db FULL_HEAL
	db X_ATTACK
	db X_SPECIAL
	db X_SP_DEF
	db -1 ; end

MartIcirrus:
	db 7 ; # items
	db ULTRA_BALL
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_SPEED
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
