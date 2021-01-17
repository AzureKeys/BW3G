	db STUNFISK ; 063

	db 109,  66,  84,  32,  81,  99
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ELECTRIC ; type
	db 75 ; catch rate
	db 165 ; base exp
	db SOFT_SAND, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/stunfisk/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, PROTECT, RAIN_DANCE, THUNDER_WAVE, STONE_EDGE, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, ACROBATICS, REST, ATTRACT, ROCK_SLIDE, SURF, AQUA_TAIL, EARTH_POWER
	; end
