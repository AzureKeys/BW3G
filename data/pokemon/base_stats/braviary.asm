	db BRAVIARY ; 063

	db 100, 123,  75,  80,  57,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 60 ; catch rate
	db 179 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/braviary/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, ROCK_TOMB, ACROBATICS, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, CUT, FLY, STRENGTH, STEEL_WING, ZEN_HEADBUTT, HONE_CLAWS
	; end
