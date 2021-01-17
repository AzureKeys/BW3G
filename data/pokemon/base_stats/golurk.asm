	db GOLURK ; 063

	db  89, 124,  80,  55,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GROUND ; type
	db 90 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golurk/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, ICE_BEAM, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, STONE_EDGE, THUNDERBOLT, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BULLDOZE, DOUBLE_TEAM, ROCK_TOMB, HEX, SHADOW_CLAW, REST, ATTRACT, THIEF, FLASH_CANNON, ROCK_SLIDE, FOCUS_BLAST, FLY, STRENGTH, IRON_DEFENSE, ZEN_HEADBUTT, FIRE_PUNCH, SIGNAL_BEAM, ICY_WIND, ICE_PUNCH, LOW_KICK, EARTH_POWER, THUNDERPUNCH, DRAIN_PUNCH
	; end
