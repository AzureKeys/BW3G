LoadSpecialMapObjectPalette:
	ld a, [wMapTileset]
	cp TILESET_BRIDGE
	jp z, .bridge
	cp TILESET_VILLAGE_BRIDGE
	jp z, .village_bridge
	cp TILESET_ELITE_FOUR_ROOM
	jp z, .elite_four_room
	cp TILESET_OPELUCID
	jp z, .opelucid
	cp TILESET_TRADITIONAL_HOUSE
	jp z, .traditional_house
	cp TILESET_TOWER
	jr z, .tower
	cp TILESET_PKMN_LEAGUE
	jr z, .pkmn_league
	cp TILESET_NIMBASA
	jr z, .nimbasa
	cp TILESET_CHAMPIONS_ROOM
	jr z, .champions_room
	cp TILESET_POKECENTER
	jr z, .pokecenter
	cp TILESET_CAVE
	jr z, .cave
	jp .do_nothing
	
.pokecenter
	ld a, [wMapGroup]
	cp GROUP_CASTELIA_POKECENTER_1F
	jp nz, .do_nothing
; Castelia Pokecenter is the only map in Castelia group with 
; Pokecenter tileset
	call LoadBarnObPalette
	scf
	ret

.champions_room
	ld a, [wMapGroup]
	cp GROUP_CHAMPIONS_ROOM
	jp nz, .do_nothing
	call LoadDragonspiralRoofObPalette
	scf
	ret
	
.village_bridge
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .r5_nite
	call LoadR5ObPalette
	scf
	ret
	
.nimbasa
	ld a, [wMapGroup]
	cp GROUP_R_5
	jp nz, .do_nothing
	ld a, [wMapNumber]
	cp MAP_R_5
	jp nz, .do_nothing
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
	cp MAP_DRAGONSPIRAL_TOWER_ROOF
	jr nz, .do_nothing
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .tower_roof_nite
	call LoadDragonspiralRoofObPalette
	scf
	ret
	
.tower_roof_nite
	call LoadDragonspiralRoofObNitePalette
	scf
	ret

.cave
; All maps with TILESET_CAVE are in the Dungeons group
	ld a, [wMapNumber]
	cp MAP_TWIST_MOUNTAIN_GENESECT_ROOM
	jr nz, .do_nothing
	call LoadDragonspiralRoofObNitePalette
	scf
	ret
	
.traditional_house
	ld a, [wMapGroup]
	cp GROUP_FLOCCESY_RANCH_BARN
	jr nz, .do_nothing
; Barn is the only map in Floccesy group with Traditional House tileset
	call LoadBarnObPalette
	scf
	ret

.elite_four_room
	ld a, [wMapGroup]
	cp GROUP_MISTRALTON_CITY
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
	cp GROUP_OPELUCID_CITY
	jr nz, .do_nothing
	ld a, [wMapNumber]
	cp MAP_OPELUCID_CITY
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

LoadBridgeObPalette: ; TREE & ROCK used for bridge objects
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, BridgeObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BridgeObPalette:
INCLUDE "gfx/tilesets/bridge_ob.pal"

LoadBridgeNiteObPalette: ; TREE & ROCK used for bridge objects
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, BridgeNiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BridgeNiteObPalette:
INCLUDE "gfx/tilesets/bridge_nite_ob.pal"

LoadOpelucidObPalette: ; ROCK used for fountain tiles
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, OpelucidObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

OpelucidObPalette:
INCLUDE "gfx/tilesets/opelucid_ob.pal"

LoadOpelucidNiteObPalette: ; ROCK used for fountain tiles
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, OpelucidNiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

OpelucidNiteObPalette:
INCLUDE "gfx/tilesets/opelucid_nite_ob.pal"

LoadMistraltonGymObPalette: ; ROCK used for grey fan objects
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, MistraltonGymObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

MistraltonGymObPalette:
INCLUDE "gfx/tilesets/mistralton_gym_ob.pal"

LoadBarnObPalette: ; ROCK = Pink
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, BarnObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BarnObPalette:
INCLUDE "gfx/tilesets/barn_ob.pal"

LoadDragonspiralRoofObPalette: ; TREE = Grey, ROCK = Purple, RED used for Genesis Project
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, DragonspiralRoofObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

DragonspiralRoofObPalette:
INCLUDE "gfx/tilesets/dragonspiral_roof_ob.pal"

LoadDragonspiralRoofObNitePalette: ; TREE = Grey, ROCK = Purple, RED used for Genesis Project
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, DragonspiralRoofObNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

DragonspiralRoofObNitePalette:
INCLUDE "gfx/tilesets/dragonspiral_roof_ob_nite.pal"

LoadVREntranceObPalette: ; TREE used for yellow badges, ROCK used for blue badges
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, VREntranceObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

VREntranceObPalette:
INCLUDE "gfx/tilesets/victory_road_ob.pal"

LoadVREntranceNiteObPalette: ; TREE used for yellow badges, ROCK used for blue badges
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, VREntranceNiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

VREntranceNiteObPalette:
INCLUDE "gfx/tilesets/victory_road_nite_ob.pal"

LoadR5ObPalette: ; ROCK = Green Dark
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, R5ObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

R5ObPalette:
INCLUDE "gfx/tilesets/r5_ob.pal"

LoadR5NiteObPalette: ; ROCK = Green Dark
	ld a, BANK(wOBPals1)
	ld de, wOBPals1
	ld hl, R5NiteObPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

R5NiteObPalette:
INCLUDE "gfx/tilesets/r5_nite_ob.pal"
