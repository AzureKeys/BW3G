LoadSpecialMapPalette:
	ld a, [wMapTileset]
	cp TILESET_BATTLE_TOWER
	jp z, .battle_tower
	cp TILESET_POKECENTER
	jp z, .pokecenter
	cp TILESET_ICE_PATH
	jp z, .ice_path
	cp TILESET_HOUSE
	jp z, .house
	cp TILESET_MANSION
	jp z, .mansion
	cp TILESET_RADIO_TOWER
	jp z, .radio_tower
	cp TILESET_LENTIMAS
	jp z, .lentimas
	cp TILESET_DESERT
	jp z, .desert
	cp TILESET_MISTRALTON
	jp z, .mistralton
	cp TILESET_FOREST
	jp z, .forest
	cp TILESET_PARK
	jp z, .park
	cp TILESET_BRIDGE
	jp z, .bridge
	cp TILESET_VILLAGE_BRIDGE
	jp z, .village_bridge
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
	cp TILESET_ELITE_FOUR_ROOM_2
	jp z, .elite_four_room
	cp TILESET_TRADITIONAL_HOUSE
	jp z, .traditional_house
	cp TILESET_AIRPORT
	jp z, .airport
	cp TILESET_OPELUCID
	jp z, .opelucid
	cp TILESET_ICIRRUS
	jp z, .icirrus
	cp TILESET_TOWER
	jr z, .tower
	cp TILESET_PKMN_LEAGUE
	jr z, .pkmn_league
	cp TILESET_CHAMPIONS_ROOM
	jp z, .champions_room
	cp TILESET_PORT
	jp z, .port
	jp .do_nothing

.battle_tower
	call LoadBattleTowerPalette
	scf
	ret

.pokecenter
	call LoadPokecenterPalette
	scf
	ret

.port
	ld a, [wMapGroup]
	cp 3 ; MapGroup_Humilau
	jr nz, .do_nothing
	call LoadHumilauGymPalette
	scf
	ret

.pkmn_league
; All maps with PkmnLeague Tileset are in PkmnLeague Group
	ld a, [wMapNumber]
	cp 5 ; VictoryRoadEntrance
; If not, it must be PkmnLeagueEntrance/Main
	jr nz, .load_league
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .vr_entrance_nite
	call LoadVREntrancePalette
	scf
	ret
	
.vr_entrance_nite
	call LoadVREntranceNitePalette
	scf
	ret
	
.load_league
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .league_nite
	call LoadLeaguePalette
	scf
	ret
	
.league_nite
	call LoadLeagueNitePalette
	scf
	ret

.tower
	ld a, [wMapNumber] ; All TILESET_TOWER maps are in group DUNGEONS
	cp 47 ; DragonspiralTowerRoof
	jr nz, .tower_day
	ld a, [wCurTimeOfDay] ; Roof can have NITE palette
	cp NITE_F
	jr nz, .tower_day
	call LoadTowerNitePalette
	scf
	ret
	
.tower_day
	call LoadTowerPalette
	scf
	ret

.airport
	ld a, [wMapGroup]
	cp 20 ; mapgroup_Opelucid
	jr z, .load_airport ; Shopping Mall Nine uses Airport palettes
	cp 6 ; mapgroup_Lentimas
	jr z, .load_airport ; Must be Lentimas Airport, load Airport palettes
	cp 21 ; mapgroup_Icirrus
	jr z, .plane ; Tubeline Bridge uses plane palettes
; Must be mapgroup_Mistralton
	ld a, [wMapNumber]
	cp 7 ; MistraltonAirport
	jr z, .load_airport
.plane
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

.champions_room
	ld a, [wMapGroup]
	cp 26 ; mapgroup_PkmnLeague
	jr nz, .do_nothing
	call LoadChampionPalette
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
	
.lentimas
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .nite
	call LoadLentimasPalette
	scf
	ret
	
.nite
	call LoadLentimasNitePalette
	scf
	ret
	
.desert
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .desert_nite
	call LoadDesertPalette
	scf
	ret
	
.desert_nite
	call LoadDesertNitePalette
	scf
	ret
	
.mistralton
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .mistralton_nite
	call LoadMistraltonPalette
	scf
	ret
	
