	db DWEBBLE ; 063

	db  50,  65,  85,  55,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 65 ; base exp
	db HARD_STONE, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dwebble/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, HIDDEN_POWER, PROTECT, SOLARBEAM, STONE_EDGE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SANDSTORM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, STRUGGLE_BUG, CUT, STRENGTH, IRON_DEFENSE, HONE_CLAWS, BUG_BITE
	; end
