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


SECTION "Tileset Data 2", ROMX

TilesetComplexColl:
INCLUDE "data/tilesets/complex_collision.asm"

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
TilesetCaveRuinsGFX:
INCBIN "gfx/tilesets/cave.2bpp.lz"


SECTION "Tileset Data 3", ROMX

TilesetComplexAttr:
INCBIN "data/tilesets/complex_attributes.bin"

TilesetPortGFX:
INCBIN "gfx/tilesets/port.2bpp.lz"

TilesetPortMeta:
INCBIN "data/tilesets/port_metatiles.bin"

TilesetPortColl:
INCLUDE "data/tilesets/port_collision.asm"

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
TilesetEliteFourRoom2GFX:
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta:
TilesetEliteFourRoom2Meta:
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl:
TilesetEliteFourRoom2Coll:
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetParkMeta:
INCBIN "data/tilesets/park_metatiles.bin"

TilesetParkColl:
INCLUDE "data/tilesets/park_collision.asm"


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

TilesetLentimasGFX:
INCBIN "gfx/tilesets/lentimas.2bpp.lz"

TilesetLentimasMeta:
INCBIN "data/tilesets/lentimas_metatiles.bin"

TilesetLentimasColl:
INCLUDE "data/tilesets/lentimas_collision.asm"


SECTION "Tileset Data 9", ROMX

TilesetDesertGFX:
INCBIN "gfx/tilesets/desert.2bpp.lz"

TilesetDesertMeta:
INCBIN "data/tilesets/desert_metatiles.bin"

TilesetDesertColl:
INCLUDE "data/tilesets/desert_collision.asm"

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


SECTION "Tileset Data 10", ROMX

TilesetUnovaBeachGFX:
INCBIN "gfx/tilesets/unova_beach.2bpp.lz"

TilesetUnovaBeachMeta:
INCBIN "data/tilesets/unova_beach_metatiles.bin"

TilesetUnovaBeachColl:
INCLUDE "data/tilesets/unova_beach_collision.asm"

TilesetUnovaEastGFX:
INCBIN "gfx/tilesets/unova_east.2bpp.lz"

TilesetUnovaEastMeta:
INCBIN "data/tilesets/unova_east_metatiles.bin"

TilesetUnovaEastColl:
INCLUDE "data/tilesets/unova_east_collision.asm"


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
TilesetEliteFourRoom2Attr:
INCBIN "data/tilesets/elite_four_room_attributes.bin"


SECTION "Tileset Data 13", ROMX

TilesetChampionsRoomAttr:
INCBIN "data/tilesets/champions_room_attributes.bin"

TilesetPlayersRoomAttr:
INCBIN "data/tilesets/players_room_attributes.bin"

TilesetBattleTowerAttr:
INCBIN "data/tilesets/battle_tower_attributes.bin"

TilesetCaveAttr:
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


SECTION "Tileset Data 14", ROMX

TilesetLentimasAttr:
INCBIN "data/tilesets/lentimas_attributes.bin"

TilesetDesertAttr:
INCBIN "data/tilesets/desert_attributes.bin"

TilesetBridgeAttr:
INCBIN "data/tilesets/bridge_attributes.bin"

TilesetVillageBridgeAttr:
INCBIN "data/tilesets/village_bridge_attributes.bin"

TilesetMistraltonAttr:
INCBIN "data/tilesets/mistralton_attributes.bin"

TilesetUnovaBeachAttr:
INCBIN "data/tilesets/unova_beach_attributes.bin"


SECTION "Tileset Data 15", ROMX

TilesetUnovaEastAttr:
INCBIN "data/tilesets/unova_east_attributes.bin"

TilesetStriatonGFX:
INCBIN "gfx/tilesets/striaton.2bpp.lz"

TilesetStriatonMeta:
INCBIN "data/tilesets/striaton_metatiles.bin"

TilesetStriatonColl:
INCLUDE "data/tilesets/striaton_collision.asm"

TilesetStriatonAttr:
INCBIN "data/tilesets/striaton_attributes.bin"

TilesetUnovaWestGFX:
INCBIN "gfx/tilesets/unova_west.2bpp.lz"


SECTION "Tileset Data 16", ROMX

TilesetUnovaWestMeta:
INCBIN "data/tilesets/unova_west_metatiles.bin"

TilesetUnovaWestColl:
INCLUDE "data/tilesets/unova_west_collision.asm"

TilesetUnovaWestAttr:
INCBIN "data/tilesets/unova_west_attributes.bin"

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


SECTION "Tileset Data 17", ROMX

TilesetNimbasaMeta:
INCBIN "data/tilesets/nimbasa_metatiles.bin"

TilesetNimbasaColl:
INCLUDE "data/tilesets/nimbasa_collision.asm"

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


SECTION "Tileset Data 18", ROMX

TilesetVirbankAttr:
INCBIN "data/tilesets/virbank_attributes.bin"

TilesetUnovaNorthGFX:
INCBIN "gfx/tilesets/unova_north.2bpp.lz"

TilesetUnovaNorthMeta:
INCBIN "data/tilesets/unova_north_metatiles.bin"

TilesetUnovaNorthColl:
INCLUDE "data/tilesets/unova_north_collision.asm"

