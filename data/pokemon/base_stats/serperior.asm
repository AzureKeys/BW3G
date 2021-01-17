	db SERPERIOR ; 063

	db  75,  75,  95, 113,  75,  95
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 238 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/serperior/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, SWORDS_DANCE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, ENERGY_BALL, SOLARBEAM, RETURN, DOUBLE_TEAM, REFLECT, REST, ATTRACT, CUT, STRENGTH, OUTRAGE, AQUA_TAIL, DRAGON_PULSE, SYNTHESIS, SEED_BOMB, GIGA_DRAIN
	; end
