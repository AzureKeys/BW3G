; Tilesets indexes (see data/tilesets.asm)
	const_def 1
	const TILESET_JOHTO                ; 01
	const TILESET_JOHTO_MODERN         ; 02
	const TILESET_BATTLE_TOWER_OUTSIDE ; 04
	const TILESET_HOUSE                ; 05
	const TILESET_PLAYERS_HOUSE        ; 06
	const TILESET_POKECENTER           ; 07
	const TILESET_GATE                 ; 08
	const TILESET_PORT                 ; 09
	const TILESET_LAB                  ; 0a
	const TILESET_FACILITY             ; 0b
	const TILESET_MART                 ; 0c
	const TILESET_MANSION              ; 0d
	const TILESET_GAME_CORNER          ; 0e
	const TILESET_ELITE_FOUR_ROOM      ; 0f
	const TILESET_TRADITIONAL_HOUSE    ; 10
	const TILESET_TRAIN_STATION        ; 11
	const TILESET_CHAMPIONS_ROOM       ; 12
	const TILESET_PLAYERS_ROOM         ; 14
	const TILESET_BATTLE_TOWER         ; 16
	const TILESET_TOWER                ; 17
	const TILESET_CAVE                 ; 18
	const TILESET_PARK                 ; 19
	const TILESET_RADIO_TOWER          ; 1b
	const TILESET_UNDERGROUND          ; 1c
	const TILESET_ICE_PATH             ; 1d
	const TILESET_FOREST               ; 1f
	const TILESET_LENTIMAS
	const TILESET_DESERT
	const TILESET_BRIDGE
	const TILESET_VILLAGE_BRIDGE
	const TILESET_MISTRALTON
	const TILESET_UNOVA_BEACH
	const TILESET_UNOVA_EAST
	const TILESET_STRIATON
	const TILESET_NACRENE
	const TILESET_UNOVA_WEST
	const TILESET_NIMBASA
	const TILESET_VIRBANK
	const TILESET_COMPLEX
	const TILESET_DRIFTVEIL
	const TILESET_UNOVA_NORTH
	const TILESET_CASTELIA
	const TILESET_AIRPORT
	const TILESET_OPELUCID
	const TILESET_ICIRRUS
	const TILESET_DREAMYARD
	const TILESET_PKMN_LEAGUE
	const TILESET_CAVE_RUINS
	const TILESET_ELITE_FOUR_ROOM_2

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
	

const_value set $80
	const PAL_BG_PRIORITY_GRAY   ; 80
	const PAL_BG_PRIORITY_RED    ; 81
	const PAL_BG_PRIORITY_GREEN  ; 82
	const PAL_BG_PRIORITY_WATER  ; 83
	const PAL_BG_PRIORITY_YELLOW ; 84
	const PAL_BG_PRIORITY_BROWN  ; 85
	const PAL_BG_PRIORITY_ROOF   ; 86
	const PAL_BG_PRIORITY_TEXT   ; 87
