LoadSpecialMapPalette:
	ld a, [wMapTileset]
	cp TILESET_BATTLE_TOWER
	jr z, .battle_tower
	cp TILESET_ICE_PATH
	jp z, .ice_path
	cp TILESET_HOUSE
	jp z, .house
	cp TILESET_MANSION
	jp z, .mansion
	cp TILESET_RADIO_TOWER
	jp z, .radio_tower
	cp TILESET_DESERT
	jp z, .desert
	cp TILESET_JOHTO_DESERT
	jp z, .johto_desert
	cp TILESET_JOHTO_AIRPORT
	jp z, .johto_airport
	cp TILESET_FOREST
	jp z, .forest
	cp TILESET_PARK
	jp z, .park
	cp TILESET_BRIDGE
	jp z, .bridge
	cp TILESET_CASTELIA
	jp z, .castelia
	cp TILESET_FACILITY
	jp z, .facility
	cp TILESET_UNDERGROUND
	jp z, .underground
	cp TILESET_GAME_CORNER
	jp z, .game_corner
	cp TILESET_CAVE
	jp z, .cave
	cp TILESET_ELITE_FOUR_ROOM
	jp z, .elite_four_room
	cp TILESET_TRADITIONAL_HOUSE
	jp z, .traditional_house
	cp TILESET_AIRPORT
	jp z, .airport
	cp TILESET_OPELUCID
	jp z, .opelucid
	jr .do_nothing

.battle_tower
	call LoadBattleTowerPalette
	scf
	ret

.airport
	ld a, [wMapGroup]
	cp 19 ; mapgroup_Mistralton
	jr nz, .load_airport ; Must be Lentimas Airport
	ld a, [wMapNumber]
	cp 7 ; MistraltonAirport
	jr z, .load_airport
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .plane_nite
	call LoadPlanePalette
	scf
	ret
	
.plane_nite
	call LoadPlaneNitePalette
	scf
	ret
	
.load_airport
	call LoadAirportPalette
	scf
	ret

.do_nothing
	and a
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.mansion
	call LoadMansionPalette
	scf
	ret

.radio_tower
	ld a, [wMapGroup]
	cp 18 ; mapgroup_Driftveil
	jr z, .stone_emporium
	call LoadRadioTowerPalette
	scf
	ret

.stone_emporium
	call LoadEmporiumPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret
	
.desert
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .nite
	call LoadDesertPalette
	scf
	ret
	
.nite
	call LoadDesertNitePalette
	scf
	ret
	
.johto_desert
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .jdnite
	call LoadJohtoDesertPalette
	scf
	ret
	
.jdnite
	call LoadJohtoDesertNitePalette
	scf
	ret
	
.johto_airport
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .janite
	call LoadMistraltonPalette
	scf
	ret
	
.janite
	call LoadMistraltonNitePalette
	scf
	ret

.forest
	call LoadForestPalette
	scf
	ret
	
.facility
	ld a, [wMapGroup]
	cp 9 ; mapgroup_Castelia
	jr nz, .do_nothing
	call LoadCasteliaGymPalette
	scf
	ret
	
.cave
	ld a, [wMapGroup]
	cp 1 ; mapgroup_Dungeons
	jr nz, .do_nothing
	ld a, [wMapNumber]
	cp 32 ; ChargestoneCave1F
	jr z, .chargestone
	cp 33 ; ChargestoneCaveB1F
	jr z, .chargestone
	cp 34 ; ChargestoneCaveB2F
	jp nz, .do_nothing
.chargestone
	call LoadChargestonePalette
	scf
	ret
	
.traditional_house
	ld a, [wMapGroup]
	cp 1 ; mapgroup_Dungeons
	jp nz, .do_nothing
	ld a, [wMapNumber]
	cp 37 ; CelestialTowerRoof
	jp nz, .do_nothing
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .celestial_nite
	call LoadCelestialTowerPalette
	scf
	ret
	
.celestial_nite
	call LoadCelestialTowerNitePalette
	scf
	ret
	
.elite_four_room
	ld a, [wMapGroup]
	cp 19 ; mapgroup_Mistralton
	jp nz, .do_nothing
	call LoadMistraltonGymPalette
	scf
	ret
	
.underground
	ld a, [wMapGroup]
	cp 1 ; mapgroup_Dungeons
	jp nz, .do_nothing
	call LoadSewerPalette
	scf
	ret
	
.game_corner
	ld a, [wMapGroup]
	cp 1 ; mapgroup_Dungeons
	jr z, .coaster
	cp 14 ; mapgroup_Striaton
	jp nz, .do_nothing
	call LoadStriatonGymPalette
	scf
	ret
	
.coaster
	call LoadCoasterPalette
	scf
	ret
	
.castelia
	ld a, [wMapNumber]
	cp 1
	jp nz, .do_nothing
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .castelianite
	call LoadCasteliaPalette
	scf
	ret
	
.castelianite
	call LoadCasteliaNitePalette
	scf
	ret
	
.opelucid
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .opelucidnite
	call LoadOpelucidPalette
	scf
	ret
	
.opelucidnite
	call LoadOpelucidNitePalette
	scf
	ret
	
