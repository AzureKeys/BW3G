; song ids
; Music indexes (see audio/music_pointers.asm)
	const_def

	const MUSIC_NONE                         ; 00
	const MUSIC_TITLE                        ; 01
	const MUSIC_MAGNET_TRAIN                 ; 02
	const MUSIC_POKEMON_CENTER               ; 03
	const MUSIC_HIKER_ENCOUNTER              ; 04
	const MUSIC_LASS_ENCOUNTER               ; 05
	const MUSIC_CYCLIST_ENCOUNTER            ; 06
	const MUSIC_HEAL                         ; 07
	const MUSIC_SHOW_ME_AROUND               ; 08
	const MUSIC_GAME_CORNER                  ; 09
	const MUSIC_BICYCLE                      ; 0a
	const MUSIC_HALL_OF_FAME                 ; 0b
	const MUSIC_TRAINER_VICTORY              ; 0c
	const MUSIC_WILD_VICTORY                 ; 0d
	const MUSIC_GYM_VICTORY                  ; 0e
	const MUSIC_GYM                          ; 0f
	const MUSIC_POKEMON_TALK                 ; 10
	const MUSIC_RIVAL_ENCOUNTER              ; 11
	const MUSIC_RIVAL_AFTER                  ; 12
	const MUSIC_SURF                         ; 13
	const MUSIC_EVOLUTION                    ; 14
	const MUSIC_CREDITS                      ; 15
	const MUSIC_ACE_TRAINER_ENCOUNTER        ; 16
	const MUSIC_WILD_BATTLE                  ; 17
	const MUSIC_TRAINER_BATTLE               ; 18
	const MUSIC_GYM_LEADER_BATTLE            ; 19
	const MUSIC_CHAMPION_BATTLE              ; 1a
	const MUSIC_RIVAL_BATTLE                 ; 1b
	const MUSIC_PLASMA_BATTLE                ; 1c
	const MUSIC_YOUNGSTER_ENCOUNTER          ; 1d
	const MUSIC_BEAUTY_ENCOUNTER             ; 1e
	const MUSIC_ROCKET_ENCOUNTER             ; 1f
	const MUSIC_PSYCHIC_ENCOUNTER            ; 20
	const MUSIC_SCIENTIST_ENCOUNTER          ; 21
	const MUSIC_POKEMON_CHANNEL              ; 22
	const MUSIC_POKE_FLUTE_CHANNEL           ; 23
	const MUSIC_WILD_BATTLE_NIGHT            ; 24
	const MUSIC_RUINS_OF_ALPH_RADIO          ; 25
	const MUSIC_CAPTURE                      ; 26
	const MUSIC_MOM                          ; 27
	const MUSIC_VICTORY_ROAD                 ; 28
	const MUSIC_POKEMON_LULLABY              ; 29
	const MUSIC_POKEMON_MARCH                ; 2a
	const MUSIC_MAIN_MENU                    ; 2b
	const MUSIC_PRINTER                      ; 2c
	const MUSIC_POST_CREDITS                 ; 2d
	const MUSIC_TWINS_ENCOUNTER              ; 2e
	const MUSIC_MOBILE_CENTER                ; 2f
	const MUSIC_UNOVA_TOWER                  ; 30
	const MUSIC_MOBILE_ADAPTER_MENU          ; 31
	const MUSIC_HUMILAU_CITY                 ; 32
	const MUSIC_LACUNOSA_TOWN                ; 33
	const MUSIC_R_14                         ; 34
	const MUSIC_MARLON_THEME                 ; 35
	const MUSIC_LENTIMAS_TOWN                ; 36
	const MUSIC_STRANGE_HOUSE                ; 37
	const MUSIC_FOREST                       ; 38
	const MUSIC_R_4                          ; 39
	const MUSIC_NIMBASA_CITY                 ; 3a
	const MUSIC_R_22                         ; 3b
	const MUSIC_CASTELIA_CITY                ; 3c
	const MUSIC_DESERT_RESORT                ; 3d
	const MUSIC_ACCUMULA_TOWN                ; 3e
	const MUSIC_ASPERTIA_CITY                ; 3f
	const MUSIC_FLOCCESY_TOWN                ; 40
	const MUSIC_VIRBANK_CITY                 ; 41
	const MUSIC_P2_LAB                       ; 42
	const MUSIC_CHEREN_THEME                 ; 43
	const MUSIC_R_3                          ; 44
	const MUSIC_SKYARROW                     ; 45
	const MUSIC_STRIATON_CITY                ; 46
	const MUSIC_UNOVA_CAVE                   ; 47
	const MUSIC_R_17                         ; 48
	const MUSIC_DRIFTVEIL_CITY               ; 49
	const MUSIC_R_6                          ; 4a
	const MUSIC_SEWERS                       ; 4b
	const MUSIC_MISTRALTON_CITY              ; 4c
	const MUSIC_ICIRRUS_CITY                 ; 4d
	const MUSIC_MART                         ; 4e
	const MUSIC_ELITE_FOUR                   ; 4f
	const MUSIC_PKMN_LEAGUE                  ; 50
	const MUSIC_OPELUCID_CITY                ; 51
	const MUSIC_ROUGHNECK_ENCOUNTER          ; 52
	const MUSIC_GENTLEMAN_ENCOUNTER          ; 53
	const MUSIC_POKEFAN_ENCOUNTER            ; 54
	const MUSIC_WORKER_ENCOUNTER             ; 55
	const MUSIC_GHETSIS_BATTLE               ; 56
	const MUSIC_NUVEMA_TOWN                  ; 57
	const MUSIC_ROCKET_HIDEOUT               ; 58
	const MUSIC_CYNTHIA_ENCOUNTER            ; 59
	const MUSIC_CYNTHIA_BATTLE               ; 5a

; GetMapMusic picks music for this value (see home/map.asm)
MUSIC_MAHOGANY_MART EQU $fc
MUSIC_RADIO_TOWER EQU $fd

; ExitPokegearRadio_HandleMusic uses these values
RESTART_MAP_MUSIC EQU $fe
ENTER_MAP_MUSIC   EQU $ff
