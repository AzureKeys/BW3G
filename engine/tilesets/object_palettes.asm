LoadSpecialMapObjectPalette:
	ld a, [wMapTileset]
	cp TILESET_BRIDGE
	jr z, .bridge
	cp TILESET_VILLAGE_BRIDGE
	jr z, .bridge
	cp TILESET_ELITE_FOUR_ROOM
	jr z, .elite_four_room
	cp TILESET_OPELUCID
	jr z, .opelucid
	cp TILESET_TRADITIONAL_HOUSE
	jr z, .traditional_house
	jr .do_nothing
	
.traditional_house
	ld a, [wMapGroup]
	cp 11 ; mapgroup_Floccesy
	jr nz, .do_nothing
; Barn is the only map in Floccesy group with Traditional House tilesets/bridge_nite_ob
	call LoadBarnObPalette
	scf
	ret

.elite_four_room
	ld a, [wMapGroup]
	cp 19 ; mapgroup_Mistralton
	jr nz, .do_nothing
	call LoadMistraltonGymObPalette
	scf
	ret

.bridge
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .bridgenite
	call LoadBridgeObPalette
	scf
	ret
	
.bridgenite
	call LoadBridgeNiteObPalette
	scf
	ret

.opelucid
	ld a, [wMapGroup]
	cp 20 ; mapgroup_Opelucid
	jr nz, .do_nothing
	ld a, [wMapNumber]
	cp 6 ; OpelucidCity
	jr nz, .do_nothing
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .opelucidnite
	call LoadOpelucidObPalette
	scf
	ret
	
.opelucidnite
	call LoadOpelucidNiteObPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadBridgeObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, BridgeObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BridgeObPalette:
INCLUDE "gfx/tilesets/bridge_ob.pal"

LoadBridgeNiteObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, BridgeNiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BridgeNiteObPalette:
INCLUDE "gfx/tilesets/bridge_nite_ob.pal"

LoadOpelucidObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, OpelucidObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

OpelucidObPalette:
INCLUDE "gfx/tilesets/opelucid_ob.pal"

LoadOpelucidNiteObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, OpelucidNiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

OpelucidNiteObPalette:
INCLUDE "gfx/tilesets/opelucid_nite_ob.pal"

LoadMistraltonGymObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, MistraltonGymObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

MistraltonGymObPalette:
INCLUDE "gfx/tilesets/mistralton_gym_ob.pal"

LoadBarnObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, BarnObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BarnObPalette:
INCLUDE "gfx/tilesets/barn_ob.pal"
