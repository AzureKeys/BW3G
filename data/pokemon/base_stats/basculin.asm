	db BASCULIN ; 063

	db  70,  92,  65,  98,  80,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 25 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/basculin/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, ICE_BEAM, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, REST, ATTRACT, CUT, SURF, WATERFALL, ZEN_HEADBUTT, ICY_WIND, AQUA_TAIL
	; end
