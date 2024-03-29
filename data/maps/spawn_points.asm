spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn PLAYERS_HOUSE_2F,             3,  3
	spawn HUMILAU_POKECENTER_1F,        5,  3

	spawn HUMILAU_CITY,                 3, 28
	spawn LACUNOSA_TOWN,                9, 16
	spawn UNDELLA_TOWN,                29, 10
	spawn LENTIMAS_TOWN,               25, 14
	spawn NIMBASA_CITY,                15, 24
	spawn CASTELIA_CITY_SOUTH,         39,  8
	spawn ASPERTIA_CITY,               15, 24
	spawn FLOCCESY_TOWN,                7, 26
	spawn VIRBANK_CITY,                15, 10
	spawn NACRENE_CITY,                13, 16
	spawn STRIATON_CITY,               33, 18
	spawn ACCUMULA_TOWN,               25, 12
	spawn NUVEMA_TOWN,                  6,  6
	spawn PWT_OUTSIDE,                 20,  6
	spawn DRIFTVEIL_CITY,              19, 18
	spawn MISTRALTON_CITY,             27, 16
	spawn OPELUCID_CITY,               33, 24
	spawn ICIRRUS_CITY_SOUTH,          13,  4
	spawn VICTORY_ROAD_ENTRANCE_NORTH, 15,  6
	spawn PKMN_LEAGUE_ENTRANCE,         7, 10
	spawn N_A,                         -1, -1
