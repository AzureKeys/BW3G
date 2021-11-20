tilecoll: MACRO
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

; TilesetKantoGFX:
; INCBIN "gfx/tilesets/kanto.2bpp.lz"

; TilesetKantoMeta:
; INCBIN "data/tilesets/kanto_metatiles.bin"

; TilesetKantoColl:
; INCLUDE "data/tilesets/kanto_collision.asm"

Tileset0GFX:
TilesetJohtoGFX:
INCBIN "gfx/tilesets/johto.2bpp.lz"

Tileset0Meta:
TilesetJohtoMeta:
INCBIN "data/tilesets/johto_metatiles.bin"

Tileset0Coll:
TilesetJohtoColl:
INCLUDE "data/tilesets/johto_collision.asm"

TilesetIcePathGFX:
INCBIN "gfx/tilesets/ice_path.2bpp.lz"

TilesetIcePathMeta:
INCBIN "data/tilesets/ice_path_metatiles.bin"

TilesetIcePathColl:
INCLUDE "data/tilesets/ice_path_collision.asm"

TilesetComplexGFX:
INCBIN "gfx/tilesets/complex.2bpp.lz"

TilesetComplexMeta:
INCBIN "data/tilesets/complex_metatiles.bin"

TilesetComplexColl:
INCLUDE "data/tilesets/complex_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetPlayersRoomGFX:
INCBIN "gfx/tilesets/players_room.2bpp.lz"

TilesetPlayersRoomMeta:
INCBIN "data/tilesets/players_room_metatiles.bin"

TilesetPlayersRoomColl:
INCLUDE "data/tilesets/players_room_collision.asm"

TilesetPokecenterGFX:
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

TilesetPokecenterMeta:
INCBIN "data/tilesets/pokecenter_metatiles.bin"

TilesetPokecenterColl:
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPlayersHouseGFX:
INCBIN "gfx/tilesets/players_house.2bpp.lz"

TilesetPlayersHouseMeta:
INCBIN "data/tilesets/players_house_metatiles.bin"

TilesetPlayersHouseColl:
INCLUDE "data/tilesets/players_house_collision.asm"

TilesetMansionGFX:
INCBIN "gfx/tilesets/mansion.2bpp.lz"

TilesetMansionMeta:
INCBIN "data/tilesets/mansion_metatiles.bin"

TilesetMansionColl:
INCLUDE "data/tilesets/mansion_collision.asm"

TilesetCaveGFX:
INCBIN "gfx/tilesets/cave.2bpp.lz"

TilesetCaveMeta:
;TilesetDarkCaveMeta:
INCBIN "data/tilesets/cave_metatiles.bin"

TilesetCaveColl:
;TilesetDarkCaveColl:
INCLUDE "data/tilesets/cave_collision.asm"


SECTION "Tileset Data 3", ROMX

TilesetComplexAttr:
INCBIN "data/tilesets/complex_attributes.bin"

TilesetPortGFX:
INCBIN "gfx/tilesets/port.2bpp.lz"

TilesetPortMeta:
INCBIN "data/tilesets/port_metatiles.bin"

TilesetPortColl:
INCLUDE "data/tilesets/port_collision.asm"

; TilesetTowerGFX:
; INCBIN "gfx/tilesets/tower.2bpp.lz"

; TilesetTowerMeta:
; INCBIN "data/tilesets/tower_metatiles.bin"

; TilesetTowerColl:
; INCLUDE "data/tilesets/tower_collision.asm"

TilesetMartGFX:
INCBIN "gfx/tilesets/mart.2bpp.lz"

TilesetMartMeta:
INCBIN "data/tilesets/mart_metatiles.bin"

TilesetMartColl:
INCLUDE "data/tilesets/mart_collision.asm"

TilesetGameCornerGFX:
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

TilesetGameCornerMeta:
INCBIN "data/tilesets/game_corner_metatiles.bin"

TilesetGameCornerColl:
INCLUDE "data/tilesets/game_corner_collision.asm"


SECTION "Tileset Data 4", ROMX

TilesetTrainStationGFX:
INCBIN "gfx/tilesets/train_station.2bpp.lz"

TilesetTrainStationMeta:
INCBIN "data/tilesets/train_station_metatiles.bin"

TilesetTrainStationColl:
INCLUDE "data/tilesets/train_station_collision.asm"

