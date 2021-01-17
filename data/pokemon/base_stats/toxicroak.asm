	db TOXICROAK ; 183

	db  83, 106,  65,  85,  86,  65
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIGHTING ; type
	db 75 ; catch rate
	db 181 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/toxicroak/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, BULK_UP, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, STONE_EDGE, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SLUDGE_BOMB, ROCK_TOMB, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, CUT, STRENGTH, HONE_CLAWS, ICY_WIND, ICE_PUNCH, GUNK_SHOT, DARK_PULSE, LOW_KICK, SUPER_FANG, THUNDERPUNCH, DRAIN_PUNCH
	; end
