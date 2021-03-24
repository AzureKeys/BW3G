spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn HUMILAU_POKECENTER_1F,      5,  3

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
	spawn OPELUCID_CITY,              33, 24
	spawn HUMILAU_CITY,               27, 14 ; PKMN_LEAGUE
	spawn N_A,                        -1, -1
