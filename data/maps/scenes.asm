scene_var: MACRO
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID
	; scene_var POWER_PLANT,                                 wPowerPlantSceneID
	; scene_var CERULEAN_GYM,                                wCeruleanGymSceneID
	; scene_var ROUTE_25,                                    wRoute25SceneID
	; scene_var TRAINER_HOUSE_B1F,                           wTrainerHouseB1FSceneID
	; scene_var VICTORY_ROAD_GATE,                           wVictoryRoadGateSceneID
	; scene_var SAFFRON_MAGNET_TRAIN_STATION,                wSaffronMagnetTrainStationSceneID
	; scene_var ROUTE_16_GATE,                               wRoute16GateSceneID
	; scene_var ROUTE_17_ROUTE_18_GATE,                      wRoute17Route18GateSceneID
	; scene_var INDIGO_PLATEAU_POKECENTER_1F,                wIndigoPlateauPokecenter1FSceneID
	; scene_var WILLS_ROOM,                                  wWillsRoomSceneID
	; scene_var KOGAS_ROOM,                                  wKogasRoomSceneID
	; scene_var BRUNOS_ROOM,                                 wBrunosRoomSceneID
	; scene_var KARENS_ROOM,                                 wKarensRoomSceneID
	; scene_var LANCES_ROOM,                                 wLancesRoomSceneID
	; scene_var HALL_OF_FAME,                                wHallOfFameSceneID
	; scene_var ROUTE_27,                                    wRoute27SceneID
	; scene_var NEW_BARK_TOWN,                               wNewBarkTownSceneID
	; scene_var ELMS_LAB,                                    wElmsLabSceneID
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	; scene_var ROUTE_29,                                    wRoute29SceneID
	; scene_var CHERRYGROVE_CITY,                            wCherrygroveCitySceneID
	; scene_var MR_POKEMONS_HOUSE,                           wMrPokemonsHouseSceneID
	; scene_var ROUTE_32,                                    wRoute32SceneID
	; scene_var ROUTE_35_NATIONAL_PARK_GATE,                 wRoute35NationalParkGateSceneID
	; scene_var ROUTE_36,                                    wRoute36SceneID
	; scene_var ROUTE_36_NATIONAL_PARK_GATE,                 wRoute36NationalParkGateSceneID
	; scene_var AZALEA_TOWN,                                 wAzaleaTownSceneID
	; scene_var GOLDENROD_GYM,                               wGoldenrodGymSceneID
	; scene_var GOLDENROD_MAGNET_TRAIN_STATION,              wGoldenrodMagnetTrainStationSceneID
	; scene_var GOLDENROD_POKECENTER_1F,                     wGoldenrodPokecenter1FSceneID
	; scene_var OLIVINE_CITY,                                wOlivineCitySceneID
	; scene_var ROUTE_34,                                    wRoute34SceneID ; unused
	; scene_var ROUTE_34_ILEX_FOREST_GATE,                   wRoute34IlexForestGateSceneID ; unused
	; scene_var ECRUTEAK_TIN_TOWER_ENTRANCE,                 wEcruteakTinTowerEntranceSceneID
	; scene_var WISE_TRIOS_ROOM,                             wWiseTriosRoomSceneID
	; scene_var ECRUTEAK_POKECENTER_1F,                      wEcruteakPokecenter1FSceneID
	; scene_var ECRUTEAK_GYM,                                wEcruteakGymSceneID
	; scene_var MAHOGANY_TOWN,                               wMahoganyTownSceneID
	; scene_var ROUTE_42,                                    wRoute42SceneID
	; scene_var CIANWOOD_CITY,                               wCianwoodCitySceneID
	; scene_var BATTLE_TOWER_1F,                             wBattleTower1FSceneID
	; scene_var BATTLE_TOWER_BATTLE_ROOM,                    wBattleTowerBattleRoomSceneID
	; scene_var BATTLE_TOWER_ELEVATOR,                       wBattleTowerElevatorSceneID
	; scene_var BATTLE_TOWER_HALLWAY,                        wBattleTowerHallwaySceneID
	; scene_var BATTLE_TOWER_OUTSIDE,                        wBattleTowerOutsideSceneID ; unused
	; scene_var ROUTE_43_GATE,                               wRoute43GateSceneID
	; scene_var MOUNT_MOON,                                  wMountMoonSceneID
	; scene_var SPROUT_TOWER_3F,                             wSproutTower3FSceneID
	; scene_var TIN_TOWER_1F,                                wTinTower1FSceneID
	; scene_var BURNED_TOWER_1F,                             wBurnedTower1FSceneID
	; scene_var BURNED_TOWER_B1F,                            wBurnedTowerB1FSceneID
	; scene_var RADIO_TOWER_5F,                              wRadioTower5FSceneID
	; scene_var RUINS_OF_ALPH_OUTSIDE,                       wRuinsOfAlphOutsideSceneID
	; scene_var RUINS_OF_ALPH_RESEARCH_CENTER,               wRuinsOfAlphResearchCenterSceneID
	; scene_var RUINS_OF_ALPH_HO_OH_CHAMBER,                 wRuinsOfAlphHoOhChamberSceneID
	; scene_var RUINS_OF_ALPH_KABUTO_CHAMBER,                wRuinsOfAlphKabutoChamberSceneID
	; scene_var RUINS_OF_ALPH_OMANYTE_CHAMBER,               wRuinsOfAlphOmanyteChamberSceneID
	; scene_var RUINS_OF_ALPH_AERODACTYL_CHAMBER,            wRuinsOfAlphAerodactylChamberSceneID
	; scene_var RUINS_OF_ALPH_INNER_CHAMBER,                 wRuinsOfAlphInnerChamberSceneID
	; scene_var MAHOGANY_MART_1F,                            wMahoganyMart1FSceneID
	; scene_var TEAM_ROCKET_BASE_B1F,                        wTeamRocketBaseB1FSceneID
	; scene_var TEAM_ROCKET_BASE_B2F,                        wTeamRocketBaseB2FSceneID
	; scene_var TEAM_ROCKET_BASE_B3F,                        wTeamRocketBaseB3FSceneID
	; scene_var GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, wGoldenrodUndergroundSwitchRoomEntrancesSceneID
	; scene_var SILVER_CAVE_ROOM_3,                          wSilverCaveRoom3SceneID ; unused
	; scene_var VICTORY_ROAD,                                wVictoryRoadSceneID
	; scene_var DRAGONS_DEN_B1F,                             wDragonsDenB1FSceneID
	; scene_var DRAGON_SHRINE,                               wDragonShrineSceneID
	; scene_var OLIVINE_PORT,                                wOlivinePortSceneID
	; scene_var VERMILION_PORT,                              wVermilionPortSceneID
	; scene_var FAST_SHIP_1F,                                wFastShip1FSceneID
	; scene_var FAST_SHIP_B1F,                               wFastShipB1FSceneID
	; scene_var MOUNT_MOON_SQUARE,                           wMountMoonSquareSceneID
	scene_var MOBILE_TRADE_ROOM,                           wMobileTradeRoomSceneID
	scene_var MOBILE_BATTLE_ROOM,                          wMobileBattleRoomSceneID
	scene_var MARLONS_HOUSE,                               wMarlonsHouseSceneID
	scene_var HUMILAU_CITY,                                wHumilauCitySceneID
	scene_var GIANT_CHASM_1F,                              wGiantChasmSceneID
	scene_var R_12,                                        wR12SceneID
	scene_var UNDELLA_TOWN,                                wUndellaTownSceneID
	scene_var R_23_GATE,                                   wR23GateSceneID
	scene_var R_23,                                        wR23SceneID
	scene_var STRANGE_HOUSE_1F,                            wStrangeHouse1FSceneID
	scene_var R_12_VILLAGE_BRIDGE_GATE,                    wR12VillageBridgeGateSceneID
	scene_var LOSTLORN_FOREST,                             wLostlornForestSceneID
	scene_var LENTIMAS_TOWN,                               wLentimasTownSceneID
	scene_var LENTIMAS_GYM,                                wLentimasGymSceneID
	scene_var R_5_BRIDGE_GATE,                             wR5BridgeGateSceneID
	scene_var CASTELIA_CITY_STREETS,                       wCasteliaCityStreetsSceneID
	scene_var CASTELIA_BRIDGE_GATE,                        wCasteliaBridgeGateSceneID
	scene_var CASTELIA_GYM,                                wCasteliaGymSceneID
	scene_var NIMBASA_PARK_COASTER_ROOM,                   wNimbasaParkCoasterRoomSceneID
	scene_var NIMBASA_PARK_OUTSIDE,                        wNimbasaParkOutsideSceneID
	scene_var NIMBASA_PARK_BASEMENT,                       wNimbasaParkBasementSceneID
	scene_var NIMBASA_SUBWAY,                              wNimbasaSubwaySceneID
	scene_var ASPERTIA_SUBWAY,                             wAspertiaSubwaySceneID
	scene_var VIRBANK_CITY,                                wVirbankCitySceneID
	scene_var VIRBANK_COMPLEX_OUTSIDE,                     wVirbankComplexOutsideSceneID
	scene_var VIRBANK_COMPLEX_B1F,                         wVirbankComplexB1FSceneID
	scene_var VIRBANK_COMPLEX_B2F,                         wVirbankComplexB2FSceneID
	scene_var ASPERTIA_GYM,                                wAspertiaGymSceneID
	scene_var CASTELIA_PORT,                               wCasteliaPortSceneID
	scene_var VIRBANK_PORT,                                wVirbankPortSceneID
	scene_var PINWHEEL_FOREST,                             wPinwheelForestSceneID
	scene_var FLOCCESY_TOWN,                               wFloccesyTownSceneID
	scene_var NACRENE_CITY,                                wNacreneCitySceneID
	scene_var ACCUMULA_TOWN,                               wAccumulaTownSceneID
	scene_var NUVEMA_LAB,                                  wNuvemaLabSceneID
	scene_var P2_LAB_ENTRANCE,                             wP2LabEntranceSceneID
	scene_var P2_LAB,                                      wP2LabSceneID
	scene_var PWT_OUTSIDE,                                 wPWTOutsideSceneID
	scene_var PWT_INSIDE,                                  wPWTInsideSceneID
	scene_var PWT_HALLWAY,                                 wPWTHallwaySceneID
	scene_var PWT_QUALIFIER_ROOM,                          wPWTQualifierRoomSceneID
	scene_var PWT_BACK_ROOM,                               wPWTBackRoomSceneID
	scene_var PWT_BATTLE_ROOM,                             wPWTBattleRoomSceneID
	scene_var DRIFTVEIL_SHELTER,                           wDriftveilShelterSceneID
	scene_var DRIFTVEIL_BRIDGE_GATE,                       wDriftveilBridgeGateSceneID
	scene_var SEASIDE_CAVE_1F,                             wSeasideCave1FSceneID
	scene_var FERRY_LEFT,                                  wFerryLeftSceneID
	scene_var FERRY_RIGHT,                                 wFerryRightSceneID
	scene_var MISTRALTON_CITY,                             wMistraltonCitySceneID
	scene_var MISTRALTON_AIRPORT,                          wMistraltonAirportSceneID
	scene_var LENTIMAS_AIRPORT,                            wLentimasAirportSceneID
	db -1
