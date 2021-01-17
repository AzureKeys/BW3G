	db KARRABLAST ; 063

	db  50,  75,  45,  60,  40,  45
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 200 ; catch rate
	db 63 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/karrablast/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC, HIDDEN_POWER, PROTECT, RAIN_DANCE, ENERGY_BALL, RETURN, DOUBLE_TEAM, X_SCISSOR, REST, ATTRACT, STRUGGLE_BUG, CUT, IRON_DEFENSE, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN
	; end
