	db GOTHITA ; 063

	db  45,  30,  50,  45,  55,  65
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 200 ; catch rate
	db 58 ; base exp
	db BITTER_BERRY, SPELL_TAG ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gothita/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, ENERGY_BALL, THUNDER_WAVE, DAZZLINGLEAM, THUNDERBOLT, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, ROCK_TOMB, HEX, DREAM_EATER, REST, ATTRACT, THIEF, ROCK_SLIDE, ZEN_HEADBUTT, SIGNAL_BEAM, DARK_PULSE
	; end
