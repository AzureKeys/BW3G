	db AXEW ; 063

	db  46,  87,  60,  57,  30,  40
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 75 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/axew/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, SWORDS_DANCE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DIG, DOUBLE_TEAM, X_SCISSOR, ROCK_TOMB, REST, ATTRACT, CUT, STRENGTH, IRON_TAIL, OUTRAGE, HONE_CLAWS, AQUA_TAIL, DRAGON_PULSE
	; end
