	db TIMBURR ; 063

	db  75,  80,  55,  35,  25,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/timburr/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, STONE_EDGE, RETURN, DIG, DOUBLE_TEAM, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, FIRE_PUNCH, ICE_PUNCH, LOW_KICK, THUNDERPUNCH, DRAIN_PUNCH
	; end
