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
	map_const SEASIDE_CAVE_B2F, 14, 12
	map_const SEASIDE_CAVE_CHAMBER, 6, 8
	map_const DRAGONSPIRAL_TOWER_OUTSIDE, 7, 12
	map_const DRAGONSPIRAL_TOWER_1F, 5, 9
	map_const DRAGONSPIRAL_TOWER_2F, 8, 11
	map_const DRAGONSPIRAL_TOWER_3F, 10, 8
	map_const DRAGONSPIRAL_TOWER_4F, 9, 9
	map_const DRAGONSPIRAL_TOWER_5F, 9, 10
	map_const DRAGONSPIRAL_TOWER_6F, 8, 10
	map_const DRAGONSPIRAL_TOWER_ROOF, 9, 9
	map_const MISTRALTON_CAVE_1F, 13, 11
	map_const MISTRALTON_CAVE_2F, 13, 13
	map_const MISTRALTON_CAVE_3F, 14, 13
	map_const TWIST_MOUNTAIN_ENTRANCE, 5, 5
	map_const DREAMYARD, 20, 19
	map_const DREAMYARD_B1F, 12, 12
	map_const VICTORY_ROAD_CAVE_1F, 20, 19
	map_const VICTORY_ROAD_CAVE_2F, 23, 26
	map_const VICTORY_ROAD_CAVE_3F, 11, 16
	map_const VICTORY_ROAD_OUTDOOR_1F, 32, 13
	map_const VICTORY_ROAD_OUTDOOR_2F, 20, 21
	map_const VICTORY_ROAD_GROVE, 9, 13
	map_const VICTORY_ROAD_CASTLE_OUTSIDE, 11, 10
	map_const NS_ROOM, 5, 5
	map_const NIMBASA_PARK_OUTSIDE, 27, 10
	map_const TWIST_MOUNTAIN_1F, 16, 17
	map_const TWIST_MOUNTAIN_2F, 20, 17
	map_const TWIST_MOUNTAIN_3F, 19, 14
	map_const TWIST_MOUNTAIN_OUTSIDE, 23, 19
	map_const TWIST_MOUNTAIN_HOUSE, 4, 4
	map_const TWIST_MOUNTAIN_B1F, 12, 9
	map_const TWIST_MOUNTAIN_GENESECT_ROOM, 7, 11
	
	newgroup                                                      ; 20

	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	map_const MOBILE_TRADE_ROOM,                            5,  4 ;  5
	map_const MOBILE_BATTLE_ROOM,                           5,  4 ;  6
	
	newgroup
	
	map_const PLAYERS_HOUSE_1F, 5, 4 
	map_const PLAYERS_HOUSE_2F, 4, 3 
	map_const HUMILAU_CITY, 15, 19
	map_const HUMILAU_POKECENTER_1F, 5, 5 
	map_const MARLONS_HOUSE, 5, 4
	map_const PLAYERS_NEIGHBORS_HOUSE, 4, 4 
	map_const HUMILAU_TRADE_HOUSE, 4, 4 
	map_const HUMILAU_GYM, 5, 12
	map_const R_22, 19, 10
	map_const R_21, 11, 29
	
	newgroup
	
	map_const R_13, 18, 27
	map_const LACUNOSA_TOWN, 10, 11
	map_const LACUNOSA_POKECENTER_1F, 5, 5 
	map_const R_12, 14, 10
	map_const LACUNOSA_HOUSE, 4, 4 
	map_const LACUNOSA_HOUSE_2, 4, 4 
	map_const R_12_VILLAGE_BRIDGE_GATE, 5, 4
	
	newgroup
	
	map_const R_13_UNDELLA_GATE, 5,  4 
	map_const UNDELLA_TOWN, 22, 14
	map_const UNDELLA_POKECENTER_1F, 5, 5 
	map_const UNDELLA_OLD_ROD_HOUSE, 4, 4 
	map_const MARINE_TUBE_ENTRANCE, 13, 5
	map_const MARINE_TUBE, 8, 17
	map_const R_14, 21, 15
	map_const CAITLINS_HOUSE, 5, 7 
	
	newgroup
	
	map_const LENTIMAS_OUTSKIRTS, 20, 12
	map_const LENTIMAS_TOWN, 16, 14
	map_const LENTIMAS_CLAW_HOUSE, 4, 4
	map_const LENTIMAS_POKECENTER_1F, 5, 5
	map_const LENTIMAS_HOUSE, 4, 4 
	map_const LENTIMAS_GYM, 8, 10 
	map_const LENTIMAS_LOSTLORN_GATE, 5,  8
	map_const LENTIMAS_AIRPORT, 5, 4
	
	newgroup
	
	map_const NIMBASA_CITY, 23, 18
	map_const NIMBASA_TM_MART, 6, 4
	map_const NIMBASA_VITAMIN_MART, 6, 4
	map_const NIMBASA_BALL_MART, 6, 4
	map_const NIMBASA_POKECENTER_1F, 5, 5
	map_const NIMBASA_HOUSE, 4, 4 
	map_const NIMBASA_NAME_RATER, 4, 4 
	map_const R_4_NIMBASA_GATE, 5, 11
	map_const NIMBASA_SUBWAY, 10, 9
	
	newgroup
	
	map_const R_4, 23, 30
	map_const R_4_HOUSE, 4, 4 
	map_const R_4_CASTELIA_GATE, 5, 4
	
	newgroup
	
	map_const CASTELIA_CITY_NORTH, 18, 17
	map_const CASTELIA_CITY_STREETS, 28, 14
	map_const CASTELIA_CITY_SOUTH, 30, 14
	map_const CASTELIA_POKECENTER_1F, 5, 5
	map_const CASTELIA_BIKE_SHOP, 4,  4
	map_const CASTELIA_MASSAGE, 4,  4
	map_const CASTELIA_GAME_FREAK, 4,  5
	map_const CASTELIA_BRIDGE_GATE, 6,  9
	map_const BATTLE_COMPANY_1F, 4, 4
	map_const BATTLE_COMPANY_2F, 4, 4
	map_const CASTELIA_GYM, 7, 22
	map_const CASTELIA_PORT, 5, 4
	map_const FERRY_LEFT, 9, 2
	map_const PINWHEEL_BRIDGE_GATE, 5, 9
	map_const SKYARROW_BRIDGE, 26, 5
	map_const CASTELIA_TRADE_HOUSE_1, 4, 4
	map_const CASTELIA_TRADE_HOUSE_2, 4, 4
	map_const CASTELIA_PLAZA_LOBBY, 8, 4
	map_const CASTELIA_PLAZA_GAME_CORNER, 9, 6
	map_const CASTELIA_PLAZA_PRIZE_ROOM, 8, 3
	map_const CASTELIA_PLAZA_RESTAURANT, 7, 6
	map_const CASTELIA_PLAZA_ELEVATOR, 2,  2
	
	newgroup
	map_const ASPERTIA_CITY, 14, 22
	map_const ASPERTIA_SUBWAY, 10, 9
	map_const ASPERTIA_BLACKBELT_HOUSE, 4, 4
	map_const ASPERTIA_POKECENTER_1F, 5, 5
	map_const ASPERTIA_MOM_HOUSE, 4, 4 
	map_const ASPERTIA_MOVE_DELETER_HOUSE, 4, 4 
	map_const ASPERTIA_GYM, 5, 11
	map_const R_19_ASPERTIA_GATE, 5, 4 
	
	newgroup
	map_const FLOCCESY_TOWN, 13, 17
	map_const FLOCCESY_POKECENTER_1F, 5, 5
	map_const R_19, 21, 13
	map_const R_20, 23, 18
	map_const FLOCCESY_RANCH, 16, 11
	map_const FLOCCESY_RANCH_BARN, 4, 4 
	map_const FLOCCESY_RANCH_HOUSE, 4, 4
	map_const FLOCCESY_TOWN_HOUSE, 4, 4
	map_const FLOCCESY_TRADE_HOUSE, 4, 4
	map_const ALDERS_HOUSE, 5, 5
	
	newgroup
	map_const VIRBANK_CITY, 24, 16
	map_const VIRBANK_POKECENTER_1F, 5, 5
	map_const VIRBANK_HOUSE, 4, 4
	map_const GAME_CORNER, 10, 7
	map_const R_20_VIRBANK_GATE, 5, 4
	map_const VIRBANK_STAT_EXP_HOUSE, 4, 4
	map_const VIRBANK_GYM, 7, 16
	map_const VIRBANK_PORT, 5, 4
	map_const FERRY_RIGHT, 9, 2
	map_const VIRBANK_COMPLEX_OUTSIDE, 13, 27
	
	newgroup
	map_const NACRENE_OUTSKIRT, 10, 24
	map_const NACRENE_OUTSKIRT_EAST, 15, 12
	map_const NACRENE_OUTSKIRT_CONNECTION_DUMMY, 4, 24
	map_const NACRENE_CITY, 18, 11
	map_const NACRENE_POKECENTER_1F, 5, 5
	map_const NACRENE_STAT_EXP_HOUSE, 4, 4
	map_const NACRENE_HOUSE, 4, 4
	map_const NACRENE_CAFE, 4, 4
	map_const NACRENE_MUSEUM, 5, 6
	map_const R_3_NACRENE_GATE, 5, 4
	
	newgroup
	map_const R_3, 22, 20
	map_const R_3_DAY_CARE, 4, 4
	map_const STRIATON_CITY, 24, 16
	map_const STRIATON_POKECENTER_1F, 5, 5
	map_const STRIATON_TRADE_HOUSE, 4, 4
	map_const STRIATON_LAB, 4, 4
	map_const STRIATON_GYM, 7, 9
	map_const R_2, 23, 20
	map_const R_2_ACCUMULA_GATE, 5, 4
	
	newgroup
	map_const ACCUMULA_TOWN, 15, 12
	map_const ACCUMULA_POKECENTER_1F, 5, 5
	map_const ACCUMULA_BALL_MANIAC_HOUSE, 4, 4
	map_const ACCUMULA_HOUSE, 4, 4
	map_const ACCUMULA_TRADE_HOUSE, 4, 4
	map_const R_1, 19, 22
	map_const NUVEMA_TOWN, 13, 12
	map_const NUVEMA_MOM_HOUSE, 5, 10
	map_const NUVEMA_LAB, 5, 6

	newgroup
	map_const R_1_R_17_GATE, 5, 4
	map_const R_17, 23, 19
	map_const R_18, 24, 19
	map_const R_18_HOUSE, 4, 4
	
	newgroup
	map_const PWT_OUTSIDE, 19, 15
	map_const PWT_INSIDE, 8, 9
	map_const PWT_HALLWAY, 10, 3
	map_const PWT_QUALIFIER_ROOM, 8, 6
	map_const PWT_BACK_ROOM, 4, 6
	map_const PWT_BATTLE_ROOM, 8, 6
	
	newgroup
	map_const DRIFTVEIL_CITY, 26, 20
	map_const PWT_DRIFTVEIL_GATE, 5, 4
	map_const DRIFTVEIL_POKECENTER_1F, 5, 5
	map_const DRIFTVEIL_FOSSIL_HOUSE, 4, 4
	map_const DRIFTVEIL_BRIDGE_GATE, 5, 4
	map_const DRIFTVEIL_SHELTER, 5, 6
	map_const DRIFTVEIL_DRAWBRIDGE, 21, 8
	map_const DRIFTVEIL_STONE_EMPORIUM, 5, 6
	map_const DRIFTVEIL_HOUSE, 4, 4
	map_const DRIFTVEIL_TRADE_HOUSE, 4, 4
	
	newgroup
	map_const MISTRALTON_CITY, 20, 16
	map_const MISTRALTON_POKECENTER_1F, 5, 5
	map_const MISTRALTON_MOVE_REMINDER_HOUSE, 4, 4
	map_const MISTRALTON_HOUSE, 4, 4
	map_const MISTRALTON_GYM_1F, 7, 10
	map_const MISTRALTON_GYM_2F, 9, 9
	map_const MISTRALTON_AIRPORT, 7, 6
	map_const PLANE_LEFT, 13, 5
	map_const PLANE_RIGHT, 13, 5
	map_const R_7, 12, 27
	map_const R_7_NORTH, 16, 24
	map_const R_7_HOUSE, 4, 4
	map_const R_7_TRADE_HOUSE, 4, 4
	
	newgroup
	map_const R_11, 22, 12
	map_const R_11_TRUCK, 4, 3
	map_const R_11_OPELUCID_GATE, 5, 4
	map_const OPELUCID_CITY, 28, 17
	map_const R_9_OPELUCID_GATE, 5, 4
	map_const OPELUCID_POKECENTER_1F, 5, 5
	map_const OPELUCID_BATTLE_HOUSE, 5, 4
	map_const OPELUCID_SUPER_ROD_HOUSE, 4, 4 
	map_const OPELUCID_GYM, 14, 16
	map_const OPELUCID_CURIOSITY_SHOP, 4, 4
	map_const OPELUCID_BLACKBELT_HOUSE, 4, 4
	map_const DRAYDENS_HOUSE_1F, 5, 5
	map_const DRAYDENS_HOUSE_2F, 4, 4
	map_const R_9, 22, 11
	map_const SHOPPING_MALL_NINE, 9, 14
	map_const MEMBERS_ROOM, 7, 4
	
	newgroup
	map_const TUBELINE_BRIDGE, 9, 7
	map_const ICIRRUS_CITY_SOUTH_CONNECTION_DUMMY, 25, 3
	map_const ICIRRUS_CITY_SOUTH, 24, 13
	map_const ICIRRUS_CITY_NORTH, 12, 13
	map_const R_8, 24, 10
	map_const MOOR_OF_ICIRRUS, 24, 20
	map_const ICIRRUS_POKECENTER_1F, 5, 5
	map_const ICIRRUS_BOUTIQUE, 6, 4
	map_const ICIRRUS_HOUSE, 4, 4
	map_const ICIRRUS_FAN_CLUB, 5, 6
	map_const ICIRRUS_CAVE, 16, 19
	
	newgroup
	map_const R_6, 26, 25
	map_const R_6_HOUSE, 4, 4
	map_const R_6_LAB, 4, 4
	
	newgroup
	map_const DESERT_RESORT, 30, 23
	map_const R_4_DESERT_GATE, 5, 4
	
	newgroup
	map_const VILLAGE_BRIDGE, 34, 19
	map_const R_11_VILLAGE_BRIDGE_GATE, 5, 4
	
	newgroup
	
	map_const R_16, 18, 15
	map_const R_16_LOSTLORN_GATE, 5, 4
	map_const R_16_NIMBASA_GATE, 5, 4
	map_const R_5, 20, 11
	map_const R_5_NIMBASA_GATE, 5, 4
	map_const R_5_BRIDGE_GATE, 5, 4
	map_const R_5_TRUCK, 4, 3
	
	newgroup
	map_const R_23_EAST, 17, 26
	map_const R_23_WEST, 33, 12
	map_const R_23_GATE, 5, 4
	map_const R_23_HOUSE, 4, 4
	map_const VICTORY_ROAD_ENTRANCE_SOUTH_RIGHT, 14, 8
	map_const VICTORY_ROAD_ENTRANCE_SOUTH_LEFT, 14, 8
	map_const VICTORY_ROAD_ENTRANCE_NORTH, 26, 12
	map_const VICTORY_ROAD_ENTRANCE_NORTH_CONNECTION_DUMMY, 28, 3
	map_const PKMN_LEAGUE_ENTRANCE, 15, 12
	map_const VICTORY_ROAD_POKECENTER_1F, 5, 5
	map_const PKMN_LEAGUE_POKECENTER_1F, 5, 5
	map_const PKMN_LEAGUE_MAIN, 14, 12
	map_const GRIMSLEYS_ROOM, 8, 7
	map_const MARSHALS_ROOM, 8, 7
	map_const ELESAS_ROOM, 8, 7
	map_const COLRESSS_ROOM, 8, 7
	map_const CHAMPIONS_ROOM_ENTRANCE, 9, 11
	map_const CHAMPIONS_ROOM, 8, 10
	map_const HALL_OF_FAME, 5, 7
	