	db EXCADRILL ; 063

	db 110, 135,  60,  88,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, STEEL ; type
	db 60 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/excadrill/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, CUT, STRENGTH, IRON_DEFENSE, HONE_CLAWS, EARTH_POWER
	; end
