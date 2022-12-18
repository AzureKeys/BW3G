map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

	
	map_attributes HumilauCity, HUMILAU_CITY, $35, WEST | EAST
	connection west, R22, R_22, -2
	connection east, Rt21, R_21, 10
	
	map_attributes R22, R_22, $35, EAST
	connection east, HumilauCity, HUMILAU_CITY, 2
	
	map_attributes Rt21, R_21, $35, WEST
	connection west, HumilauCity, HUMILAU_CITY, -10
	
	map_attributes Rt13, R_13, $0E, WEST
	connection west, LacunosaTown, LACUNOSA_TOWN, -3
	
	map_attributes LacunosaTown, LACUNOSA_TOWN, $0E, WEST | EAST
	connection west, Rt12, R_12, 2
	connection east, Rt13, R_13, 3
	
	map_attributes Rt12, R_12, $0E, EAST
	connection east, LacunosaTown, LACUNOSA_TOWN, -2
	
	map_attributes UndellaTown, UNDELLA_TOWN, $24, SOUTH
	connection south, Rt14, R_14, -1
	
	map_attributes Rt14, R_14, $05, NORTH
	connection north, UndellaTown, UNDELLA_TOWN, 1
	
	map_attributes Rt23East, R_23_EAST, $5D, WEST
	connection west, Rt23West, R_23_WEST, 0
	
	map_attributes Rt23West, R_23_WEST, $5D, EAST
	connection east, Rt23East, R_23_EAST, 0
	
	map_attributes LentimasOutskirts, LENTIMAS_OUTSKIRTS, $31, WEST
	connection west, LentimasTown, LENTIMAS_TOWN, -1
	
	map_attributes LentimasTown, LENTIMAS_TOWN, $31, EAST
	connection east, LentimasOutskirts, LENTIMAS_OUTSKIRTS, 1
	
	map_attributes FloccesyTown, FLOCCESY_TOWN, $6D, WEST | EAST
	connection west, Rt19, R_19, 4
	connection east, Rt20, R_20, -5
	
	map_attributes Rt19, R_19, $6D, EAST
	connection east, FloccesyTown, FLOCCESY_TOWN, -4
	
	map_attributes Rt20, R_20, $6D, NORTH | WEST
	connection north, FloccesyRanch, FLOCCESY_RANCH, -5
	connection west, FloccesyTown, FLOCCESY_TOWN, 5
	
	map_attributes FloccesyRanch, FLOCCESY_RANCH, $6D, SOUTH
	connection south, Rt20, R_20, 5
	
	map_attributes Rt3, R_3, $25, EAST
	connection east, StriatonCity, STRIATON_CITY, 3
	
	map_attributes StriatonCity, STRIATON_CITY, $25, SOUTH | WEST
	connection south, Rt2, R_2, 5
	connection west, Rt3, R_3, -3
	
	map_attributes Rt2, R_2, $25, NORTH
	connection north, StriatonCity, STRIATON_CITY, -5
	
	map_attributes AccumulaTown, ACCUMULA_TOWN, $81, SOUTH
	connection south, Rt1, R_1, -6
	
	map_attributes Rt1, R_1, $81, NORTH | SOUTH
	connection north, AccumulaTown, ACCUMULA_TOWN, 6
	connection south, NuvemaTown, NUVEMA_TOWN, 6
	
	map_attributes NuvemaTown, NUVEMA_TOWN, $81, NORTH
	connection north, Rt1, R_1, -6
	
	map_attributes Rt17, R_17, $35, WEST
	connection west, Rt18, R_18, 1
	
	map_attributes Rt18, R_18, $35, EAST
	connection east, Rt17, R_17, -1
	
	map_attributes MistraltonCity, MISTRALTON_CITY, $15, NORTH
	connection north, Rt7, R_7, 8
	
	map_attributes Rt7, R_7, $15, SOUTH | EAST
	connection south, MistraltonCity, MISTRALTON_CITY, -8
	connection east, Rt7North, R_7_NORTH, -12
	
	map_attributes Rt7North, R_7_NORTH, $15, WEST
	connection west, Rt7, R_7, 12
	
	map_attributes Rt8, R_8, $11, SOUTH
	connection south, IcirrusCitySouth, ICIRRUS_CITY_SOUTH, -8
	
	map_attributes IcirrusCityNorth, ICIRRUS_CITY_NORTH, $11, SOUTH
	connection south, IcirrusCitySouth, ICIRRUS_CITY_SOUTH, 0
	
	map_attributes IcirrusCitySouth, ICIRRUS_CITY_SOUTH, $11, NORTH
	connection north, IcirrusCitySouthConnectionDummy, ICIRRUS_CITY_SOUTH_CONNECTION_DUMMY, 0

	map_attributes IcirrusCitySouthConnectionDummy, ICIRRUS_CITY_SOUTH_CONNECTION_DUMMY, $11, SOUTH
	connection south, IcirrusCitySouth, ICIRRUS_CITY_SOUTH, 0
	
	map_attributes NacreneOutskirt, NACRENE_OUTSKIRT, $25, EAST
	connection east, NacreneOutskirtConnectionDummy, NACRENE_OUTSKIRT_CONNECTION_DUMMY, -2
	
	map_attributes NacreneOutskirtConnectionDummy, NACRENE_OUTSKIRT_CONNECTION_DUMMY, $25, WEST
	connection west, NacreneOutskirt, NACRENE_OUTSKIRT, 2
	
	map_attributes NacreneCity, NACRENE_CITY, $25, WEST
	connection west, NacreneOutskirt, NACRENE_OUTSKIRT, 2
	
	map_attributes NacreneOutskirtEast, NACRENE_OUTSKIRT_EAST, $25, WEST
	connection west, NacreneOutskirt, NACRENE_OUTSKIRT, -10
	
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0
	map_attributes MobileTradeRoom, MOBILE_TRADE_ROOM, $00, 0
	map_attributes MobileBattleRoom, MOBILE_BATTLE_ROOM, $00, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes PlayersNeighborsHouse, PLAYERS_NEIGHBORS_HOUSE, $00, 0
	map_attributes HumilauTradeHouse, HUMILAU_TRADE_HOUSE, $00, 0
	map_attributes HumilauPokecenter1F, HUMILAU_POKECENTER_1F, $00, 0
	map_attributes MarlonsHouse, MARLONS_HOUSE, $00, 0
	map_attributes GiantChasm1F, GIANT_CHASM_1F, $09, 0
	map_attributes LacunosaPokecenter1F, LACUNOSA_POKECENTER_1F, $00, 0
	map_attributes Rt13UndellaGate, R_13_UNDELLA_GATE, $00, 0
	map_attributes UndellaPokecenter1F, UNDELLA_POKECENTER_1F, $00, 0
	map_attributes UndellaOldRodHouse, UNDELLA_OLD_ROD_HOUSE, $00, 0
	map_attributes MarineTubeEntrance, MARINE_TUBE_ENTRANCE, $00, 0
	map_attributes MarineTube, MARINE_TUBE, $00, 0
	map_attributes HumilauGym, HUMILAU_GYM, $00, 0
	map_attributes Rt23Gate, R_23_GATE, $00, 0
	map_attributes ReversalMountain1F, REVERSAL_MOUNTAIN_1F, $09, 0
	map_attributes ReversalMountainB1F, REVERSAL_MOUNTAIN_B1F, $09, 0
	map_attributes StrangeHouse1F, STRANGE_HOUSE_1F, $00, 0
	map_attributes StrangeHouseB1F, STRANGE_HOUSE_B1F, $00, 0
	map_attributes StrangeHouseRooms, STRANGE_HOUSE_ROOMS, $00, 0
	map_attributes LacunosaHouse, LACUNOSA_HOUSE, $00, 0
	map_attributes LacunosaHouse2, LACUNOSA_HOUSE_2, $00, 0
	map_attributes Rt12VillageBridgeGate, R_12_VILLAGE_BRIDGE_GATE, $00, 0
	map_attributes LentimasClawHouse, LENTIMAS_CLAW_HOUSE, $00, 0
	map_attributes LentimasPokecenter1F, LENTIMAS_POKECENTER_1F, $00, 0
	map_attributes LentimasHouse, LENTIMAS_HOUSE, $00, 0
	map_attributes LentimasGym, LENTIMAS_GYM, $00, 0
	map_attributes LentimasLostlornGate, LENTIMAS_LOSTLORN_GATE, $00, 0
	map_attributes LostlornForest, LOSTLORN_FOREST, $4F, 0
	map_attributes Rt16, R_16, $25, 0
	map_attributes Rt16LostlornGate, R_16_LOSTLORN_GATE, $00, 0
	map_attributes Rt16NimbasaGate, R_16_NIMBASA_GATE, $00, 0
	map_attributes NimbasaCity, NIMBASA_CITY, $31, 0
	map_attributes NimbasaParkOutside, NIMBASA_PARK_OUTSIDE, $31, 0
	map_attributes NimbasaTMMart, NIMBASA_TM_MART, $00, 0
	map_attributes NimbasaVitaminMart, NIMBASA_VITAMIN_MART, $00, 0
	map_attributes NimbasaBallMart, NIMBASA_BALL_MART, $00, 0
	map_attributes NimbasaPokecenter1F, NIMBASA_POKECENTER_1F, $00, 0
	map_attributes Rt5, R_5, $05, 0
	map_attributes Rt5NimbasaGate, R_5_NIMBASA_GATE, $00, 0
	map_attributes Rt5BridgeGate, R_5_BRIDGE_GATE, $00, 0
	map_attributes Rt4NimbasaGate, R_4_NIMBASA_GATE, $00, 0
	map_attributes Rt4, R_4, $71, 0
	map_attributes DesertResort, DESERT_RESORT, $71, 0
	map_attributes Rt4DesertGate, R_4_DESERT_GATE, $00, 0
	map_attributes RelicCastle1F, RELIC_CASTLE_1F, $71, 0
	map_attributes RelicCastleB1F, RELIC_CASTLE_B1F, $71, 0
	map_attributes RelicCastleB2F, RELIC_CASTLE_B2F, $71, 0
	map_attributes RelicCastleB3F, RELIC_CASTLE_B3F, $71, 0
	map_attributes RelicCastleB4F, RELIC_CASTLE_B4F, $71, 0
	map_attributes NimbasaHouse, NIMBASA_HOUSE, $00, 0
	map_attributes NimbasaNameRater, NIMBASA_NAME_RATER, $00, 0
	map_attributes Rt4House, R_4_HOUSE, $00, 0
	map_attributes CasteliaCityNorth, CASTELIA_CITY_NORTH, $1A, 0
	map_attributes CasteliaCityStreets, CASTELIA_CITY_STREETS, $1A, 0
	map_attributes CasteliaCitySouth, CASTELIA_CITY_SOUTH, $31, 0
	map_attributes Rt4CasteliaGate, R_4_CASTELIA_GATE, $00, 0
	map_attributes CasteliaPokecenter1F, CASTELIA_POKECENTER_1F, $00, 0
	map_attributes CasteliaPlazaLobby, CASTELIA_PLAZA_LOBBY, $00, 0
	map_attributes CasteliaPlazaGameCorner, CASTELIA_PLAZA_GAME_CORNER, $00, 0
	map_attributes CasteliaPlazaPrizeRoom, CASTELIA_PLAZA_PRIZE_ROOM, $00, 0
	map_attributes CasteliaPlazaRestaurant, CASTELIA_PLAZA_RESTAURANT, $00, 0
	map_attributes CasteliaPlazaElevator, CASTELIA_PLAZA_ELEVATOR, $00, 0
	map_attributes CasteliaBikeShop, CASTELIA_BIKE_SHOP, $00, 0
	map_attributes CasteliaMassage, CASTELIA_MASSAGE, $00, 0
	map_attributes CasteliaTradeHouse1, CASTELIA_TRADE_HOUSE_1, $00, 0
	map_attributes CasteliaTradeHouse2, CASTELIA_TRADE_HOUSE_2, $00, 0
	map_attributes CasteliaGameFreak, CASTELIA_GAME_FREAK, $00, 0
	map_attributes CasteliaBridgeGate, CASTELIA_BRIDGE_GATE, $00, 0
	map_attributes CasteliaPort, CASTELIA_PORT, $00, 0
	map_attributes NimbasaSubway, NIMBASA_SUBWAY, $00, 0
	map_attributes AspertiaSubway, ASPERTIA_SUBWAY, $00, 0
	map_attributes BattleCompany1F, BATTLE_COMPANY_1F, $00, 0
	map_attributes BattleCompany2F, BATTLE_COMPANY_2F, $00, 0
	map_attributes CasteliaGym, CASTELIA_GYM, $00, 0
	map_attributes NimbasaParkCoasterRoom, NIMBASA_PARK_COASTER_ROOM, $00, 0
	map_attributes NimbasaParkRunway, NIMBASA_PARK_RUNWAY, $00, 0
	map_attributes NimbasaParkBasement, NIMBASA_PARK_BASEMENT, $00, 0
	map_attributes AspertiaCity, ASPERTIA_CITY, $6D, 0
	map_attributes AspertiaBlackbeltHouse, ASPERTIA_BLACKBELT_HOUSE, $00, 0
	map_attributes AspertiaGym, ASPERTIA_GYM, $00, 0
	map_attributes AspertiaPokecenter1F, ASPERTIA_POKECENTER_1F, $00, 0
	map_attributes FloccesyPokecenter1F, FLOCCESY_POKECENTER_1F, $00, 0
	map_attributes AspertiaMomHouse, ASPERTIA_MOM_HOUSE, $00, 0
	map_attributes AspertiaMoveDeleterHouse, ASPERTIA_MOVE_DELETER_HOUSE, $00, 0
	map_attributes Rt19AspertiaGate, R_19_ASPERTIA_GATE, $00, 0
	map_attributes FloccesyRanchBarn, FLOCCESY_RANCH_BARN, $00, 0
	map_attributes FloccesyRanchHouse, FLOCCESY_RANCH_HOUSE, $00, 0
	map_attributes FloccesyTownHouse, FLOCCESY_TOWN_HOUSE, $00, 0
	map_attributes FloccesyTradeHouse, FLOCCESY_TRADE_HOUSE, $00, 0
	map_attributes VirbankPokecenter1F, VIRBANK_POKECENTER_1F, $00, 0
	map_attributes VirbankHouse, VIRBANK_HOUSE, $00, 0
	map_attributes GameCorner, GAME_CORNER, $00, 0
	map_attributes Rt20VirbankGate, R_20_VIRBANK_GATE, $00, 0
	map_attributes VirbankStatExpHouse, VIRBANK_STAT_EXP_HOUSE, $00, 0
	map_attributes VirbankGym, VIRBANK_GYM, $00, 0
	map_attributes VirbankComplexElevator, VIRBANK_COMPLEX_ELEVATOR, $00, 0
	map_attributes VirbankComplexB1F, VIRBANK_COMPLEX_B1F, $00, 0
	map_attributes VirbankComplexB2F, VIRBANK_COMPLEX_B2F, $00, 0
	map_attributes VirbankPort, VIRBANK_PORT, $00, 0
	map_attributes VirbankCity, VIRBANK_CITY, $35, 0
	map_attributes VirbankComplexOutside, VIRBANK_COMPLEX_OUTSIDE, $67, 0
	map_attributes PinwheelForest, PINWHEEL_FOREST, $4F, 0
	map_attributes PinwheelBridgeGate, PINWHEEL_BRIDGE_GATE, $00, 0
	map_attributes SkyarrowBridge, SKYARROW_BRIDGE, $12, 0
	map_attributes NacrenePokecenter1F, NACRENE_POKECENTER_1F, $00, 0
	map_attributes NacreneStatExpHouse, NACRENE_STAT_EXP_HOUSE, $00, 0
	map_attributes NacreneHouse, NACRENE_HOUSE, $00, 0
	map_attributes NacreneCafe, NACRENE_CAFE, $00, 0
	map_attributes Rt3NacreneGate, R_3_NACRENE_GATE, $00, 0
	map_attributes Rt3DayCare, R_3_DAY_CARE, $00, 0
	map_attributes WellspringCave1F, WELLSPRING_CAVE_1F, $09, 0
	map_attributes WellspringCaveB1F, WELLSPRING_CAVE_B1F, $09, 0
	map_attributes StriatonPokecenter1F, STRIATON_POKECENTER_1F, $00, 0
	map_attributes StriatonTradeHouse, STRIATON_TRADE_HOUSE, $00, 0
	map_attributes StriatonLab, STRIATON_LAB, $00, 0
	map_attributes Rt2AccumulaGate, R_2_ACCUMULA_GATE, $00, 0
	map_attributes AccumulaPokecenter1F, ACCUMULA_POKECENTER_1F, $00, 0
	map_attributes AccumulaBallManiacHouse, ACCUMULA_BALL_MANIAC_HOUSE, $00, 0
	map_attributes AccumulaHouse, ACCUMULA_HOUSE, $00, 0
	map_attributes AccumulaTradeHouse, ACCUMULA_TRADE_HOUSE, $00, 0
	map_attributes NuvemaMomHouse, NUVEMA_MOM_HOUSE, $00, 0
	map_attributes NuvemaLab, NUVEMA_LAB, $00, 0
	map_attributes Rt1Rt17Gate, R_1_R_17_GATE, $00, 0
	map_attributes Rt18House, R_18_HOUSE, $00, 0
	map_attributes NacreneMuseum, NACRENE_MUSEUM, $00, 0
	map_attributes P2LabEntrance, P2_LAB_ENTRANCE, $00, 0
	map_attributes P2Lab, P2_LAB, $00, 0
	map_attributes GiantChasmRooms, GIANT_CHASM_ROOMS, $09, 0
	map_attributes GiantChasmB1F, GIANT_CHASM_B1F, $71, 0
	map_attributes SeasideCave1F, SEASIDE_CAVE_1F, $09, 0
	map_attributes SeasideCaveB1F, SEASIDE_CAVE_B1F, $09, 0
	map_attributes SeasideCaveB2F, SEASIDE_CAVE_B2F, $09, 0
	map_attributes SeasideCaveChamber, SEASIDE_CAVE_CHAMBER, $09, 0
	map_attributes StriatonGym, STRIATON_GYM, $00, 0
	map_attributes CasteliaSewers, CASTELIA_SEWERS, $00, 0
	map_attributes CasteliaSewersRooms, CASTELIA_SEWERS_ROOMS, $00, 0
	map_attributes RelicPassageFront, RELIC_PASSAGE_FRONT, $09, 0
	map_attributes RelicPassageBack, RELIC_PASSAGE_BACK, $09, 0
	map_attributes PWTOutside, PWT_OUTSIDE, $1B, 0
	map_attributes PWTInside, PWT_INSIDE, $00, 0
	map_attributes PWTHallway, PWT_HALLWAY, $00, 0
	map_attributes PWTQualifierRoom, PWT_QUALIFIER_ROOM, $00, 0
	map_attributes PWTBackRoom, PWT_BACK_ROOM, $00, 0
	map_attributes PWTBattleRoom, PWT_BATTLE_ROOM, $00, 0
	map_attributes PWTDriftveilGate, PWT_DRIFTVEIL_GATE, $00, 0
	map_attributes DriftveilPokecenter1F, DRIFTVEIL_POKECENTER_1F, $00, 0
	map_attributes DriftveilFossilHouse, DRIFTVEIL_FOSSIL_HOUSE, $00, 0
	map_attributes DriftveilBridgeGate, DRIFTVEIL_BRIDGE_GATE, $00, 0
	map_attributes DriftveilShelter, DRIFTVEIL_SHELTER, $00, 0
	map_attributes DriftveilDrawbridge, DRIFTVEIL_DRAWBRIDGE, $12, 0
	map_attributes DriftveilCity, DRIFTVEIL_CITY, $05, 0
	map_attributes Rt6, R_6, $71, 0
	map_attributes Rt6House, R_6_HOUSE, $00, 0
	map_attributes Rt6Lab, R_6_LAB, $00, 0
	map_attributes ChargestoneCave1F, CHARGESTONE_CAVE_1F, $09, 0
	map_attributes ChargestoneCaveB1F, CHARGESTONE_CAVE_B1F, $09, 0
	map_attributes ChargestoneCaveB2F, CHARGESTONE_CAVE_B2F, $09, 0
	map_attributes FerryLeft, FERRY_LEFT, $0A, 0
	map_attributes FerryRight, FERRY_RIGHT, $0A, 0
	map_attributes Rt5Truck, R_5_TRUCK, $00, 0
	map_attributes DriftveilStoneEmporium, DRIFTVEIL_STONE_EMPORIUM, $00, 0
	map_attributes DriftveilHouse, DRIFTVEIL_HOUSE, $00, 0
	map_attributes DriftveilTradeHouse, DRIFTVEIL_TRADE_HOUSE, $00, 0
	map_attributes MistraltonPokecenter1F, MISTRALTON_POKECENTER_1F, $00, 0
	map_attributes MistraltonMoveReminderHouse, MISTRALTON_MOVE_REMINDER_HOUSE, $00, 0
	map_attributes MistraltonHouse, MISTRALTON_HOUSE, $00, 0
	map_attributes MistraltonGym1F, MISTRALTON_GYM_1F, $00, 0
	map_attributes MistraltonGym2F, MISTRALTON_GYM_2F, $00, 0
	map_attributes MistraltonAirport, MISTRALTON_AIRPORT, $00, 0
	map_attributes Rt7House, R_7_HOUSE, $00, 0
	map_attributes Rt7TradeHouse, R_7_TRADE_HOUSE, $00, 0
	map_attributes CelestialTower1F, CELESTIAL_TOWER_1F, $00, 0
	map_attributes CelestialTower, CELESTIAL_TOWER, $00, 0
	map_attributes CelestialTowerRoof, CELESTIAL_TOWER_ROOF, $a1, 0
	map_attributes VillageBridge, VILLAGE_BRIDGE, $00, 0
	map_attributes Rt11, R_11, $00, 0
	map_attributes Rt11Truck, R_11_TRUCK, $00, 0
	map_attributes OpelucidCity, OPELUCID_CITY, $00, 0
	map_attributes LentimasAirport, LENTIMAS_AIRPORT, $00, 0
	map_attributes PlaneLeft, PLANE_LEFT, $00, 0
	map_attributes PlaneRight, PLANE_RIGHT, $00, 0
	map_attributes Rt11VillageBridgeGate, R_11_VILLAGE_BRIDGE_GATE, $00, 0
	map_attributes Rt11OpelucidGate, R_11_OPELUCID_GATE, $00, 0
	map_attributes Rt9OpelucidGate, R_9_OPELUCID_GATE, $00, 0
	map_attributes OpelucidPokecenter1F, OPELUCID_POKECENTER_1F, $00, 0
	map_attributes OpelucidSuperRodHouse, OPELUCID_SUPER_ROD_HOUSE, $00, 0
	map_attributes OpelucidGym, OPELUCID_GYM, $00, 0
	map_attributes OpelucidCuriosityShop, OPELUCID_CURIOSITY_SHOP, $00, 0
	map_attributes OpelucidBlackbeltHouse, OPELUCID_BLACKBELT_HOUSE, $00, 0
	map_attributes OpelucidBattleHouse, OPELUCID_BATTLE_HOUSE, $00, 0
	map_attributes TubelineBridge, TUBELINE_BRIDGE, $00, 0
	map_attributes IcirrusPokecenter1F, ICIRRUS_POKECENTER_1F, $00, 0
	map_attributes IcirrusBoutique, ICIRRUS_BOUTIQUE, $00, 0
	map_attributes IcirrusHouse, ICIRRUS_HOUSE, $00, 0
	map_attributes DragonspiralTowerOutside, DRAGONSPIRAL_TOWER_OUTSIDE, $00, 0
	map_attributes DragonspiralTower1F, DRAGONSPIRAL_TOWER_1F, $00, 0
	map_attributes DragonspiralTower2F, DRAGONSPIRAL_TOWER_2F, $00, 0
	map_attributes DragonspiralTower3F, DRAGONSPIRAL_TOWER_3F, $00, 0
	map_attributes DragonspiralTower4F, DRAGONSPIRAL_TOWER_4F, $00, 0
	map_attributes DragonspiralTower5F, DRAGONSPIRAL_TOWER_5F, $00, 0
	map_attributes DragonspiralTower6F, DRAGONSPIRAL_TOWER_6F, $00, 0
	map_attributes DragonspiralTowerRoof, DRAGONSPIRAL_TOWER_ROOF, $00, 0
	map_attributes MistraltonCave1F, MISTRALTON_CAVE_1F, $09, 0
	map_attributes MistraltonCave2F, MISTRALTON_CAVE_2F, $09, 0
	map_attributes MistraltonCave3F, MISTRALTON_CAVE_3F, $09, 0
	map_attributes Rt9, R_9, $5d, 0
	map_attributes ShoppingMallNine, SHOPPING_MALL_NINE, $00, 0
	map_attributes MoorOfIcirrus, MOOR_OF_ICIRRUS, $11, 0
	map_attributes Dreamyard, DREAMYARD, $25, 0
	map_attributes DreamyardB1F, DREAMYARD_B1F, $00, 0
	map_attributes IcirrusFanClub, ICIRRUS_FAN_CLUB, $00, 0
	map_attributes IcirrusCave, ICIRRUS_CAVE, $02, 0
	map_attributes DraydensHouse1F, DRAYDENS_HOUSE_1F, $00, 0
	map_attributes DraydensHouse2F, DRAYDENS_HOUSE_2F, $00, 0
	map_attributes TwistMountain3F, TWIST_MOUNTAIN_3F, $09, 0
	map_attributes Rt23House, R_23_HOUSE, $00, 0
	map_attributes VictoryRoadEntrance, VICTORY_ROAD_ENTRANCE, $15, 0
	map_attributes VictoryRoadCave1F, VICTORY_ROAD_CAVE_1F, $09, 0
	map_attributes VictoryRoadCave2F, VICTORY_ROAD_CAVE_2F, $09, 0
	map_attributes VictoryRoadCave3F, VICTORY_ROAD_CAVE_3F, $09, 0
	map_attributes VictoryRoadOutdoor1F, VICTORY_ROAD_OUTDOOR_1F, $4d, 0
	map_attributes VictoryRoadOutdoor2F, VICTORY_ROAD_OUTDOOR_2F, $51, 0
	map_attributes VictoryRoadGrove, VICTORY_ROAD_GROVE, $4f, 0
	map_attributes VictoryRoadCastleOutside, VICTORY_ROAD_CASTLE_OUTSIDE, $09, 0
	map_attributes PkmnLeagueEntrance, PKMN_LEAGUE_ENTRANCE, $21, 0
	map_attributes PkmnLeagueMain, PKMN_LEAGUE_MAIN, $ec, 0
	map_attributes VictoryRoadPokecenter1F, VICTORY_ROAD_POKECENTER_1F, $00, 0
	map_attributes PkmnLeaguePokecenter1F, PKMN_LEAGUE_POKECENTER_1F, $00, 0
	map_attributes GrimsleysRoom, GRIMSLEYS_ROOM, $00, 0
	map_attributes MarshalsRoom, MARSHALS_ROOM, $00, 0
	map_attributes ElesasRoom, ELESAS_ROOM, $00, 0
	map_attributes ColresssRoom, COLRESSS_ROOM, $00, 0
	map_attributes ChampionsRoomEntrance, CHAMPIONS_ROOM_ENTRANCE, $00, 0
	map_attributes ChampionsRoom, CHAMPIONS_ROOM, $00, 0
	