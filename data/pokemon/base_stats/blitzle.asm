	db BLITZLE ; 063

	db  45,  60,  32,  76,  50,  32
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 59 ; base exp
	db PRZCUREBERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/blitzle/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, WILD_CHARGE, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDER_WAVE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REST, ATTRACT, STRENGTH, SIGNAL_BEAM, LOW_KICK
	; end
