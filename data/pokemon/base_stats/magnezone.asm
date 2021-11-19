	db MAGNEZONE ; 082

	db  70,  70, 115,  60, 130,  90
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 30 ; catch rate
	db 211 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magnezone/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, WILD_CHARGE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDER_WAVE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REFLECT, REST, ATTRACT, FLASH_CANNON, IRON_DEFENSE, SIGNAL_BEAM
	; end
