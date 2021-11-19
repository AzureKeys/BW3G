	db DRAPION ; 183

	db  70,  90, 110,  95,  60,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 45 ; catch rate
	db 204 ; base exp
	db POISON_BARB, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/drapion/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SLUDGE_BOMB, ROCK_TOMB, REST, ATTRACT, THIEF, ROCK_SLIDE, STRUGGLE_BUG, CUT, STRENGTH, IRON_DEFENSE, IRON_TAIL, HONE_CLAWS, AQUA_TAIL, BUG_BITE, GUNK_SHOT, DARK_PULSE
	; end
