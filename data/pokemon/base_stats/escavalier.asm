	db ESCAVALIER ; 063

	db  70, 135, 105,  20,  60, 105
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/escavalier/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, ENERGY_BALL, RETURN, DOUBLE_TEAM, X_SCISSOR, REST, ATTRACT, STRUGGLE_BUG, FOCUS_BLAST, CUT, IRON_DEFENSE, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN
	; end
