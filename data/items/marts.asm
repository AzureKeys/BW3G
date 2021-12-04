Marts:
; entries correspond to MART_* constants
	dw MartUnderground
	dw MartHumilau
	dw MartHumilauDex
	dw MartUndella
	dw MartLentimas
	dw MartNimbasa
	dw MartNimbasaTM
	dw MartNimbasaVitamin
	dw MartNimbasaBall
	dw MartR4NimbasaGate
	dw MartCastelia
	dw MartAspertia
	dw MartFlocessy
	dw MartVirbank
	dw MartNacrene
	dw MartStriaton
	dw MartAccumula
	dw MartDriftveil
	dw MartMerchant1
	dw MartMerchant2
	dw MartMistralton
	dw MartOpelucid
	dw MartIcirrus
	dw MartMall1
	dw MartMall2
	dw MartMall3
	dw MartMall4
	dw MartMall5
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
	
MartUndella:
	db 6 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartLentimas:
	db 8 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db AWAKENING
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
	db REPEL
	db -1 ; end
	
MartNimbasaTM:
	db 4 ; # items
	db TM_REFLECT
	db TM_LIGHT_SCREEN
	db TM_PROTECT
	db TM_BULLDOZE
	db TM_THUNDER_WAVE
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
	db 9 ; # items
	db FRIEND_BALL
	db HEAVY_BALL
	db LURE_BALL
	db QUICK_BALL
	db TIMER_BALL
	db NET_BALL
	db DUSK_BALL
	db REPEAT_BALL
	db DIVE_BALL
	db -1 ; end

MartR4NimbasaGate:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartCastelia:
	db 10 ; # items
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db ESCAPE_ROPE
	db REPEL
	db -1 ; end

MartAspertia:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db REPEL
	db SUPER_REPEL
	db -1 ; end

MartFlocessy:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db SUPER_REPEL
	db -1 ; end

MartVirbank:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ESCAPE_ROPE
	db SUPER_REPEL
	db -1 ; end

MartNacrene:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db ESCAPE_ROPE
	db SUPER_REPEL
	db -1 ; end
	
MartStriaton:
	db 8 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db SUPER_REPEL
	db GUARD_SPEC
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
	db 8 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db SUPER_REPEL
	db MAX_REPEL
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
	db 7 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db MAX_REPEL
	db X_SPEED
	db X_DEFEND
	db -1 ; end

MartOpelucid:
	db 8 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db MAX_REPEL
	db X_ATTACK
	db X_SPECIAL
	db X_SP_DEF
	db -1 ; end

MartIcirrus:
	db 7 ; # items
	db ULTRA_BALL
	db MAX_POTION
	db REVIVE
	db FULL_HEAL
	db MAX_REPEL
	db X_DEFEND
	db X_SPEED
	db -1 ; end

MartMall1:
	db 16 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db FULL_HEAL
	db ESCAPE_ROPE
	db POKE_DOLL
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartMall2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db FRIEND_BALL
	db HEAVY_BALL
	db LURE_BALL
	db FAST_BALL
	db LEVEL_BALL
	db NET_BALL
	db DUSK_BALL
	db -1 ; end

MartMall3:
	db 4 ; # items
	db TM_BLIZZARD
	db TM_THUNDER
	db TM_FIRE_BLAST
	db TM_HYPER_BEAM
	db -1 ; end

MartMall4:
	db 13 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db X_ATTACK
	db X_DEFEND
	db X_SPECIAL
	db X_SP_DEF
	db X_SPEED
	db X_ACCURACY
	db DIRE_HIT
	db GUARD_SPEC
	db -1 ; end

MartMall5:
	db 4 ; # items
	db LEAF_STONE
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
