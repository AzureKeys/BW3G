	db GARBODOR ; 063

	db  80,  95,  82,  75,  60,  82
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 166 ; base exp
	db SILK_SCARF, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/garbodor/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, THUNDERBOLT, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, THIEF, FOCUS_BLAST, SEED_BOMB, GUNK_SHOT, GIGA_DRAIN, DARK_PULSE, DRAIN_PUNCH
	; end
