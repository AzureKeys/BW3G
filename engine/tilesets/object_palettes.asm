LoadSpecialMapObjectPalette:
	ld a, [wMapTileset]
	cp TILESET_BRIDGE
	jr z, .bridge
	cp TILESET_VILLAGE_BRIDGE
	jr z, .bridge
	cp TILESET_ELITE_FOUR_ROOM
	jr z, .elite_four_room
	jr .do_nothing

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

LoadMistraltonGymObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, MistraltonGymObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

MistraltonGymObPalette:
INCLUDE "gfx/tilesets/mistralton_gym_ob.pal"
