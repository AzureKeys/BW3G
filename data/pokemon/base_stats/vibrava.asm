	db VIBRAVA ; 183

	db  50,  70,  50,  70,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DRAGON ; type
	db 120 ; catch rate
	db 126 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vibrava/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SOLARBEAM, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, SANDSTORM, ROCK_TOMB, REST, ATTRACT, ROCK_SLIDE, STRUGGLE_BUG, FLY, STRENGTH, STEEL_WING, OUTRAGE, SIGNAL_BEAM, DRAGON_PULSE, BUG_BITE, GIGA_DRAIN, HYPER_VOICE, EARTH_POWER
	; end
