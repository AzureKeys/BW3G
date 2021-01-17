	db WATCHOG ; 063

	db  60,  85,  69,  77,  60,  69
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/watchog/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDER_WAVE, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, DREAM_EATER, REST, ATTRACT, FOCUS_BLAST, CUT, STRENGTH, ZEN_HEADBUTT, FIRE_PUNCH, SIGNAL_BEAM, AQUA_TAIL, ICE_PUNCH, SEED_BOMB, GUNK_SHOT, LOW_KICK, SUPER_FANG, THUNDERPUNCH
	; end
