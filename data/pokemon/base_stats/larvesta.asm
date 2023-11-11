	db LARVESTA ; 063

	db  55,  85,  55,  60,  50,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 45 ; catch rate
	db 72 ; base exp
	db SILVERPOWDER, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/larvesta/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, WILD_CHARGE, TOXIC, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, LIGHT_SCREEN, PROTECT, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ACROBATICS, REST, STRUGGLE_BUG, CUT, ZEN_HEADBUTT, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN
	; end
