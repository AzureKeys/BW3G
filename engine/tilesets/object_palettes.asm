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
	cp TILESET_TOWER
	jr z, .tower
	cp TILESET_PKMN_LEAGUE
	jr z, .pkmn_league
	cp TILESET_NIMBASA
	jr z, .nimbasa
	jr .do_nothing

.nimbasa
	ld a, [wMapNumber]
	cp 11 ; Rt5
	jr nz, .do_nothing
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .r5_nite
	call LoadR5ObPalette
	scf
	ret
	
.r5_nite
	call LoadR5NiteObPalette
	scf
	ret

.pkmn_league
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .vr_entrance_nite
	call LoadVREntranceObPalette
	scf
	ret
	
.vr_entrance_nite
	call LoadVREntranceNiteObPalette
	scf
	ret

.tower
; All maps with TILESET_TOWER are in the Dungeons group
	ld a, [wMapNumber]
	cp 47 ; DragonspiralTowerRoof
	jr nz, .do_nothing
	call LoadDragonspiralRoofObPalette
	scf
	ret
	
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
	cp 4 ; OpelucidCity
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

LoadDragonspiralRoofObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, DragonspiralRoofObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

DragonspiralRoofObPalette:
INCLUDE "gfx/tilesets/dragonspiral_roof_ob.pal"

LoadVREntranceObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, VREntranceObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

VREntranceObPalette:
INCLUDE "gfx/tilesets/victory_road_ob.pal"

LoadVREntranceNiteObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, VREntranceNiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

VREntranceNiteObPalette:
INCLUDE "gfx/tilesets/victory_road_nite_ob.pal"

LoadR5ObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, R5ObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

R5ObPalette:
INCLUDE "gfx/tilesets/r5_ob.pal"

LoadR5NiteObPalette:
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, R5NiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

R5NiteObPalette:
INCLUDE "gfx/tilesets/r5_nite_ob.pal"
