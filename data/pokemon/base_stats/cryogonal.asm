	db CRYOGONAL ; 063

	db  70,  50,  30, 105,  95, 135
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 25 ; catch rate
	db 180 ; base exp
	db NEVERMELTICE, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cryogonal/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SOLARBEAM, RETURN, DOUBLE_TEAM, REFLECT, ACROBATICS, HEX, REST, ATTRACT, FLASH_CANNON, CUT, IRON_DEFENSE, SIGNAL_BEAM, ICY_WIND
	; end
