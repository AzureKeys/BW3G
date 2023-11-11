	db HEATMOR ; 063

	db  85,  97,  66,  65, 105,  66
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 90 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/heatmor/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, PROTECT, RAIN_DANCE, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, THIEF, FOCUS_BLAST, CUT, STRENGTH, FIRE_PUNCH, HONE_CLAWS, BUG_BITE, GIGA_DRAIN, LOW_KICK, THUNDERPUNCH, DRAIN_PUNCH
	; end