TilesetDriftveilGFX:
INCBIN "gfx/tilesets/driftveil.,driftveil_extra.2bpp.lz"

TilesetForestMeta:
INCBIN "data/tilesets/forest_metatiles.bin"

TilesetEliteFourRoomGFX:
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta:
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl:
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetParkMeta:
INCBIN "data/tilesets/park_metatiles.bin"

TilesetParkColl:
INCLUDE "data/tilesets/park_collision.asm"

TilesetUndergroundGFX:
INCBIN "gfx/tilesets/underground.2bpp.lz"

; TilesetDarkCaveGFX:
; INCBIN "gfx/tilesets/dark_cave.2bpp.lz"

; UnusedTilesetDarkCaveMeta:
; INCBIN "data/tilesets/unused_dark_cave_metatiles.bin"

; UnusedTilesetDarkCaveColl:
; INCLUDE "data/tilesets/unused_dark_cave_collision.asm"


SECTION "Tileset Data 5", ROMX

TilesetUndergroundMeta:
INCBIN "data/tilesets/underground_metatiles.bin"

TilesetUndergroundColl:
INCLUDE "data/tilesets/underground_collision.asm"

TilesetBattleTowerGFX:
INCBIN "gfx/tilesets/battle_tower.2bpp.lz"

TilesetBattleTowerMeta:
INCBIN "data/tilesets/battle_tower_metatiles.bin"

TilesetBattleTowerColl:
INCLUDE "data/tilesets/battle_tower_collision.asm"

TilesetGateGFX:
INCBIN "gfx/tilesets/gate.2bpp.lz"

TilesetGateMeta:
INCBIN "data/tilesets/gate_metatiles.bin"

TilesetGateColl:
INCLUDE "data/tilesets/gate_collision.asm"

TilesetJohtoModernGFX:
INCBIN "gfx/tilesets/johto_modern.2bpp.lz"

TilesetBattleTowerOutsideGFX:
INCBIN "gfx/tilesets/battle_tower_outside.2bpp.lz"


SECTION "Tileset Data 6", ROMX

TilesetJohtoModernMeta:
INCBIN "data/tilesets/johto_modern_metatiles.bin"

TilesetJohtoModernColl:
INCLUDE "data/tilesets/johto_modern_collision.asm"

TilesetTraditionalHouseGFX:
INCBIN "gfx/tilesets/traditional_house.2bpp.lz"

TilesetTraditionalHouseMeta:
INCBIN "data/tilesets/traditional_house_metatiles.bin"

TilesetTraditionalHouseColl:
INCLUDE "data/tilesets/traditional_house_collision.asm"

TilesetForestGFX:
INCBIN "gfx/tilesets/forest.2bpp.lz"

TilesetChampionsRoomGFX:
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

TilesetChampionsRoomMeta:
INCBIN "data/tilesets/champions_room_metatiles.bin"

TilesetChampionsRoomColl:
INCLUDE "data/tilesets/champions_room_collision.asm"

; TilesetLighthouseGFX:
; INCBIN "gfx/tilesets/lighthouse.2bpp.lz"

; TilesetLighthouseMeta:
; INCBIN "data/tilesets/lighthouse_metatiles.bin"

; TilesetLighthouseColl:
; INCLUDE "data/tilesets/lighthouse_collision.asm"


SECTION "Tileset Data 7", ROMX

TilesetHouseGFX:
INCBIN "gfx/tilesets/house.2bpp.lz"

TilesetHouseMeta:
INCBIN "data/tilesets/house_metatiles.bin"

TilesetHouseColl:
INCLUDE "data/tilesets/house_collision.asm"

TilesetFacilityGFX:
INCBIN "gfx/tilesets/facility.2bpp.lz"

TilesetFacilityMeta:
INCBIN "data/tilesets/facility_metatiles.bin"

TilesetFacilityColl:
INCLUDE "data/tilesets/facility_collision.asm"

;TilesetBetaWordRoomMeta:
TilesetBattleTowerOutsideMeta:
INCBIN "data/tilesets/battle_tower_outside_metatiles.bin"

TilesetDriftveilMeta:
INCBIN "data/tilesets/driftveil_metatiles.bin"

TilesetDriftveilColl:
INCLUDE "data/tilesets/driftveil_collision.asm"

; TilesetBetaWordRoomColl:
; TilesetHoOhWordRoomColl:
; TilesetKabutoWordRoomColl:
; TilesetOmanyteWordRoomColl:
; TilesetAerodactylWordRoomColl:

