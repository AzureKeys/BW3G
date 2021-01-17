	db PAWNIARD ; 063

	db  45,  85,  70,  60,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db DARK, STEEL ; type
	db 120 ; catch rate
	db 68 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pawniard/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, HIDDEN_POWER, PROTECT, RAIN_DANCE, THUNDER_WAVE, RETURN, DIG, DOUBLE_TEAM, X_SCISSOR, SANDSTORM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, THIEF, CUT, IRON_DEFENSE, HONE_CLAWS, DARK_PULSE, LOW_KICK
	; end
