	db PIGNITE ; 063

	db  90,  93,  55,  55,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIGHTING ; type
	db 45 ; catch rate
	db 146 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pignite/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, TOXIC, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, PROTECT, SOLARBEAM, STONE_EDGE, RETURN, BULLDOZE, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, ZEN_HEADBUTT, FIRE_PUNCH, LOW_KICK, THUNDERPUNCH
	; end