; TilesetRuinsOfAlphGFX:
; TilesetBetaWordRoomGFX:
; TilesetHoOhWordRoomGFX:
; TilesetKabutoWordRoomGFX:
; TilesetOmanyteWordRoomGFX:
; TilesetAerodactylWordRoomGFX:
; INCBIN "gfx/tilesets/ruins_of_alph.2bpp.lz"

; TilesetRuinsOfAlphMeta:
; INCBIN "data/tilesets/ruins_of_alph_metatiles.bin"

; TilesetRuinsOfAlphColl:
; INCLUDE "data/tilesets/ruins_of_alph_collision.asm"

; TilesetPokeComCenterGFX:
; INCBIN "gfx/tilesets/pokecom_center.2bpp.lz"

; TilesetPokeComCenterMeta:
; INCBIN "data/tilesets/pokecom_center_metatiles.bin"

; TilesetPokeComCenterColl:
; INCLUDE "data/tilesets/pokecom_center_collision.asm"


SECTION "Tileset Data 8", ROMX

TilesetDriftveilAttr:
INCBIN "data/tilesets/driftveil_attributes.bin"

TilesetBattleTowerOutsideColl:
INCLUDE "data/tilesets/battle_tower_outside_collision.asm"

TilesetForestColl:
INCLUDE "data/tilesets/forest_collision.asm"

TilesetLabGFX:
INCBIN "gfx/tilesets/lab.2bpp.lz"

TilesetLabMeta:
INCBIN "data/tilesets/lab_metatiles.bin"

TilesetLabColl:
INCLUDE "data/tilesets/lab_collision.asm"

; TilesetHoOhWordRoomMeta:
; INCBIN "data/tilesets/ho_oh_word_room_metatiles.bin"

; TilesetKabutoWordRoomMeta:
; INCBIN "data/tilesets/kabuto_word_room_metatiles.bin"

; TilesetOmanyteWordRoomMeta:
; INCBIN "data/tilesets/omanyte_word_room_metatiles.bin"

; TilesetAerodactylWordRoomMeta:
; INCBIN "data/tilesets/aerodactyl_word_room_metatiles.bin"

TilesetDesertGFX:
INCBIN "gfx/tilesets/desert.2bpp.lz"

TilesetDesertMeta:
INCBIN "data/tilesets/desert_metatiles.bin"

TilesetDesertColl:
INCLUDE "data/tilesets/desert_collision.asm"


SECTION "Tileset Data 9", ROMX

TilesetJohtoDesertGFX:
INCBIN "gfx/tilesets/johto_desert.2bpp.lz"

TilesetJohtoDesertMeta:
INCBIN "data/tilesets/johto_desert_metatiles.bin"

TilesetJohtoDesertColl:
INCLUDE "data/tilesets/johto_desert_collision.asm"

TilesetBridgeGFX:
INCBIN "gfx/tilesets/bridge.2bpp.lz"

TilesetBridgeMeta:
INCBIN "data/tilesets/bridge_metatiles.bin"

TilesetBridgeColl:
INCLUDE "data/tilesets/bridge_collision.asm"

TilesetVillageBridgeGFX:
INCBIN "gfx/tilesets/village_bridge.2bpp.lz"

TilesetVillageBridgeMeta:
INCBIN "data/tilesets/village_bridge_metatiles.bin"

TilesetVillageBridgeColl:
INCLUDE "data/tilesets/village_bridge_collision.asm"


SECTION "Tileset Data 10", ROMX

TilesetJohtoBeachGFX:
INCBIN "gfx/tilesets/johto_beach.2bpp.lz"

TilesetJohtoBeachMeta:
INCBIN "data/tilesets/johto_beach_metatiles.bin"

TilesetJohtoBeachColl:
INCLUDE "data/tilesets/johto_beach_collision.asm"

TilesetJohtoEastGFX:
INCBIN "gfx/tilesets/johto_east.2bpp.lz"

TilesetJohtoEastMeta:
INCBIN "data/tilesets/johto_east_metatiles.bin"

TilesetJohtoEastColl:
INCLUDE "data/tilesets/johto_east_collision.asm"


SECTION "Tileset Data 11", ROMX

Tileset0Attr:
TilesetJohtoAttr:
INCBIN "data/tilesets/johto_attributes.bin"

