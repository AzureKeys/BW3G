	db REUNICLUS ; 063

	db 110,  65,  75,  30, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 221 ; base exp
	db BITTER_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/reuniclus/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, CALM_MIND, TOXIC, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, ENERGY_BALL, THUNDER_WAVE, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, ROCK_TOMB, DREAM_EATER, REST, ATTRACT, FLASH_CANNON, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, IRON_DEFENSE, ZEN_HEADBUTT, FIRE_PUNCH, SIGNAL_BEAM, ICE_PUNCH, THUNDERPUNCH, DRAIN_PUNCH
	; end
