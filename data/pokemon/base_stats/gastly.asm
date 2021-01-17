	db GASTLY ; 092

	db  30,  35,  30,  80, 100,  35
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 95 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gastly/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, PROTECT, RAIN_DANCE, ENERGY_BALL, DAZZLINGLEAM, THUNDERBOLT, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, HEX, DREAM_EATER, REST, ATTRACT, THIEF, FIRE_PUNCH, ICY_WIND, ICE_PUNCH, GIGA_DRAIN, DARK_PULSE, THUNDERPUNCH
	; end
