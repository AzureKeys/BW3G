	db ZWEILOUS ; 063

	db  72,  85,  70,  58,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DARK ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zweilous/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, THUNDER_WAVE, RETURN, DOUBLE_TEAM, REST, ATTRACT, THIEF, STRENGTH, ZEN_HEADBUTT, OUTRAGE, HONE_CLAWS, AQUA_TAIL, DRAGON_PULSE, DARK_PULSE, HYPER_VOICE, EARTH_POWER
	; end
