	db PALPITOAD ; 063

	db  75,  65,  55,  69,  65,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 120 ; catch rate
	db 134 ; base exp
	db BITTER_BERRY, PSNCUREBERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/palpitoad/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HAIL, HIDDEN_POWER, PROTECT, RAIN_DANCE, RETURN, BULLDOZE, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, SURF, ICY_WIND, HYPER_VOICE, EARTH_POWER
	; end
