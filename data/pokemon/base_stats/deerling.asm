	db DEERLING ; 063

	db  60,  60,  50,  75,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GRASS ; type
	db 190 ; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/deerling/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, ENERGY_BALL, THUNDER_WAVE, SOLARBEAM, RETURN, SHADOW_BALL, DOUBLE_TEAM, REST, ATTRACT, SYNTHESIS, SEED_BOMB, GIGA_DRAIN
	; end
