	db COTTONEE ; 063

	db  40,  27,  60,  66,  37,  50
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 190 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cottonee/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, ENERGY_BALL, DAZZLINGLEAM, SOLARBEAM, RETURN, DOUBLE_TEAM, DREAM_EATER, REST, ATTRACT, CUT, SYNTHESIS, SEED_BOMB, GIGA_DRAIN
	; end
