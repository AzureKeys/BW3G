	db EMOLGA ; 063

	db  55,  75,  60, 103,  75,  60
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 200 ; catch rate
	db 150 ; base exp
	db PRZCUREBERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/emolga/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC, WILD_CHARGE, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDER_WAVE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, ACROBATICS, REST, ATTRACT, CUT, IRON_TAIL, SIGNAL_BEAM
	; end
