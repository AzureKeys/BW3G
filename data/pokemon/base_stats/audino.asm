	db AUDINO ; 063

	db 103,  60,  86,  50,  60,  86
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 255 ; base exp
	db BERRY, GOLD_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/audino/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, WILD_CHARGE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDER_WAVE, DAZZLINGLEAM, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, FLAMETHROWER, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, SURF, IRON_TAIL, ZEN_HEADBUTT, FIRE_PUNCH, SIGNAL_BEAM, ICY_WIND, ICE_PUNCH, LOW_KICK, HYPER_VOICE, THUNDERPUNCH, DRAIN_PUNCH
	; end
