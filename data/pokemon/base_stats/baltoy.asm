	db BALTOY ; 183

	db  40,  40,  55,  55,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db GROUND, PSYCHIC ; type
	db 255 ; catch rate
	db 68 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/baltoy/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, DAZZLINGLEAM, SOLARBEAM, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, BULLDOZE, DOUBLE_TEAM, REFLECT, SANDSTORM, ROCK_TOMB, HEX, DREAM_EATER, REST, ATTRACT, ROCK_SLIDE, ZEN_HEADBUTT, SIGNAL_BEAM, EARTH_POWER
	; end
