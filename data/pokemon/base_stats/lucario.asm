	db LUCARIO ; 183

	db  70, 110,  70,  90, 115,  70
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, STEEL ; type
	db 45 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lucario/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, CALM_MIND, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, STONE_EDGE, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, BULLDOZE, DOUBLE_TEAM, ROCK_TOMB, HEX, SHADOW_CLAW, REST, ATTRACT, FLASH_CANNON, ROCK_SLIDE, FOCUS_BLAST, CUT, STRENGTH, IRON_DEFENSE, IRON_TAIL, ZEN_HEADBUTT, HONE_CLAWS, ICE_PUNCH, DRAGON_PULSE, DARK_PULSE, LOW_KICK, THUNDERPUNCH, DRAIN_PUNCH
	; end
