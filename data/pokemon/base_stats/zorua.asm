	db ZORUA ; 063

	db  40,  65,  40,  65,  80,  40
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 75 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zorua/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, HEX, REST, ATTRACT, THIEF, CUT, HONE_CLAWS, DARK_PULSE, HYPER_VOICE
	; end
