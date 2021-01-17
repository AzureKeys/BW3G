	db PATRAT ; 063

	db  45,  55,  39,  42,  35,  39
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 51 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/patrat/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, THUNDERBOLT, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, REST, ATTRACT, CUT, ZEN_HEADBUTT, AQUA_TAIL, SEED_BOMB, GUNK_SHOT, LOW_KICK, SUPER_FANG
	; end
