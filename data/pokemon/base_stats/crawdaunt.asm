	db CRAWDAUNT ; 183

	db  65, 120,  85,  55,  90,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 155 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/crawdaunt/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, DIG, DOUBLE_TEAM, X_SCISSOR, SLUDGE_BOMB, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, CUT, SURF, STRENGTH, WATERFALL, HONE_CLAWS, ICY_WIND, AQUA_TAIL, DARK_PULSE
	; end
