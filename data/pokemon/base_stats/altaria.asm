	db ALTARIA ; 183

	db  75,  70,  90,  80,  70, 105
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 188 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/altaria/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, HYPER_BEAM, PROTECT, RAIN_DANCE, DAZZLINGLEAM, SOLARBEAM, EARTHQUAKE, RETURN, BULLDOZE, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, THIEF, FLY, STEEL_WING, IRON_TAIL, OUTRAGE, HONE_CLAWS, DRAGON_PULSE, HYPER_VOICE
	; end
