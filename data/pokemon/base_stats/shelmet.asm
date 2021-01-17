	db SHELMET ; 063

	db  50,  40,  85,  25,  40,  65
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 200 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/shelmet/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC, VENOSHOCK, HIDDEN_POWER, PROTECT, RAIN_DANCE, ENERGY_BALL, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, STRUGGLE_BUG, IRON_DEFENSE, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN
	; end
