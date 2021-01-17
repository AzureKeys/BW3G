	db TRUBBISH ; 063

	db  50,  50,  62,  65,  40,  62
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 66 ; base exp
	db SILK_SCARF, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/trubbish/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, REST, ATTRACT, THIEF, SEED_BOMB, GUNK_SHOT, GIGA_DRAIN, DARK_PULSE, DRAIN_PUNCH
	; end
