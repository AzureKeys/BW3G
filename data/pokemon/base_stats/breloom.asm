	db BRELOOM ; 183

	db  60, 130,  80,  70,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIGHTING ; type
	db 90 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/breloom/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, BULK_UP, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, ENERGY_BALL, SOLARBEAM, STONE_EDGE, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, CUT, STRENGTH, IRON_TAIL, SYNTHESIS, SEED_BOMB, GIGA_DRAIN, THUNDERPUNCH, DRAIN_PUNCH
	; end
