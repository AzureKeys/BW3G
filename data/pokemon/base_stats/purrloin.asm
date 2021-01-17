	db PURRLOIN ; 063

	db  41,  50,  37,  66,  50,  37
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 255 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/purrloin/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, THUNDER_WAVE, RETURN, SHADOW_BALL, DOUBLE_TEAM, HEX, DREAM_EATER, SHADOW_CLAW, REST, ATTRACT, THIEF, CUT, IRON_TAIL, HONE_CLAWS, SEED_BOMB, GUNK_SHOT, DARK_PULSE, HYPER_VOICE
	; end
