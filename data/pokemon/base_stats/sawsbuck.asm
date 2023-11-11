	db SAWSBUCK ; 063

	db  80, 100,  70,  95,  60,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GRASS ; type
	db 75 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sawsbuck/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, WILD_CHARGE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, ENERGY_BALL, THUNDER_WAVE, SOLARBEAM, RETURN, SHADOW_BALL, DOUBLE_TEAM, REST, ATTRACT, CUT, STRENGTH, SYNTHESIS, SEED_BOMB, GIGA_DRAIN
	; end
