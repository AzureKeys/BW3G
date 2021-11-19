	db BEARTIC ; 063

	db  95, 110,  80,  50,  70,  80
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 60 ; catch rate
	db 177 ; base exp
	db BURNT_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/beartic/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, STONE_EDGE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, CUT, SURF, STRENGTH, HONE_CLAWS, ICY_WIND, ICE_PUNCH, LOW_KICK
	; end
