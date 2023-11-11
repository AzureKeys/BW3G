	db DUCKLETT ; 063

	db  62,  44,  50,  55,  44,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 190 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ducklett/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, REST, ATTRACT, CUT, FLY, SURF, WATERFALL, STEEL_WING, ICY_WIND
	; end
