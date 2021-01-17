	db FERROTHORN ; 063

	db  74,  94, 131,  20,  54, 116
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 90 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ferrothorn/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, ENERGY_BALL, THUNDER_WAVE, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, BULLDOZE, DOUBLE_TEAM, SANDSTORM, SHADOW_CLAW, REST, FLASH_CANNON, CUT, STRENGTH, IRON_DEFENSE, HONE_CLAWS, SEED_BOMB, GIGA_DRAIN
	; end
