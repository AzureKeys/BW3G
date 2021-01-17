	db GOLETT ; 063

	db  59,  74,  50,  35,  35,  50
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GROUND ; type
	db 190 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/golett/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, ICE_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BULLDOZE, DOUBLE_TEAM, ROCK_TOMB, HEX, SHADOW_CLAW, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, IRON_DEFENSE, FIRE_PUNCH, SIGNAL_BEAM, ICY_WIND, ICE_PUNCH, LOW_KICK, EARTH_POWER, THUNDERPUNCH, DRAIN_PUNCH
	; end
