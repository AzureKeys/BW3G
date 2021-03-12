newgroup: MACRO
const_value = const_value + 1
	enum_start 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
	enum MAP_\1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	; newgroup                                                      ;  1

	; map_const OLIVINE_POKECENTER_1F,                        5,  4 ;  1
	; map_const OLIVINE_GYM,                                  5,  8 ;  2
	; map_const OLIVINE_TIMS_HOUSE,                           4,  4 ;  3
	; ;map_const OLIVINE_HOUSE_BETA,                           4,  4 ;  4
	; map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE,              4,  4 ;  5
	; map_const OLIVINE_GOOD_ROD_HOUSE, 5, 4 
	; map_const OLIVINE_CAFE,                                 4,  4 ;  7
	; map_const OLIVINE_MART,                                 6,  4 ;  8
	; map_const ROUTE_38_ECRUTEAK_GATE,                       5,  4 ;  9
	; map_const ROUTE_39_BARN,                                4,  4 ; 10
	; map_const ROUTE_39_FARMHOUSE,                           4,  4 ; 11
	; map_const ROUTE_38,                                    20,  9 ; 12
	; map_const ROUTE_39,                                    10, 18 ; 13
	; map_const OLIVINE_CITY,                                20, 18 ; 14

	; newgroup                                                      ;  2

	; map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,           4,  4 ;  1
	; map_const MAHOGANY_GYM,                                 5,  9 ;  2
	; map_const MAHOGANY_POKECENTER_1F,                       5,  4 ;  3
	; map_const ROUTE_42_ECRUTEAK_GATE,                       5,  4 ;  4
	; map_const ROUTE_42,                                    30,  9 ;  5
	; map_const ROUTE_44,                                    30,  9 ;  6
	; map_const MAHOGANY_TOWN,                               10,  9 ;  7

	newgroup                                                      ;  3
	
	map_const GIANT_CHASM_1F, 9, 10
	map_const GIANT_CHASM_ROOMS, 8, 13
	map_const GIANT_CHASM_B1F, 23, 20
	map_const REVERSAL_MOUNTAIN_1F, 27, 16
	map_const REVERSAL_MOUNTAIN_B1F, 17, 16
	map_const STRANGE_HOUSE_1F, 14, 7
	map_const STRANGE_HOUSE_B1F, 13, 6
	map_const STRANGE_HOUSE_ROOMS, 21, 10
	map_const LOSTLORN_FOREST, 20, 28
	map_const RELIC_CASTLE_1F, 10, 9
	map_const RELIC_CASTLE_B1F, 9, 9
	map_const RELIC_CASTLE_B2F, 9, 7
	map_const RELIC_CASTLE_B3F, 10, 5
	map_const RELIC_CASTLE_B4F, 13, 12
	map_const NIMBASA_PARK_COASTER_ROOM, 20, 15
	map_const NIMBASA_PARK_RUNWAY, 5, 13
	map_const NIMBASA_PARK_BASEMENT, 7,  9
	map_const VIRBANK_COMPLEX_ELEVATOR, 2, 2
	map_const VIRBANK_COMPLEX_B1F, 8, 6
	map_const VIRBANK_COMPLEX_B2F, 11, 11
	map_const PINWHEEL_FOREST, 23, 21
	map_const WELLSPRING_CAVE_1F, 16, 12
	map_const WELLSPRING_CAVE_B1F, 13, 25
	map_const P2_LAB_ENTRANCE, 5, 5
	map_const P2_LAB, 14, 21
	map_const SEASIDE_CAVE_1F, 11, 18
	map_const SEASIDE_CAVE_B1F, 12, 14
	map_const CASTELIA_SEWERS, 26, 21
	map_const CASTELIA_SEWERS_ROOMS, 15, 9
	map_const RELIC_PASSAGE_FRONT, 24, 13
	map_const RELIC_PASSAGE_BACK, 15, 16
	map_const CHARGESTONE_CAVE_1F, 23, 18
	map_const CHARGESTONE_CAVE_B1F, 16, 21
	map_const CHARGESTONE_CAVE_B2F, 12, 15
	map_const CELESTIAL_TOWER_1F, 5, 6
	map_const CELESTIAL_TOWER, 5, 22
	map_const CELESTIAL_TOWER_ROOF, 9, 8
	; map_const SPROUT_TOWER_1F,                             10,  8 ;  1
	; map_const SPROUT_TOWER_2F,                             10,  8 ;  2
	; map_const SPROUT_TOWER_3F,                             10,  8 ;  3
	; map_const TIN_TOWER_1F,                                10,  9 ;  4
	; map_const TIN_TOWER_2F,                                10,  9 ;  5
	; map_const TIN_TOWER_3F,                                10,  9 ;  6
	; map_const TIN_TOWER_4F,                                10,  9 ;  7
	; map_const TIN_TOWER_5F,                                10,  9 ;  8
	; map_const TIN_TOWER_6F,                                10,  9 ;  9
	; map_const TIN_TOWER_7F,                                10,  9 ; 10
	; map_const TIN_TOWER_8F,                                10,  9 ; 11
	; map_const TIN_TOWER_9F,                                10,  9 ; 12
	; map_const BURNED_TOWER_1F,                             10,  9 ; 13
	; map_const BURNED_TOWER_B1F,                            10,  9 ; 14
	; map_const NATIONAL_PARK,                               20, 27 ; 15
	; map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27 ; 16
	; map_const RADIO_TOWER_1F,                               9,  4 ; 17
	; map_const RADIO_TOWER_2F,                               9,  4 ; 18
	; map_const RADIO_TOWER_3F,                               9,  4 ; 19
	; map_const RADIO_TOWER_4F,                               9,  4 ; 20
	; map_const RADIO_TOWER_5F,                               9,  4 ; 21
	; map_const RUINS_OF_ALPH_OUTSIDE,                       10, 18 ; 22
	; map_const RUINS_OF_ALPH_HO_OH_CHAMBER,                  4,  5 ; 23
	; map_const RUINS_OF_ALPH_KABUTO_CHAMBER,                 4,  5 ; 24
	; map_const RUINS_OF_ALPH_OMANYTE_CHAMBER,                4,  5 ; 25
	; map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER,             4,  5 ; 26
	; map_const RUINS_OF_ALPH_INNER_CHAMBER,                 10, 14 ; 27
	; map_const RUINS_OF_ALPH_RESEARCH_CENTER,                4,  4 ; 28
	; map_const RUINS_OF_ALPH_HO_OH_ITEM_ROOM,                4,  5 ; 29
	; map_const RUINS_OF_ALPH_KABUTO_ITEM_ROOM,               4,  5 ; 30
	; map_const RUINS_OF_ALPH_OMANYTE_ITEM_ROOM,              4,  5 ; 31
	; map_const RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM,           4,  5 ; 32
	; map_const RUINS_OF_ALPH_HO_OH_WORD_ROOM,               10, 12 ; 33
	; map_const RUINS_OF_ALPH_KABUTO_WORD_ROOM,              10,  7 ; 34
	; map_const RUINS_OF_ALPH_OMANYTE_WORD_ROOM,             10,  8 ; 35
	; map_const RUINS_OF_ALPH_AERODACTYL_WORD_ROOM,          10,  7 ; 36
	; map_const UNION_CAVE_1F,                               10, 18 ; 37
	; map_const UNION_CAVE_B1F,                              10, 18 ; 38
	; map_const UNION_CAVE_B2F,                              10, 18 ; 39
	; map_const SLOWPOKE_WELL_B1F,                           10,  9 ; 40
	; map_const SLOWPOKE_WELL_B2F,                           10,  9 ; 41
	; map_const OLIVINE_LIGHTHOUSE_1F,                       10,  9 ; 42
	; map_const OLIVINE_LIGHTHOUSE_2F,                       10,  9 ; 43
	; map_const OLIVINE_LIGHTHOUSE_3F,                       10,  9 ; 44
	; map_const OLIVINE_LIGHTHOUSE_4F,                       10,  9 ; 45
	; map_const OLIVINE_LIGHTHOUSE_5F,                       10,  9 ; 46
	; map_const OLIVINE_LIGHTHOUSE_6F,                       10,  9 ; 47
	; map_const MAHOGANY_MART_1F,                             4,  4 ; 48
	; map_const TEAM_ROCKET_BASE_B1F,                        15,  9 ; 49
	; map_const TEAM_ROCKET_BASE_B2F,                        15,  9 ; 50
	; map_const TEAM_ROCKET_BASE_B3F,                        15,  9 ; 51
	; map_const ILEX_FOREST,                                 15, 27 ; 52
	; map_const GOLDENROD_UNDERGROUND,                       15, 18 ; 53
	; map_const GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 15, 18 ; 54
	; map_const GOLDENROD_DEPT_STORE_B1F,                    10,  9 ; 55
	; map_const GOLDENROD_UNDERGROUND_WAREHOUSE,             10,  9 ; 56
	; map_const MOUNT_MORTAR_1F_OUTSIDE,                     20, 18 ; 57
	; map_const MOUNT_MORTAR_1F_INSIDE,                      20, 27 ; 58
	; map_const MOUNT_MORTAR_2F_INSIDE,                      20, 18 ; 59
	; map_const MOUNT_MORTAR_B1F,                            20, 18 ; 60
	; map_const ICE_PATH_1F,                                 20, 18 ; 61
	; map_const ICE_PATH_B1F,                                10, 18 ; 62
	; map_const ICE_PATH_B2F_MAHOGANY_SIDE,                  10,  9 ; 63
	; map_const ICE_PATH_B2F_BLACKTHORN_SIDE,                 5,  9 ; 64
	; map_const ICE_PATH_B3F,                                10,  9 ; 65
	; map_const WHIRL_ISLAND_NW,                              5,  9 ; 66
	; map_const WHIRL_ISLAND_NE,                             10,  9 ; 67
	; map_const WHIRL_ISLAND_SW,                             10,  9 ; 68
	; map_const WHIRL_ISLAND_CAVE,                            5,  9 ; 69
	; map_const WHIRL_ISLAND_SE,                              5,  9 ; 70
	; map_const WHIRL_ISLAND_B1F,                            20, 18 ; 71
	; map_const WHIRL_ISLAND_B2F,                            10, 18 ; 72
	; map_const WHIRL_ISLAND_LUGIA_CHAMBER,                  10,  9 ; 73
	; map_const SILVER_CAVE_ROOM_1,                          10, 18 ; 74
	; map_const SILVER_CAVE_ROOM_2,                          15, 18 ; 75
	; map_const SILVER_CAVE_ROOM_3,                          10, 18 ; 76
	; map_const SILVER_CAVE_ITEM_ROOMS,                      10,  9 ; 77
	; map_const DARK_CAVE_VIOLET_ENTRANCE,                   20, 18 ; 78
	; map_const DARK_CAVE_BLACKTHORN_ENTRANCE,               15, 18 ; 79
	; map_const DRAGONS_DEN_1F,                               5,  9 ; 80
	; map_const DRAGONS_DEN_B1F,                             20, 18 ; 81
	; map_const DRAGON_SHRINE,                                5,  5 ; 82
	; map_const TOHJO_FALLS,                                 15,  9 ; 83
	; map_const DIGLETTS_CAVE,                               10, 18 ; 84
	; map_const MOUNT_MOON,                                  15,  9 ; 85
	; map_const UNDERGROUND_PATH,                             3, 14 ; 86
	; map_const ROCK_TUNNEL_1F,                              15, 18 ; 87
	; map_const ROCK_TUNNEL_B1F,                             15, 18 ; 88
	; ;map_const SAFARI_ZONE_FUCHSIA_GATE_BETA,                5,  4 ; 89
	; ;map_const SAFARI_ZONE_BETA,                            10, 18 ; 90
	; map_const VICTORY_ROAD,                                10, 36 ; 91

	; newgroup                                                      ;  4

	; map_const ECRUTEAK_TIN_TOWER_ENTRANCE,                 10,  9 ;  1
	; map_const WISE_TRIOS_ROOM,                              4,  4 ;  2
	; map_const ECRUTEAK_POKECENTER_1F,                       5,  4 ;  3
	; map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,                  4,  4 ;  4
	; map_const DANCE_THEATRE,                                6,  7 ;  5
	; map_const ECRUTEAK_MART,                                6,  4 ;  6
	; map_const ECRUTEAK_GYM,                                 5,  9 ;  7
	; map_const ECRUTEAK_ITEMFINDER_HOUSE,                    4,  4 ;  8
	; map_const ECRUTEAK_CITY,                               20, 18 ;  9

	; newgroup                                                      ;  5

	; map_const BLACKTHORN_GYM_1F,                            5,  9 ;  1
	; map_const BLACKTHORN_GYM_2F,                            5,  9 ;  2
	; map_const BLACKTHORN_DRAGON_SPEECH_HOUSE,               4,  4 ;  3
	; map_const BLACKTHORN_EMYS_HOUSE,                        4,  4 ;  4
	; map_const BLACKTHORN_MART,                              6,  4 ;  5
	; map_const BLACKTHORN_POKECENTER_1F,                     5,  4 ;  6
	; map_const MOVE_DELETERS_HOUSE,                          4,  4 ;  7
	; map_const ROUTE_45,                                    10, 45 ;  8
	; map_const ROUTE_46,                                    10, 18 ;  9
	; map_const BLACKTHORN_CITY,                             20, 18 ; 10

	; newgroup                                                      ;  6

	; map_const CINNABAR_POKECENTER_1F,                       5,  4 ;  1
	; map_const CINNABAR_POKECENTER_2F_BETA,                  8,  4 ;  2
	; map_const ROUTE_19_FUCHSIA_GATE,                        5,  4 ;  3
	; map_const SEAFOAM_GYM,                                  5,  4 ;  4
	; map_const ROUTE_19,                                    10, 18 ;  5
	; map_const ROUTE_20,                                    30,  9 ;  6
	; map_const ROUTE_21,                                    10, 18 ;  7
	; map_const CINNABAR_ISLAND,                             10,  9 ;  8

	; newgroup                                                      ;  7

	; map_const CERULEAN_GYM_BADGE_SPEECH_HOUSE,              4,  4 ;  1
	; map_const CERULEAN_POLICE_STATION,                      4,  4 ;  2
	; map_const CERULEAN_TRADE_SPEECH_HOUSE,                  4,  4 ;  3
	; map_const CERULEAN_POKECENTER_1F,                       5,  4 ;  4
	; map_const CERULEAN_POKECENTER_2F_BETA,                  8,  4 ;  5
	; map_const CERULEAN_GYM,                                 5,  8 ;  6
	; map_const CERULEAN_MART,                                6,  4 ;  7
	; map_const ROUTE_10_POKECENTER_1F,                       5,  4 ;  8
	; map_const ROUTE_10_POKECENTER_2F_BETA,                  8,  4 ;  9
	; map_const POWER_PLANT,                                 10,  9 ; 10
	; map_const BILLS_HOUSE,                                  4,  4 ; 11
	; map_const ROUTE_4,                                     20,  9 ; 12
	; map_const ROUTE_9,                                     30,  9 ; 13
	; map_const ROUTE_10_NORTH,                              10,  9 ; 14
	; map_const ROUTE_24,                                    10,  9 ; 15
	; map_const ROUTE_25,                                    30,  9 ; 16
	; map_const CERULEAN_CITY,                               20, 18 ; 17

	; newgroup                                                      ;  8

	; map_const AZALEA_POKECENTER_1F,                         5,  4 ;  1
	; map_const CHARCOAL_KILN,                                4,  4 ;  2
	; map_const AZALEA_MART,                                  6,  4 ;  3
	; map_const KURTS_HOUSE,                                  8,  4 ;  4
	; map_const AZALEA_GYM,                                   5,  8 ;  5
	; map_const ROUTE_33,                                    10,  9 ;  6
	; map_const AZALEA_TOWN,                                 20,  9 ;  7

	; newgroup                                                      ;  9

	; map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,              4,  4 ;  1
	; map_const LAKE_OF_RAGE_MAGIKARP_HOUSE,                  4,  4 ;  2
	; map_const ROUTE_43_MAHOGANY_GATE,                       5,  4 ;  3
	; map_const ROUTE_43_GATE,                                5,  4 ;  4
	; map_const ROUTE_43,                                    10, 27 ;  5
	; map_const LAKE_OF_RAGE,                                20, 18 ;  6

	; newgroup                                                      ; 10

	; map_const ROUTE_32,                                    10, 45 ;  1
	; map_const ROUTE_35,                                    10, 18 ;  2
	; map_const ROUTE_36,                                    30,  9 ;  3
	; map_const ROUTE_37,                                    10,  9 ;  4
	; map_const VIOLET_CITY,                                 20, 18 ;  5
	; map_const VIOLET_MART,                                  6,  4 ;  6
	; map_const VIOLET_GYM,                                   5,  8 ;  7
	; map_const EARLS_POKEMON_ACADEMY,                        4,  8 ;  8
	; map_const VIOLET_NICKNAME_SPEECH_HOUSE,                 4,  4 ;  9
	; map_const VIOLET_POKECENTER_1F,                         5,  4 ; 10
	; map_const VIOLET_KYLES_HOUSE,                           4,  4 ; 11
	; map_const ROUTE_32_RUINS_OF_ALPH_GATE,                  5,  4 ; 12
	; map_const ROUTE_32_POKECENTER_1F,                       5,  4 ; 13
	; map_const ROUTE_35_GOLDENROD_GATE,                      5,  4 ; 14
	; map_const ROUTE_35_NATIONAL_PARK_GATE,                  4,  4 ; 15
	; map_const ROUTE_36_RUINS_OF_ALPH_GATE,                  5,  4 ; 16
	; map_const ROUTE_36_NATIONAL_PARK_GATE,                  5,  4 ; 17

	; newgroup                                                      ; 11

	; map_const ROUTE_34,                                    10, 27 ;  1
	; map_const GOLDENROD_CITY,                              20, 18 ;  2
	; map_const GOLDENROD_GYM,                               10,  9 ;  3
	; map_const GOLDENROD_BIKE_SHOP,                          4,  4 ;  4
	; map_const GOLDENROD_HAPPINESS_RATER,                    4,  4 ;  5
	; map_const BILLS_FAMILYS_HOUSE,                          4,  4 ;  6
	; map_const GOLDENROD_MAGNET_TRAIN_STATION,              10,  9 ;  7
	; map_const GOLDENROD_FLOWER_SHOP,                        4,  4 ;  8
	; map_const GOLDENROD_PP_SPEECH_HOUSE,                    4,  4 ;  9
	; map_const GOLDENROD_NAME_RATER,                         4,  4 ; 10
	; map_const GOLDENROD_DEPT_STORE_1F,                      8,  4 ; 11
	; map_const GOLDENROD_DEPT_STORE_2F,                      8,  4 ; 12
	; map_const GOLDENROD_DEPT_STORE_3F,                      8,  4 ; 13
	; map_const GOLDENROD_DEPT_STORE_4F,                      8,  4 ; 14
	; map_const GOLDENROD_DEPT_STORE_5F,                      8,  4 ; 15
	; map_const GOLDENROD_DEPT_STORE_6F,                      8,  4 ; 16
	; map_const GOLDENROD_DEPT_STORE_ELEVATOR,                2,  2 ; 17
	; map_const GOLDENROD_DEPT_STORE_ROOF,                    8,  4 ; 18
	; ;map_const GOLDENROD_GAME_CORNER,                       10,  7 ; 19
	; map_const GOLDENROD_POKECENTER_1F,                      5,  4 ; 20
	; map_const POKECOM_CENTER_ADMIN_OFFICE_MOBILE,          16, 16 ; 21
	; map_const ILEX_FOREST_AZALEA_GATE,                      5,  4 ; 22
	; map_const ROUTE_34_ILEX_FOREST_GATE,                    5,  4 ; 23
	; map_const DAY_CARE,                                     5,  4 ; 24

	; newgroup                                                      ; 12

	; map_const ROUTE_6,                                     10,  9 ;  1
	; map_const ROUTE_11,                                    20,  9 ;  2
	; map_const VERMILION_CITY,                              20, 18 ;  3
	; map_const VERMILION_FISHING_SPEECH_HOUSE,               4,  4 ;  4
	; map_const VERMILION_POKECENTER_1F,                      5,  4 ;  5
	; map_const VERMILION_POKECENTER_2F_BETA,                 8,  4 ;  6
	; map_const POKEMON_FAN_CLUB,                             5,  4 ;  7
	; map_const VERMILION_MAGNET_TRAIN_SPEECH_HOUSE,          4,  4 ;  8
	; map_const VERMILION_MART,                               6,  4 ;  9
	; map_const VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE,         4,  4 ; 10
	; map_const VERMILION_GYM,                                5,  9 ; 11
	; map_const ROUTE_6_SAFFRON_GATE,                         5,  4 ; 12
	; map_const ROUTE_6_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 13

	; newgroup                                                      ; 13

	; map_const ROUTE_1,                                     10, 18 ;  1
	; map_const PALLET_TOWN,                                 10,  9 ;  2
	; map_const REDS_HOUSE_1F,                                4,  4 ;  3
	; map_const REDS_HOUSE_2F,                                4,  4 ;  4
	; map_const BLUES_HOUSE,                                  4,  4 ;  5
	; map_const OAKS_LAB,                                     5,  6 ;  6

	; newgroup                                                      ; 14

	; map_const ROUTE_3,                                     30,  9 ;  1
	; map_const PEWTER_CITY,                                 20, 18 ;  2
	; map_const PEWTER_NIDORAN_SPEECH_HOUSE,                  4,  4 ;  3
	; map_const PEWTER_GYM,                                   5,  7 ;  4
	; map_const PEWTER_MART,                                  6,  4 ;  5
	; map_const PEWTER_POKECENTER_1F,                         5,  4 ;  6
	; map_const PEWTER_POKECENTER_2F_BETA,                    8,  4 ;  7
	; map_const PEWTER_SNOOZE_SPEECH_HOUSE,                   4,  4 ;  8

	; newgroup                                                      ; 15

	; map_const OLIVINE_PORT,                                10, 18 ;  1
	; map_const VERMILION_PORT,                              10, 18 ;  2
	; map_const FAST_SHIP_1F,                                16,  9 ;  3
	; map_const FAST_SHIP_CABINS_NNW_NNE_NE,                  4, 16 ;  4
	; map_const FAST_SHIP_CABINS_SW_SSW_NW,                   4, 16 ;  5
	; map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,       5, 17 ;  6
	; map_const FAST_SHIP_B1F,                               16,  8 ;  7
	; map_const OLIVINE_PORT_PASSAGE,                        10,  9 ;  8
	; map_const VERMILION_PORT_PASSAGE,                      10,  9 ;  9
	; map_const MOUNT_MOON_SQUARE,                           15,  9 ; 10
	; map_const MOUNT_MOON_GIFT_SHOP,                         4,  4 ; 11
	; map_const TIN_TOWER_ROOF,                              10,  9 ; 12

	; newgroup                                                      ; 16

	; map_const ROUTE_23,                                    10,  9 ;  1
	; map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  2
	; map_const WILLS_ROOM,                                   5,  9 ;  3
	; map_const KOGAS_ROOM,                                   5,  9 ;  4
	; map_const BRUNOS_ROOM,                                  5,  9 ;  5
	; map_const KARENS_ROOM,                                  5,  9 ;  6
	; map_const LANCES_ROOM,                                  5, 12 ;  7
	; map_const HALL_OF_FAME,                                 5,  7 ;  8

	; newgroup                                                      ; 17

	; map_const ROUTE_13,                                    30,  9 ;  1
	; map_const ROUTE_14,                                    10, 18 ;  2
	; map_const ROUTE_15,                                    20,  9 ;  3
	; map_const ROUTE_18,                                    10,  9 ;  4
	; map_const FUCHSIA_CITY,                                20, 18 ;  5
	; map_const FUCHSIA_MART,                                 6,  4 ;  6
	; map_const SAFARI_ZONE_MAIN_OFFICE,                      4,  4 ;  7
	; map_const FUCHSIA_GYM,                                  5,  9 ;  8
	; map_const BILLS_BROTHERS_HOUSE,                         4,  4 ;  9
	; map_const FUCHSIA_POKECENTER_1F,                        5,  4 ; 10
	; map_const FUCHSIA_POKECENTER_2F_BETA,                   8,  4 ; 11
	; map_const SAFARI_ZONE_WARDENS_HOME,                     5,  4 ; 12
	; map_const ROUTE_15_FUCHSIA_GATE,                        5,  4 ; 13

	; newgroup                                                      ; 18

	; map_const ROUTE_8,                                     20,  9 ;  1
	; map_const ROUTE_12,                                    10, 27 ;  2
	; map_const ROUTE_10_SOUTH,                              10,  9 ;  3
	; map_const LAVENDER_TOWN,                               10,  9 ;  4
	; map_const LAVENDER_POKECENTER_1F,                       5,  4 ;  5
	; map_const LAVENDER_POKECENTER_2F_BETA,                  8,  4 ;  6
	; map_const MR_FUJIS_HOUSE,                               5,  4 ;  7
	; map_const LAVENDER_SPEECH_HOUSE,                        4,  4 ;  8
	; map_const LAVENDER_NAME_RATER,                          4,  4 ;  9
	; map_const LAVENDER_MART,                                6,  4 ; 10
	; map_const SOUL_HOUSE,                                   5,  4 ; 11
	; map_const LAV_RADIO_TOWER_1F,                          10,  4 ; 12
	; map_const ROUTE_8_SAFFRON_GATE,                         5,  4 ; 13
	; map_const ROUTE_12_SUPER_ROD_HOUSE,                     4,  4 ; 14

	; newgroup                                                      ; 19

	; map_const ROUTE_28,                                    20,  9 ;  1
	; map_const SILVER_CAVE_OUTSIDE,                         20, 18 ;  2
	; map_const SILVER_CAVE_POKECENTER_1F,                    5,  4 ;  3
	; map_const ROUTE_28_STEEL_WING_HOUSE,                    4,  4 ;  4

	newgroup                                                      ; 20

	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	map_const MOBILE_TRADE_ROOM,                            5,  4 ;  5
	map_const MOBILE_BATTLE_ROOM,                           5,  4 ;  6

	; newgroup                                                      ; 21

	; map_const ROUTE_7,                                     10,  9 ;  1
	; map_const ROUTE_16,                                    10,  9 ;  2
	; map_const ROUTE_17,                                    10, 45 ;  3
	; map_const CELADON_CITY,                                20, 18 ;  4
	; map_const CELADON_DEPT_STORE_1F,                        8,  4 ;  5
	; map_const CELADON_DEPT_STORE_2F,                        8,  4 ;  6
	; map_const CELADON_DEPT_STORE_3F,                        8,  4 ;  7
	; map_const CELADON_DEPT_STORE_4F,                        8,  4 ;  8
	; map_const CELADON_DEPT_STORE_5F,                        8,  4 ;  9
	; map_const CELADON_DEPT_STORE_6F,                        8,  4 ; 10
	; map_const CELADON_DEPT_STORE_ELEVATOR,                  2,  2 ; 11
	; map_const CELADON_MANSION_1F,                           4,  5 ; 12
	; map_const CELADON_MANSION_2F,                           4,  5 ; 13
	; map_const CELADON_MANSION_3F,                           4,  5 ; 14
	; map_const CELADON_MANSION_ROOF,                         4,  5 ; 15
	; map_const CELADON_MANSION_ROOF_HOUSE,                   4,  4 ; 16
	; map_const CELADON_POKECENTER_1F,                        5,  4 ; 17
	; map_const CELADON_POKECENTER_2F_BETA,                   8,  4 ; 18
	; map_const CELADON_GAME_CORNER,                         10,  7 ; 19
	; ;map_const CELADON_GAME_CORNER_PRIZE_ROOM,               3,  3 ; 20
	; map_const CELADON_GYM,                                  5,  9 ; 21
	; map_const CELADON_CAFE,                                 6,  4 ; 22
	; map_const ROUTE_16_FUCHSIA_SPEECH_HOUSE,                4,  4 ; 23
	; map_const ROUTE_16_GATE,                                5,  4 ; 24
	; map_const ROUTE_7_SAFFRON_GATE,                         5,  4 ; 25
	; map_const ROUTE_17_ROUTE_18_GATE,                       5,  4 ; 26

	; newgroup                                                      ; 22

	; map_const ROUTE_40,                                    10, 18 ;  1
	; map_const ROUTE_41,                                    25, 27 ;  2
	; map_const CIANWOOD_CITY,                               15, 27 ;  3
	; map_const MANIAS_HOUSE,                                 4,  4 ;  4
	; map_const CIANWOOD_GYM,                                 5,  9 ;  5
	; map_const CIANWOOD_POKECENTER_1F,                       5,  4 ;  6
	; map_const CIANWOOD_PHARMACY,                            4,  4 ;  7
	; map_const CIANWOOD_PHOTO_STUDIO,                        4,  4 ;  8
	; map_const CIANWOOD_LUGIA_SPEECH_HOUSE,                  4,  4 ;  9
	; map_const POKE_SEERS_HOUSE,                             4,  4 ; 10
	; map_const BATTLE_TOWER_1F,                              8,  5 ; 11
	; map_const BATTLE_TOWER_BATTLE_ROOM,                     4,  4 ; 12
	; map_const BATTLE_TOWER_ELEVATOR,                        2,  2 ; 13
	; map_const BATTLE_TOWER_HALLWAY,                        11,  2 ; 14
	; map_const ROUTE_40_BATTLE_TOWER_GATE,                   5,  4 ; 15
	; map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ; 16

	; newgroup                                                      ; 23

	; map_const ROUTE_2,                                     10, 27 ;  1
	; map_const ROUTE_22,                                    20,  9 ;  2
	; map_const VIRIDIAN_CITY,                               20, 18 ;  3
	; map_const VIRIDIAN_GYM,                                 5,  9 ;  4
	; map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE,               4,  4 ;  5
	; map_const TRAINER_HOUSE_1F,                             5,  7 ;  6
	; map_const TRAINER_HOUSE_B1F,                            5,  8 ;  7
	; map_const VIRIDIAN_MART,                                6,  4 ;  8
	; map_const VIRIDIAN_POKECENTER_1F,                       5,  4 ;  9
	; map_const VIRIDIAN_POKECENTER_2F_BETA,                  8,  4 ; 10
	; map_const ROUTE_2_NUGGET_HOUSE,                         4,  4 ; 11
	; map_const ROUTE_2_GATE,                                 5,  4 ; 12
	; map_const VICTORY_ROAD_GATE,                           10,  9 ; 13

	; newgroup                                                      ; 24

	; map_const ROUTE_26,                                    10, 54 ;  1
	; map_const ROUTE_27,                                    40,  9 ;  2
	; map_const ROUTE_29,                                    30,  9 ;  3
	; map_const NEW_BARK_TOWN,                               10,  9 ;  4
	; map_const ELMS_LAB,                                     5,  6 ;  5
	; map_const ELMS_HOUSE,                                   4,  4 ;  9
	; map_const ROUTE_26_HEAL_HOUSE,                          4,  4 ; 10
	; map_const DAY_OF_WEEK_SIBLINGS_HOUSE,                   4,  4 ; 11
	; map_const ROUTE_27_SANDSTORM_HOUSE,                     4,  4 ; 12
	; map_const ROUTE_29_ROUTE_46_GATE,                       5,  4 ; 13

	; newgroup                                                      ; 25

	; map_const ROUTE_5,                                     10,  9 ;  1
	; map_const SAFFRON_CITY,                                20, 18 ;  2
	; map_const FIGHTING_DOJO,                                5,  6 ;  3
	; map_const SAFFRON_GYM,                                 10,  9 ;  4
	; map_const SAFFRON_MART,                                 6,  4 ;  5
	; map_const SAFFRON_POKECENTER_1F,                        5,  4 ;  6
	; map_const SAFFRON_POKECENTER_2F_BETA,                   8,  4 ;  7
	; map_const MR_PSYCHICS_HOUSE,                            4,  4 ;  8
	; map_const SAFFRON_MAGNET_TRAIN_STATION,                10,  9 ;  9
	; map_const SILPH_CO_1F,                                  8,  4 ; 10
	; map_const COPYCATS_HOUSE_1F,                            4,  4 ; 11
	; map_const COPYCATS_HOUSE_2F,                            5,  3 ; 12
	; map_const ROUTE_5_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 13
	; map_const ROUTE_5_SAFFRON_GATE,                         5,  4 ; 14
	; map_const ROUTE_5_CLEANSE_TAG_HOUSE,                    4,  4 ; 15

	; newgroup                                                      ; 26

	; map_const ROUTE_30,                                    10, 27 ;  1
	; map_const ROUTE_31,                                    20,  9 ;  2
	; map_const CHERRYGROVE_CITY,                            20,  9 ;  3
	; map_const CHERRYGROVE_MART,                             6,  4 ;  4
	; map_const CHERRYGROVE_POKECENTER_1F,                    5,  4 ;  5
	; map_const CHERRYGROVE_GYM_SPEECH_HOUSE,                 4,  4 ;  6
	; map_const GUIDE_GENTS_HOUSE,                            4,  4 ;  7
	; map_const CHERRYGROVE_EVOLUTION_SPEECH_HOUSE,           4,  4 ;  8
	; map_const ROUTE_30_BERRY_HOUSE,                         4,  4 ;  9
	; map_const MR_POKEMONS_HOUSE,                            4,  4 ; 10
	; map_const ROUTE_31_VIOLET_GATE,                         5,  4 ; 11
	
	newgroup
	
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  6
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  7
	map_const HUMILAU_CITY, 15, 19
	map_const HUMILAU_MART, 6, 4
	map_const HUMILAU_POKECENTER_1F, 5, 4 
	map_const MARLONS_HOUSE, 5, 4
	map_const PLAYERS_NEIGHBORS_HOUSE,                      4,  4 ;  8
	map_const HUMILAU_TRADE_HOUSE, 4,  4 ;  8
	map_const HUMILAU_GYM, 5, 8
	map_const R_22, 19, 10
	map_const R_21, 11, 29
	
	newgroup
	
	map_const R_13, 18, 25
	map_const LACUNOSA_TOWN, 10, 11
	map_const LACUNOSA_MART, 6, 4
	map_const LACUNOSA_POKECENTER_1F, 5, 4 
	map_const R_12, 14, 10
	map_const LACUNOSA_HOUSE, 4, 4 
	map_const LACUNOSA_HOUSE_2, 4, 4 
	map_const R_12_VILLAGE_BRIDGE_GATE, 5, 4
	
	newgroup
	
	map_const R_13_UNDELLA_GATE, 5,  4 
	map_const UNDELLA_TOWN, 22, 14
	map_const UNDELLA_POKECENTER_1F, 5, 4 
	map_const UNDELLA_OLD_ROD_HOUSE, 4, 4 
	map_const MARINE_TUBE_ENTRANCE, 13, 5
	map_const MARINE_TUBE, 8, 17
	map_const R_14, 21, 15
	
	newgroup
	
	map_const LENTIMAS_OUTSKIRTS, 21, 14
	map_const LENTIMAS_TOWN, 17, 14
	map_const LENTIMAS_MART, 6, 4
	map_const LENTIMAS_POKECENTER_1F, 5, 4 
	map_const LENTIMAS_HOUSE, 4, 4 
	map_const LENTIMAS_GYM, 8, 10 
	map_const LENTIMAS_LOSTLORN_GATE, 5,  4 
	map_const LENTIMAS_AIRPORT, 7, 6
	
	newgroup
	
	map_const NIMBASA_CITY, 23, 17
	map_const R_16, 18, 15
	map_const R_16_LOSTLORN_GATE, 5, 4
	map_const R_16_NIMBASA_GATE, 5, 4
	map_const NIMBASA_MART, 6, 4
	map_const NIMBASA_VITAMIN_MART, 6, 4
	map_const NIMBASA_BALL_MART, 6, 4
	map_const NIMBASA_POKECENTER_1F, 5, 4 
	map_const NIMBASA_HOUSE, 4, 4 
	map_const NIMBASA_NAME_RATER, 4, 4 
	map_const R_5, 20, 11
	map_const R_5_NIMBASA_GATE, 5, 4
	map_const R_5_BRIDGE_GATE, 5, 4
	map_const R_5_TRUCK, 4, 3
	map_const R_4_NIMBASA_GATE, 5, 11
	map_const NIMBASA_SUBWAY, 10, 9
	map_const NIMBASA_PARK_OUTSIDE, 27, 10
	
	newgroup
	
	map_const R_4, 23, 30
	map_const R_4_HOUSE, 4, 4 
	map_const DESERT_RESORT, 30, 23
	map_const R_4_DESERT_GATE, 5, 4
	map_const R_4_CASTELIA_GATE, 5, 4
	
	newgroup
	
	map_const CASTELIA_CITY_NORTH, 18, 17
	map_const CASTELIA_CITY_STREETS, 28, 14
	map_const CASTELIA_CITY_SOUTH, 30, 14
	map_const CASTELIA_POKECENTER_1F, 5, 4 
	map_const CASTELIA_DEPT_STORE_1F, 8,  4
	map_const CASTELIA_DEPT_STORE_2F, 8,  4
	map_const CASTELIA_DEPT_STORE_3F, 8,  4
	map_const CASTELIA_DEPT_STORE_4F, 8,  4
	map_const CASTELIA_DEPT_STORE_ELEVATOR, 2,  2
	map_const CASTELIA_BIKE_SHOP, 4,  4
	map_const CASTELIA_MASSAGE, 4,  4
	map_const CASTELIA_GAME_FREAK, 4,  5
	map_const CASTELIA_BRIDGE_GATE, 5,  4
	map_const BATTLE_COMPANY_1F, 4, 4
	map_const BATTLE_COMPANY_2F, 4, 4
	map_const CASTELIA_GYM, 7, 22
	map_const CASTELIA_PORT, 5, 4
	map_const FERRY_LEFT, 9, 2
	map_const PINWHEEL_BRIDGE_GATE, 5, 4
	map_const SKYARROW_BRIDGE, 20, 8
	map_const CASTELIA_TRADE_HOUSE_1, 4, 4
	map_const CASTELIA_TRADE_HOUSE_2, 4, 4
	
	newgroup
	map_const ASPERTIA_CITY, 14, 22
	map_const ASPERTIA_SUBWAY, 10, 9
	map_const ASPERTIA_MART, 6, 4
	map_const ASPERTIA_POKECENTER_1F, 5, 4 
	map_const ASPERTIA_MOM_HOUSE, 4, 4 
	map_const ASPERTIA_MOVE_DELETER_HOUSE, 4, 4 
	map_const ASPERTIA_GYM, 5, 11
	map_const R_19_ASPERTIA_GATE, 5, 4 
	
	newgroup
	map_const FLOCCESY_TOWN, 13, 17
	map_const FLOCCESY_POKECENTER_1F, 5, 4 
	map_const R_19, 21, 13
	map_const R_20, 23, 18
	map_const FLOCCESY_RANCH, 16, 11
	map_const FLOCCESY_RANCH_BARN, 4, 4 
	map_const FLOCCESY_RANCH_HOUSE, 4, 4
	map_const FLOCCESY_TOWN_HOUSE, 4, 4
	map_const FLOCCESY_TRADE_HOUSE, 4, 4
	
	newgroup
	map_const VIRBANK_CITY, 24, 16
	map_const VIRBANK_POKECENTER_1F, 5, 4 
	map_const VIRBANK_HOUSE, 4, 4
	map_const GAME_CORNER, 10, 7
	map_const R_20_VIRBANK_GATE, 5, 4
	map_const VIRBANK_MART, 6, 4
	map_const VIRBANK_GYM, 7, 16
	map_const VIRBANK_PORT, 5, 4
	map_const FERRY_RIGHT, 9, 2
	map_const VIRBANK_COMPLEX_OUTSIDE, 13, 27
	
	newgroup
	map_const NACRENE_CITY, 27, 11
	map_const NACRENE_POKECENTER_1F, 5, 4 
	map_const NACRENE_MART, 6, 4
	map_const NACRENE_HOUSE, 4, 4
	map_const NACRENE_CAFE, 4, 4
	map_const NACRENE_MUSEUM, 5, 6
	map_const R_3_NACRENE_GATE, 5, 4
	
	newgroup
	map_const R_3, 22, 20
	map_const R_3_DAY_CARE, 4, 4
	map_const STRIATON_CITY, 24, 15
	map_const STRIATON_POKECENTER_1F, 5, 4 
	map_const STRIATON_MART, 6, 4
	map_const STRIATON_LAB, 4, 4
	map_const STRIATON_GYM, 7, 9
	map_const R_2, 23, 20
	map_const R_2_ACCUMULA_GATE, 5, 4
	
	newgroup
	map_const ACCUMULA_TOWN, 15, 12
	map_const ACCUMULA_POKECENTER_1F, 5, 4 
	map_const ACCUMULA_MART, 6, 4
	map_const ACCUMULA_HOUSE, 4, 4
	map_const ACCUMULA_TRADE_HOUSE, 4, 4
	map_const R_1, 19, 22
	map_const NUVEMA_TOWN, 13, 12
	map_const NUVEMA_MOM_HOUSE, 4, 4 
	map_const NUVEMA_LAB, 5, 6

	newgroup
	map_const R_1_R_17_GATE, 5, 4
	map_const R_17, 23, 19
	map_const R_18, 24, 19
	map_const R_18_HOUSE, 4, 4
	
	newgroup
	map_const PWT_OUTSIDE, 19, 15
	map_const PWT_INSIDE, 8, 6
	map_const PWT_HALLWAY, 8, 3
	map_const PWT_QUALIFIER_ROOM, 4, 4
	map_const PWT_BACK_ROOM, 4, 6
	map_const PWT_BATTLE_ROOM, 4, 4
	
	newgroup
	map_const DRIFTVEIL_CITY, 26, 20
	map_const PWT_DRIFTVEIL_GATE, 5, 4
	map_const DRIFTVEIL_POKECENTER_1F, 5, 4 
	map_const DRIFTVEIL_MART, 6, 4
	map_const DRIFTVEIL_BRIDGE_GATE, 5, 4
	map_const DRIFTVEIL_SHELTER, 5, 6
	map_const DRIFTVEIL_DRAWBRIDGE, 15, 7
	map_const DRIFTVEIL_STONE_EMPORIUM, 5, 6
	map_const DRIFTVEIL_HOUSE, 4, 4
	map_const DRIFTVEIL_TRADE_HOUSE, 4, 4
	map_const R_6, 26, 25
	map_const R_6_HOUSE, 4, 4
	map_const R_6_LAB, 4, 4
	
	newgroup
	map_const MISTRALTON_CITY, 20, 16
	map_const MISTRALTON_POKECENTER_1F, 5, 4 
	map_const MISTRALTON_MART, 6, 4
	map_const MISTRALTON_HOUSE, 4, 4
	map_const MISTRALTON_GYM_1F, 7, 10
	map_const MISTRALTON_GYM_2F, 9, 9
	map_const MISTRALTON_AIRPORT, 7, 6
	map_const PLANE_LEFT, 13, 5
	map_const PLANE_RIGHT, 13, 5
	map_const R_7, 12, 27
	map_const R_7_NORTH, 16, 23
	map_const R_7_HOUSE, 4, 4
	map_const R_7_TRADE_HOUSE, 4, 4
	
	newgroup
	map_const VILLAGE_BRIDGE, 34, 18
	map_const R_11, 22, 12
	map_const OPELUCID_CITY, 28, 17
	
	newgroup
	map_const R_23, 22, 26
	map_const R_23_GATE, 5, 4
	
	
