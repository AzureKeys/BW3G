; See data/maps/scenes.asm for which maps have scene variables.
; Each scene_script and coord_event is associated with a current scene ID.

; Scene variables default to 0.
SCENE_DEFAULT  EQU 0
; Often a map will have a one-time default event for scene 0, and switch to a
; do-nothing scene 1 when the event finishes.
SCENE_FINISHED EQU 1

; wPokecenter2FSceneID
	const_def 1
	const SCENE_POKECENTER2F_LEAVE_TRADE_CENTER       ; 1
	const SCENE_POKECENTER2F_LEAVE_COLOSSEUM          ; 2
	const SCENE_POKECENTER2F_LEAVE_TIME_CAPSULE       ; 3
	const SCENE_POKECENTER2F_LEAVE_MOBILE_TRADE_ROOM  ; 4
	const SCENE_POKECENTER2F_LEAVE_MOBILE_BATTLE_ROOM ; 5

; wPowerPlantSceneID
	const_def
	const SCENE_POWERPLANT_NOTHING               ; 0
	const SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL ; 1

; wCeruleanGymSceneID
	const_def
	const SCENE_CERULEANGYM_NOTHING        ; 0
	const SCENE_CERULEANGYM_GRUNT_RUNS_OUT ; 1

; wRoute25SceneID
	const_def
	const SCENE_ROUTE25_NOTHING     ; 0
	const SCENE_ROUTE25_MISTYS_DATE ; 1

; wLancesRoomSceneID
	const_def 1
	const SCENE_LANCESROOM_APPROACH_LANCE ; 1

; wElmsLabSceneID
	const_def 1
	const SCENE_ELMSLAB_CANT_LEAVE            ; 1
	const SCENE_ELMSLAB_NOTHING               ; 2
	const SCENE_ELMSLAB_MEET_OFFICER          ; 3
	const SCENE_ELMSLAB_UNUSED                ; 4
	const SCENE_ELMSLAB_AIDE_GIVES_POTION     ; 5
	const SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS ; 6

; wRoute29SceneID
	const_def
	const SCENE_ROUTE29_NOTHING        ; 0
	const SCENE_ROUTE29_CATCH_TUTORIAL ; 1

; wCherrygroveCitySceneID
	const_def
	const SCENE_CHERRYGROVECITY_NOTHING    ; 0
	const SCENE_CHERRYGROVECITY_MEET_RIVAL ; 1

; wRoute32SceneID
	const_def 1
	const SCENE_ROUTE32_OFFER_SLOWPOKETAIL ; 1
	const SCENE_ROUTE32_NOTHING            ; 2

; wRoute35NationalParkGateSceneID
	const_def
	const SCENE_ROUTE35NATIONALPARKGATE_NOTHING             ; 0
	const SCENE_ROUTE35NATIONALPARKGATE_UNUSED              ; 1
	const SCENE_ROUTE35NATIONALPARKGATE_LEAVE_CONTEST_EARLY ; 2

; wRoute36SceneID
	const_def
	const SCENE_ROUTE36_NOTHING ; 0
	const SCENE_ROUTE36_SUICUNE ; 1

; wRoute36NationalParkGateSceneID
	const_def
	const SCENE_ROUTE36NATIONALPARKGATE_NOTHING             ; 0
	const SCENE_ROUTE36NATIONALPARKGATE_UNUSED              ; 1
	const SCENE_ROUTE36NATIONALPARKGATE_LEAVE_CONTEST_EARLY ; 2

; wAzaleaTownSceneID
	const_def
	const SCENE_AZALEATOWN_NOTHING              ; 0
	const SCENE_AZALEATOWN_RIVAL_BATTLE         ; 1
	const SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL ; 2

; wGoldenrodGymSceneID
	const_def
	const SCENE_GOLDENRODGYM_NOTHING              ; 0
	const SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING ; 1

; wRoute42SceneID
	const_def
	const SCENE_ROUTE42_NOTHING ; 0
	const SCENE_ROUTE42_SUICUNE ; 1

; wCianwoodCitySceneID
	const_def
	const SCENE_CIANWOODCITY_NOTHING            ; 0
	const SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE ; 1

; wBurnedTower1FSceneID
	const_def 1
	const SCENE_BURNEDTOWER1F_RIVAL_BATTLE ; 1
	const SCENE_BURNEDTOWER1F_NOTHING      ; 2

; wRadioTower5FSceneID
	const_def 1
	const SCENE_RADIOTOWER5F_ROCKET_BOSS ; 1
	const SCENE_RADIOTOWER5F_NOTHING     ; 2

; wRuinsOfAlphOutsideSceneID
	const_def
	const SCENE_RUINSOFALPHOUTSIDE_NOTHING       ; 0
	const SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX ; 1

; wRuinsOfAlphResearchCenterSceneID
	const_def
	const SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING       ; 0
	const SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX ; 1

; wRuinsOfAlphInnerChamberSceneID
	const_def
	const SCENE_RUINSOFALPHINNERCHAMBER_NOTHING          ; 0
	const SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE ; 1

; wMahoganyMart1FSceneID
	const_def
	const SCENE_MAHOGANYMART1F_NOTHING               ; 0
	const SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS ; 1

