	db ARCHEOPS ; 063

	db  75, 140,  65, 110, 112,  65
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/archeops/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, STONE_EDGE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, ACROBATICS, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, CUT, FLY, IRON_DEFENSE, STEEL_WING, IRON_TAIL, ZEN_HEADBUTT, OUTRAGE, HONE_CLAWS, AQUA_TAIL, DRAGON_PULSE, EARTH_POWER
	; end
