spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn HUMILAU_POKECENTER_1F,      5,  3

	; spawn PALLET_TOWN,                 5,  6
	; spawn VIRIDIAN_CITY,              23, 26
	; spawn PEWTER_CITY,                13, 26
	; spawn CERULEAN_CITY,              19, 22
	; spawn ROUTE_10_NORTH,             11,  2
	; spawn VERMILION_CITY,              9,  6
	; spawn LAVENDER_TOWN,               5,  6
	; spawn SAFFRON_CITY,                9, 30
	; spawn CELADON_CITY,               29, 10
	; spawn FUCHSIA_CITY,               19, 28
	; spawn CINNABAR_ISLAND,            11, 12
	; spawn ROUTE_23,                    9,  6

	; spawn NEW_BARK_TOWN,              13,  6
	; spawn CHERRYGROVE_CITY,           29,  4
	; spawn VIOLET_CITY,                31, 26
	; spawn ROUTE_32,                   11, 74
	; spawn AZALEA_TOWN,                15, 10
	; spawn CIANWOOD_CITY,              23, 44
	; spawn GOLDENROD_CITY,             15, 28
	; spawn OLIVINE_CITY,               13, 22
	; spawn ECRUTEAK_CITY,              23, 28
	; spawn MAHOGANY_TOWN,              15, 14
	; spawn LAKE_OF_RAGE,               21, 29
	; spawn BLACKTHORN_CITY,            21, 30
	; spawn SILVER_CAVE_OUTSIDE,        23, 20
	; spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2
	spawn HUMILAU_CITY,                3, 28
	spawn LACUNOSA_TOWN,               9, 16
	spawn UNDELLA_TOWN,               29, 10
	spawn LENTIMAS_TOWN,              27, 14
	spawn NIMBASA_CITY,               15, 22
	spawn CASTELIA_CITY_SOUTH,        39,  8
	spawn ASPERTIA_CITY,              15, 24
	spawn FLOCCESY_TOWN,               7, 26
	spawn VIRBANK_CITY,               15, 10
	spawn NACRENE_CITY,               31, 16
	spawn STRIATON_CITY,              33, 16
	spawn ACCUMULA_TOWN,              25, 12
	spawn NUVEMA_TOWN,                 6,  6
	spawn PWT_OUTSIDE,                20,  6
	spawn DRIFTVEIL_CITY,             19, 18
	spawn MISTRALTON_CITY,            27, 16
	spawn HUMILAU_CITY,               27, 14 ; PKMN_LEAGUE
	spawn N_A,                        -1, -1
