Marts:
; entries correspond to MART_* constants
	dw MartNimbasaTM
	dw MartNimbasaVitamin
	dw MartNimbasaBall
	dw MartR4NimbasaGate
	dw MartMerchant1
	dw MartMerchant2
	dw MartBoutique
	dw MartMall1
	dw MartMall2
	dw MartMall3
	dw MartMall4
	dw MartMall5
	dw MartMembers1
	dw MartMembers2
	dw MartNoDex
	dw MartNoBadges
	dw MartOneBadge
	dw MartTwoBadges
	dw MartThreeBadges
	dw MartFourBadges
	dw MartFiveBadges
	dw MartSevenBadges
	dw MartEightBadges
.End
	
MartNimbasaTM:
	db 5 ; # items
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
	db 11 ; # items
	db FRIEND_BALL
	db HEAVY_BALL
	db LURE_BALL
	db QUICK_BALL
	db TIMER_BALL
	db NET_BALL
	db DUSK_BALL
	db REPEAT_BALL
	db DIVE_BALL
	db LEVEL_BALL
	db LOVE_BALL
	db -1 ; end

MartR4NimbasaGate:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartMerchant1:
	db 4 ; # items
	db SILK_SCARF
	db MIRACLE_SEED
	db CHARCOAL
	db MYSTIC_WATER
	db -1 ; end

MartMerchant2:
	db 8 ; # items
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db X_SP_DEF
	db X_ACCURACY
	db DIRE_HIT
	db GUARD_SPEC
	db -1 ; end

MartBoutique:
	db 6 ; # items
	db BLACKGLASSES
	db PINK_BOW
	db BLACKBELT
	db MUSCLE_BAND
	db WISE_GLASSES
	db FOCUS_BAND
	db -1 ; end

MartMall1:
	db 11 ; # items
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
	db -1 ; end

MartMall2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db POKE_DOLL
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
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

MartMembers1:
	db 8 ; # items
	db DAWN_STONE
	db ELECTRIZER
	db MAGMARIZER
	db DRAGON_SCALE
	db MAGIC_RIBBON
	db RAZOR_CLAW
	db RAZOR_FANG
	db METAL_COAT
	db -1 ; end

MartMembers2:
	db 12 ; # items
	db LIGHT_CLAY
	db BIG_ROOT
	db AIR_BALLOON
	db QUICK_CLAW
	db NEVERMELTICE
	db DRAGON_FANG
	db BLACK_SLUDGE
	db FOCUS_SASH
	db EXPERT_BELT
	db CHOICE_BAND
	db CHOICE_SPECS
	db CHOICE_SCARF
	db -1 ; end

MartNoDex:
	db 3 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db -1 ; end

MartNoBadges:
	db 4 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db -1 ; end

MartOneBadge:
	db 8 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ESCAPE_ROPE
	db REPEL
	db -1 ; end

MartTwoBadges:
	db 11 ; # items
	db POKE_BALL
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

MartThreeBadges:
	db 13 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db -1 ; end

MartFourBadges:
	db 14 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db -1 ; end

MartFiveBadges:
	db 12 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartSevenBadges:
	db 13 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db FULL_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartEightBadges:
	db 14 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
