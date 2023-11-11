	db SCOLIPEDE ; 063

	db  60, 100,  89, 112,  55,  69
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/scolipede/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SOLARBEAM, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SLUDGE_BOMB, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, STRUGGLE_BUG, CUT, STRENGTH, WATERFALL, IRON_DEFENSE, IRON_TAIL, SIGNAL_BEAM, AQUA_TAIL, BUG_BITE
	; end
