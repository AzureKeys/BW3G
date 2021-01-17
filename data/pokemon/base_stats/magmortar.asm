	db MAGMORTAR ; 126

	db  75,  95,  67,  83, 125,  95
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 30 ; catch rate
	db 199 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magmortar/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, HYPER_BEAM, PROTECT, SOLARBEAM, THUNDERBOLT, EARTHQUAKE, RETURN, PSYCHIC_M, BULLDOZE, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, IRON_TAIL, FIRE_PUNCH, LOW_KICK, THUNDERPUNCH
	; end
