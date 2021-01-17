	db SEWADDLE ; 063

	db  45,  53,  70,  42,  40,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 255 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sewaddle/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, ENERGY_BALL, SOLARBEAM, RETURN, DOUBLE_TEAM, DREAM_EATER, REST, ATTRACT, STRUGGLE_BUG, CUT, SIGNAL_BEAM, BUG_BITE, SYNTHESIS, SEED_BOMB, GIGA_DRAIN
	; end
