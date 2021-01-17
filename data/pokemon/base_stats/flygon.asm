	db FLYGON ; 183

	db  80, 100,  80, 100,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DRAGON ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/flygon/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SOLARBEAM, STONE_EDGE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, STRUGGLE_BUG, FLY, STRENGTH, STEEL_WING, IRON_TAIL, FIRE_PUNCH, OUTRAGE, HONE_CLAWS, SIGNAL_BEAM, DRAGON_PULSE, BUG_BITE, GIGA_DRAIN, HYPER_VOICE, EARTH_POWER, THUNDERPUNCH
	; end
