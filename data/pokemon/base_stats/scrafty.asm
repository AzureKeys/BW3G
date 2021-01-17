	db SCRAFTY ; 063

	db  65,  90, 115,  58,  45, 115
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIGHTING ; type
	db 90 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/scrafty/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, STONE_EDGE, RETURN, DIG, DOUBLE_TEAM, SLUDGE_BOMB, ROCK_TOMB, HEX, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, IRON_DEFENSE, IRON_TAIL, ZEN_HEADBUTT, FIRE_PUNCH, OUTRAGE, ICE_PUNCH, DRAGON_PULSE, DARK_PULSE, LOW_KICK, SUPER_FANG, THUNDERPUNCH, DRAIN_PUNCH
	; end
