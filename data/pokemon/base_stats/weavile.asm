	db WEAVILE ; 215

	db  70, 120,  65, 125,  45,  85
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/weavile/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, REFLECT, X_SCISSOR, DREAM_EATER, SHADOW_CLAW, REST, ATTRACT, THIEF, FOCUS_BLAST, CUT, SURF, STRENGTH, WATERFALL, IRON_TAIL, HONE_CLAWS, ICY_WIND, ICE_PUNCH, DARK_PULSE, LOW_KICK
	; end
