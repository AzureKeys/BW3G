	db SHROOMISH ; 183

	db  60,  40,  60,  35,  40,  60
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 255 ; catch rate
	db 65 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/shroomish/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, PROTECT, ENERGY_BALL, SOLARBEAM, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, SYNTHESIS, SEED_BOMB, GIGA_DRAIN, DRAIN_PUNCH
	; end
