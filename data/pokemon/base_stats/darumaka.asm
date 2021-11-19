	db DARUMAKA ; 063

	db  70,  90,  45,  50,  15,  45
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 120 ; catch rate
	db 63 ; base exp
	db ICE_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/darumaka/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, PROTECT, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, REST, ATTRACT, THIEF, ROCK_SLIDE, STRENGTH, ZEN_HEADBUTT, FIRE_PUNCH, HYPER_VOICE
	; end
