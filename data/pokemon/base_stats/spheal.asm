	db SPHEAL ; 183

	db  70,  40,  50,  25,  55,  50
	;   hp  atk  def  spd  sat  sdf

	db ICE, WATER ; type
	db 255 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/spheal/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, BULLDOZE, DOUBLE_TEAM, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, SURF, STRENGTH, WATERFALL, IRON_TAIL, SIGNAL_BEAM, ICY_WIND, AQUA_TAIL, SUPER_FANG
	; end
