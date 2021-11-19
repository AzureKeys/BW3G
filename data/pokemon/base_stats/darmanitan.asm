	db DARMANITAN ; 063

	db 105, 140,  55,  95,  30,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 168 ; base exp
	db ICE_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/darmanitan/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm GIGA_IMPACT, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, WILL_O_WISP, HYPER_BEAM, PROTECT, SOLARBEAM, STONE_EDGE, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, BULLDOZE, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, IRON_DEFENSE, ZEN_HEADBUTT, FIRE_PUNCH, HYPER_VOICE
	; end
