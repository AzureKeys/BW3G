	db VANILLUXE ; 063

	db  71,  95,  85,  79, 110,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 241 ; base exp
	db NEVERMELTICE, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vanilluxe/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, REST, ATTRACT, FLASH_CANNON, IRON_DEFENSE, SIGNAL_BEAM, ICY_WIND, HYPER_VOICE
	; end
