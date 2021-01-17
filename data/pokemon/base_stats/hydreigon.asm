	db HYDREIGON ; 063

	db  92, 105,  90,  98, 125,  90
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DARK ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hydreigon/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDER_WAVE, STONE_EDGE, EARTHQUAKE, RETURN, BULLDOZE, DOUBLE_TEAM, REFLECT, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, ACROBATICS, HEX, REST, ATTRACT, THIEF, FLASH_CANNON, ROCK_SLIDE, FOCUS_BLAST, FLY, SURF, STRENGTH, STEEL_WING, IRON_TAIL, ZEN_HEADBUTT, OUTRAGE, HONE_CLAWS, SIGNAL_BEAM, AQUA_TAIL, DRAGON_PULSE, DARK_PULSE, HYPER_VOICE, EARTH_POWER
	; end
