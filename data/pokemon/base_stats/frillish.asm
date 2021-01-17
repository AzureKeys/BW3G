	db FRILLISH ; 063

	db  55,  40,  50,  40,  65,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, GHOST ; type
	db 190 ; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/frillish/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, WILL_O_WISP, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, ENERGY_BALL, DAZZLINGLEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, HEX, DREAM_EATER, REST, ATTRACT, SURF, WATERFALL, ICY_WIND, GIGA_DRAIN, DARK_PULSE
	; end
