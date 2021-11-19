	db JOLTIK ; 063

	db  50,  47,  50,  65,  57,  50
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, BUG ; type
	db 190 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/joltik/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm WILD_CHARGE, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, ENERGY_BALL, THUNDER_WAVE, THUNDERBOLT, RETURN, DOUBLE_TEAM, X_SCISSOR, REST, ATTRACT, THIEF, STRUGGLE_BUG, CUT, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN
	; end
