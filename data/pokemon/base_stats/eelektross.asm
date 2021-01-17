	db EELEKTROSS ; 063

	db  85, 115,  80,  50, 105,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 30 ; catch rate
	db 232 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/eelektross/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, ROAR, TOXIC, WILD_CHARGE, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, ROCK_TOMB, ACROBATICS, REST, ATTRACT, FLASH_CANNON, ROCK_SLIDE, CUT, STRENGTH, FIRE_PUNCH, OUTRAGE, HONE_CLAWS, SIGNAL_BEAM, AQUA_TAIL, DRAGON_PULSE, GUNK_SHOT, GIGA_DRAIN, SUPER_FANG, THUNDERPUNCH, DRAIN_PUNCH
	; end
