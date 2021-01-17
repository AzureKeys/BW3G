	db RIOLU ; 183

	db  40,  70,  40,  60,  35,  40
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 72 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/riolu/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, DIG, BULLDOZE, DOUBLE_TEAM, ROCK_TOMB, HEX, SHADOW_CLAW, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, STRENGTH, IRON_DEFENSE, IRON_TAIL, ZEN_HEADBUTT, ICE_PUNCH, LOW_KICK, THUNDERPUNCH, DRAIN_PUNCH
	; end
