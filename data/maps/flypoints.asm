flypoint: MACRO
	const FLY_\1
	db \2, SPAWN_\1
ENDM

Flypoints:
; landmark, spawn point
	const_def
; Johto
	flypoint HUMILAU,      HUMILAU_CITY
	flypoint LACUNOSA,     LACUNOSA_TOWN
	flypoint UNDELLA,      UNDELLA_TOWN
	flypoint LENTIMAS,     LENTIMAS_TOWN
	flypoint NIMBASA,      NIMBASA_CITY
	flypoint CASTELIA,     CASTELIA_CITY
	flypoint ASPERTIA,     ASPERTIA_CITY
	flypoint FLOCCESY,     FLOCCESY_TOWN
	flypoint VIRBANK,      VIRBANK_CITY
	flypoint NACRENE,      NACRENE_CITY
	flypoint STRIATON,     STRIATON_CITY
	flypoint ACCUMULA,     ACCUMULA_TOWN
	flypoint NUVEMA,       NUVEMA_TOWN
	flypoint DRIFTVEIL,    DRIFTVEIL_CITY
	flypoint MISTRALTON,   MISTRALTON_CITY
	flypoint OPELUCID,     OPELUCID_CITY
	flypoint ICIRRUS,      ICIRRUS_CITY
	flypoint VICTORY_ROAD, VICTORY_ROAD
	flypoint PKMN_LEAGUE,  POKEMON_LEAGUE

; Kanto
KANTO_FLYPOINT EQU const_value
	db -1
