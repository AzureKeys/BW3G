	db HERDIER ; 063

	db  65,  80,  65,  60,  35,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 130 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/herdier/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, ROAR, TOXIC, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, THUNDER_WAVE, THUNDERBOLT, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, ROCK_TOMB, REST, ATTRACT, SURF, STRENGTH, HONE_CLAWS, HYPER_VOICE
	; end
