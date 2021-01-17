	db ACCELGOR ; 063

	db  80,  70,  40, 145, 100,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 75 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/accelgor/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, CALM_MIND, TOXIC, VENOSHOCK, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, ENERGY_BALL, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, REST, ATTRACT, STRUGGLE_BUG, FOCUS_BLAST, IRON_DEFENSE, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN, DRAIN_PUNCH
	; end
