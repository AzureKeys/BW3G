	db GALVANTULA ; 063

	db  70,  77,  60, 108,  97,  60
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, BUG ; type
	db 75 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/galvantula/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, WILD_CHARGE, TOXIC, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, ENERGY_BALL, THUNDER_WAVE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, X_SCISSOR, REST, ATTRACT, THIEF, STRUGGLE_BUG, CUT, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN
	; end
