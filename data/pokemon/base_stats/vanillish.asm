	db VANILLISH ; 063

	db  51,  65,  65,  59,  80,  75
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 120 ; catch rate
	db 138 ; base exp
	db NEVERMELTICE, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vanillish/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, REST, ATTRACT, FLASH_CANNON, IRON_DEFENSE, SIGNAL_BEAM, ICY_WIND, HYPER_VOICE
	; end
