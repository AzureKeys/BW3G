	db DURANT ; 063

	db  58, 109, 112, 109,  48,  48
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 90 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/durant/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, PROTECT, ENERGY_BALL, THUNDER_WAVE, STONE_EDGE, RETURN, DIG, DOUBLE_TEAM, X_SCISSOR, SANDSTORM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, FLASH_CANNON, ROCK_SLIDE, STRUGGLE_BUG, CUT, STRENGTH, IRON_DEFENSE, HONE_CLAWS, BUG_BITE
	; end