.park
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .parknite
	call LoadParkPalette
	scf
	ret
	
.parknite
	call LoadParkNitePalette
	scf
	ret
	
.bridge
	ld a, [wMapGroup]
	cp 18 ; mapgroup_Driftveil
	jr z, .drawbridge
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .bridgenite
	call LoadBridgePalette
	scf
	ret
	
.bridgenite
	call LoadBridgeNitePalette
	scf
	ret
	
.drawbridge
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .drawbridgenite
	call LoadDrawbridgePalette
	scf
	ret
	
.drawbridgenite
	call LoadDrawbridgeNitePalette
	scf
	ret

LoadBattleTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BattleTowerPalette:
INCLUDE "gfx/tilesets/battle_tower.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

LoadRadioTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RadioTowerPalette:
INCLUDE "gfx/tilesets/radio_tower.pal"

MansionPalette1:
INCLUDE "gfx/tilesets/mansion_1.pal"

LoadMansionPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_YELLOW
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_WATER
	ld hl, MansionPalette1 palette 6
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_ROOF
	ld hl, MansionPalette1 palette 8
	ld bc, 1 palettes
	call FarCopyWRAM
	ret

MansionPalette2:
INCLUDE "gfx/tilesets/mansion_2.pal"

LoadDesertPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DesertPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
DesertPalette:
INCLUDE "gfx/tilesets/desert.pal"

LoadDesertNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DesertNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
DesertNitePalette:
INCLUDE "gfx/tilesets/desert_nite.pal"

LoadJohtoDesertPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, JohtoDesertPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
JohtoDesertPalette:
INCLUDE "gfx/tilesets/johto_desert.pal"

LoadJohtoDesertNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, JohtoDesertNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
JohtoDesertNitePalette:
INCLUDE "gfx/tilesets/johto_desert_nite.pal"

LoadCasteliaPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CasteliaPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
CasteliaPalette:
INCLUDE "gfx/tilesets/castelia.pal"

LoadCasteliaNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CasteliaNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
CasteliaNitePalette:
INCLUDE "gfx/tilesets/castelia_nite.pal"

LoadCasteliaGymPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CasteliaGymPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
CasteliaGymPalette:
INCLUDE "gfx/tilesets/castelia_gym.pal"

LoadStriatonGymPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, StriatonGymPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
StriatonGymPalette:
INCLUDE "gfx/tilesets/striaton_gym.pal"

LoadMistraltonPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MistraltonPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
MistraltonPalette:
INCLUDE "gfx/tilesets/mistralton.pal"

LoadMistraltonNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MistraltonNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
MistraltonNitePalette:
INCLUDE "gfx/tilesets/mistralton_nite.pal"

LoadMistraltonGymPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MistraltonGymPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
MistraltonGymPalette:
INCLUDE "gfx/tilesets/mistralton_gym.pal"

LoadForestPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ForestPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
ForestPalette:
INCLUDE "gfx/tilesets/forest.pal"

LoadParkPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ParkPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
ParkPalette:
INCLUDE "gfx/tilesets/park.pal"

LoadParkNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ParkNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
ParkNitePalette:
INCLUDE "gfx/tilesets/park_nite.pal"

LoadBridgePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BridgePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
BridgePalette:
INCLUDE "gfx/tilesets/bridge.pal"

LoadBridgeNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BridgeNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
BridgeNitePalette:
INCLUDE "gfx/tilesets/bridge_nite.pal"

LoadDrawbridgePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DrawbridgePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
DrawbridgePalette:
INCLUDE "gfx/tilesets/drawbridge.pal"

LoadDrawbridgeNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DrawbridgeNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
DrawbridgeNitePalette:
INCLUDE "gfx/tilesets/drawbridge_nite.pal"

LoadSewerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SewerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
SewerPalette:
INCLUDE "gfx/tilesets/sewers.pal"

LoadCoasterPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CoasterPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
CoasterPalette:
INCLUDE "gfx/tilesets/coaster.pal"

LoadEmporiumPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, EmporiumPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
EmporiumPalette:
INCLUDE "gfx/tilesets/stone_emporium.pal"

LoadChargestonePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ChargestonePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
ChargestonePalette:
INCLUDE "gfx/tilesets/chargestone.pal"

LoadCelestialTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CelestialTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
CelestialTowerPalette:
INCLUDE "gfx/tilesets/celestial_tower.pal"

LoadCelestialTowerNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CelestialTowerNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
CelestialTowerNitePalette:
INCLUDE "gfx/tilesets/celestial_tower_nite.pal"

LoadOpelucidPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, OpelucidPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
OpelucidPalette:
INCLUDE "gfx/tilesets/opelucid.pal"

LoadOpelucidNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, OpelucidNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
OpelucidNitePalette:
INCLUDE "gfx/tilesets/opelucid_nite.pal"

LoadAirportPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, AirportPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
AirportPalette:
INCLUDE "gfx/tilesets/airport.pal"

LoadPlanePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PlanePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
PlanePalette:
INCLUDE "gfx/tilesets/plane.pal"

LoadPlaneNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PlaneNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
PlaneNitePalette:
INCLUDE "gfx/tilesets/plane_nite.pal"
