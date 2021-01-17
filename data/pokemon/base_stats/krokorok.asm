	db KROKOROK ; 063

	db  60,  82,  45,  74,  45,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DARK ; type
	db 90 ; catch rate
	db 123 ; base exp
	db BLACKGLASSES, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/krokorok/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, TOXIC, HIDDEN_POWER, PROTECT, STONE_EDGE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, THIEF, ROCK_SLIDE, CUT, STRENGTH, IRON_TAIL, HONE_CLAWS, AQUA_TAIL, DARK_PULSE, LOW_KICK, EARTH_POWER
	; end