TilesetJohtoModernAttr:
INCBIN "data/tilesets/johto_modern_attributes.bin"

; TilesetKantoAttr:
; INCBIN "data/tilesets/kanto_attributes.bin"

TilesetBattleTowerOutsideAttr:
INCBIN "data/tilesets/battle_tower_outside_attributes.bin"

TilesetHouseAttr:
INCBIN "data/tilesets/house_attributes.bin"

TilesetPlayersHouseAttr:
INCBIN "data/tilesets/players_house_attributes.bin"

TilesetPokecenterAttr:
INCBIN "data/tilesets/pokecenter_attributes.bin"

TilesetGateAttr:
INCBIN "data/tilesets/gate_attributes.bin"

TilesetPortAttr:
INCBIN "data/tilesets/port_attributes.bin"


SECTION "Tileset Data 12", ROMX

TilesetLabAttr:
INCBIN "data/tilesets/lab_attributes.bin"

TilesetFacilityAttr:
INCBIN "data/tilesets/facility_attributes.bin"

TilesetMartAttr:
INCBIN "data/tilesets/mart_attributes.bin"

TilesetMansionAttr:
INCBIN "data/tilesets/mansion_attributes.bin"

TilesetGameCornerAttr:
INCBIN "data/tilesets/game_corner_attributes.bin"

TilesetEliteFourRoomAttr:
INCBIN "data/tilesets/elite_four_room_attributes.bin"

TilesetTraditionalHouseAttr:
INCBIN "data/tilesets/traditional_house_attributes.bin"

TilesetTrainStationAttr:
INCBIN "data/tilesets/train_station_attributes.bin"


SECTION "Tileset Data 13", ROMX

TilesetChampionsRoomAttr:
INCBIN "data/tilesets/champions_room_attributes.bin"

TilesetPlayersRoomAttr:
INCBIN "data/tilesets/players_room_attributes.bin"

TilesetBattleTowerAttr:
INCBIN "data/tilesets/battle_tower_attributes.bin"

TilesetCaveAttr:
;TilesetDarkCaveAttr:
INCBIN "data/tilesets/cave_attributes.bin"

TilesetParkAttr:
INCBIN "data/tilesets/park_attributes.bin"

TilesetRadioTowerAttr:
INCBIN "data/tilesets/radio_tower_attributes.bin"

TilesetUndergroundAttr:
INCBIN "data/tilesets/underground_attributes.bin"

TilesetIcePathAttr:
INCBIN "data/tilesets/ice_path_attributes.bin"

TilesetForestAttr:
INCBIN "data/tilesets/forest_attributes.bin"

TilesetDesertAttr:
INCBIN "data/tilesets/desert_attributes.bin"


SECTION "Tileset Data 14", ROMX

TilesetJohtoDesertAttr:
INCBIN "data/tilesets/johto_desert_attributes.bin"

TilesetBridgeAttr:
INCBIN "data/tilesets/bridge_attributes.bin"

TilesetVillageBridgeAttr:
INCBIN "data/tilesets/village_bridge_attributes.bin"

TilesetJohtoAirportAttr:
INCBIN "data/tilesets/johto_airport_attributes.bin"

TilesetJohtoBeachAttr:
INCBIN "data/tilesets/johto_beach_attributes.bin"

TilesetJohtoEastAttr:
INCBIN "data/tilesets/johto_east_attributes.bin"


SECTION "Tileset Data 15", ROMX

TilesetJohtoModernEastGFX:
INCBIN "gfx/tilesets/johto_modern_east.2bpp.lz"

TilesetJohtoModernEastMeta:
INCBIN "data/tilesets/johto_modern_east_metatiles.bin"

TilesetJohtoModernEastColl:
INCLUDE "data/tilesets/johto_modern_east_collision.asm"

TilesetJohtoModernEastAttr:
INCBIN "data/tilesets/johto_modern_east_attributes.bin"

TilesetJohtoWestGFX:
INCBIN "gfx/tilesets/johto_west.2bpp.lz"

TilesetJohtoWestMeta:
INCBIN "data/tilesets/johto_west_metatiles.bin"

TilesetJohtoWestColl:
INCLUDE "data/tilesets/johto_west_collision.asm"


SECTION "Tileset Data 16", ROMX

TilesetJohtoWestAttr:
INCBIN "data/tilesets/johto_west_attributes.bin"

TilesetNacreneGFX:
INCBIN "gfx/tilesets/nacrene.2bpp.lz"

