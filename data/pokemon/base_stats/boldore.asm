	db BOLDORE ; 063

	db  70, 105, 105,  20,  50,  40
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 120 ; catch rate
	db 137 ; base exp
	db EVERSTONE, HARD_STONE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/boldore/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, PROTECT, STONE_EDGE, EARTHQUAKE, RETURN, BULLDOZE, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, REST, ATTRACT, FLASH_CANNON, ROCK_SLIDE, STRENGTH, IRON_DEFENSE, EARTH_POWER
	; end
