CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_JOHTO,             .johto
	dbw TILESET_JOHTO_MODERN,      .johto_modern
	dbw TILESET_JOHTO_MODERN_EAST, .johto_modern_east
	dbw TILESET_FOREST,            .forest
	dbw TILESET_JOHTO_BEACH,       .johto_beach
	dbw TILESET_NIMBASA,           .nimbasa
	dbw TILESET_DREAMYARD,         .dreamyard
	dbw TILESET_PKMN_LEAGUE,       .pkmn_league
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $5b, $3c, 0 ; tree
	db $5f, $3d, 0 ; tree
	db $63, $3f, 0 ; tree
	db $67, $3e, 0 ; tree
	db -1 ; end

.johto_modern:
; facing block, replacement block, animation
	db $03, $02, $01 ; grass
	db $C2, $C3, $00 ; tree
	db -1 ; end
	
.johto_modern_east:
; facing block, replacement block, animation
	db $03, $02, $01 ; grass
	db $6C, $6D, $00 ; tree
	db -1 ; end
	
.nimbasa:
; facing block, replacement block, animation
	db $8D, $02, $01 ; grass
	db $A2, $9F, $00 ; tree
	db -1 ; end
	
.dreamyard:
; facing block, replacement block, animation
	db $01, $02, $01 ; grass
	db $13, $02, $00 ; tree
	db -1 ; end

.forest:
; facing block, replacement block, animation
	db $0f, $17, 0
	db $20, $14, 0
	db -1 ; end

.johto_beach:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $5f, $5b, 0 ; tree
	db -1 ; end

.pkmn_league:
; facing block, replacement block, animation
	db $7b, $76, 0 ; tree
	db $83, $82, 0 ; tree
	db -1 ; end

WhirlpoolBlockPointers:
	dbw TILESET_JOHTO, .johto
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $07, $36, 0
	db -1 ; end
