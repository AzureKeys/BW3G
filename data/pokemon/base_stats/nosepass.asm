	db NOSEPASS ; 183

	db  30,  45, 135,  30,  45,  90
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 255 ; catch rate
	db 108 ; base exp
	db HARD_STONE, MAGNET ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nosepass/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, THUNDER_WAVE, DAZZLINGLEAM, STONE_EDGE, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, BULLDOZE, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, STRENGTH, IRON_DEFENSE, FIRE_PUNCH, ICE_PUNCH, EARTH_POWER, THUNDERPUNCH
	; end
