	db LIEPARD ; 063

	db  64,  88,  50, 106,  88,  50
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 90 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/liepard/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDER_WAVE, RETURN, SHADOW_BALL, DOUBLE_TEAM, HEX, DREAM_EATER, SHADOW_CLAW, REST, ATTRACT, THIEF, CUT, STRENGTH, IRON_TAIL, HONE_CLAWS, SEED_BOMB, GUNK_SHOT, DARK_PULSE, HYPER_VOICE
	; end
