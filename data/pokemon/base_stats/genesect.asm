	db GENESECT ; 094

	db  71, 120,  95,  99, 120,  95
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/genesect/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, ENERGY_BALL, THUNDER_WAVE, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, REFLECT, X_SCISSOR, FLAMETHROWER, SHADOW_CLAW, REST, FLASH_CANNON, STRUGGLE_BUG, CUT, FLY, STRENGTH, IRON_DEFENSE, ZEN_HEADBUTT, HONE_CLAWS, SIGNAL_BEAM, BUG_BITE, GUNK_SHOT, GIGA_DRAIN, DARK_PULSE
	; end
