	db PROBOPASS ; 183

	db  60,  55, 145,  40,  75, 150
	;   hp  atk  def  spd  sat  sdf

	db ROCK, STEEL ; type
	db 60 ; catch rate
	db 198 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/probopass/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, THUNDER_WAVE, DAZZLINGLEAM, STONE_EDGE, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, BULLDOZE, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, REST, ATTRACT, FLASH_CANNON, ROCK_SLIDE, STRENGTH, IRON_DEFENSE, FIRE_PUNCH, ICE_PUNCH, EARTH_POWER, THUNDERPUNCH
	; end
