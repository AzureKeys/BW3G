	db FOONGUS ; 063

	db  69,  55,  45,  15,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 190 ; catch rate
	db 59 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/foongus/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, ENERGY_BALL, SOLARBEAM, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, SYNTHESIS, SEED_BOMB, GIGA_DRAIN
	; end
