	db METANG ; 183

	db  60,  75, 100,  50,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db STEEL, PSYCHIC ; type
	db 3 ; catch rate
	db 153 ; base exp
	db METAL_COAT, METAL_COAT ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/metang/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BULLDOZE, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, REST, ATTRACT, FLASH_CANNON, ROCK_SLIDE, CUT, STRENGTH, IRON_DEFENSE, ZEN_HEADBUTT, HONE_CLAWS, SIGNAL_BEAM, ICY_WIND, ICE_PUNCH, THUNDERPUNCH
	; end
