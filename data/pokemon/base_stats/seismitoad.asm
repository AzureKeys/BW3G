	db SEISMITOAD ; 063

	db 105,  95,  75,  74,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 45 ; catch rate
	db 229 ; base exp
	db BITTER_BERRY, PSNCUREBERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/seismitoad/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HAIL, VENOSHOCK, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, SLUDGE_BOMB, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, SURF, STRENGTH, WATERFALL, ICY_WIND, ICE_PUNCH, LOW_KICK, HYPER_VOICE, EARTH_POWER, DRAIN_PUNCH
	; end
