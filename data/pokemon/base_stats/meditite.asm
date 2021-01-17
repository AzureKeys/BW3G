	db MEDITITE ; 183

	db  30,  80,  55,  60,  40,  55
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, PSYCHIC ; type
	db 180 ; catch rate
	db 91 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/meditite/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, CALM_MIND, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, ROCK_TOMB, HEX, DREAM_EATER, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, ZEN_HEADBUTT, FIRE_PUNCH, SIGNAL_BEAM, ICE_PUNCH, LOW_KICK, THUNDERPUNCH, DRAIN_PUNCH
	; end
