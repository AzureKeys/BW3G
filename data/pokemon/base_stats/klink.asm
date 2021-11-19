	db KLINK ; 063

	db  40,  55,  70,  30,  45,  60
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 130 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/klink/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm WILD_CHARGE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, THUNDER_WAVE, THUNDERBOLT, RETURN, DOUBLE_TEAM, SANDSTORM, REST, ATTRACT, FLASH_CANNON, IRON_DEFENSE, SIGNAL_BEAM
	; end