; wTeamRocketBaseB2FSceneID
	const_def 1
	const SCENE_TEAMROCKETBASEB2F_ROCKET_BOSS ; 1
	const SCENE_TEAMROCKETBASEB2F_ELECTRODES  ; 2
	const SCENE_TEAMROCKETBASEB2F_NOTHING     ; 3

; wTeamRocketBaseB3FSceneID
	const_def 1
	const SCENE_TEAMROCKETBASEB3F_RIVAL_ENCOUNTER ; 1
	const SCENE_TEAMROCKETBASEB3F_ROCKET_BOSS     ; 2
	const SCENE_TEAMROCKETBASEB3F_NOTHING         ; 3

; wDragonsDenB1FSceneID
	const_def
	const SCENE_DRAGONSDENB1F_NOTHING        ; 0
	const SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM ; 1

; wOlivinePortSceneID
	const_def 1
	const SCENE_OLIVINEPORT_LEAVE_SHIP ; 1

; wVermilionPortSceneID
	const_def 1
	const SCENE_VERMILIONPORT_LEAVE_SHIP ; 1

; wFastShip1FSceneID
	const_def 1
	const SCENE_FASTSHIP1F_ENTER_SHIP   ; 1
	const SCENE_FASTSHIP1F_MEET_GRANDPA ; 2

; wMarlonsHouseSceneID
	const_def 1
	const SCENE_MARLONS_HOUSE_CANT_LEAVE      ; 1
	const SCENE_MARLONS_HOUSE_NOTHING         ; 2
	
; wUndellaTownSceneID
	const_def 1
	const SCENE_UNDELLA_TOWN_CANT_LEAVE ;1
	const SCENE_UNDELLA_TOWN_NOTHING ;2
	
; wStrangeHouse1FSceneID
	const_def 1
	const SCENE_STRANGE_HOUSE_1
	const SCENE_STRANGE_HOUSE_2
	const SCENE_STRANGE_HOUSE_3
	const SCENE_STRANGE_HOUSE_4
	const SCENE_STRANGE_HOUSE_5
	const SCENE_STRANGE_HOUSE_NOTHING
	const SCENE_STRANGE_HOUSE_FINISHED
	
; wLostlornForestSceneID
	const_def
	const SCENE_LOSTLORN_GRUNTS
	const SCENE_LOSTLORN_INFER
	const SCENE_LOSTLORN_NOTHING
	
; wR23EastSceneID
	const_def
	const SCENE_R23_SHOWED_NONE
	const SCENE_R23_SHOWED_SPOOKY
	const SCENE_R23_SHOWED_INSECT
	const SCENE_R23_SHOWED_TOXIC
	const SCENE_R23_SHOWED_BASIC
	const SCENE_R23_SHOWED_GARNISH
	const SCENE_R23_SHOWED_JET
	
; wCasteliaCityStreetsSceneID
	const_def 1
	const SCENE_CASTELIA_CHEREN ;1
	const SCENE_CASTELIA_NOTHING ;2
	
; wNimbasaParkCoasterRoomSceneID
	const_def
	const SCENE_NIMBASA_PARK_COASTER_1 ;0
	const SCENE_NIMBASA_PARK_COASTER_2 ;1
	
; wNimbasaParkOutsideSceneID
	const_def 1
	const SCENE_NIMBASA_PARK_OUTSIDE_CHEREN ;1
	const SCENE_NIMBASA_PARK_OUTSIDE_AFTER ;2
	const SCENE_NIMBASA_PARK_OUTSIDE_NOTHING ;3
	
; wNimbasaParkBasementSceneID
	const_def
	const SCENE_NIMBASA_PARK_BASEMENT_INFER ;0
	const SCENE_NIMBASA_PARK_BASEMENT_PLASMA ;1
	const SCENE_NIMBASA_PARK_BASEMENT_NOTHING ;2
	
; wVirbank/CasteliaPortSceneID
	const_def
	const SCENE_PORT_NOTHING ;0
	const SCENE_PORT_ARRIVED ;1
	
; wP2LabEntranceSceneID
	const_def
	const SCENE_P2_LAB_ENTRANCE_DEFAULT ;0
	const SCENE_P2_LAB_ENTRANCE_AFTER ;1
	const SCENE_P2_LAB_ENTRANCE_NOTHING ;2
	
; wPWTBackRoomSceneID
	const_def
	const SCENE_PWT_BACK_ROOM_ARRIVE ;0
	const SCENE_PWT_BACK_ROOM_WIN_1 ;1
	const SCENE_PWT_BACK_ROOM_WIN_2 ;2
	const SCENE_PWT_BACK_ROOM_WIN_3 ;3
	const SCENE_PWT_BACK_ROOM_NOTHING ;4
	
; wMistraltonCitySceneID
	const_def 2
	const SCENE_MISTRALTON_GIVE_PASS ;2
	
; wPkmnLeagueMain/E4RoomSceneID
	const_def
	const SCENE_ELITE_FOUR_ROOM_ENTER ;0
	const SCENE_ELITE_FOUR_ROOM_NOTHING ;1
	const SCENE_ELITE_FOUR_ROOM_FINISHED ;2
	
; wChampionsRoomSceneID
	const_def
	const SCENE_START_GENESIS_BATTLE ;0
	const SCENE_START_JUNIPER_BATTLE ;1
	const SCENE_START_CHAMPION_BATTLE ;2
	const SCENE_POST_CREDITS ;3
	