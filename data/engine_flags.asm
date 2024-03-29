engine_flag: MACRO
; location, bit
; (all locations are in WRAM bank 1)
	dwb \1 + (\2 / 8), 1 << (\2 % 8)
ENDM

EngineFlags:
; entries correspond to ENGINE_* constants

	; pokegear
	engine_flag wPokegearFlags, POKEGEAR_RADIO_CARD_F ; $0
	engine_flag wPokegearFlags, POKEGEAR_MAP_CARD_F
	engine_flag wPokegearFlags, POKEGEAR_PHONE_CARD_F
	engine_flag wPokegearFlags, POKEGEAR_EXPN_CARD_F
	engine_flag wPokegearFlags, POKEGEAR_OBTAINED_F

	; day-care
	engine_flag wDayCareMan, DAYCAREMAN_HAS_EGG_F
	engine_flag wDayCareMan, DAYCAREMAN_HAS_MON_F
	engine_flag wDayCareLady, DAYCARELADY_HAS_MON_F

	engine_flag wMomSavingMoney, MOM_SAVING_SOME_MONEY_F ; $8
	engine_flag wMomSavingMoney, MOM_ACTIVE_F

	engine_flag wUnusedTwoDayTimerOn, 0 ; unused, possibly related to a 2-day timer

	engine_flag wStatusFlags, STATUSFLAGS_POKEDEX_F
	engine_flag wStatusFlags, STATUSFLAGS_UNOWN_DEX_F
	engine_flag wStatusFlags, STATUSFLAGS_CAUGHT_POKERUS_F
	engine_flag wStatusFlags, STATUSFLAGS_ROCKET_SIGNAL_F
	engine_flag wStatusFlags, STATUSFLAGS_HALL_OF_FAME_F
	engine_flag wStatusFlags, STATUSFLAGS_MAIN_MENU_MOBILE_CHOICES_F

	engine_flag wStatusFlags2, STATUSFLAGS2_BUG_CONTEST_TIMER_F
	engine_flag wStatusFlags2, STATUSFLAGS2_SAFARI_GAME_F
	engine_flag wStatusFlags2, STATUSFLAGS2_ROCKETS_IN_RADIO_TOWER_F
	engine_flag wStatusFlags2, STATUSFLAGS2_BIKE_SHOP_CALL_F
	engine_flag wStatusFlags2, STATUSFLAGS2_UNUSED_5_F
	engine_flag wStatusFlags2, STATUSFLAGS2_REACHED_GOLDENROD_F
	engine_flag wStatusFlags2, STATUSFLAGS2_ROCKETS_IN_MAHOGANY_F

	engine_flag wBikeFlags, BIKEFLAGS_STRENGTH_ACTIVE_F ; $18
	engine_flag wBikeFlags, BIKEFLAGS_ALWAYS_ON_BIKE_F
	engine_flag wBikeFlags, BIKEFLAGS_DOWNHILL_F

	engine_flag wJohtoBadges, WAVEBADGE
	engine_flag wJohtoBadges, SPOOKYBADGE
	engine_flag wJohtoBadges, INSECTBADGE
	engine_flag wJohtoBadges, TOXICBADGE
	engine_flag wJohtoBadges, GARNISHBADGE
	engine_flag wJohtoBadges, BASICBADGE ; $20
	engine_flag wJohtoBadges, JETBADGE
	engine_flag wJohtoBadges, LEGENDBADGE

	engine_flag wKantoBadges, BOULDERBADGE
	engine_flag wKantoBadges, CASCADEBADGE
	engine_flag wKantoBadges, THUNDERBADGE
	engine_flag wKantoBadges, RAINBOWBADGE
	engine_flag wKantoBadges, SOULBADGE
	engine_flag wKantoBadges, MARSHBADGE ; $28
	engine_flag wKantoBadges, VOLCANOBADGE
	engine_flag wKantoBadges, EARTHBADGE

	; unown sets (see data/wild/unlocked_unowns.asm)
	engine_flag wUnlockedUnowns, 0 ; A-K
	engine_flag wUnlockedUnowns, 1 ; L-R
	engine_flag wUnlockedUnowns, 2 ; S-W
	engine_flag wUnlockedUnowns, 3 ; X-Z
	engine_flag wUnlockedUnowns, 4 ; unused
	engine_flag wUnlockedUnowns, 5 ; unused ; $30
	engine_flag wUnlockedUnowns, 6 ; unused
	engine_flag wUnlockedUnowns, 7 ; unused

	; fly
	engine_flag wVisitedSpawns, SPAWN_HOME
	engine_flag wVisitedSpawns, SPAWN_DEBUG
	engine_flag wVisitedSpawns, SPAWN_HUMILAU
	engine_flag wVisitedSpawns, SPAWN_LACUNOSA
	engine_flag wVisitedSpawns, SPAWN_UNDELLA
	engine_flag wVisitedSpawns, SPAWN_LENTIMAS
	engine_flag wVisitedSpawns, SPAWN_NIMBASA
	engine_flag wVisitedSpawns, SPAWN_CASTELIA
	engine_flag wVisitedSpawns, SPAWN_ASPERTIA
	engine_flag wVisitedSpawns, SPAWN_FLOCCESY
	engine_flag wVisitedSpawns, SPAWN_VIRBANK
	engine_flag wVisitedSpawns, SPAWN_NACRENE
	engine_flag wVisitedSpawns, SPAWN_STRIATON
	engine_flag wVisitedSpawns, SPAWN_ACCUMULA
	engine_flag wVisitedSpawns, SPAWN_NUVEMA
	engine_flag wVisitedSpawns, SPAWN_DRIFTVEIL
	engine_flag wVisitedSpawns, SPAWN_MISTRALTON
	engine_flag wVisitedSpawns, SPAWN_OPELUCID
	engine_flag wVisitedSpawns, SPAWN_ICIRRUS
	engine_flag wVisitedSpawns, SPAWN_VICTORY_ROAD
	engine_flag wVisitedSpawns, SPAWN_PKMN_LEAGUE
	engine_flag wVisitedSpawns, NUM_SPAWNS ; unused

	engine_flag wLuckyNumberShowFlag, LUCKYNUMBERSHOW_GAME_OVER_F

	engine_flag wStatusFlags2, STATUSFLAGS2_UNUSED_3_F

	engine_flag wDailyFlags1, DAILYFLAGS1_KURT_MAKING_BALLS_F ; $50
	engine_flag wDailyFlags1, DAILYFLAGS1_BUG_CONTEST_F
	engine_flag wDailyFlags1, DAILYFLAGS1_FISH_SWARM_F
	engine_flag wDailyFlags1, DAILYFLAGS1_GOT_MILK_TODAY_F
	engine_flag wDailyFlags1, DAILYFLAGS1_ALL_FRUIT_TREES_F
	engine_flag wDailyFlags1, DAILYFLAGS1_GOT_CASTELIACONE_TODAY_F
	engine_flag wDailyFlags1, DAILYFLAGS1_BALL_MANIAC_F
	engine_flag wDailyFlags1, DAILYFLAGS1_ROCK_COLLECTOR_F

	engine_flag wDailyFlags2, DAILYFLAGS2_BATTLE_HOUSE_F ; $58
	engine_flag wDailyFlags2, DAILYFLAGS2_UNION_CAVE_LAPRAS_F
	engine_flag wDailyFlags2, DAILYFLAGS2_CASTELIA_MASSAGE_F
	engine_flag wDailyFlags2, DAILYFLAGS2_GOLDENROD_DEPT_STORE_TM27_RETURN_F
	engine_flag wDailyFlags2, DAILYFLAGS2_BERRY_MAN_F
	engine_flag wDailyFlags2, DAILYFLAGS2_INDIGO_PLATEAU_RIVAL_FIGHT_F
	engine_flag wDailyFlags2, DAILYFLAGS2_MOVE_TUTOR_F
	engine_flag wDailyFlags2, DAILYFLAGS2_BUENAS_PASSWORD_F

	engine_flag wSwarmFlags, SWARMFLAGS_BUENAS_PASSWORD_F ; $60
	engine_flag wSwarmFlags, SWARMFLAGS_GOLDENROD_DEPT_STORE_SALE_F

	engine_flag wGameTimerPause, GAMETIMERPAUSE_MOBILE_7_F

	engine_flag wPlayerGender, PLAYERGENDER_FEMALE_F

	engine_flag wCelebiEvent, CELEBIEVENT_FOREST_IS_RESTLESS_F

	; rematches
	engine_flag wDailyRematchFlags,  0 ; dan
	engine_flag wDailyRematchFlags,  1 ; jewel
	engine_flag wDailyRematchFlags,  2 ; freddy
	engine_flag wDailyRematchFlags,  3 ; eric
	engine_flag wDailyRematchFlags,  4 ; lacey
	engine_flag wDailyRematchFlags,  5 ; sophie
	engine_flag wDailyRematchFlags,  6 ; ariana
	engine_flag wDailyRematchFlags,  7 ; carla
	engine_flag wDailyRematchFlags,  8 ; clarissa
	engine_flag wDailyRematchFlags,  9 ; jenny
	engine_flag wDailyRematchFlags, 10 ; marco
	engine_flag wDailyRematchFlags, 11 ; parker
	engine_flag wDailyRematchFlags, 12 ; dean
	engine_flag wDailyRematchFlags, 13 ; lois
	
	engine_flag wDailyRematchFlags, 14 ; rood
	engine_flag wDailyRematchFlags, 15 ; hugh
	engine_flag wDailyRematchFlags, 16 ; alder
	engine_flag wDailyRematchFlags, 17 ; iris
	engine_flag wDailyRematchFlags, 18 ; cynthia
	engine_flag wDailyRematchFlags, 19 ; caitlin
	engine_flag wDailyRematchFlags, 20 ; nate/rosa
	engine_flag wDailyRematchFlags, 21 ; hilbert/hilda
	
	engine_flag wDailyRematchFlags, 22 ; parry
	engine_flag wDailyRematchFlags, 23 ; erin

	engine_flag wDailyPhoneItemFlags, 0 ; beverly has nugget
	engine_flag wDailyPhoneItemFlags, 1 ; jose has star piece
	engine_flag wDailyPhoneItemFlags, 2 ; wade has item (see EVENT_WADE_HAS_*** in constants/event_flags.asm)
	engine_flag wDailyPhoneItemFlags, 3 ; gina has leaf stone ; $80
	engine_flag wDailyPhoneItemFlags, 4 ; alan has fire stone
	engine_flag wDailyPhoneItemFlags, 5 ; liz has thunderstone
	engine_flag wDailyPhoneItemFlags, 6 ; derek has nugget
	engine_flag wDailyPhoneItemFlags, 7 ; tully has water stone
	engine_flag wDailyPhoneItemFlags, 8 ; tiffany has pink bow
	engine_flag wDailyPhoneItemFlags, 9 ; wilton has item (see EVENT_WILTON_HAS_*** in constants/event_flags.asm)

	engine_flag wDailyPhoneTimeOfDayFlags,  0 ; jack
	engine_flag wDailyPhoneTimeOfDayFlags,  1 ; huey ; $88
	engine_flag wDailyPhoneTimeOfDayFlags,  2 ; gaven
	engine_flag wDailyPhoneTimeOfDayFlags,  3 ; beth
	engine_flag wDailyPhoneTimeOfDayFlags,  4 ; jose
	engine_flag wDailyPhoneTimeOfDayFlags,  5 ; reena
	engine_flag wDailyPhoneTimeOfDayFlags,  6 ; joey
	engine_flag wDailyPhoneTimeOfDayFlags,  7 ; wade
	engine_flag wDailyPhoneTimeOfDayFlags,  8 ; ralph
	engine_flag wDailyPhoneTimeOfDayFlags,  9 ; liz ; $90
	engine_flag wDailyPhoneTimeOfDayFlags, 10 ; anthony
	engine_flag wDailyPhoneTimeOfDayFlags, 11 ; todd
	engine_flag wDailyPhoneTimeOfDayFlags, 12 ; gina
	engine_flag wDailyPhoneTimeOfDayFlags, 13 ; arnie
	engine_flag wDailyPhoneTimeOfDayFlags, 14 ; alan
	engine_flag wDailyPhoneTimeOfDayFlags, 15 ; dana
	engine_flag wDailyPhoneTimeOfDayFlags, 16 ; chad
	engine_flag wDailyPhoneTimeOfDayFlags, 17 ; tully ; $98
	engine_flag wDailyPhoneTimeOfDayFlags, 18 ; brent
	engine_flag wDailyPhoneTimeOfDayFlags, 19 ; tiffany
	engine_flag wDailyPhoneTimeOfDayFlags, 20 ; vance
	engine_flag wDailyPhoneTimeOfDayFlags, 21 ; wilton
	engine_flag wDailyPhoneTimeOfDayFlags, 22 ; parry
	engine_flag wDailyPhoneTimeOfDayFlags, 23 ; erin

	engine_flag wPlayerSpriteSetupFlags, PLAYERSPRITESETUP_FEMALE_TO_MALE_F

	engine_flag wSwarmFlags, SWARMFLAGS_DUNSPARCE_SWARM_F ; $a0
	engine_flag wSwarmFlags, SWARMFLAGS_YANMA_SWARM_F
