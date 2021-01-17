	db LEAVANNY ; 063

	db  75, 103,  80,  92,  70,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 45 ; catch rate
	db 225 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/leavanny/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, ENERGY_BALL, SOLARBEAM, RETURN, DOUBLE_TEAM, REFLECT, X_SCISSOR, DREAM_EATER, SHADOW_CLAW, REST, ATTRACT, STRUGGLE_BUG, CUT, STEEL_WING, HONE_CLAWS, SIGNAL_BEAM, BUG_BITE, SYNTHESIS, SEED_BOMB, GIGA_DRAIN
	; end