.mistralton_nite
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
	jp nz, .do_nothing
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
	jr z, .MistraltonGym
	cp 26 ; mapgroup_PkmnLeague
	jp nz, .do_nothing
	ld a, [wMapNumber]
	cp 10 ; GrimsleysRoom
	jp z, .Grimsley
	cp 11 ; MarshalsRoom
	jp z, .Marshal
	cp 12 ; ElesasRoom
	jp z, .Elesa
	call LoadColressPalette
	scf
	ret
	
.Elesa
	call LoadElesaPalette
	scf
	ret
	
.Marshal
	call LoadMarshalPalette
	scf
	ret
	
.Grimsley
	call LoadGrimsleyPalette
	scf
	ret
	
.MistraltonGym
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
	
.icirrus
; Dragonspiral Tower has its own palettes
	ld a, [wMapGroup]
	cp 21 ; MapGroup_Icirrus
	jr nz, .ds_tower
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .icirrusnite
	call LoadIcirrusPalette
	scf
	ret
	
.icirrusnite
	call LoadIcirrusNitePalette
	scf
	ret
	
.ds_tower
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .ds_tower_nite
	call LoadDsTowerPalette
	scf
	ret
	
.ds_tower_nite
	call LoadDsTowerNitePalette
	scf
	ret
	
.village_bridge
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .villagebridgenite
	call LoadVillagePalette
	scf
	ret
	
.villagebridgenite
	call LoadVillageNitePalette
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

LoadLentimasPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, LentimasPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
LentimasPalette:
INCLUDE "gfx/tilesets/lentimas.pal"

LoadLentimasNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, LentimasNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
LentimasNitePalette:
INCLUDE "gfx/tilesets/lentimas_nite.pal"

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

LoadIcirrusPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcirrusPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
IcirrusPalette:
INCLUDE "gfx/tilesets/icirrus.pal"

LoadIcirrusNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcirrusNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
IcirrusNitePalette:
INCLUDE "gfx/tilesets/icirrus_nite.pal"

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

LoadVillagePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, VillagePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
VillagePalette:
INCLUDE "gfx/tilesets/village_bridge.pal"

LoadVillageNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, VillageNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
VillageNitePalette:
INCLUDE "gfx/tilesets/village_bridge_nite.pal"

LoadDsTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DsTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
DsTowerPalette:
INCLUDE "gfx/tilesets/dragonspiral_tower.pal"

LoadDsTowerNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DsTowerNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
DsTowerNitePalette:
INCLUDE "gfx/tilesets/dragonspiral_tower_nite.pal"

LoadPokecenterPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokecenterPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
PokecenterPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, TowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
TowerPalette:
INCLUDE "gfx/tilesets/tower.pal"

LoadTowerNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, TowerNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
TowerNitePalette:
INCLUDE "gfx/tilesets/tower_nite.pal"

LoadVREntrancePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, VREntrancePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
VREntrancePalette:
INCLUDE "gfx/tilesets/victory_road.pal"

LoadVREntranceNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, VREntranceNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
VREntranceNitePalette:
INCLUDE "gfx/tilesets/victory_road_nite.pal"

LoadLeaguePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, LeaguePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
LeaguePalette:
INCLUDE "gfx/tilesets/pkmn_league.pal"

LoadLeagueNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, LeagueNitePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
LeagueNitePalette:
INCLUDE "gfx/tilesets/pkmn_league_nite.pal"

LoadGrimsleyPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, GrimsleyPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
GrimsleyPalette:
INCLUDE "gfx/tilesets/grimsley.pal"

LoadMarshalPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MarshalPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
MarshalPalette:
INCLUDE "gfx/tilesets/marshal.pal"

LoadElesaPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ElesaPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
ElesaPalette:
INCLUDE "gfx/tilesets/elesa.pal"

LoadColressPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ColressPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
ColressPalette:
INCLUDE "gfx/tilesets/colress.pal"

LoadChampionPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ChampionPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
ChampionPalette:
INCLUDE "gfx/tilesets/champions_room.pal"

LoadHumilauGymPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, HumilauGymPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret
	
HumilauGymPalette:
INCLUDE "gfx/tilesets/humilau_gym.pal"
