	db CUBCHOO ; 063

	db  55,  70,  40,  40,  60,  40
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 120 ; catch rate
	db 61 ; base exp
	db BURNT_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cubchoo/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, DIG, DOUBLE_TEAM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, CUT, SURF, STRENGTH, WATERFALL, HONE_CLAWS, ICY_WIND, ICE_PUNCH, LOW_KICK
	; end
