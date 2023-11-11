	db MARACTUS ; 063

	db  75,  86,  67,  60, 106,  67
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 255 ; catch rate
	db 161 ; base exp
	db MIRACLE_SEED, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/maractus/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, ENERGY_BALL, SOLARBEAM, RETURN, DOUBLE_TEAM, REST, ATTRACT, CUT, IRON_DEFENSE, SYNTHESIS, SEED_BOMB, GIGA_DRAIN, HYPER_VOICE, DRAIN_PUNCH
	; end
