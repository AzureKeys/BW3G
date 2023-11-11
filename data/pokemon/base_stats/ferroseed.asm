	db FERROSEED ; 063

	db  44,  50,  91,  10,  24,  86
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 255 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ferroseed/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, ENERGY_BALL, THUNDER_WAVE, SOLARBEAM, THUNDERBOLT, RETURN, DOUBLE_TEAM, REST, FLASH_CANNON, CUT, IRON_DEFENSE, HONE_CLAWS, SEED_BOMB, GIGA_DRAIN
	; end
