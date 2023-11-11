	db VOLCARONA ; 063

	db  85,  60,  65, 100, 135, 105
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 15 ; catch rate
	db 248 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/volcarona/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, CALM_MIND, WILD_CHARGE, TOXIC, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, HYPER_BEAM, LIGHT_SCREEN, PROTECT, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ACROBATICS, REST, STRUGGLE_BUG, CUT, FLY, ZEN_HEADBUTT, SIGNAL_BEAM, BUG_BITE, GIGA_DRAIN
	; end
