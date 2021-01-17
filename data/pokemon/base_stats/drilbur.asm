	db DRILBUR ; 063

	db  60,  85,  40,  68,  30,  45
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/drilbur/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, HIDDEN_POWER, PROTECT, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, CUT, STRENGTH, IRON_DEFENSE, HONE_CLAWS, EARTH_POWER
	; end
