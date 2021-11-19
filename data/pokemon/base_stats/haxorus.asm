	db HAXORUS ; 063

	db  76, 147,  90,  97,  60,  70
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 243 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/haxorus/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, DRAGON_CLAW, SWORDS_DANCE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, X_SCISSOR, ROCK_TOMB, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, CUT, SURF, STRENGTH, IRON_TAIL, OUTRAGE, HONE_CLAWS, AQUA_TAIL, DRAGON_PULSE, LOW_KICK
	; end
