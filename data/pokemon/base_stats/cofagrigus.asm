	db COFAGRIGUS ; 063

	db  58,  50, 145,  30,  95, 105
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 90 ; catch rate
	db 169 ; base exp
	db SPELL_TAG, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cofagrigus/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, CALM_MIND, TOXIC, HIDDEN_POWER, WILL_O_WISP, HYPER_BEAM, PROTECT, RAIN_DANCE, ENERGY_BALL, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, HEX, DREAM_EATER, REST, ATTRACT, THIEF, IRON_DEFENSE, ZEN_HEADBUTT, DARK_PULSE
	; end
