	db KROOKODILE ; 063

	db  95, 117,  80,  92,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DARK ; type
	db 45 ; catch rate
	db 234 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/krookodile/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, HYPER_BEAM, PROTECT, STONE_EDGE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, CUT, STRENGTH, IRON_TAIL, OUTRAGE, HONE_CLAWS, AQUA_TAIL, DRAGON_PULSE, DARK_PULSE, LOW_KICK, EARTH_POWER
	; end