TilesetNacreneMeta:
INCBIN "data/tilesets/nacrene_metatiles.bin"

TilesetNacreneColl:
INCLUDE "data/tilesets/nacrene_collision.asm"

TilesetNacreneAttr:
INCBIN "data/tilesets/nacrene_attributes.bin"

TilesetNimbasaGFX:
INCBIN "gfx/tilesets/nimbasa.2bpp.lz"

TilesetNimbasaMeta:
INCBIN "data/tilesets/nimbasa_metatiles.bin"

TilesetNimbasaColl:
INCLUDE "data/tilesets/nimbasa_collision.asm"


SECTION "Tileset Data 17", ROMX

TilesetNimbasaAttr:
INCBIN "data/tilesets/nimbasa_attributes.bin"

TilesetParkGFX:
INCBIN "gfx/tilesets/park.2bpp.lz"

TilesetVirbankGFX:
INCBIN "gfx/tilesets/virbank.2bpp.lz"

TilesetVirbankMeta:
INCBIN "data/tilesets/virbank_metatiles.bin"

TilesetVirbankColl:
INCLUDE "data/tilesets/virbank_collision.asm"

TilesetVirbankAttr:
INCBIN "data/tilesets/virbank_attributes.bin"

TilesetPkmnLeagueGFX:
INCBIN "gfx/tilesets/pkmn_league.2bpp.lz"


SECTION "Tileset Data 18", ROMX

TilesetPkmnLeagueMeta:
INCBIN "data/tilesets/pkmn_league_metatiles.bin"

TilesetPkmnLeagueColl:
INCLUDE "data/tilesets/pkmn_league_collision.asm"

TilesetPkmnLeagueAttr:
INCBIN "data/tilesets/pkmn_league_attributes.bin"

TilesetRadioTowerGFX:
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"

TilesetRadioTowerMeta:
INCBIN "data/tilesets/radio_tower_metatiles.bin"

TilesetCasteliaGFX:
INCBIN "gfx/tilesets/castelia.2bpp.lz"

TilesetCasteliaMeta:
INCBIN "data/tilesets/castelia_metatiles.bin"

TilesetCasteliaColl:
INCLUDE "data/tilesets/castelia_collision.asm"


SECTION "Tileset Data 19", ROMX

TilesetRadioTowerColl:
INCLUDE "data/tilesets/radio_tower_collision.asm"

TilesetCasteliaAttr:
INCBIN "data/tilesets/castelia_attributes.bin"

TilesetDriftveilExtraGFX::
INCBIN "gfx/tilesets/driftveil_extra.2bpp.lz"

TilesetMistraltonExtraGFX::
INCBIN "gfx/tilesets/johto_airport_extra.2bpp.lz"

TilesetAirportGFX:
INCBIN "gfx/tilesets/airport.2bpp.lz"

TilesetAirportMeta:
INCBIN "data/tilesets/airport_metatiles.bin"

TilesetAirportColl:
INCLUDE "data/tilesets/airport_collision.asm"

TilesetAirportAttr:
INCBIN "data/tilesets/airport_attributes.bin"

TilesetJohtoAirportGFX:
INCBIN "gfx/tilesets/johto_airport.,johto_airport_extra.2bpp.lz"

TilesetJohtoAirportMeta:
INCBIN "data/tilesets/johto_airport_metatiles.bin"

TilesetJohtoAirportColl:
INCLUDE "data/tilesets/johto_airport_collision.asm"


SECTION "Tileset Data 20", ROMX

TilesetOpelucidGFX:
INCBIN "gfx/tilesets/opelucid.2bpp.lz"

TilesetOpelucidMeta:
INCBIN "data/tilesets/opelucid_metatiles.bin"

TilesetOpelucidColl:
INCLUDE "data/tilesets/opelucid_collision.asm"

TilesetOpelucidAttr:
INCBIN "data/tilesets/opelucid_attributes.bin"

TilesetIcirrusGFX:
INCBIN "gfx/tilesets/icirrus.2bpp.lz"


SECTION "Tileset Data 21", ROMX

TilesetIcirrusMeta:
INCBIN "data/tilesets/icirrus_metatiles.bin"

TilesetIcirrusColl:
INCLUDE "data/tilesets/icirrus_collision.asm"

TilesetIcirrusAttr:
INCBIN "data/tilesets/icirrus_attributes.bin"