TilesetUnovaNorthAttr:
INCBIN "data/tilesets/unova_north_attributes.bin"

TilesetRadioTowerGFX:
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"


SECTION "Tileset Data 19", ROMX

TilesetRadioTowerMeta:
INCBIN "data/tilesets/radio_tower_metatiles.bin"

TilesetCasteliaGFX:
INCBIN "gfx/tilesets/castelia.2bpp.lz"

TilesetCasteliaMeta:
INCBIN "data/tilesets/castelia_metatiles.bin"

TilesetCasteliaColl:
INCLUDE "data/tilesets/castelia_collision.asm"

TilesetRadioTowerColl:
INCLUDE "data/tilesets/radio_tower_collision.asm"

TilesetCasteliaAttr:
INCBIN "data/tilesets/castelia_attributes.bin"

TilesetDriftveilExtraGFX::
INCBIN "gfx/tilesets/driftveil_extra.2bpp.lz"

TilesetMistraltonExtraGFX::
INCBIN "gfx/tilesets/mistralton_extra.2bpp.lz"

TilesetAirportGFX:
INCBIN "gfx/tilesets/airport.2bpp.lz"

TilesetAirportMeta:
INCBIN "data/tilesets/airport_metatiles.bin"

TilesetAirportColl:
INCLUDE "data/tilesets/airport_collision.asm"

TilesetAirportAttr:
INCBIN "data/tilesets/airport_attributes.bin"


SECTION "Tileset Data 20", ROMX

TilesetMistraltonGFX:
INCBIN "gfx/tilesets/mistralton.,mistralton_extra.2bpp.lz"

TilesetMistraltonMeta:
INCBIN "data/tilesets/mistralton_metatiles.bin"

TilesetMistraltonColl:
INCLUDE "data/tilesets/mistralton_collision.asm"

TilesetOpelucidGFX:
INCBIN "gfx/tilesets/opelucid.2bpp.lz"

TilesetOpelucidMeta:
INCBIN "data/tilesets/opelucid_metatiles.bin"

TilesetOpelucidColl:
INCLUDE "data/tilesets/opelucid_collision.asm"


SECTION "Tileset Data 21", ROMX

TilesetOpelucidAttr:
INCBIN "data/tilesets/opelucid_attributes.bin"

TilesetIcirrusGFX:
INCBIN "gfx/tilesets/icirrus.2bpp.lz"

TilesetIcirrusMeta:
INCBIN "data/tilesets/icirrus_metatiles.bin"

TilesetIcirrusColl:
INCLUDE "data/tilesets/icirrus_collision.asm"

TilesetIcirrusAttr:
INCBIN "data/tilesets/icirrus_attributes.bin"

TilesetTowerGFX:
INCBIN "gfx/tilesets/tower.2bpp.lz"


SECTION "Tileset Data 22", ROMX

TilesetTowerMeta:
INCBIN "data/tilesets/tower_metatiles.bin"

TilesetTowerColl:
INCLUDE "data/tilesets/tower_collision.asm"

TilesetTowerAttr:
INCBIN "data/tilesets/tower_attributes.bin"

TilesetCaveColl:
INCLUDE "data/tilesets/cave_collision.asm"

TilesetChampionsRoomColl:
INCLUDE "data/tilesets/champions_room_collision.asm"

TilesetChampionsRoomMeta:
INCBIN "data/tilesets/champions_room_metatiles.bin"

TilesetTrainStationAttr:
INCBIN "data/tilesets/train_station_attributes.bin"

TilesetDreamyardGFX:
INCBIN "gfx/tilesets/dreamyard.2bpp.lz"

TilesetDreamyardMeta:
INCBIN "data/tilesets/dreamyard_metatiles.bin"


SECTION "Tileset Data 23", ROMX

TilesetDreamyardColl:
INCLUDE "data/tilesets/dreamyard_collision.asm"

TilesetDreamyardAttr:
INCBIN "data/tilesets/dreamyard_attributes.bin"

TilesetPkmnLeagueGFX:
INCBIN "gfx/tilesets/pkmn_league.2bpp.lz"

TilesetPkmnLeagueMeta:
INCBIN "data/tilesets/pkmn_league_metatiles.bin"

TilesetPkmnLeagueColl:
INCLUDE "data/tilesets/pkmn_league_collision.asm"


SECTION "Tileset Data 24", ROMX

TilesetPkmnLeagueAttr:
INCBIN "data/tilesets/pkmn_league_attributes.bin"

TilesetCaveMeta:
INCBIN "data/tilesets/cave_metatiles.bin"

TilesetCaveRuinsAttr:
INCBIN "data/tilesets/cave_ruins_attributes.bin"

TilesetCaveRuinsColl:
INCLUDE "data/tilesets/cave_ruins_collision.asm"

TilesetCaveRuinsMeta:
INCBIN "data/tilesets/cave_ruins_metatiles.bin"


SECTION "Tileset Data 25", ROMX

TilesetUndergroundGFX:
INCBIN "gfx/tilesets/underground.2bpp.lz"

TilesetTraditionalHouseAttr:
INCBIN "data/tilesets/traditional_house_attributes.bin"

TilesetVillageBridgeColl:
INCLUDE "data/tilesets/village_bridge_collision.asm"
