; sprite ids
; OverworldSprites indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE ; 00
	const SPRITE_CHRIS ; 01
	const SPRITE_CHRIS_BIKE ; 02
	const SPRITE_GAMEBOY_KID ; 03
	const SPRITE_ELDER ; 09
	const SPRITE_MOM ; 0c
	const SPRITE_REDS_MOM ; 0e
	const SPRITE_COOLTRAINER_M ; 23
	const SPRITE_COOLTRAINER_F ; 24
	const SPRITE_BUG_CATCHER ; 25
	const SPRITE_TWIN ; 26
	const SPRITE_YOUNGSTER ; 27
	const SPRITE_LASS ; 28
	const SPRITE_TEACHER ; 29
	const SPRITE_BUENA ; 2a
	const SPRITE_SUPER_NERD ; 2b
	const SPRITE_ROCKER ; 2c
	const SPRITE_POKEFAN_M ; 2d
	const SPRITE_POKEFAN_F ; 2e
	const SPRITE_GRAMPS ; 2f
	const SPRITE_GRANNY ; 30
	const SPRITE_SWIMMER_GUY ; 31
	const SPRITE_SWIMMER_GIRL ; 32
	const SPRITE_BIG_SNORLAX ; 33
	const SPRITE_SURFING_PIKACHU ; 34
	const SPRITE_ROCKET ; 35
	const SPRITE_ROCKET_GIRL ; 36
	const SPRITE_NURSE ; 37
	const SPRITE_LINK_RECEPTIONIST ; 38
	const SPRITE_CLERK ; 39
	const SPRITE_FISHER ; 3a
	const SPRITE_FISHING_GURU ; 3b
	const SPRITE_SCIENTIST ; 3c
	const SPRITE_SAGE ; 3e
	const SPRITE_GENTLEMAN ; 40
	const SPRITE_BLACK_BELT ; 41
	const SPRITE_RECEPTIONIST ; 42
	const SPRITE_OFFICER ; 43
	const SPRITE_BIG_LAPRAS ; 47
	const SPRITE_GYM_GUY ; 48
	const SPRITE_SAILOR ; 49
	const SPRITE_BIKER ; 4a
	const SPRITE_PHARMACIST ; 4b
	const SPRITE_MONSTER ; 4c
	const SPRITE_FAIRY ; 4d
	const SPRITE_BIRD ; 4e
	const SPRITE_DRAGON ; 4f
	const SPRITE_BIG_ONIX ; 50
	const SPRITE_N64 ; 51
	const SPRITE_SUDOWOODO ; 52
	const SPRITE_SURF ; 53
	const SPRITE_POKE_BALL ; 54
	const SPRITE_POKEDEX ; 55
	const SPRITE_PAPER ; 56
	const SPRITE_VIRTUAL_BOY ; 57
	const SPRITE_OLD_LINK_RECEPTIONIST ; 58
	const SPRITE_ROCK ; 59
	const SPRITE_BOULDER ; 5a
	const SPRITE_SNES ; 5b
	const SPRITE_FAMICOM ; 5c
	const SPRITE_FRUIT_TREE ; 5d
	const SPRITE_GOLD_TROPHY ; 5e
	const SPRITE_SILVER_TROPHY ; 5f
	const SPRITE_KRIS ; 60
	const SPRITE_KRIS_BIKE ; 61
	const SPRITE_KURT_OUTSIDE ; 62
	const SPRITE_SUICUNE ; 63
	const SPRITE_ENTEI ; 64
	const SPRITE_RAIKOU ; 65
	const SPRITE_STANDING_YOUNGSTER ; 66
	const SPRITE_MARLON ; 67
	const SPRITE_SHAUNTAL ; 68
	const SPRITE_INFER ; 69
	const SPRITE_FOSSIL ; 6a
	const SPRITE_SLEEPING_MAN ; 6b
	const SPRITE_SCIENTIST_F ; 6c
	const SPRITE_HARLEQUIN ; 6d
	const SPRITE_BURGH ; 6e
	const SPRITE_CHEREN ; 6f
	const SPRITE_PZMA_SAGE ; 70
	const SPRITE_SHADOW ; 71
	const SPRITE_ROXIE ; 72
	const SPRITE_JUNIPER ; 73
	const SPRITE_BIANCA ; 74
	const SPRITE_LENORA ; 75
	const SPRITE_CILAN ; 76
	const SPRITE_CLAY ; 77
	const SPRITE_IRIS ; 78
	const SPRITE_MYSTERYMAN ; 79
	const SPRITE_ROOD ; 7a
	const SPRITE_FAN ; 7b
	const SPRITE_SKYLA ; 7c
	const SPRITE_CABLE ; 7d
	const SPRITE_FOUNTAIN ; 7e
	const SPRITE_DRAYDEN ; 7f
	const SPRITE_INFER_SAGE ; 80

; SpriteMons indexes (see data/sprites/sprite_mons.asm)
	const_def $a0
SPRITE_POKEMON EQU const_value
	const SPRITE_SNEASEL ; a0
	const SPRITE_JIGGLYPUFF ; a1
	const SPRITE_YANMA ; a2
	const SPRITE_LARVESTA ; a3
	const SPRITE_FLAAFFY ; a4
	const SPRITE_GENESECT ; a5

; special GetMonSprite values (see engine/overworld/overworld.asm)
	const_def $e0
	const SPRITE_DAY_CARE_MON_1 ; e0
	const SPRITE_DAY_CARE_MON_2 ; e1

; wVariableSprites indexes (see wram.asm)
	const_def $f0
SPRITE_VARS EQU const_value
	const SPRITE_CONSOLE ; f0
	const SPRITE_DOLL_1 ; f1
	const SPRITE_DOLL_2 ; f2
	const SPRITE_BIG_DOLL ; f3
	const SPRITE_WEIRD_TREE ; f4
	const SPRITE_OLIVINE_RIVAL ; f5
	const SPRITE_AZALEA_ROCKET ; f6
	const SPRITE_FUCHSIA_GYM_1 ; f7
	const SPRITE_FUCHSIA_GYM_2 ; f8
	const SPRITE_FUCHSIA_GYM_3 ; f9
	const SPRITE_FUCHSIA_GYM_4 ; fa
	const SPRITE_COPYCAT ; fb
	const SPRITE_JANINE_IMPERSONATOR ; fc
	const SPRITE_VIO ; fd
	const SPRITE_BATTLE_HOUSE_BLUE ; fe
