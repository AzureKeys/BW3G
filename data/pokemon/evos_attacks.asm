INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_HAPPINESS_BABY, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evolution_moves.asm"
INCLUDE "data/pokemon/evos_attacks_pointers.asm"

EvoTypeSizes::
	db 2 ; EVOLVE_LEVEL
	db 2 ; EVOLVE_ITEM
	db 3 ; EVOLVE_ITEM_GENDER
	db 2 ; EVOLVE_TRADE
	db 2 ; EVOLVE_HAPPINESS
	db 2 ; EVOLVE_HAPPINESS_BABY
	db 3 ; EVOLVE_STAT
	db 3 ; EVOLVE_HOLD

SnivyEvosAttacks:
	db EVOLVE_LEVEL, 17, SERVINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, VINE_WHIP
	db 10, WRAP
	db 13, GROWTH
	db 16, RAZOR_LEAF ; Leaf Tornado
	db 19, LEECH_SEED
	db 22, MEGA_DRAIN
	db 25, BODY_SLAM ; Slam
	db 28, LEAF_BLADE
	db 31, GLARE ; Coil
	db 34, GIGA_DRAIN
	db 37, DRAGONBREATH ; Wring Out
	; Skipped Gastro Acid
	db 40, SOLARBEAM ; Leaf Storm
	db 0 ; no more level-up moves

ServineEvosAttacks:
	db EVOLVE_LEVEL, 36, SERPERIOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, VINE_WHIP
	db 10, WRAP
	db 13, GROWTH
	db 16, RAZOR_LEAF ; Leaf Tornado
	db 20, LEECH_SEED
	db 24, MEGA_DRAIN
	db 28, BODY_SLAM ; Slam
	db 32, LEAF_BLADE
	db 36, GLARE ; Coil
	db 40, GIGA_DRAIN
	db 44, DRAGONBREATH ; Wring Out
	; Skipped Gastro Acid
	db 48, SOLARBEAM ; Leaf Storm
	db 0 ; no more level-up moves

SerperiorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, VINE_WHIP
	db 10, WRAP
	db 13, GROWTH
	db 16, RAZOR_LEAF ; Leaf Tornado
	db 20, LEECH_SEED
	db 24, MEGA_DRAIN
	db 28, BODY_SLAM ; Slam
	db 32, LEAF_BLADE
	db 36, GLARE ; Coil
	db 44, GIGA_DRAIN
	db 50, DRAGONBREATH ; Wring Out
	; Skipped Gastro Acid
	db 56, SOLARBEAM ; Leaf Storm
	db 0 ; no more level-up moves

TepigEvosAttacks:
	db EVOLVE_LEVEL, 17, PIGNITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 7, EMBER
	db 13, DEFENSE_CURL
	db 15, FLAME_WHEEL ; Flame Charge
	db 19, POISON_GAS ; Smog
	db 21, ROLLOUT
	db 25, TAKE_DOWN
	db 27, FIRE_FANG ; Heat Crash
	db 31, FAINT_ATTACK ; Assurance
	db 33, FLAMETHROWER
	; Skipped Head Smash
	db 37, ROAR
	db 39, FLARE_BLITZ
	db 0 ; no more level-up moves

PigniteEvosAttacks:
	db EVOLVE_LEVEL, 36, EMBOAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 7, EMBER
	db 13, DEFENSE_CURL
	db 15, FLAME_WHEEL ; Flame Charge
	db 16, LOW_KICK ; Arm Thrust
	db 20, POISON_GAS ; Smog
	db 23, ROLLOUT
	db 28, TAKE_DOWN
	db 31, FIRE_PUNCH ; Heat Crash
	db 36, FAINT_ATTACK ; Assurance
	db 39, FLAMETHROWER
	; Skipped Head Smash
	db 44, ROAR
	db 47, FLARE_BLITZ
	db 0 ; no more level-up moves

EmboarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 7, EMBER
	db 13, DEFENSE_CURL
	db 15, FLAME_WHEEL ; Flame Charge
	db 16, LOW_KICK ; Arm Thrust
	db 20, POISON_GAS ; Smog
	db 23, ROLLOUT
	db 28, TAKE_DOWN
	db 31, FIRE_PUNCH ; Heat Crash
	db 35, HAMMER_ARM
	db 36, FAINT_ATTACK ; Assurance
	db 43, FLAMETHROWER
	; Skipped Head Smash
	db 50, ROAR
	db 55, FLARE_BLITZ
	db 0 ; no more level-up moves

OshawottEvosAttacks:
	db EVOLVE_LEVEL, 17, DEWOTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 13, FOCUS_ENERGY
	db 16, BUBBLEBEAM ; Razor Shell
	db 19, FURY_CUTTER
	db 23, WATER_PULSE
	db 25, KARATE_CHOP ; Revenge
	db 29, AQUA_JET
	db 31, ENCORE
	db 35, AQUA_TAIL
	; Removed Retaliate
	db 37, SWORDS_DANCE
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

DewottEvosAttacks:
	db EVOLVE_LEVEL, 36, SAMUROTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 13, FOCUS_ENERGY
	db 16, BUBBLEBEAM ; Razor Shell
	db 21, FURY_CUTTER
	db 26, WATER_PULSE
	db 29, KARATE_CHOP ; Revenge
	db 34, AQUA_JET
	db 37, ENCORE
	db 42, AQUA_TAIL
	; Removed Retaliate
	db 45, SWORDS_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

SamurottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 13, FOCUS_ENERGY
	db 16, BUBBLEBEAM ; Razor Shell
	db 21, FURY_CUTTER
	db 26, WATER_PULSE
	db 29, KARATE_CHOP ; Revenge
	db 34, AQUA_JET
	db 35, SLASH
	db 39, ENCORE
	db 46, AQUA_TAIL
	; Removed Retaliate
	db 51, SWORDS_DANCE
	db 58, HYDRO_PUMP
	db 63, MEGAHORN ; Added at Hydro Pump's original level
	db 0 ; no more level-up moves

PatratEvosAttacks:
	db EVOLVE_LEVEL, 20, WATCHOG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 6, BITE
	db 11, PROTECT ; Detect
	db 13, SAND_ATTACK
	db 16, CRUNCH
	db 18, HYPNOSIS
	db 21, SUPER_FANG
	db 23, DISABLE ; After You
	db 26, FOCUS_ENERGY
	db 28, PSYCH_UP ; Work Up
	db 31, BODY_SLAM ; Hyper Fang
	db 33, NASTY_PLOT
	db 36, MEAN_LOOK
	db 38, BELLY_DRUM ; Baton Pass
	db 41, DOUBLE_EDGE ; Slam
	db 0 ; no more level-up moves

WatchogEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 6, BITE
	db 11, PROTECT ; Detect
	db 13, SAND_ATTACK
	db 16, CRUNCH
	db 18, HYPNOSIS
	db 19, CONFUSE_RAY
	db 22, SUPER_FANG
	db 25, DISABLE ; After You
	db 29, FOCUS_ENERGY
	db 32, PSYCH_UP ; Work Up
	db 36, BODY_SLAM ; Hyper Fang
	db 39, NASTY_PLOT
	db 43, MEAN_LOOK
	db 46, BELLY_DRUM ; Baton Pass
	db 50, DOUBLE_EDGE ; Slam
	db 0 ; no more level-up moves

PurrloinEvosAttacks:
	db EVOLVE_LEVEL, 20, LIEPARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, GROWL
	db 6, TAIL_WHIP ; Assist
	db 10, SAND_ATTACK
	db 12, FURY_SWIPES
	db 15, PURSUIT
	db 19, SWAGGER ; Torment
	db 21, THIEF ; Fake Out
	db 24, HONE_CLAWS
	db 28, FAINT_ATTACK ; Assurance
	db 30, SLASH
	db 33, CHARM ; Captivate
	db 37, NIGHT_SLASH
	db 39, DARK_PULSE ; Snatch
	db 42, NASTY_PLOT
	db 46, SUCKER_PUNCH
	db 49, PLAY_ROUGH
	db 0 ; no more level-up moves

LiepardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, GROWL
	db 6, TAIL_WHIP ; Assist
	db 10, SAND_ATTACK
	db 12, FURY_SWIPES
	db 15, PURSUIT
	db 19, SWAGGER ; Torment
	db 22, THIEF ; Fake Out
	db 26, HONE_CLAWS
	db 31, FAINT_ATTACK ; Assurance
	db 34, SLASH
	db 38, CHARM ; Captivate
	db 43, NIGHT_SLASH
	db 47, DARK_PULSE ; Snatch
	db 50, NASTY_PLOT
	db 55, SUCKER_PUNCH
	db 58, PLAY_ROUGH
	db 0 ; no more level-up moves

PidoveEvosAttacks:
	db EVOLVE_LEVEL, 21, TRANQUILL
	db 0 ; no more evolutions
	db 1, GUST
	db 4, GROWL
	db 8, LEER
	db 11, QUICK_ATTACK
	db 15, AIR_CUTTER
	db 18, REST ; Roost
	db 22, PROTECT ; Detect
	db 25, THIEF ; Taunt
	db 29, AIR_SLASH
	db 32, DRILL_PECK ; Razor Wind
	db 36, CHARM ; FeatherDance
	db 39, SWAGGER
	db 43, HYPER_VOICE ; Facade
	; Skipped Tailwind
	db 46, BRAVE_BIRD ; Sky Attack
	db 0 ; no more level-up moves

TranquillEvosAttacks:
	db EVOLVE_LEVEL, 32, UNFEZANT
	db 0 ; no more evolutions
	db 1, GUST
	db 4, GROWL
	db 8, LEER
	db 11, QUICK_ATTACK
	db 15, AIR_CUTTER
	db 18, REST ; Roost
	db 23, PROTECT ; Detect
	db 27, THIEF ; Taunt
	db 32, AIR_SLASH
	db 36, DRILL_PECK ; Razor Wind
	db 41, CHARM ; FeatherDance
	db 45, SWAGGER
	db 50, HYPER_VOICE ; Facade
	; Skipped Tailwind
	db 54, BRAVE_BIRD ; Sky Attack
	db 0 ; no more level-up moves

UnfezantEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 4, GROWL
	db 8, LEER
	db 11, QUICK_ATTACK
	db 15, AIR_CUTTER
	db 18, REST ; Roost
	db 23, PROTECT ; Detect
	db 27, THIEF ; Taunt
	db 32, AIR_SLASH
	db 38, DRILL_PECK ; Razor Wind
	db 44, CHARM ; FeatherDance
	db 49, SWAGGER
	db 55, HYPER_VOICE ; Facade
	; Skipped Tailwind
	db 60, BRAVE_BIRD ; Sky Attack
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS_BABY, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound, switched with Sing
	db 1, CHARM
	db 3, DEFENSE_CURL
	db 5, SING ; Switched with Pound
	db 9, SWEET_KISS
	db 11, FAIRY_WIND ; Copycat
	; Added Jigglypuff's moves
	db 14, DISABLE
	db 17, DOUBLESLAP
	db 20, ROLLOUT
	db 22, SWIFT
	db 25, DRAININGKISS
	db 30, REST
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound, switched with Sing
	db 3, DEFENSE_CURL
	db 5, SING ; Switched with Pound
	db 9, GROWL ; Play Nice
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, DISABLE
	db 17, DOUBLESLAP
	db 20, ROLLOUT
	db 22, SWIFT ; Round
	db 25, DRAININGKISS ; Stockpile/Swallow/Spit Up
	db 27, DOUBLE_KICK ; Wake-Up Slap
	db 30, REST
	db 32, BODY_SLAM
	db 35, PLAY_ROUGH ; Gyro Ball
	db 38, METRONOME ; Mimic
	db 41, HYPER_VOICE
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DEFENSE_CURL
	db 1, DISABLE
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	db EVOLVE_HAPPINESS_BABY, TR_ANYTIME, MARILL
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 2, TAIL_WHIP
	db 7, BUBBLE
	db 10, CHARM
	db 13, BUBBLEBEAM
	db 16, ENCORE ; Helping Hand
	db 20, BODY_SLAM ; Slam
	db 23, ACROBATICS ; Bounce
	; Added Marill's moves
	db 28, MOONLIGHT
	db 31, RAIN_DANCE
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 2, TAIL_WHIP
	db 7, BUBBLE
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLEBEAM
	db 16, ENCORE ; Helping Hand
	db 20, AQUA_TAIL
	db 23, PLAY_ROUGH
	db 28, MOONLIGHT ; Aqua Ring
	db 31, RAIN_DANCE
	db 37, DOUBLE_EDGE
	db 40, CLOSE_COMBAT ; Superpower
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 2, TAIL_WHIP
	db 7, BUBBLE
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLEBEAM
	db 16, ENCORE ; Helping Hand
	db 21, AQUA_TAIL
	db 25, PLAY_ROUGH
	db 31, MOONLIGHT ; Aqua Ring
	db 35, RAIN_DANCE
	db 42, DOUBLE_EDGE
	db 46, CLOSE_COMBAT ; Superpower
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

SewaddleEvosAttacks:
	db EVOLVE_LEVEL, 20, SWADLOON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 8, BUG_BITE
	db 15, RAZOR_LEAF
	db 22, STRUGGLE_BUG
	db 29, ENDURE
	db 31, ACID_ARMOR ; Sticky Web
	db 36, BUG_BUZZ
	db 43, FLAIL
	db 0 ; no more level-up moves

SwadloonEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, LEAVANNY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 8, BUG_BITE
	db 15, RAZOR_LEAF
	db 19, PROTECT
	db 0 ; no more level-up moves

LeavannyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 8, BUG_BITE
	db 15, RAZOR_LEAF
	db 22, STRUGGLE_BUG
	db 29, FURY_CUTTER ; Fell Stinger
	db 32, DOUBLE_TEAM ; Helping Hand
	db 36, LEAF_BLADE
	db 39, X_SCISSOR
	db 43, SYNTHESIS ; Entrainment
	db 46, SWORDS_DANCE
	db 50, PETAL_DANCE ; Leaf Storm
	db 0 ; no more level-up moves

VenipedeEvosAttacks:
	db EVOLVE_LEVEL, 22, WHIRLIPEDE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 5, POISON_STING
	db 8, SCREECH
	db 12, PURSUIT
	db 15, PROTECT
	db 19, POISON_FANG ; Poison Tail
	db 22, BUG_BITE
	db 26, VENOSHOCK
	db 29, AGILITY
	db 33, X_SCISSOR ; Steamroller
	db 36, TOXIC
	db 38, CROSS_POISON ; Venom Drench
	db 40, EXTREMESPEED ; Rock Climb
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

WhirlipedeEvosAttacks:
	db EVOLVE_LEVEL, 30, SCOLIPEDE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 5, POISON_STING
	db 8, SCREECH
	db 12, PURSUIT
	db 15, PROTECT
	db 19, POISON_FANG ; Poison Tail
	db 21, IRON_DEFENSE
	db 22, BUG_BITE
	db 28, VENOSHOCK
	db 32, AGILITY
	db 37, X_SCISSOR ; Steamroller
	db 41, TOXIC
	db 43, CROSS_POISON ; Venom Drench
	db 46, EXTREMESPEED ; Rock Climb
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ScolipedeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 5, POISON_STING
	db 8, SCREECH
	db 12, PURSUIT
	db 15, PROTECT
	db 19, POISON_FANG ; Poison Tail
	db 21, IRON_DEFENSE
	db 22, BUG_BITE
	db 28, VENOSHOCK
	db 33, AGILITY
	db 39, X_SCISSOR ; Steamroller
	db 44, TOXIC
	db 47, CROSS_POISON ; Venom Drench
	db 50, EXTREMESPEED ; Rock Climb
	db 55, DOUBLE_EDGE
	db 65, MEGAHORN
	db 0 ; no more level-up moves

LillipupEvosAttacks:
	db EVOLVE_LEVEL, 16, HERDIER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, FORESIGHT ; Odor Sleuth
	db 8, BITE
	db 10, GROWL ; Baby Doll Eyes
	db 12, ENCORE ; Helping Hand
	db 15, TAKE_DOWN
	db 19, HONE_CLAWS ; Work Up
	db 22, CRUNCH
	db 26, ROAR
	db 29, BODY_SLAM ; Retaliate
	db 33, REVERSAL
	; Skipped Last Resort
	db 36, GIGA_IMPACT
	db 40, PLAY_ROUGH
	db 0 ; no more level-up moves

HerdierEvosAttacks:
	db EVOLVE_LEVEL, 32, STOUTLAND
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, FORESIGHT ; Odor Sleuth
	db 8, BITE
	db 10, GROWL ; Baby Doll Eyes
	db 12, ENCORE ; Helping Hand
	db 15, TAKE_DOWN
	db 20, HONE_CLAWS ; Work Up
	db 24, CRUNCH
	db 29, ROAR
	db 33, BODY_SLAM ; Retaliate
	db 38, REVERSAL
	; Skipped Last Resort
	db 42, GIGA_IMPACT
	db 47, PLAY_ROUGH
	db 0 ; no more level-up moves

StoutlandEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, FORESIGHT ; Odor Sleuth
	db 8, BITE
	db 10, GROWL ; Baby Doll Eyes
	db 12, ENCORE ; Helping Hand
	db 15, TAKE_DOWN
	db 20, HONE_CLAWS ; Work Up
	db 24, CRUNCH
	db 29, ROAR
	db 36, BODY_SLAM ; Retaliate
	db 42, REVERSAL
	; Skipped Last Resort
	db 51, GIGA_IMPACT
	db 59, PLAY_ROUGH
	db 0 ; no more level-up moves

TympoleEvosAttacks:
	db EVOLVE_LEVEL, 25, PALPITOAD
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 5, SUPERSONIC
	db 9, SWIFT ; Round
	db 12, BUBBLEBEAM
	db 16, MUD_SHOT
	db 20, RECOVER ; Aqua Ring
	db 23, SONICBOOM ; Uproar
	db 27, SCALD ; Muddy Water
	db 31, RAIN_DANCE
	db 34, FLAIL
	db 38, EARTH_POWER ; Echoed Voice
	db 42, HYDRO_PUMP
	db 45, HYPER_VOICE
	db 0 ; no more level-up moves

PalpitoadEvosAttacks:
	db EVOLVE_LEVEL, 36, SEISMITOAD
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 5, SUPERSONIC
	db 9, SWIFT ; Round
	db 12, BUBBLEBEAM
	db 16, MUD_SHOT
	db 20, RECOVER ; Aqua Ring
	db 23, SONICBOOM ; Uproar
	db 28, SCALD ; Muddy Water
	db 33, RAIN_DANCE
	db 37, FLAIL
	db 42, EARTH_POWER ; Echoed Voice
	db 47, HYDRO_PUMP
	db 51, HYPER_VOICE
	db 0 ; no more level-up moves

SeismitoadEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 5, SUPERSONIC
	db 9, SWIFT ; Round
	db 12, BUBBLEBEAM
	db 16, MUD_SHOT
	db 20, RECOVER ; Aqua Ring
	db 23, SONICBOOM ; Uproar
	db 28, SCALD ; Muddy Water
	db 33, RAIN_DANCE
	db 35, ACID
	db 39, FLAIL
	db 44, DRAIN_PUNCH
	db 49, EARTH_POWER ; Echoed Voice
	db 53, HYDRO_PUMP
	db 59, HYPER_VOICE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE ; Absorb
	db 5, SUPERSONIC
	db 7, POISON_STING ; Astonish
	db 11, BITE
	db 13, WING_ATTACK
	db 17, CONFUSE_RAY
	db 19, AIR_CUTTER
	db 23, SWIFT
	db 25, POISON_FANG
	db 29, MEAN_LOOK
	db 31, GIGA_DRAIN ; Leech Life
	db 35, HAZE
	db 37, VENOSHOCK
	db 41, AIR_SLASH
	db 43, PAIN_SPLIT ; Quick Guard
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE ; Absorb
	db 5, SUPERSONIC
	db 7, POISON_STING ; Astonish
	db 11, BITE
	db 13, WING_ATTACK
	db 17, CONFUSE_RAY
	db 19, AIR_CUTTER
	db 21, SCREECH
	db 24, SWIFT
	db 27, POISON_FANG
	db 32, MEAN_LOOK
	db 35, GIGA_DRAIN ; Leech Life
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, PAIN_SPLIT ; Quick Guard
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE ; Absorb
	db 5, SUPERSONIC
	db 7, POISON_STING ; Astonish
	db 11, BITE
	db 13, WING_ATTACK
	db 17, CONFUSE_RAY
	db 19, AIR_CUTTER
	db 21, SCREECH
	db 24, SWIFT
	db 27, POISON_FANG
	db 32, MEAN_LOOK
	db 35, GIGA_DRAIN ; Leech Life
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, PAIN_SPLIT ; Quick Guard
	db 0 ; no more level-up moves

WoobatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SWOOBAT
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 4, FORESIGHT ; Odor Sleuth
	db 8, GUST
	db 12, PURSUIT ; Assurance
	db 15, PSYBEAM ; Heart Stamp
	db 19, SWEET_KISS ; Imprison
	db 21, AIR_CUTTER
	db 25, ATTRACT
	db 27, AMNESIA
	db 29, CALM_MIND
	db 32, AIR_SLASH
	db 36, PSYSHOCK ; Future Sight
	db 41, PSYCHIC_M
	db 47, PERISH_SONG ; Endeavor
	db 0 ; no more level-up moves

SwoobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 4, FORESIGHT ; Odor Sleuth
	db 8, GUST
	db 12, PURSUIT ; Assurance
	db 15, PSYBEAM ; Heart Stamp
	db 19, SWEET_KISS ; Imprison
	db 21, AIR_CUTTER
	db 25, ATTRACT
	db 27, AMNESIA
	db 29, CALM_MIND
	db 32, AIR_SLASH
	db 36, PSYSHOCK ; Future Sight
	db 41, PSYCHIC_M
	db 47, PERISH_SONG ; Endeavor
	db 0 ; no more level-up moves

RoggenrolaEvosAttacks:
	db EVOLVE_LEVEL, 25, BOLDORE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 7, SAND_ATTACK
	db 10, HEADBUTT
	db 14, ROCK_THROW ; Rock Blast
	db 17, MUD_SLAP
	db 20, IRON_DEFENSE
	db 23, ROCK_TOMB ; Smack Down
	db 27, ROCK_SLIDE
	db 30, SELFDESTRUCT ; Stealth Rock
	db 33, SANDSTORM
	db 36, STONE_EDGE
	db 40, EXPLOSION
	db 0 ; no more level-up moves

BoldoreEvosAttacks:
	db EVOLVE_LEVEL, 40, GIGALITH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 7, SAND_ATTACK
	db 10, HEADBUTT
	db 14, ROCK_THROW ; Rock Blast
	db 17, MUD_SLAP
	db 20, IRON_DEFENSE
	db 23, ROCK_TOMB ; Smack Down
	db 24, POWER_GEM
	db 30, ROCK_SLIDE
	db 36, SELFDESTRUCT ; Stealth Rock
	db 42, SANDSTORM
	db 48, STONE_EDGE
	db 55, EXPLOSION
	db 0 ; no more level-up moves

GigalithEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 7, SAND_ATTACK
	db 10, HEADBUTT
	db 14, ROCK_THROW ; Rock Blast
	db 17, MUD_SLAP
	db 20, IRON_DEFENSE
	db 23, ROCK_TOMB ; Smack Down
	db 24, POWER_GEM
	db 30, ROCK_SLIDE
	db 36, SELFDESTRUCT ; Stealth Rock
	db 44, SANDSTORM
	db 50, STONE_EDGE
	db 59, EXPLOSION
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS_BABY, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 10, SWEET_KISS
	db 13, SAFEGUARD ; Copycat
	db 16, MAGICAL_LEAF
	; Added Clefairy's moves
	db 19, DRAININGKISS
	db 25, MINIMIZE
	db 28, EXTRASENSORY
	db 31, METRONOME
	db 34, CALM_MIND
	db 37, BARRIER
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, GROWL
	db 4, ENCORE
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 16, FORESIGHT ; Follow Me
	db 19, DRAININGKISS ; Bestow
	db 22, LOW_KICK ; Wake-Up Slap
	db 25, MINIMIZE
	db 28, EXTRASENSORY ; Stored Power
	db 31, METRONOME
	db 34, CALM_MIND ; Cosmic Power
	db 37, BARRIER ; Lucky Chant
	db 40, BODY_SLAM
	db 43, MOONLIGHT
	db 46, MOONBLAST
	db 49, AMNESIA ; Gravity
	db 50, METEOR_MASH
	db 55, RECOVER ; Healing Wish
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, MINIMIZE
	db 1, METRONOME
	db 0 ; no more level-up moves

MunnaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MUSHARNA
	db 0 ; no more evolutions
	db 1, CONFUSION ; Psywave
	db 1, DEFENSE_CURL
	db 5, SAFEGUARD ; Lucky Chant
	db 7, REST ; Yawn
	db 11, PSYBEAM
	db 13, REFLECT ; Imprison
	db 17, MOONLIGHT
	db 19, HYPNOSIS
	db 23, ZEN_HEADBUTT
	db 25, EXTRASENSORY ; Synchronoise
	db 29, CURSE ; Nightmare
	db 31, MIRROR_COAT ; Future Sight
	db 35, CALM_MIND
	db 37, PSYCHIC_M
	db 41, DREAM_EATER
	db 0 ; no more level-up moves

MusharnaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, SAFEGUARD
	db 1, PSYBEAM
	db 1, HYPNOSIS
	db 13, REFLECT
	db 0 ; no more level-up moves

RuffletEvosAttacks:
	db EVOLVE_LEVEL, 54, BRAVIARY
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 5, FURY_ATTACK
	db 10, WING_ATTACK
	db 14, HONE_CLAWS
	db 19, SCARY_FACE
	db 23, SLASH ; Aerial Ace
	db 28, DRILL_PECK ; Slash
	db 32, DOUBLE_TEAM ; Defog
	db 37, AGILITY ; Tailwind
	db 41, AIR_SLASH
	db 46, BODY_SLAM ; Crush Claw
	db 50, ACROBATICS ; Sky Drop
	db 55, WHIRLWIND
	db 59, BRAVE_BIRD
	db 0 ; no more level-up moves

BraviaryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 5, FURY_ATTACK
	db 10, WING_ATTACK
	db 14, HONE_CLAWS
	db 19, SCARY_FACE
	db 23, SLASH ; Aerial Ace
	db 28, DRILL_PECK ; Slash
	db 32, DOUBLE_TEAM ; Defog
	db 37, AGILITY ; Tailwind
	db 41, AIR_SLASH
	db 46, BODY_SLAM ; Crush Claw
	db 50, ACROBATICS ; Sky Drop
	db 53, CLOSE_COMBAT ; Superpower
	db 57, WHIRLWIND
	db 63, BRAVE_BIRD
	db 0 ; no more level-up moves

VullabyEvosAttacks:
	db EVOLVE_LEVEL, 54, MANDIBUZZ
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 5, FURY_ATTACK
	db 10, AIR_CUTTER ; Pluck
	db 14, NASTY_PLOT
	db 19, SWAGGER ; Flatter
	db 23, FAINT_ATTACK
	db 28, NIGHT_SLASH ; Punishment
	db 32, DOUBLE_TEAM ; Defog
	db 37, AGILITY ; Tailwind
	db 41, AIR_SLASH
	db 46, DARK_PULSE
	db 50, THIEF ; Embargo
	db 55, WHIRLWIND
	db 59, BRAVE_BIRD
	db 0 ; no more level-up moves

MandibuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 5, FURY_ATTACK
	db 10, AIR_CUTTER ; Pluck
	db 14, NASTY_PLOT
	db 19, SWAGGER ; Flatter
	db 23, FAINT_ATTACK
	db 28, NIGHT_SLASH ; Punishment
	db 32, DOUBLE_TEAM ; Defog
	db 37, AGILITY ; Tailwind
	db 41, AIR_SLASH
	db 46, DARK_PULSE
	db 50, THIEF ; Embargo
	db 53, HURRICANE ; Bone Rush
	db 57, WHIRLWIND
	db 63, BRAVE_BIRD
	db 0 ; no more level-up moves

BudewEvosAttacks:
	db EVOLVE_HAPPINESS_BABY, TR_MORNDAY, ROSELIA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 7, POISONPOWDER ; Water Sport
	db 10, STUN_SPORE
	db 13, MEGA_DRAIN
	db 16, SLEEP_POWDER ; Worry Seed
	; Added Roselia's moves
	db 19, MAGICAL_LEAF
	db 22, SING
	db 25, GIGA_DRAIN
	db 31, SWEET_SCENT
	db 0 ; no more level-up moves

RoseliaEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, ROSERADE
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 7, POISON_STING
	db 10, STUN_SPORE
	db 13, MEGA_DRAIN
	db 16, LEECH_SEED
	db 19, MAGICAL_LEAF
	db 22, SING ; Grasswhistle
	db 25, GIGA_DRAIN
	db 28, ACID ; Toxic Spikes
	db 31, SWEET_SCENT
	db 34, VENOSHOCK ; Ingrain
	db 37, WOOD_HAMMER ; Petal Blizzard
	db 40, TOXIC
	; Skipped Aromatherapy
	db 43, SYNTHESIS
	db 46, PETAL_DANCE
	db 0 ; no more level-up moves

RoseradeEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT
	db 1, MAGICAL_LEAF
	db 0 ; no more level-up moves

FoongusEvosAttacks:
	db EVOLVE_LEVEL, 39, AMOONGUSS
	db 0 ; no more evolutions
	db 1, ABSORB
	db 6, GROWTH
	db 8, STUN_SPORE ; Astonish
	db 12, POISONPOWDER ; Bide
	db 15, MEGA_DRAIN
	db 18, SLEEP_POWDER ; Ingrain
	db 20, FAINT_ATTACK
	db 24, SWEET_SCENT
	db 28, GIGA_DRAIN
	db 32, TOXIC
	db 35, SYNTHESIS
	db 39, SLUDGE ; Clear Smog
	db 43, SOLARBEAM
	; Skipped Rage Powder
	db 45, SPORE
	db 0 ; no more level-up moves

AmoongussEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 6, GROWTH
	db 8, STUN_SPORE ; Astonish
	db 12, POISONPOWDER ; Bide
	db 15, MEGA_DRAIN
	db 18, SLEEP_POWDER ; Ingrain
	db 20, FAINT_ATTACK
	db 24, SWEET_SCENT
	db 28, GIGA_DRAIN
	db 32, TOXIC
	db 35, SYNTHESIS
	db 39, SLUDGE ; Clear Smog
	db 49, SOLARBEAM
	; Skipped Rage Powder
	db 54, SPORE
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	db EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	db 1, GROWL
	db 4, CONFUSION
	db 6, DOUBLE_TEAM
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, SUPERSONIC ; Lucky Chant
	db 17, MAGICAL_LEAF
	db 19, RECOVER ; Heal Pulse
	db 22, DRAININGKISS
	db 24, CALM_MIND
	db 27, PSYCHIC_M
	db 29, BARRIER ; Imprison
	db 32, MIRROR_COAT ; Future Sight
	db 34, CHARM
	db 37, HYPNOSIS
	db 39, DREAM_EATER
	db 42, MOONBLAST ; Stored Power
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	db EVOLVE_LEVEL, 30, GARDEVOIR
	db EVOLVE_ITEM_GENDER, MON_MALE, DAWN_STONE, GALLADE
	db 0 ; no more evolutions
	db 1, GROWL
	db 4, CONFUSION
	db 6, DOUBLE_TEAM
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, SUPERSONIC ; Lucky Chant
	db 17, MAGICAL_LEAF
	db 19, RECOVER ; Heal Pulse
	db 23, DRAININGKISS
	db 26, CALM_MIND
	db 30, PSYCHIC_M
	db 33, BARRIER ; Imprison
	db 37, MIRROR_COAT ; Future Sight
	db 40, CHARM
	db 44, HYPNOSIS
	db 47, DREAM_EATER
	db 51, MOONBLAST ; Stored Power
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 4, CONFUSION
	db 6, DOUBLE_TEAM
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, SUPERSONIC ; Lucky Chant
	db 17, MAGICAL_LEAF
	db 19, RECOVER ; Heal Pulse
	db 23, DRAININGKISS
	db 26, CALM_MIND
	db 30, PSYCHIC_M
	db 35, BARRIER ; Imprison
	db 40, MIRROR_COAT ; Future Sight
	db 44, CHARM
	db 49, HYPNOSIS
	db 53, DREAM_EATER
	db 58, MOONBLAST ; Stored Power
	db 0 ; no more level-up moves

GalladeEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 4, CONFUSION
	db 6, DOUBLE_TEAM
	db 11, FAIRY_WIND ; Quick Guard
	db 14, SUPERSONIC ; Fury Cutter
	db 17, MAGICAL_LEAF ; Aerial Ace
	db 19, RECOVER ; Heal Pulse
	; Above moves are from Ralts/Kirlia
	db 23, FURY_CUTTER ; Wide Guard
	db 26, SWORDS_DANCE
	db 31, PSYCHO_CUT
	db 35, NIGHT_SLASH ; Helping Hand
	db 40, CROSS_CHOP ; Feint
	db 44, LEAF_BLADE ; False Swipe
	db 49, PROTECT
	db 53, CLOSE_COMBAT
	db 58, PSYSHOCK ; Stored Power
	db 0 ; no more level-up moves

BlitzleEvosAttacks:
	db EVOLVE_LEVEL, 27, ZEBSTRIKA
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, TAIL_WHIP
	db 8, THUNDERSHOCK ; Charge
	db 11, SHOCK_WAVE
	db 15, THUNDER_WAVE
	db 18, FLAME_WHEEL ; Flame Charge
	db 22, PURSUIT
	db 25, SPARK
	db 29, EXTREMESPEED ; Stomp
	db 32, DISCHARGE
	db 36, AGILITY
	db 39, WILD_CHARGE
	db 43, GIGA_IMPACT ; Thrash
	db 0 ; no more level-up moves

ZebstrikaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, TAIL_WHIP
	db 8, THUNDERSHOCK ; Charge
	db 11, SHOCK_WAVE
	db 15, THUNDER_WAVE
	db 18, FLAME_WHEEL ; Flame Charge
	db 22, PURSUIT
	db 25, SPARK
	db 31, EXTREMESPEED ; Stomp
	db 36, DISCHARGE
	db 42, AGILITY
	db 47, WILD_CHARGE
	db 53, GIGA_IMPACT ; Thrash
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, CURSE ; Cotton Spore
	db 15, SPARK ; Charge
	db 18, TAKE_DOWN
	db 22, SHOCK_WAVE ; Electro Ball
	db 25, CONFUSE_RAY
	db 29, POWER_GEM
	db 32, DISCHARGE
	db 36, REFLECT ; Cotton Guard
	db 39, SIGNAL_BEAM
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, CURSE ; Cotton Spore
	db 15, SPARK ; Charge
	db 20, TAKE_DOWN
	db 25, SHOCK_WAVE ; Electro Ball
	db 29, CONFUSE_RAY
	db 34, POWER_GEM
	db 38, DISCHARGE
	db 43, REFLECT ; Cotton Guard
	db 47, SIGNAL_BEAM
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, CURSE ; Cotton Guard
	db 15, SPARK ; Charge
	db 20, TAKE_DOWN
	db 25, SHOCK_WAVE ; Electro Ball
	db 29, CONFUSE_RAY
	db 29, THUNDERPUNCH
	db 35, POWER_GEM
	db 40, DISCHARGE
	db 46, REFLECT ; Cotton Guard
	db 51, SIGNAL_BEAM
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 65, DRAGON_PULSE
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, PURSUIT ; Rapid Spin
	db 8, MUD_SLAP
	db 12, FURY_SWIPES
	db 15, METAL_CLAW
	db 19, DIG
	db 22, HONE_CLAWS
	db 26, SLASH
	db 29, ROCK_SLIDE
	db 33, EARTHQUAKE
	db 36, SWORDS_DANCE
	db 40, SANDSTORM
	db 43, IRON_HEAD ; Drill Run
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, PURSUIT ; Rapid Spin
	db 8, MUD_SLAP
	db 12, FURY_SWIPES
	db 15, METAL_CLAW
	db 19, DIG
	db 22, HONE_CLAWS
	db 26, SLASH
	db 29, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 42, SWORDS_DANCE
	db 49, SANDSTORM
	db 55, IRON_HEAD ; Drill Run
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, DIZZY_PUNCH ; Rage
	db 37, PLAY_ROUGH
	db 43, IRON_TAIL ; Payback
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, DIZZY_PUNCH ; Rage
	db 43, PLAY_ROUGH
	db 51, IRON_TAIL ; Payback
	db 59, CRUNCH
	db 67, OUTRAGE
	db 0 ; no more level-up moves

RioluEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, LUCARIO
	db 0 ; no more evolutions
	db 1, FORESIGHT
	db 1, QUICK_ATTACK
	db 1, ENDURE
	db 6, COUNTER
	db 11, FURY_SWIPES ; Feint
	db 15, LOW_KICK ; Force Palm
	db 19, SWORDS_DANCE ; Copycat
	db 24, SCREECH
	db 29, REVERSAL
	db 47, NASTY_PLOT
	db 50, DESTINY_BOND ; Final Gambit
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	db 1, FORESIGHT
	db 1, QUICK_ATTACK
	db 1, ENDURE
	db 6, COUNTER
	db 11, FURY_SWIPES ; Feint
	db 15, LOW_KICK ; Power-Up Punch
	db 19, SWORDS_DANCE
	db 24, METAL_CLAW ; Metal Sound
	db 29, MACH_PUNCH ; Bone Rush
	db 33, BULK_UP ; Quick Guard
	db 37, BULLET_PUNCH ; Me First
	db 42, IRON_HEAD ; Work Up
	db 47, CALM_MIND
	db 51, RECOVER ; Heal Pulse
	db 55, CLOSE_COMBAT
	db 60, DRAGON_PULSE
	db 65, EXTREMESPEED
	db 0 ; no more level-up moves

TimburrEvosAttacks:
	db EVOLVE_LEVEL, 25, GURDURR
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 12, LOW_KICK
	db 16, ROCK_THROW
	db 20, VITAL_THROW ; Wake-Up Slap
	db 24, DIZZY_PUNCH ; Chip Away
	db 28, BULK_UP
	db 31, ROCK_SLIDE
	db 34, DYNAMICPUNCH
	db 37, SCARY_FACE
	db 40, HAMMER_ARM
	db 43, STONE_EDGE
	; Skipped Focus Punch
	db 46, CLOSE_COMBAT
	db 0 ; no more level-up moves

GurdurrEvosAttacks:
	db EVOLVE_LEVEL, 40, CONKELDURR
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 12, LOW_KICK
	db 16, ROCK_THROW
	db 20, VITAL_THROW ; Wake-Up Slap
	db 24, DIZZY_PUNCH ; Chip Away
	db 29, BULK_UP
	db 33, ROCK_SLIDE
	db 37, DYNAMICPUNCH
	db 41, SCARY_FACE
	db 45, HAMMER_ARM
	db 49, STONE_EDGE
	; Skipped Focus Punch
	db 53, CLOSE_COMBAT
	db 0 ; no more level-up moves

ConkeldurrEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, LEER
	db 4, FOCUS_ENERGY
	db 12, LOW_KICK
	db 16, ROCK_THROW
	db 20, VITAL_THROW ; Wake-Up Slap
	db 24, DIZZY_PUNCH ; Chip Away
	db 29, BULK_UP
	db 33, ROCK_SLIDE
	db 37, DYNAMICPUNCH
	db 43, SCARY_FACE
	db 49, HAMMER_ARM
	db 53, STONE_EDGE
	; Skipped Focus Punch
	db 58, CLOSE_COMBAT
	db 0 ; no more level-up moves

AronEvosAttacks:
	db EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, MUD_SLAP
	db 7, HEADBUTT
	db 10, METAL_CLAW
	db 13, ROCK_TOMB
	db 16, PROTECT
	db 19, ROAR
	db 22, IRON_HEAD
	db 25, ROCK_SLIDE
	db 28, TAKE_DOWN
	db 31, SCREECH ; Metal Sound
	db 34, IRON_TAIL
	db 37, IRON_DEFENSE
	db 40, DOUBLE_EDGE
	db 43, AGILITY ; Autotomize
	db 46, METEOR_MASH ; Heavy Slam
	db 0 ; no more level-up moves

LaironEvosAttacks:
	db EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, MUD_SLAP
	db 7, HEADBUTT
	db 10, METAL_CLAW
	db 13, ROCK_TOMB
	db 16, PROTECT
	db 19, ROAR
	db 22, IRON_HEAD
	db 25, ROCK_SLIDE
	db 28, TAKE_DOWN
	db 31, SCREECH ; Metal Sound
	db 35, IRON_TAIL
	db 39, IRON_DEFENSE
	db 43, DOUBLE_EDGE
	db 47, AGILITY ; Autotomize
	db 51, METEOR_MASH ; Heavy Slam
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, MUD_SLAP
	db 7, HEADBUTT
	db 10, METAL_CLAW
	db 13, ROCK_TOMB
	db 16, PROTECT
	db 19, ROAR
	db 22, IRON_HEAD
	db 25, ROCK_SLIDE
	db 28, TAKE_DOWN
	db 31, SCREECH ; Metal Sound
	db 35, IRON_TAIL
	db 39, IRON_DEFENSE
	db 45, DOUBLE_EDGE
	db 51, AGILITY ; Autotomize
	db 57, METEOR_MASH ; Heavy Slam
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_HOLD, METAL_COAT, TR_ANYTIME, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, WRAP ; Bind
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, ROCK_TOMB
	db 13, IRON_DEFENSE ; Rage
	db 19, AGILITY ; Rock Polish
	db 22, ANCIENTPOWER ; Smack Down
	db 25, DRAGONBREATH
	db 28, BODY_SLAM ; Slam
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, BULLDOZE ; Sand Tomb
	db 40, IRON_TAIL
	db 43, DIG
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, WRAP ; Bind
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, ROCK_TOMB
	db 13, IRON_DEFENSE ; Rage
	db 19, AGILITY ; Rock Polish
	db 22, ANCIENTPOWER ; Smack Down
	db 25, DRAGONBREATH
	db 28, BODY_SLAM ; Slam
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH
	db 40, IRON_TAIL
	db 43, DIG
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
	db 0 ; no more level-up moves

NosepassEvosAttacks:
	db EVOLVE_HOLD, METAL_COAT, TR_ANYTIME, PROBOPASS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 7, MEAN_LOOK ; Block
	db 10, ROCK_THROW
	db 13, THUNDER_WAVE
	db 16, REST
	db 19, SPARK
	db 22, ROCK_SLIDE
	db 25, POWER_GEM
	db 28, BULLDOZE ; Rock Blast
	db 31, DISCHARGE
	db 34, SANDSTORM
	db 37, EARTH_POWER
	db 40, STONE_EDGE
	db 43, LOCK_ON
	db 43, ZAP_CANNON
	db 0 ; no more level-up moves

ProbopassEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, IRON_DEFENSE
	db 7, MEAN_LOOK ; Block
	db 10, ROCK_THROW
	db 13, THUNDER_WAVE
	db 16, REST
	db 19, SPARK
	db 22, ROCK_SLIDE
	db 25, POWER_GEM
	db 28, BULLDOZE ; Rock Blast
	db 31, DISCHARGE
	db 34, SANDSTORM
	db 37, EARTH_POWER
	db 40, STONE_EDGE
	db 43, LOCK_ON
	db 43, ZAP_CANNON
	db 0 ; no more level-up moves

MawileEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, GROWL
	db 9, BITE
	db 13, SWEET_SCENT
	db 17, VICEGRIP
	db 21, FAINT_ATTACK
	db 25, ATTRACT ; Baton Pass
	db 29, CRUNCH
	db 33, IRON_DEFENSE
	db 37, SUCKER_PUNCH
	db 41, BULLET_PUNCH ; Stockpile/Swallow/Spit Up
	db 45, IRON_HEAD
	db 49, PLAY_ROUGH
	db 0 ; no more level-up moves

DwebbleEvosAttacks:
	db EVOLVE_LEVEL, 34, CRUSTLE
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 5, ROCK_THROW ; Rock Blast
	db 7, DEFENSE_CURL ; Withdraw
	db 11, SAND_ATTACK
	db 13, FAINT_ATTACK
	db 17, ROCK_TOMB ; Smack Down
	db 19, CURSE ; Rock Polish
	db 23, BUG_BITE
	db 29, ROCK_SLIDE
	db 31, SLASH
	db 35, X_SCISSOR
	db 37, SWORDS_DANCE ; Shell Smash
	db 41, FLAIL
	db 43, STONE_EDGE ; Rock Wrecker
	db 0 ; no more level-up moves

CrustleEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 5, ROCK_THROW ; Rock Blast
	db 7, DEFENSE_CURL ; Withdraw
	db 11, SAND_ATTACK
	db 13, FAINT_ATTACK
	db 17, ROCK_TOMB ; Smack Down
	db 19, CURSE ; Rock Polish
	db 23, BUG_BITE
	db 29, ROCK_SLIDE
	db 31, SLASH
	db 38, X_SCISSOR
	db 43, SWORDS_DANCE ; Shell Smash
	db 50, FLAIL
	db 55, STONE_EDGE ; Rock Wrecker
	db 0 ; no more level-up moves

DrifloonEvosAttacks:
	db EVOLVE_LEVEL, 28, DRIFBLIM
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict
	db 1, MINIMIZE
	db 4, SHADOW_SNEAK ; Astonish
	db 8, GUST
	db 13, FOCUS_ENERGY
	db 16, THIEF ; Payback
	db 20, NIGHT_SHADE ; Ominous Wind
	db 25, CONFUSE_RAY ; Stockpile
	db 27, HEX
	db 32, RECOVER ; Swallow/Spit Up
	db 36, SHADOW_BALL
	db 40, AMNESIA
	db 44, PAIN_SPLIT ; Baton Pass
	db 50, EXPLOSION
	db 0 ; no more level-up moves

DrifblimEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict
	db 1, MINIMIZE
	db 4, SHADOW_SNEAK ; Astonish
	db 8, GUST
	db 13, FOCUS_ENERGY
	db 16, THIEF ; Payback
	db 20, NIGHT_SHADE ; Ominous Wind
	db 25, CONFUSE_RAY ; Stockpile
	db 27, HEX
	db 34, RECOVER ; Swallow/Spit Up
	db 40, SHADOW_BALL
	db 46, AMNESIA
	db 52, PAIN_SPLIT ; Baton Pass
	db 60, EXPLOSION
	db 65, HURRICANE ; Phantom Force
	db 0 ; no more level-up moves

MedititeEvosAttacks:
	db EVOLVE_LEVEL, 37, MEDICHAM
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL ; Bide
	db 4, DOUBLESLAP ; Meditate
	db 7, CONFUSION
	db 9, PROTECT ; Detect
	db 12, ENDURE
	db 15, MACH_PUNCH ; Feint
	db 17, KARATE_CHOP ; Force Palm
	db 20, HIDDEN_POWER
	db 23, CALM_MIND
	db 25, LOCK_ON ; Mind Reader
	db 28, HI_JUMP_KICK
	db 31, PSYCH_UP
	db 33, SWORDS_DANCE ; Acupressure
	db 36, ZEN_HEADBUTT ; Power Trick
	db 39, AURA_SPHERE ; Reversal
	db 41, RECOVER
	db 44, COUNTER
	db 0 ; no more level-up moves

MedichamEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL ; Bide
	db 4, DOUBLESLAP ; Meditate
	db 7, CONFUSION
	db 9, PROTECT ; Detect
	db 12, ENDURE
	db 15, MACH_PUNCH ; Feint
	db 17, KARATE_CHOP ; Force Palm
	db 20, HIDDEN_POWER
	db 23, CALM_MIND
	db 25, LOCK_ON ; Mind Reader
	db 28, HI_JUMP_KICK
	db 31, PSYCH_UP
	db 33, SWORDS_DANCE ; Acupressure
	db 36, ZEN_HEADBUTT ; Power Trick
	db 42, AURA_SPHERE ; Reversal
	db 47, RECOVER
	db 53, COUNTER
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 4, HONE_CLAWS ; Howl
	db 8, POISON_GAS ; Smog
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth
	db 25, FAINT_ATTACK ; Beat Up
	db 28, FIRE_FANG
	db 32, SUCKER_PUNCH ; Faint Attack
	db 37, CRUNCH ; Embargo
	; Skipped Foul Play
	db 40, FLAMETHROWER
	db 44, DARK_PULSE ; Crunch
	db 49, NASTY_PLOT
	db 52, OVERHEAT ; Inferno
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 4, HONE_CLAWS ; Howl
	db 8, POISON_GAS ; Smog
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth
	db 25, FAINT_ATTACK ; Beat Up
	db 30, FIRE_FANG
	db 35, SUCKER_PUNCH ; Faint Attack
	db 41, CRUNCH ; Embargo
	; Skipped Foul Play
	db 45, FLAMETHROWER
	db 50, DARK_PULSE ; Crunch
	db 56, NASTY_PLOT
	db 60, OVERHEAT ; Inferno
	db 0 ; no more level-up moves

YamaskEvosAttacks:
	db EVOLVE_LEVEL, 34, COFAGRIGUS
	db 0 ; no more evolutions
	db 1, LICK ; Astonish
	db 1, PROTECT
	db 5, DISABLE
	db 9, HAZE
	db 13, NIGHT_SHADE
	db 17, SHADOW_PUNCH ; Hex
	db 21, WILL_O_WISP
	db 25, SHADOW_SNEAK ; Ominous Wind
	db 29, CURSE
	db 33, PAIN_SPLIT ; Power Split/Guard Split
	db 37, SHADOW_BALL
	db 41, CONFUSE_RAY ; Grudge
	db 45, MEAN_LOOK
	db 49, DESTINY_BOND
	db 0 ; no more level-up moves

CofagrigusEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK ; Astonish
	db 1, PROTECT
	db 5, DISABLE
	db 9, HAZE
	db 13, NIGHT_SHADE
	db 17, SHADOW_PUNCH ; Hex
	db 21, WILL_O_WISP
	db 25, SHADOW_SNEAK ; Ominous Wind
	db 29, CURSE
	db 33, PAIN_SPLIT ; Power Split/Guard Split
	db 33, SCARY_FACE
	db 39, SHADOW_BALL
	db 45, CONFUSE_RAY ; Grudge
	db 51, MEAN_LOOK
	db 57, DESTINY_BOND
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 5, SCARY_FACE ; Spite
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 26, THIEF ; Payback
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, DARK_PULSE
	db 40, DESTINY_BOND
	db 43, HEX
	db 47, NASTY_PLOT ; Nightmare
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 40, GENGAR
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 5, SCARY_FACE ; Spite
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 24, SHADOW_PUNCH
	db 26, THIEF ; Payback
	db 32, SHADOW_BALL
	db 38, DREAM_EATER
	db 42, DARK_PULSE
	db 45, DESTINY_BOND
	db 48, HEX
	db 55, NASTY_PLOT ; Nightmare
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 5, SCARY_FACE ; Spite
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 24, SHADOW_PUNCH
	db 26, THIEF ; Payback
	db 32, SHADOW_BALL
	db 38, DREAM_EATER
	db 39, SHADOW_CLAW ; Shadow Punch (evo move)
	db 45, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, HEX
	db 61, NASTY_PLOT ; Nightmare
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	db EVOLVE_LEVEL, 41, LAMPENT
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LICK ; Astonish
	db 3, MINIMIZE
	db 7, FIRE_SPIN
	db 10, CONFUSE_RAY
	db 13, NIGHT_SHADE
	db 16, WILL_O_WISP
	db 20, LAVA_PLUME ; Flame Burst
	db 24, MEAN_LOOK ; Imprison
	db 28, HEX
	db 33, DESTINY_BOND ; Memento
	db 38, FLAMETHROWER ; Inferno
	db 43, CURSE
	db 49, SHADOW_BALL
	db 55, PAIN_SPLIT
	db 61, OVERHEAT
	db 0 ; no more level-up moves

LampentEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, CHANDELURE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LICK ; Astonish
	db 3, MINIMIZE
	db 7, FIRE_SPIN
	db 10, CONFUSE_RAY
	db 13, NIGHT_SHADE
	db 16, WILL_O_WISP
	db 20, LAVA_PLUME ; Flame Burst
	db 24, MEAN_LOOK ; Imprison
	db 28, HEX
	db 33, DESTINY_BOND ; Memento
	db 38, FLAMETHROWER ; Inferno
	db 45, CURSE
	db 53, SHADOW_BALL
	db 61, PAIN_SPLIT
	db 69, OVERHEAT
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, CONFUSE_RAY
	db 1, PAIN_SPLIT
	db 1, HEX
	db 0 ; no more level-up moves

CottoneeEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, WHIMSICOTT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, FAIRY_WIND
	db 4, GROWTH
	db 8, LEECH_SEED
	db 10, STUN_SPORE
	db 13, MEGA_DRAIN
	db 17, POISONPOWDER ; Cotton Spore
	db 19, RAZOR_LEAF
	db 22, SLEEP_POWDER ; PoisonPowder
	db 26, GIGA_DRAIN
	db 28, CHARM
	db 31, SAFEGUARD ; Helping Hand
	db 35, ENERGY_BALL
	db 37, BARRIER ; Cotton Guard
	db 40, SUNNY_DAY
	db 44, FLAIL ; Endeavor
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

WhimsicottEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, LEECH_SEED
	db 1, STUN_SPORE ; Cotton Spore
	db 1, MEGA_DRAIN
	db 10, GUST
	db 28, AIR_CUTTER ; Tailwind
	db 46, HURRICANE
	db 50, MOONBLAST
	db 0 ; no more level-up moves

PetililEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, LILLIGANT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 8, LEECH_SEED
	db 10, SLEEP_POWDER
	db 13, MEGA_DRAIN
	db 17, SYNTHESIS
	db 19, MAGICAL_LEAF
	db 22, STUN_SPORE
	db 26, GIGA_DRAIN
	db 28, QUIVER_DANCE ; Aromatherapy
	db 31, SAFEGUARD ; Helping Hand
	db 35, ENERGY_BALL
	db 37, MINIMIZE ; Entrainment
	db 40, SUNNY_DAY
	db 44, ENCORE ; After You
	db 46, SOLARBEAM ; Leaf Storm
	db 0 ; no more level-up moves

LilligantEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, LEECH_SEED
	db 1, MEGA_DRAIN
	db 1, SYNTHESIS
	db 10, SWEET_KISS ; Teeter Dance
	db 28, QUIVER_DANCE
	db 46, PETAL_DANCE
	db 50, WOOD_HAMMER ; Petal Blizzard
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONICBOOM
	db 17, PROTECT ; Detect
	db 22, SUPERSONIC
	db 27, AIR_CUTTER ; Uproar
	db 30, SIGNAL_BEAM ; Pursuit
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS ; Feint
	db 43, WING_ATTACK
	db 46, SCREECH
	db 49, X_SCISSOR ; U-turn
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONICBOOM
	db 17, PROTECT ; Detect
	db 22, SUPERSONIC
	db 27, AIR_CUTTER ; Uproar
	db 30, SIGNAL_BEAM ; Pursuit
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS ; Feint
	db 43, SLASH
	db 46, SCREECH
	db 49, X_SCISSOR ; U-turn
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	db EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, TACKLE
	db 5, STUN_SPORE
	db 8, LEECH_SEED
	db 12, MEGA_DRAIN
	db 15, HEADBUTT
	db 19, POISONPOWDER
	db 22, SLEEP_POWDER ; Worry Seed
	db 26, GIGA_DRAIN
	db 29, GROWTH
	db 33, TOXIC
	db 36, SEED_BOMB
	db 40, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, TACKLE
	db 5, STUN_SPORE
	db 8, LEECH_SEED
	db 12, MEGA_DRAIN
	db 15, HEADBUTT
	db 19, POISONPOWDER ; Feint
	db 22, COUNTER
	db 22, MACH_PUNCH
	db 28, KARATE_CHOP ; Force Palm
	db 33, LOCK_ON ; Mind Reader
	db 39, DRAIN_PUNCH ; Sky Uppercut
	db 44, SEED_BOMB
	db 50, DYNAMICPUNCH
	db 0 ; no more level-up moves

JoltikEvosAttacks:
	db EVOLVE_LEVEL, 36, GALVANTULA
	db 0 ; no more evolutions
	db 1, LEECH_LIFE ; Absorb
	db 1, STRING_SHOT
	db 4, THUNDER_WAVE
	db 7, SCREECH
	db 12, FURY_CUTTER
	db 15, SHOCK_WAVE ; Electroweb
	db 18, BUG_BITE
	db 23, ACID ; Gastro Acid
	db 26, SLASH
	db 29, THUNDER_FANG ; Electro Ball
	db 34, SIGNAL_BEAM
	db 37, AGILITY
	db 40, SUCKER_PUNCH
	db 45, DISCHARGE
	db 48, BUG_BUZZ
	db 0 ; no more level-up moves

GalvantulaEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE ; Absorb
	db 1, STRING_SHOT
	db 4, THUNDER_WAVE
	db 7, SCREECH
	db 12, FURY_CUTTER
	db 15, SHOCK_WAVE ; Electroweb
	db 18, BUG_BITE
	db 23, ACID ; Gastro Acid
	db 26, SLASH
	db 29, THUNDER_FANG ; Electro Ball
	db 34, SIGNAL_BEAM
	db 40, AGILITY
	db 46, SUCKER_PUNCH
	db 54, DISCHARGE
	db 60, BUG_BUZZ
	db 0 ; no more level-up moves

SpiritombEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, PURSUIT
	db 1, CONFUSE_RAY
	db 1, SHADOW_SNEAK
	db 7, FAINT_ATTACK
	db 13, HYPNOSIS
	db 19, DREAM_EATER
	db 25, SHADOW_PUNCH ; Ominous Wind
	db 31, SUCKER_PUNCH
	db 37, NASTY_PLOT
	db 43, DESTINY_BOND ; Memento
	db 49, DARK_PULSE
	db 0 ; no more level-up moves

ZoruaEvosAttacks:
	db EVOLVE_LEVEL, 30, ZOROARK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, PURSUIT
	db 9, HONE_CLAWS ; Fake Tears
	db 13, FURY_SWIPES
	db 17, FAINT_ATTACK
	db 21, SCARY_FACE
	db 25, MEAN_LOOK ; Taunt
	db 29, THIEF ; Foul Play
	db 33, ENCORE ; Torment
	db 37, AGILITY
	db 41, CONFUSE_RAY ; Embargo
	db 45, DARK_PULSE ; Punishment
	db 49, NASTY_PLOT
	; Skipped Imprison
	db 53, FOCUS_BLAST ; Night Daze
	db 0 ; no more level-up moves

ZoroarkEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, PURSUIT
	db 9, HONE_CLAWS ; Fake Tears
	db 13, FURY_SWIPES
	db 17, FAINT_ATTACK
	db 21, SCARY_FACE
	db 25, MEAN_LOOK ; Taunt
	db 29, THIEF ; Foul Play
	db 29, NIGHT_SLASH
	db 34, ENCORE ; Torment
	db 39, AGILITY
	db 44, CONFUSE_RAY ; Embargo
	db 49, DARK_PULSE ; Punishment
	db 54, NASTY_PLOT
	; Skipped Imprison
	db 59, FOCUS_BLAST ; Night Daze
	db 0 ; no more level-up moves

TrubbishEvosAttacks:
	db EVOLVE_LEVEL, 36, GARBODOR
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, POISON_GAS
	db 7, MINIMIZE ; Toxic Spikes
	db 12, ACID ; Acid Spray
	db 14, DOUBLESLAP
	db 18, SLUDGE
	db 23, ACID_ARMOR ; Stockpile/Swallow
	db 25, TAKE_DOWN
	db 29, SLUDGE_BOMB
	db 34, VENOSHOCK ; Clear Smog
	db 36, TOXIC
	db 40, AMNESIA
	db 42, CROSS_POISON ; Belch
	db 45, GUNK_SHOT
	db 47, EXPLOSION
	db 0 ; no more level-up moves

GarbodorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, POISON_GAS
	db 7, MINIMIZE ; Toxic Spikes
	db 12, ACID ; Acid Spray
	db 14, DOUBLESLAP
	db 18, SLUDGE
	db 23, ACID_ARMOR ; Stockpile/Swallow
	db 25, TAKE_DOWN
	db 29, SLUDGE_BOMB
	db 34, VENOSHOCK ; Clear Smog
	db 36, TOXIC
	db 46, AMNESIA
	db 49, CROSS_POISON ; Belch
	db 54, GUNK_SHOT
	db 59, EXPLOSION
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 13, LIGHT_SCREEN
	db 17, SONICBOOM
	db 19, SPARK
	db 23, MIRROR_SHOT
	db 25, IRON_DEFENSE ; Metal Sound
	db 29, SHOCK_WAVE ; Electro Ball
	db 31, FLASH_CANNON
	db 35, SCREECH
	db 37, DISCHARGE
	db 41, LOCK_ON
	db 43, REFLECT ; Magnet Rise
	db 47, IRON_HEAD ; Gyro Ball
	db 49, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db EVOLVE_HOLD, METAL_COAT, TR_ANYTIME, MAGNEZONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 13, LIGHT_SCREEN
	db 17, SONICBOOM
	db 19, SPARK
	db 23, MIRROR_SHOT
	db 25, IRON_DEFENSE ; Metal Sound
	db 29, SHOCK_WAVE ; Electro Ball
	db 29, TRI_ATTACK
	db 33, FLASH_CANNON
	db 39, SCREECH
	db 43, DISCHARGE
	db 49, LOCK_ON
	db 53, REFLECT ; Magnet Rise
	db 59, IRON_HEAD ; Gyro Ball
	db 63, ZAP_CANNON
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 13, LIGHT_SCREEN
	db 17, SONICBOOM
	db 19, SPARK
	db 23, MIRROR_SHOT
	db 25, IRON_DEFENSE ; Metal Sound
	db 29, SHOCK_WAVE ; Electro Ball
	db 29, TRI_ATTACK
	db 33, FLASH_CANNON
	db 39, SCREECH
	db 43, DISCHARGE
	db 49, LOCK_ON
	db 53, REFLECT ; Magnet Rise
	db 47, IRON_HEAD ; Gyro Ball
	db 63, ZAP_CANNON
	db 0 ; no more level-up moves

GothitaEvosAttacks:
	db EVOLVE_LEVEL, 32, GOTHORITA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, CONFUSION
	db 7, GROWL ; Play Nice
	db 10, LEER ; Fake Tears
	db 14, DOUBLESLAP
	db 16, PSYBEAM
	db 19, DRAININGKISS ; Embargo
	db 24, FAINT_ATTACK
	db 25, PSYSHOCK
	db 28, SWAGGER ; Flatter
	db 31, MIRROR_COAT ; Future Sight
	db 33, HYPNOSIS ; Heal Block
	db 37, PSYCHIC_M
	db 40, DAZZLINGLEAM ; Telekinesis
	db 46, CHARM
	db 48, BARRIER ; Magic Room
	db 0 ; no more level-up moves

GothoritaEvosAttacks:
	db EVOLVE_LEVEL, 41, GOTHITELLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, CONFUSION
	db 7, GROWL ; Play Nice
	db 10, LEER ; Fake Tears
	db 14, DOUBLESLAP
	db 16, PSYBEAM
	db 19, DRAININGKISS ; Embargo
	db 24, FAINT_ATTACK
	db 25, PSYSHOCK
	db 28, SWAGGER ; Flatter
	db 31, MIRROR_COAT ; Future Sight
	db 34, HYPNOSIS ; Heal Block
	db 39, PSYCHIC_M
	db 43, DAZZLINGLEAM ; Telekinesis
	db 50, CHARM
	db 53, BARRIER ; Magic Room
	db 0 ; no more level-up moves

GothitelleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, CONFUSION
	db 7, GROWL ; Play Nice
	db 10, LEER ; Fake Tears
	db 14, DOUBLESLAP
	db 16, PSYBEAM
	db 19, DRAININGKISS ; Embargo
	db 24, FAINT_ATTACK
	db 25, PSYSHOCK
	db 28, SWAGGER ; Flatter
	db 31, MIRROR_COAT ; Future Sight
	db 34, HYPNOSIS ; Heal Block
	db 39, PSYCHIC_M
	db 45, DAZZLINGLEAM ; Telekinesis
	db 54, CHARM
	db 59, BARRIER ; Magic Room
	db 0 ; no more level-up moves

SolosisEvosAttacks:
	db EVOLVE_LEVEL, 32, DUOSION
	db 0 ; no more evolutions
	db 1, CONFUSION ; Psywave
	db 3, REFLECT
	db 7, ROLLOUT
	db 10, SAFEGUARD ; Snatch
	db 14, HIDDEN_POWER
	db 16, LIGHT_SCREEN
	db 19, CHARM
	db 24, RECOVER
	db 25, PSYSHOCK
	db 28, TAKE_DOWN ; Endeavor
	db 31, MIRROR_COAT ; Future Sight
	db 33, PAIN_SPLIT
	db 37, PSYCHIC_M
	db 40, HYPNOSIS ; Skill Swap
	db 46, BARRIER ; Heal Block
	db 48, DREAM_EATER ; Wonder Room
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	db EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	db 1, CONFUSION ; Psywave
	db 3, REFLECT
	db 7, ROLLOUT
	db 10, SAFEGUARD ; Snatch
	db 14, HIDDEN_POWER
	db 16, LIGHT_SCREEN
	db 19, CHARM
	db 24, RECOVER
	db 25, PSYSHOCK
	db 28, TAKE_DOWN ; Endeavor
	db 31, MIRROR_COAT ; Future Sight
	db 34, PAIN_SPLIT
	db 39, PSYCHIC_M
	db 43, HYPNOSIS ; Skill Swap
	db 50, BARRIER ; Heal Block
	db 53, DREAM_EATER ; Wonder Room
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION ; Psywave
	db 3, REFLECT
	db 7, ROLLOUT
	db 10, SAFEGUARD ; Snatch
	db 14, HIDDEN_POWER
	db 16, LIGHT_SCREEN
	db 19, CHARM
	db 24, RECOVER
	db 25, PSYSHOCK
	db 28, TAKE_DOWN ; Endeavor
	db 31, MIRROR_COAT ; Future Sight
	db 34, PAIN_SPLIT
	db 39, PSYCHIC_M
	db 40, DIZZY_PUNCH
	db 45, HYPNOSIS ; Skill Swap
	db 54, BARRIER ; Heal Block
	db 59, DREAM_EATER ; Wonder Room
	db 0 ; no more level-up moves

DeerlingEvosAttacks:
	db EVOLVE_LEVEL, 34, SAWSBUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, SAND_ATTACK
	db 10, DOUBLE_KICK
	db 13, LEECH_SEED
	db 16, FAINT_ATTACK
	db 20, TAKE_DOWN
	db 24, HI_JUMP_KICK ; Jump Kick
	db 28, SYNTHESIS ; Aromatherapy
	db 32, ENERGY_BALL
	db 36, CHARM
	db 41, WOOD_HAMMER ; Nature Power
	db 46, DOUBLE_EDGE
	db 51, SOLARBEAM
	db 0 ; no more level-up moves

SawsbuckEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, SAND_ATTACK
	db 10, DOUBLE_KICK
	db 13, LEECH_SEED
	db 16, FAINT_ATTACK
	db 20, TAKE_DOWN
	db 24, HI_JUMP_KICK ; Jump Kick
	db 28, SYNTHESIS ; Aromatherapy
	db 32, ENERGY_BALL
	db 33, MEGAHORN ; Horn Leech
	db 36, CHARM
	db 44, WOOD_HAMMER ; Nature Power
	db 52, DOUBLE_EDGE
	db 60, SOLARBEAM
	db 0 ; no more level-up moves

KarrablastEvosAttacks:
	db EVOLVE_ITEM, SHELL_STONE, ESCAVALIER
	db 0 ; no more evolutions
	db 1, PECK
	db 4, LEER
	db 8, ENDURE
	db 13, FURY_CUTTER
	db 16, FURY_ATTACK
	db 20, HEADBUTT
	db 25, BODY_SLAM ; False Swipe
	db 28, BUG_BUZZ
	db 32, SLASH
	db 37, TAKE_DOWN
	db 40, SCARY_FACE
	db 44, X_SCISSOR
	db 49, FLAIL
	db 52, SWORDS_DANCE
	db 56, DOUBLE_EDGE
	db 0 ; no more level-up moves

EscavalierEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 4, LEER
	db 8, PROTECT ; Quick Guard
	db 13, FURY_CUTTER ; Twineedle
	db 16, FURY_ATTACK
	db 20, HEADBUTT
	db 25, BODY_SLAM ; False Swipe
	db 28, BUG_BUZZ
	db 32, SLASH
	db 37, IRON_HEAD
	db 40, IRON_DEFENSE
	db 44, X_SCISSOR
	db 49, REVERSAL
	db 52, SWORDS_DANCE
	db 56, GIGA_IMPACT
	db 0 ; no more level-up moves

ShelmetEvosAttacks:
	db EVOLVE_ITEM, SHELL_STONE, ACCELGOR
	db 0 ; no more evolutions
	db 1, LEECH_LIFE ; Absorb
	db 4, ACID
	db 8, DEFENSE_CURL ; Bide
	db 13, CURSE
	db 16, STRUGGLE_BUG
	db 20, MEGA_DRAIN
	db 25, REST ; Yawn
	db 28, PROTECT
	db 32, ACID_ARMOR
	db 37, GIGA_DRAIN
	db 40, BODY_SLAM
	db 44, BUG_BUZZ
	db 49, RECOVER
	db 50, IRON_DEFENSE ; Guard Swap
	db 56, AURA_SPHERE ; Final Gambit
	db 0 ; no more level-up moves

AccelgorEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE ; Absorb
	db 4, ACID ; Acid Spray
	db 8, DOUBLE_TEAM
	db 13, QUICK_ATTACK
	db 16, STRUGGLE_BUG
	db 20, MEGA_DRAIN
	db 25, SWIFT
	db 28, PROTECT ; Me First
	db 32, AGILITY
	db 37, GIGA_DRAIN
	db 40, EXTREMESPEED ; U-turn
	db 44, BUG_BUZZ
	db 49, RECOVER
	db 50, CALM_MIND ; Power Swap
	db 56, AURA_SPHERE ; Final Gambit
	db 0 ; no more level-up moves

FerroseedEvosAttacks:
	db EVOLVE_LEVEL, 40, FERROTHORN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, ROLLOUT
	db 9, CURSE
	db 14, METAL_CLAW
	db 18, PIN_MISSILE
	db 21, VINE_WHIP ; Gyro Ball
	db 26, IRON_DEFENSE
	db 30, MIRROR_SHOT
	db 35, SYNTHESIS ; Ingrain
	db 38, SELFDESTRUCT
	db 43, IRON_HEAD
	db 47, NIGHT_SLASH ; Payback
	db 52, FLASH_CANNON
	db 55, EXPLOSION
	db 0 ; no more level-up moves

FerrothornEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, ROLLOUT
	db 9, CURSE
	db 14, METAL_CLAW
	db 18, PIN_MISSILE
	db 21, VINE_WHIP ; Gyro Ball
	db 26, IRON_DEFENSE
	db 30, MIRROR_SHOT
	db 35, SYNTHESIS ; Ingrain
	db 38, SELFDESTRUCT
	db 39, SEED_BOMB ; Power Whip
	db 46, IRON_HEAD
	db 53, NIGHT_SLASH ; Payback
	db 61, FLASH_CANNON
	db 67, EXPLOSION
	db 0 ; no more level-up moves

BasculinEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 5, HEADBUTT
	db 7, BITE
	db 9, AQUA_JET
	db 14, TAKE_DOWN
	db 17, CRUNCH
	db 20, AQUA_TAIL
	db 23, RAIN_DANCE ; Soak
	db 26, DOUBLE_EDGE
	db 30, SCARY_FACE
	db 34, FLAIL
	db 38, REVERSAL ; Final Gambit
	db 42, GIGA_IMPACT ; Thrash
	db 46, ZEN_HEADBUTT ; Head Smash
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, FOCUS_ENERGY
	db 26, WATER_PULSE
	db 30, SIGNAL_BEAM
	db 34, ICE_BEAM
	db 38, MIRROR_SHOT ; Bullet Seed
	db 42, HYDRO_PUMP
	db 46, HYPER_BEAM
	db 50, RAIN_DANCE ; Soak
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, FOCUS_ENERGY
	db 24, SCALD ; Octazooka
	db 28, WRAP ; Wring Out
	db 34, SIGNAL_BEAM
	db 40, ICE_BEAM
	db 46, MIRROR_SHOT ; Bullet Seed
	db 52, HYDRO_PUMP
	db 58, HYPER_BEAM
	db 64, RAIN_DANCE ; Soak
	db 0 ; no more level-up moves

DarumakaEvosAttacks:
	db EVOLVE_LEVEL, 35, DARMANITAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, ROLLOUT
	db 6, EMBER ; Incinerate
	db 9, FURY_SWIPES ; Rage
	db 11, FIRE_FANG
	db 14, HEADBUTT
	db 17, HYPER_VOICE ; Uproar
	db 19, TAKE_DOWN ; Facade
	db 22, FIRE_PUNCH
	db 25, BULK_UP ; Work Up
	db 27, BODY_SLAM ; Thrash
	db 30, BELLY_DRUM
	db 33, FLARE_BLITZ
	db 36, SWAGGER ; Taunt
	db 39, CROSS_CHOP ; Superpower
	db 42, OVERHEAT
	db 0 ; no more level-up moves

DarmanitanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, ROLLOUT
	db 6, EMBER ; Incinerate
	db 9, FURY_SWIPES ; Rage
	db 11, FIRE_FANG
	db 14, HEADBUTT
	db 17, HYPER_VOICE ; Uproar
	db 19, TAKE_DOWN ; Facade
	db 22, FIRE_PUNCH
	db 25, BULK_UP ; Work Up
	db 27, BODY_SLAM ; Thrash
	db 30, BELLY_DRUM
	db 33, FLARE_BLITZ
	db 34, HAMMER_ARM
	db 39, SWAGGER ; Taunt
	db 47, CROSS_CHOP ; Superpower
	db 54, OVERHEAT
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, SHOCK_WAVE
	db 19, THUNDER_WAVE
	db 22, SPARK ; Electro Ball
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 33, DISCHARGE
	db 36, SCREECH
	db 40, THUNDERBOLT
	db 43, THUNDER
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db EVOLVE_HOLD, ELECTRIZER, TR_ANYTIME, ELECTIVIRE
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, SHOCK_WAVE
	db 19, THUNDER_WAVE
	db 22, SPARK ; Electro Ball
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, DISCHARGE
	db 42, SCREECH
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, SHOCK_WAVE
	db 19, THUNDER_WAVE
	db 22, SPARK ; Electro Ball
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, DISCHARGE
	db 42, SCREECH
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 62, GIGA_IMPACT
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, TACKLE ; Smog
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 15, FIRE_SPIN
	db 19, SLUDGE ; Clear Smog
	db 22, FLAME_WHEEL ; Flame Burst
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 33, LAVA_PLUME
	db 36, SUNNY_DAY
	db 40, FLAMETHROWER
	db 43, FIRE_BLAST
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db EVOLVE_HOLD, MAGMARIZER, TR_ANYTIME, MAGMORTAR
	db 0 ; no more evolutions
	db 1, TACKLE ; Smog
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 15, FIRE_SPIN
	db 19, SLUDGE ; Clear Smog
	db 22, FLAME_WHEEL ; Flame Burst
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, LAVA_PLUME
	db 42, SUNNY_DAY
	db 49, FLAMETHROWER
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Smog
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 15, FIRE_SPIN
	db 19, SLUDGE ; Clear Smog
	db 22, FLAME_WHEEL ; Flame Burst
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, LAVA_PLUME
	db 42, SUNNY_DAY
	db 49, FLAMETHROWER
	db 55, FIRE_BLAST
	db 62, HYPER_BEAM
	db 0 ; no more level-up moves

SandileEvosAttacks:
	db EVOLVE_LEVEL, 29, KROKOROK
	db 0 ; no more evolutions
	db 1, LEER
	db 4, BITE
	db 7, SAND_ATTACK
	db 13, BULLDOZE ; Sand Tomb
	db 16, THIEF ; Assurance
	db 19, MUD_SLAP
	db 22, HONE_CLAWS ; Embargo
	db 25, SWAGGER
	db 28, CRUNCH
	db 31, DIG
	db 34, SCARY_FACE
	db 37, SUCKER_PUNCH ; Foul Play
	db 40, SANDSTORM
	db 43, EARTHQUAKE
	db 46, DOUBLE_EDGE ; Thrash
	db 0 ; no more level-up moves

KrokorokEvosAttacks:
	db EVOLVE_LEVEL, 40, KROOKODILE
	db 0 ; no more evolutions
	db 1, LEER
	db 4, BITE
	db 7, SAND_ATTACK
	db 13, BULLDOZE ; Sand Tomb
	db 16, THIEF ; Assurance
	db 19, MUD_SLAP
	db 22, HONE_CLAWS ; Embargo
	db 25, SWAGGER
	db 28, CRUNCH
	db 32, DIG
	db 36, SCARY_FACE
	db 40, SUCKER_PUNCH ; Foul Play
	db 44, SANDSTORM
	db 48, EARTHQUAKE
	db 52, DOUBLE_EDGE ; Thrash
	db 0 ; no more level-up moves

KrookodileEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 4, BITE
	db 7, SAND_ATTACK
	db 13, BULLDOZE ; Sand Tomb
	db 16, THIEF ; Assurance
	db 19, MUD_SLAP
	db 22, HONE_CLAWS ; Embargo
	db 25, SWAGGER
	db 28, CRUNCH
	db 32, DIG
	db 36, SCARY_FACE
	db 40, SUCKER_PUNCH ; Foul Play
	db 48, SANDSTORM
	db 54, EARTHQUAKE
	db 60, OUTRAGE
	db 0 ; no more level-up moves

SkorupiEvosAttacks:
	db EVOLVE_LEVEL, 40, DRAPION
	db 0 ; no more evolutions
	db 1, BITE
	db 1, POISON_STING
	db 1, LEER
	db 9, PIN_MISSILE
	db 13, CURSE ; Acupressure
	db 16, PURSUIT
	db 20, BUG_BITE
	db 23, POISON_FANG
	db 27, VENOSHOCK
	db 30, HONE_CLAWS
	db 34, TOXIC ; Toxic Spikes
	db 38, NIGHT_SLASH
	db 41, SCARY_FACE
	db 45, CRUNCH
	db 47, X_SCISSOR ; Fell Stinger
	db 49, CROSS_POISON
	db 0 ; no more level-up moves

DrapionEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, POISON_STING
	db 1, LEER
	db 9, PIN_MISSILE
	db 13, CURSE ; Acupressure
	db 16, PURSUIT
	db 20, BUG_BITE
	db 23, POISON_FANG
	db 27, VENOSHOCK
	db 30, HONE_CLAWS
	db 34, TOXIC ; Toxic Spikes
	db 38, NIGHT_SLASH
	db 43, SCARY_FACE
	db 49, CRUNCH
	db 53, X_SCISSOR ; Fell Stinger
	db 57, CROSS_POISON
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	db EVOLVE_LEVEL, 35, VIBRAVA
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SAND_ATTACK
	db 1, FAINT_ATTACK
	db 5, MUD_SLAP
	db 8, BULLDOZE
	db 12, MAGNITUDE ; Sand Tomb
	db 15, ROCK_SLIDE
	db 19, DIG
	db 22, CRUNCH
	db 26, EARTH_POWER
	db 29, X_SCISSOR ; Feint
	db 33, EARTHQUAKE
	db 36, SANDSTORM
	db 40, CLOSE_COMBAT ; Superpower
	db 43, HYPER_BEAM
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	db EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SAND_ATTACK
	db 1, FAINT_ATTACK
	db 5, MUD_SLAP
	db 8, BULLDOZE
	db 12, MAGNITUDE ; Sand Tomb
	db 15, ROCK_SLIDE
	db 19, SUPERSONIC
	db 22, SCREECH
	db 26, EARTH_POWER
	db 29, BUG_BUZZ
	db 33, EARTHQUAKE
	db 34, DRAGONBREATH
	db 36, SANDSTORM
	db 40, HYPER_VOICE ; Uproar
	db 43, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SAND_ATTACK
	db 1, FAINT_ATTACK
	db 5, MUD_SLAP
	db 8, BULLDOZE
	db 12, MAGNITUDE ; Sand Tomb
	db 15, ROCK_SLIDE
	db 19, SUPERSONIC
	db 22, SCREECH
	db 26, EARTH_POWER
	db 29, BUG_BUZZ
	db 33, EARTHQUAKE
	db 34, DRAGONBREATH
	db 36, SANDSTORM
	db 40, HYPER_VOICE ; Uproar
	db 43, HYPER_BEAM
	db 44, DRAGON_CLAW
	db 47, OUTRAGE ; Dragon Rush
	db 0 ; no more level-up moves

ScraggyEvosAttacks:
	db EVOLVE_LEVEL, 39, SCRAFTY
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, LEER
	db 5, SAND_ATTACK
	db 9, FAINT_ATTACK
	db 12, SWAGGER
	db 16, LOW_KICK
	db 20, THIEF ; Payback
	db 23, DRAIN_PUNCH ; Brick Break
	db 27, DIZZY_PUNCH ; Chip Away
	db 31, HI_JUMP_KICK
	db 34, SCARY_FACE
	db 38, CRUNCH
	db 42, BODY_SLAM ; Facade
	db 45, FLAIL ; Rock Climb
	db 48, CROSS_CHOP ; Focus Punch
	db 50, STONE_EDGE ; Head Smash
	db 0 ; no more level-up moves

ScraftyEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, LEER
	db 5, SAND_ATTACK
	db 9, FAINT_ATTACK
	db 12, SWAGGER
	db 16, LOW_KICK
	db 20, THIEF ; Payback
	db 23, DRAIN_PUNCH ; Brick Break
	db 27, DIZZY_PUNCH ; Chip Away
	db 31, HI_JUMP_KICK
	db 34, SCARY_FACE
	db 38, CRUNCH
	db 45, BODY_SLAM ; Facade
	db 51, FLAIL ; Rock Climb
	db 58, CROSS_CHOP ; Focus Punch
	db 65, STONE_EDGE ; Head Smash
	db 0 ; no more level-up moves

NumelEvosAttacks:
	db EVOLVE_LEVEL, 33, CAMERUPT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, EMBER
	db 8, FOCUS_ENERGY
	db 12, MAGNITUDE
	db 15, FLAME_WHEEL ; Flame Burst
	db 19, AMNESIA
	db 22, LAVA_PLUME
	db 26, EARTH_POWER
	db 29, CURSE
	db 31, TAKE_DOWN
	db 36, REST ; Yawn
	db 40, EARTHQUAKE
	db 43, FLAMETHROWER
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

CameruptEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, EMBER
	db 8, FOCUS_ENERGY
	db 12, MAGNITUDE
	db 15, FLAME_WHEEL ; Flame Burst
	db 19, AMNESIA
	db 22, LAVA_PLUME
	db 26, EARTH_POWER
	db 29, CURSE
	db 31, TAKE_DOWN
	db 32, ROCK_SLIDE
	db 39, REST ; Yawn
	db 46, EARTHQUAKE
	db 52, FLAMETHROWER ; Eruption
	db 59, FLARE_BLITZ ; Fissure
	db 0 ; no more level-up moves

MaractusEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, ABSORB
	db 3, SWEET_SCENT
	db 6, GROWTH
	db 10, PIN_MISSILE
	db 13, MEGA_DRAIN
	db 15, SYNTHESIS
	db 18, STUN_SPORE ; Cotton Spore
	db 22, SEED_BOMB ; Needle Arm
	db 26, GIGA_DRAIN
	db 29, CURSE ; Acupressure
	db 33, SAFEGUARD ; Ingrain
	db 38, PETAL_DANCE
	db 42, SUCKER_PUNCH
	db 45, SUNNY_DAY
	db 48, WOOD_HAMMER ; Petal Blizzard
	db 50, SOLARBEAM
	db 55, IRON_DEFENSE ; Cotton Guard
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db EVOLVE_HOLD, RAZOR_FANG, TR_NITE, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SAND_ATTACK
	db 7, HARDEN
	db 10, PURSUIT ; Knock Off
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, FAINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH
	db 30, MAGNITUDE ; U-turn
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, DRAIN_PUNCH ; Sky Uppercut
	db 50, SWORDS_DANCE
	db 55, EARTHQUAKE ; Guillotine
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SAND_ATTACK
	db 7, HARDEN
	db 10, PURSUIT ; Knock Off
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, FAINT_ATTACK
	db 22, ACROBATICS
	db 27, NIGHT_SLASH
	db 30, MAGNITUDE ; U-turn
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, DRAIN_PUNCH ; Sky Uppercut
	db 50, SWORDS_DANCE
	db 55, EARTHQUAKE ; Guillotine
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	db EVOLVE_LEVEL, 36, CLAYDOL
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HARDEN
	db 7, MUD_SLAP
	db 10, HYPNOSIS ; Heal Block
	db 13, ROCK_TOMB
	db 16, PSYBEAM
	db 19, ANCIENTPOWER
	db 22, CALM_MIND ; Cosmic Power
	db 28, SELFDESTRUCT
	db 31, EXTRASENSORY
	db 34, PAIN_SPLIT ; Guard Split/Power Split
	db 37, EARTH_POWER
	db 40, SANDSTORM
	db 43, MEAN_LOOK ; Imprison
	db 46, EXPLOSION
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HARDEN
	db 7, MUD_SLAP
	db 10, HYPNOSIS ; Heal Block
	db 13, ROCK_TOMB
	db 16, PSYBEAM
	db 19, ANCIENTPOWER
	db 22, CALM_MIND ; Cosmic Power
	db 28, SELFDESTRUCT
	db 31, EXTRASENSORY
	db 34, PAIN_SPLIT ; Guard Split/Power Split
	db 35, HYPER_BEAM
	db 39, EARTH_POWER
	db 46, SANDSTORM
	db 52, MEAN_LOOK ; Imprison
	db 58, EXPLOSION
	db 0 ; no more level-up moves

SigilyphEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 4, HYPNOSIS
	db 8, CONFUSION ; Psywave
	db 14, WHIRLWIND
	db 18, PSYBEAM
	db 21, AIR_CUTTER
	db 24, LIGHT_SCREEN
	db 28, REFLECT
	db 31, EXTRASENSORY ; Synchronoise
	db 34, AGILITY ; Mirror Move
	db 38, BARRIER ; Gravity
	db 41, AIR_SLASH
	db 44, PSYCHIC_M
	db 48, CALM_MIND ; Cosmic Power
	db 50, HURRICANE ; Sky Attack
	db 0 ; no more level-up moves

GolettEvosAttacks:
	db EVOLVE_LEVEL, 43, GOLURK
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, DEFENSE_CURL
	db 5, MUD_SLAP
	db 9, ROLLOUT
	db 13, SHADOW_PUNCH
	db 17, IRON_DEFENSE
	db 21, BULLDOZE ; Stomping Tantrum
	db 25, SHADOW_CLAW ; Mega Punch
	db 30, MAGNITUDE
	db 35, DYNAMICPUNCH
	db 40, NIGHT_SHADE
	db 45, CURSE
	db 50, EARTHQUAKE
	db 55, HAMMER_ARM
	db 0 ; no more level-up moves

GolurkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, DEFENSE_CURL
	db 5, MUD_SLAP
	db 9, ROLLOUT
	db 13, SHADOW_PUNCH
	db 17, IRON_DEFENSE
	db 21, BULLDOZE ; Stomping Tantrum
	db 25, SHADOW_CLAW ; Mega Punch
	db 30, MAGNITUDE
	db 35, DYNAMICPUNCH
	db 40, NIGHT_SHADE
	db 42, METEOR_MASH ; Heavy Slam
	db 47, CURSE
	db 54, EARTHQUAKE
	db 61, HAMMER_ARM
	db 0 ; no more level-up moves

TirtougaEvosAttacks:
	db EVOLVE_LEVEL, 37, CARRACOSTA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, DEFENSE_CURL ; Withdraw
	db 5, ROLLOUT
	db 8, BITE
	db 11, PROTECT
	db 15, AQUA_JET
	db 18, ANCIENTPOWER
	db 21, CRUNCH
	db 25, SAFEGUARD ; Wide Guard
	db 31, ROCK_TOMB ; Smack Down
	db 35, CURSE
	db 38, BELLY_DRUM ; Shell Smash
	db 41, AQUA_TAIL
	db 45, ROCK_SLIDE
	db 48, RAIN_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

CarracostaEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, DEFENSE_CURL ; Withdraw
	db 5, ROLLOUT
	db 8, BITE
	db 11, PROTECT
	db 15, AQUA_JET
	db 18, ANCIENTPOWER
	db 21, CRUNCH
	db 25, SAFEGUARD ; Wide Guard
	db 31, ROCK_TOMB ; Smack Down
	db 35, CURSE
	db 40, BELLY_DRUM ; Shell Smash
	db 45, AQUA_TAIL
	db 51, ROCK_SLIDE
	db 56, RAIN_DANCE
	db 61, HYDRO_PUMP
	db 0 ; no more level-up moves

ArchenEvosAttacks:
	db EVOLVE_LEVEL, 37, ARCHEOPS
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, ROCK_THROW
	db 8, DOUBLE_TEAM
	db 11, SCARY_FACE
	db 15, WING_ATTACK ; Pluck
	db 18, ANCIENTPOWER
	db 21, AGILITY
	db 25, PROTECT ; Quick Guard
	db 28, ACROBATICS
	db 31, DRAGONBREATH
	db 35, CRUNCH
	db 38, BODY_SLAM ; Endeavor
	db 41, BRAVE_BIRD ; U-turn
	db 45, ROCK_SLIDE
	db 48, DRAGON_CLAW
	db 50, OUTRAGE ; Thrash
	db 0 ; no more level-up moves

ArcheopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, ROCK_THROW
	db 8, DOUBLE_TEAM
	db 11, SCARY_FACE
	db 15, WING_ATTACK ; Pluck
	db 18, ANCIENTPOWER
	db 21, AGILITY
	db 25, PROTECT ; Quick Guard
	db 28, ACROBATICS
	db 31, DRAGONBREATH
	db 35, CRUNCH
	db 40, BODY_SLAM ; Endeavor
	db 45, BRAVE_BIRD ; U-turn
	db 51, ROCK_SLIDE
	db 56, DRAGON_CLAW
	db 61, OUTRAGE ; Thrash
	db 0 ; no more level-up moves

FrillishEvosAttacks:
	db EVOLVE_LEVEL, 40, JELLICENT
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, ABSORB
	db 9, NIGHT_SHADE
	db 13, BUBBLEBEAM
	db 17, RECOVER
	db 22, WATER_PULSE
	db 27, HEX ; Ominous Wind
	db 32, SCALD ; Brine
	db 37, RAIN_DANCE
	db 43, SHADOW_BALL ; Hex
	db 49, HYDRO_PUMP
	db 55, GIGA_DRAIN ; Wring Out
	db 0 ; no more level-up moves

JellicentEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, ABSORB
	db 9, NIGHT_SHADE
	db 13, BUBBLEBEAM
	db 17, RECOVER
	db 22, WATER_PULSE
	db 27, HEX ; Ominous Wind
	db 32, SCALD ; Brine
	db 37, RAIN_DANCE
	db 45, SHADOW_BALL ; Hex
	db 53, HYDRO_PUMP
	db 61, GIGA_DRAIN ; Wring Out
	db 0 ; no more level-up moves

EmolgaEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 4, QUICK_ATTACK
	db 7, TAIL_WHIP
	db 10, THUNDER_WAVE ; Charge
	db 13, SPARK
	db 16, PURSUIT
	db 19, DOUBLE_TEAM
	db 22, SHOCK_WAVE
	db 26, AIR_SLASH ; Electro Ball
	db 30, ACROBATICS
	db 34, LIGHT_SCREEN
	db 38, ENCORE
	db 42, DISCHARGE ; Volt Switch
	db 46, AGILITY
	db 50, ZAP_CANNON ; Discharge
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 4, TAIL_WHIP
	db 7, ROAR
	db 10, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, FIRE_SPIN
	db 18, PURSUIT ; Payback
	db 20, WILL_O_WISP
	db 23, FAINT_ATTACK
	db 26, HEX
	db 28, FIRE_FANG ; Flame Burst
	db 31, EXTRASENSORY
	db 34, SAFEGUARD
	db 36, FLAMETHROWER
	db 39, HYPNOSIS ; Imprison
	db 42, FIRE_BLAST
	db 44, DESTINY_BOND ; Grudge
	db 47, CHARM ; Captivate
	db 50, OVERHEAT ; Inferno
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 1, FLAMETHROWER
	db 0 ; no more level-up moves

DucklettEvosAttacks:
	db EVOLVE_LEVEL, 35, SWANNA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, TAIL_WHIP ; Defog
	db 9, WING_ATTACK
	db 13, WATER_PULSE
	db 15, AIR_CUTTER ; Aerial Ace
	db 19, BUBBLEBEAM
	db 21, CHARM ; FeatherDance
	db 24, SAFEGUARD ; Aqua Ring
	db 27, AIR_SLASH
	db 30, DRILL_PECK ; Roost
	db 34, RAIN_DANCE
	db 37, AGILITY ; Tailwind
	db 41, BRAVE_BIRD
	db 46, HURRICANE
	db 0 ; no more level-up moves

SwannaEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, TAIL_WHIP ; Defog
	db 9, WING_ATTACK
	db 13, WATER_PULSE
	db 15, AIR_CUTTER ; Aerial Ace
	db 19, BUBBLEBEAM
	db 21, CHARM ; FeatherDance
	db 24, SAFEGUARD ; Aqua Ring
	db 27, AIR_SLASH
	db 30, DRILL_PECK ; Roost
	db 34, RAIN_DANCE
	db 40, AGILITY ; Tailwind
	db 47, BRAVE_BIRD
	db 55, HURRICANE
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	db EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, SING
	db 7, FURY_ATTACK
	db 9, SAFEGUARD
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, MIST
	db 17, SWIFT ; Round
	db 20, SONICBOOM ; Natural Gift
	db 23, TAKE_DOWN
	db 26, RECOVER ; Refresh
	db 30, DRAGON_DANCE ; Mirror Move
	db 34, BARRIER ; Cotton Guard
	db 38, DRAGON_PULSE
	db 42, PERISH_SONG
	db 46, MOONBLAST
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, SING
	db 7, FURY_ATTACK
	db 9, SAFEGUARD
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, MIST
	db 17, SWIFT ; Round
	db 20, SONICBOOM ; Natural Gift
	db 23, TAKE_DOWN
	db 26, RECOVER ; Refresh
	db 30, DRAGON_DANCE ; Mirror Move
	db 34, BARRIER ; Cotton Guard
	db 34, DRAGONBREATH
	db 40, DRAGON_PULSE
	db 46, PERISH_SONG
	db 52, MOONBLAST
	db 59, HURRICANE ; Sky Attack
	db 0 ; no more level-up moves

AudinoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, GROWL
	db 9, SAFEGUARD ; Refresh
	db 13, DRAININGKISS ; Disarming Voice
	db 17, DOUBLESLAP
	db 21, ATTRACT
	db 25, DIZZY_PUNCH ; Secret Power
	db 29, PSYCH_UP ; Entrainment
	db 33, TAKE_DOWN
	db 37, RECOVER ; Heal Pulse
	db 41, SWAGGER ; After You
	db 45, PERISH_SONG ; Simple Beam
	db 49, DOUBLE_EDGE
	db 53, HYPER_VOICE
	db 57, HYPER_BEAM ; Last Resort
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, LEAF_STONE, LEAFEON
	db EVOLVE_ITEM, ICE_STONE, GLACEON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db EVOLVE_HOLD, MAGIC_RIBBON, TR_MORNDAY, SYLVEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, BITE
	db 17, SWIFT
	db 20, FURY_SWIPES ; Refresh
	db 25, TAKE_DOWN
	db 29, CHARM
	db 33, BELLY_DRUM ; Baton Pass
	db 37, DOUBLE_EDGE
	db 41, GIGA_IMPACT ; Last Resort
	db 45, HYPER_BEAM ; Trump Card
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, WATER_PULSE
	db 20, AURORA_BEAM
	db 25, MIST ; Aqua Ring
	db 29, ACID_ARMOR
	db 33, HAZE
	db 37, SCALD ; Muddy Water
	db 41, GIGA_IMPACT ; Last Resort
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, DOUBLE_KICK
	db 20, THUNDER_FANG
	db 25, PIN_MISSILE
	db 29, AGILITY
	db 33, THUNDER_WAVE
	db 37, DISCHARGE
	db 41, GIGA_IMPACT ; Last Resort
	db 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FIRE_FANG
	db 25, FIRE_SPIN
	db 29, SCARY_FACE
	db 33, SLUDGE ; Smog
	db 37, LAVA_PLUME
	db 41, GIGA_IMPACT ; Last Resort
	db 45, FLARE_BLITZ
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, EXTRASENSORY ; Future Sight
	db 29, PSYCH_UP
	db 33, RECOVER ; Morning Sun
	db 37, PSYCHIC_M
	db 41, GIGA_IMPACT ; Last Resort
	db 45, NASTY_PLOT ; Power Swap
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FAINT_ATTACK
	db 25, NIGHT_SLASH ; Assurance
	db 29, SCREECH
	db 33, MOONLIGHT
	db 37, MEAN_LOOK
	db 41, GIGA_IMPACT ; Last Resort
	db 45, BARRIER ; Guard Swap
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, SING ; Grasswhistle
	db 20, MAGICAL_LEAF
	db 25, GIGA_DRAIN
	db 29, SWORDS_DANCE
	db 33, SYNTHESIS
	db 37, SUNNY_DAY
	db 41, GIGA_IMPACT ; Last Resort
	db 45, LEAF_BLADE
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, ICE_FANG
	db 25, ICE_SHARD
	db 29, BARRIER
	db 33, MIRROR_COAT
	db 37, HAIL
	db 41, GIGA_IMPACT ; Last Resort
	db 45, BLIZZARD
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, DRAININGKISS
	db 25, SWEET_KISS ; Skill Swap
	db 29, REFLECT ; Misty Terrain
	db 33, LIGHT_SCREEN
	db 37, MOONBLAST
	db 41, GIGA_IMPACT ; Last Resort
	db 45, PSYCH_UP
	db 0 ; no more level-up moves

CroagunkEvosAttacks:
	db EVOLVE_LEVEL, 37, TOXICROAK
	db 0 ; no more evolutions
	db 1, LICK ; Astonish
	db 3, MUD_SLAP
	db 8, POISON_STING
	db 10, HONE_CLAWS ; Taunt
	db 15, PURSUIT
	db 17, FAINT_ATTACK
	db 22, KARATE_CHOP ; Revenge
	db 24, SWAGGER
	db 29, MUD_SHOT ; Mud Bomb
	db 31, DRAIN_PUNCH ; Sucker Punch
	db 36, SUCKER_PUNCH ; Venoshock
	db 38, NASTY_PLOT
	db 43, CROSS_POISON ; Poison Jab
	db 45, SLUDGE_BOMB
	db 47, GUNK_SHOT ; Belch
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK ; Astonish
	db 3, MUD_SLAP
	db 8, POISON_STING
	db 10, HONE_CLAWS ; Taunt
	db 15, PURSUIT
	db 17, FAINT_ATTACK
	db 22, KARATE_CHOP ; Revenge
	db 24, SWAGGER
	db 29, MUD_SHOT ; Mud Bomb
	db 31, DRAIN_PUNCH ; Sucker Punch
	db 36, SUCKER_PUNCH ; Venoshock
	db 41, NASTY_PLOT
	db 49, CROSS_POISON ; Poison Jab
	db 54, SLUDGE_BOMB
	db 58, GUNK_SHOT ; Belch
	db 0 ; no more level-up moves

HeatmorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LICK
	db 6, FORESIGHT ; Odor Sleuth
	db 11, WRAP ; Bind
	db 16, FIRE_SPIN
	db 21, FURY_SWIPES
	db 26, HONE_CLAWS ; Snatch
	db 31, LAVA_PLUME ; Flame Burst
	db 36, BUG_BITE
	db 41, SLASH
	db 44, FIRE_PUNCH ; Fire Lash
	db 47, AMNESIA
	db 50, FLAMETHROWER
	db 56, CURSE ; Stockpile/Swallow/Spit Up
	db 61, FLARE_BLITZ
	db 66, OVERHEAT ; Inferno
	db 0 ; no more level-up moves

DurantEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 1, SAND_ATTACK
	db 1, FURY_CUTTER
	db 1, BITE
	db 6, AGILITY
	db 11, METAL_CLAW
	db 16, BUG_BITE
	db 21, CRUNCH
	db 26, IRON_HEAD
	db 31, DIG
	db 36, MINIMIZE ; Entrainment
	db 41, X_SCISSOR
	db 46, IRON_DEFENSE
	db 51, METEOR_MASH ; Guillotine
	db 56, SCREECH ; Metal Sound
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, POISON_GAS ; Smog
	db 7, SMOKESCREEN
	db 12, PURSUIT ; Assurance
	db 15, ACID ; Clear Smog
	db 18, SLUDGE
	db 23, SELFDESTRUCT
	db 26, HAZE
	db 29, ROLLOUT ; Gyro Ball
	db 34, SLUDGE_BOMB
	db 37, EXPLOSION
	db 40, DESTINY_BOND
	db 42, GUNK_SHOT ; Belch
	db 45, WILL_O_WISP ; Memento
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, POISON_GAS ; Smog
	db 7, SMOKESCREEN
	db 12, PURSUIT ; Assurance
	db 15, ACID ; Clear Smog
	db 18, SLUDGE
	db 23, SELFDESTRUCT
	db 26, HAZE
	db 29, ROLLOUT ; Gyro Ball
	db 34, SLUDGE_BOMB
	db 40, EXPLOSION
	db 46, DESTINY_BOND
	db 51, GUNK_SHOT ; Belch
	db 57, WILL_O_WISP ; Memento
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, BUBBLE
	db 8, RECOVER
	db 10, BUBBLEBEAM
	db 13, SAFEGUARD ; Refresh
	db 17, ANCIENTPOWER
	db 20, ROCK_TOMB ; Spike Cannon
	db 23, PROTECT ; Lucky Chant
	db 27, SCALD ; Brine
	db 29, IRON_DEFENSE
	db 31, ROCK_SLIDE ; Rock Blast
	db 35, ENDURE
	db 38, RAIN_DANCE ; Aqua Ring
	db 41, POWER_GEM
	db 45, MIRROR_COAT
	db 47, EARTH_POWER
	db 50, FLAIL
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 8, COUNTER ; Seismic Toss
	db 11, HARDEN
	db 15, KARATE_CHOP ; Revenge
	db 18, VITAL_THROW
	db 22, DIZZY_PUNCH ; Double Hit
	db 26, MACH_PUNCH ; Brick Break
	db 29, X_SCISSOR
	db 33, REVERSAL ; Submission
	db 36, CROSS_CHOP ; Storm Throw
	db 40, SWORDS_DANCE
	db 43, DOUBLE_EDGE ; Thrash
	db 47, CLOSE_COMBAT ; Superpower
	db 50, OUTRAGE ; Guillotine
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, MACH_PUNCH ; Feint
	db 10, ENDURE ; Aerial Ace
	db 16, VITAL_THROW ; Chip Away
	db 19, COUNTER
	db 25, FURY_ATTACK
	db 28, KARATE_CHOP ; Brick Break
	db 31, PIN_MISSILE
	db 34, TAKE_DOWN
	db 37, MEGAHORN
	db 43, CLOSE_COMBAT
	db 46, REVERSAL
	db 0 ; no more level-up moves

ThrohEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Bide
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, VITAL_THROW
	db 13, KARATE_CHOP ; Revenge
	db 17, DRAIN_PUNCH ; Storm Throw
	db 21, BODY_SLAM
	db 25, BULK_UP
	db 29, HAMMER_ARM ; Circle Throw
	db 33, ENDURE
	db 37, PROTECT ; Wide Guard
	db 41, CLOSE_COMBAT ; Superpower
	db 45, REVERSAL
	db 0 ; no more level-up moves

SawkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Rock Smash
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, DOUBLE_KICK ; Low Sweep
	db 13, COUNTER
	db 17, KARATE_CHOP
	db 21, CROSS_CHOP ; Brick Break
	db 25, BULK_UP
	db 29, HI_JUMP_KICK ; Retaliate
	db 33, ENDURE
	db 37, PROTECT ; Quick Guard
	db 41, CLOSE_COMBAT
	db 45, REVERSAL
	db 0 ; no more level-up moves

TropiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 1, GROWTH
	db 1, VINE_WHIP ; Razor Leaf
	db 6, SWEET_SCENT
	db 10, RAZOR_LEAF ; Stomp
	db 16, MAGICAL_LEAF
	db 21, WHIRLWIND
	db 26, SEED_BOMB ; Leaf Tornado
	db 30, BELLY_DRUM ; Natural Gift
	db 36, AIR_SLASH
	db 41, BODY_SLAM
	db 46, DOUBLE_EDGE ; Bestow
	db 50, SYNTHESIS
	db 56, SOLARBEAM
	db 61, WOOD_HAMMER ; Leaf Storm
	db 0 ; no more level-up moves

PawniardEvosAttacks:
	db EVOLVE_LEVEL, 52, BISHARP
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, LEER
	db 9, FURY_CUTTER
	db 14, SWAGGER ; Torment
	db 17, FAINT_ATTACK
	db 22, SCARY_FACE
	db 25, METAL_CLAW
	db 30, SLASH
	db 33, PSYCHO_CUT ; Assurance
	db 38, SCREECH ; Metal Sound
	db 41, BULLET_PUNCH ; Embargo
	db 46, IRON_DEFENSE
	db 49, NIGHT_SLASH
	db 54, IRON_HEAD
	db 57, SWORDS_DANCE
	db 62, METEOR_MASH ; Guillotine
	db 0 ; no more level-up moves

BisharpEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, LEER
	db 9, FURY_CUTTER
	db 14, SWAGGER ; Torment
	db 17, FAINT_ATTACK
	db 22, SCARY_FACE
	db 25, METAL_CLAW
	db 30, SLASH
	db 33, PSYCHO_CUT ; Assurance
	db 38, SCREECH ; Metal Sound
	db 41, BULLET_PUNCH ; Embargo
	db 46, IRON_DEFENSE
	db 49, NIGHT_SLASH
	db 57, IRON_HEAD
	db 63, SWORDS_DANCE
	db 71, METEOR_MASH ; Guillotine
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, SAND_ATTACK
	db 9, METAL_CLAW
	db 12, AIR_CUTTER
	db 17, FURY_ATTACK
	db 20, WING_ATTACK ; Feint
	db 23, SWIFT
	db 28, SLASH ; Spikes
	db 31, AGILITY
	db 34, STEEL_WING
	db 39, DRILL_PECK ; Slash
	db 42, SCREECH ; Metal Sound
	db 45, AIR_SLASH
	db 50, IRON_DEFENSE ; Autotomize
	db 53, NIGHT_SLASH
	db 0 ; no more level-up moves

MantykeEvosAttacks:
	db EVOLVE_HAPPINESS_BABY, TR_NITE, MANTINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 3, SUPERSONIC
	db 7, BUBBLEBEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 17, HEADBUTT
	db 19, WATER_PULSE
	db 23, SAFEGUARD ; Wide Guard
	db 27, TAKE_DOWN
	db 32, AGILITY
	db 36, AIR_SLASH
	db 39, RAIN_DANCE ; Aqua Ring
	db 46, ACROBATICS ; Bounce
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 3, SUPERSONIC
	db 7, BUBBLEBEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 17, HEADBUTT
	db 19, WATER_PULSE
	db 23, SAFEGUARD ; Wide Guard
	db 27, TAKE_DOWN
	db 32, AGILITY
	db 36, AIR_SLASH
	db 39, RAIN_DANCE ; Aqua Ring
	db 46, ACROBATICS ; Bounce
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

AxewEvosAttacks:
	db EVOLVE_LEVEL, 38, FRAXURE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, PURSUIT ; Assurance
	db 10, DRAGON_RAGE
	db 13, DRAGONBREATH ; Dual Chop
	db 16, SCARY_FACE
	db 20, SLASH
	db 24, FLAIL ; False Swipe
	db 28, DRAGON_CLAW
	db 32, DRAGON_DANCE
	db 36, SWAGGER ; Taunt
	db 41, DRAGON_PULSE
	db 46, SWORDS_DANCE
	db 50, BELLY_DRUM ; Guillotine
	db 56, OUTRAGE
	db 61, GIGA_IMPACT
	db 0 ; no more level-up moves

FraxureEvosAttacks:
	db EVOLVE_LEVEL, 48, HAXORUS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, PURSUIT ; Assurance
	db 10, DRAGON_RAGE
	db 13, DRAGONBREATH ; Dual Chop
	db 16, SCARY_FACE
	db 20, SLASH
	db 24, FLAIL ; False Swipe
	db 28, DRAGON_CLAW
	db 32, DRAGON_DANCE
	db 36, SWAGGER ; Taunt
	db 42, DRAGON_PULSE
	db 48, SWORDS_DANCE
	db 54, BELLY_DRUM ; Guillotine
	db 60, OUTRAGE
	db 66, GIGA_IMPACT
	db 0 ; no more level-up moves

HaxorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER
	db 7, PURSUIT ; Assurance
	db 10, DRAGON_RAGE
	db 13, DRAGONBREATH ; Dual Chop
	db 16, SCARY_FACE
	db 20, SLASH
	db 24, FLAIL ; False Swipe
	db 28, DRAGON_CLAW
	db 32, DRAGON_DANCE
	db 36, SWAGGER ; Taunt
	db 42, DRAGON_PULSE
	db 48, SWORDS_DANCE
	db 58, BELLY_DRUM ; Guillotine
	db 66, OUTRAGE
	db 74, GIGA_IMPACT
	db 0 ; no more level-up moves

BouffalantEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, LEER
	db 6, SAND_ATTACK ; Rage
	db 11, FURY_ATTACK
	db 16, BODY_SLAM ; Horn Attack
	db 21, SCARY_FACE
	db 26, DOUBLE_KICK ; Revenge
	db 31, EXTREMESPEED ; Head Charge
	db 36, FOCUS_ENERGY
	db 41, MEGAHORN
	db 46, REVERSAL
	db 50, DOUBLE_EDGE ; Thrash
	db 56, SWORDS_DANCE
	db 61, GIGA_IMPACT
	db 0 ; no more level-up moves

KlinkEvosAttacks:
	db EVOLVE_LEVEL, 38, KLANG
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 6, THUNDER_WAVE ; Charge
	db 11, THUNDERSHOCK
	db 16, GEAR_GRIND
	db 21, WRAP ; Bind
	db 26, SHOCK_WAVE ; Charge Beam
	db 31, AGILITY ; Autotomize
	db 36, MIRROR_SHOT
	db 39, SCREECH
	db 42, DISCHARGE
	db 45, IRON_DEFENSE ; Metal Sound
	db 48, DRAGON_DANCE ; Shift Gear
	db 50, LOCK_ON
	db 54, ZAP_CANNON
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

KlangEvosAttacks:
	db EVOLVE_LEVEL, 49, KLINKLANG
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 6, THUNDER_WAVE ; Charge
	db 11, THUNDERSHOCK
	db 16, GEAR_GRIND
	db 21, WRAP ; Bind
	db 26, SHOCK_WAVE ; Charge Beam
	db 31, AGILITY ; Autotomize
	db 36, MIRROR_SHOT
	db 40, SCREECH
	db 44, DISCHARGE
	db 48, IRON_DEFENSE ; Metal Sound
	db 52, DRAGON_DANCE ; Shift Gear
	db 56, LOCK_ON
	db 60, ZAP_CANNON
	db 64, HYPER_BEAM
	db 0 ; no more level-up moves

KlinklangEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 6, THUNDER_WAVE ; Charge
	db 11, THUNDERSHOCK
	db 16, GEAR_GRIND
	db 21, WRAP ; Bind
	db 26, SHOCK_WAVE ; Charge Beam
	db 31, AGILITY ; Autotomize
	db 36, MIRROR_SHOT
	db 40, SCREECH
	db 44, DISCHARGE
	db 48, IRON_DEFENSE ; Metal Sound
	db 54, DRAGON_DANCE ; Shift Gear
	db 60, LOCK_ON
	db 66, ZAP_CANNON
	db 72, HYPER_BEAM
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 10, RECOVER
	db 13, CONFUSION ; Psywave
	db 16, SWIFT
	db 18, BUBBLEBEAM
	db 22, DISABLE ; Camouflage
	db 24, ROLLOUT ; Gyro Ball
	db 28, SCALD ; Brine
	db 31, MINIMIZE
	db 35, SAFEGUARD ; Reflect Type
	db 37, POWER_GEM
	db 40, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 49, CALM_MIND ; Cosmic Power
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, RECOVER
	db 1, SWIFT
	db 40, CONFUSE_RAY
	db 0 ; no more level-up moves

CubchooEvosAttacks:
	db EVOLVE_LEVEL, 37, BEARTIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, POWDER_SNOW
	db 9, DEFENSE_CURL ; Bide
	db 13, ICY_WIND
	db 17, FURY_SWIPES
	db 21, ICE_PUNCH ; Brine
	db 25, ENDURE
	db 29, CHARM
	db 33, SLASH
	db 36, FLAIL
	db 41, REST
	db 45, BLIZZARD
	db 49, HAIL
	db 53, DOUBLE_EDGE ; Thrash
	db 0 ; no more level-up moves

BearticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, POWDER_SNOW
	db 9, DEFENSE_CURL ; Bide
	db 13, ICY_WIND
	db 17, FURY_SWIPES
	db 21, ICE_PUNCH ; Brine
	db 25, ENDURE
	db 29, CHARM
	db 33, SLASH
	db 36, FLAIL
	db 36, ICICLE_CRASH
	db 41, REST
	db 45, BLIZZARD
	db 53, HAIL
	db 59, DOUBLE_EDGE ; Thrash
	db 0 ; no more level-up moves

VanilliteEvosAttacks:
	db EVOLVE_LEVEL, 35, VANILLISH
	db 0 ; no more evolutions
	db 1, POWDER_SNOW ; Icicle Spear
	db 4, HARDEN
	db 7, LICK ; Astonish
	db 13, ICY_WIND
	db 16, MIST
	db 19, AURORA_BEAM ; Avalanche
	db 22, SWAGGER ; Taunt
	db 26, MIRROR_SHOT
	db 31, ACID_ARMOR
	db 35, ICE_BEAM
	db 40, HAIL
	db 44, MIRROR_COAT
	db 49, BLIZZARD
	db 0 ; no more level-up moves

VanillishEvosAttacks:
	db EVOLVE_LEVEL, 47, VANILLUXE
	db 0 ; no more evolutions
	db 1, POWDER_SNOW ; Icicle Spear
	db 4, HARDEN
	db 7, LICK ; Astonish
	db 13, ICY_WIND
	db 16, MIST
	db 19, AURORA_BEAM ; Avalanche
	db 22, SWAGGER ; Taunt
	db 26, MIRROR_SHOT
	db 31, ACID_ARMOR
	db 35, ICE_BEAM
	db 42, HAIL
	db 47, MIRROR_COAT
	db 53, BLIZZARD
	db 0 ; no more level-up moves

VanilluxeEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWDER_SNOW ; Icicle Spear
	db 4, HARDEN
	db 7, LICK ; Astonish
	db 13, ICY_WIND
	db 16, MIST
	db 19, AURORA_BEAM ; Avalanche
	db 22, SWAGGER ; Taunt
	db 26, MIRROR_SHOT
	db 31, ACID_ARMOR
	db 35, ICE_BEAM
	db 42, HAIL
	db 47, MIRROR_COAT
	db 59, BLIZZARD
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_HOLD, RAZOR_CLAW, TR_NITE, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, QUICK_ATTACK
	db 10, FAINT_ATTACK
	db 14, ICY_WIND
	db 16, FURY_SWIPES
	db 20, AGILITY
	db 22, METAL_CLAW
	db 25, HONE_CLAWS
	db 28, ICE_PUNCH ; Beat Up
	db 32, SCREECH
	db 35, SLASH
	db 40, THIEF ; Snatch
	db 44, ICICLE_CRASH ; Punishment
	db 47, ICE_SHARD
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, QUICK_ATTACK
	db 10, FAINT_ATTACK
	db 14, ICY_WIND
	db 16, FURY_SWIPES
	db 20, NASTY_PLOT
	db 22, METAL_CLAW
	db 25, HONE_CLAWS
	db 28, ICE_PUNCH ; Fling
	db 32, SCREECH
	db 35, NIGHT_SLASH
	db 40, THIEF ; Snatch
	db 44, ICICLE_CRASH ; Punishment
	db 47, DARK_PULSE
	db 0 ; no more level-up moves

CorphishEvosAttacks:
	db EVOLVE_LEVEL, 30, CRAWDAUNT
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, HARDEN
	db 7, VICEGRIP
	db 10, LEER
	db 14, BUBBLEBEAM
	db 17, PROTECT
	db 20, PSYCHO_CUT ; Double Hit
	db 23, FAINT_ATTACK ; Knock Off
	db 26, NIGHT_SLASH
	db 31, AQUA_JET ; Razor Shell
	db 34, SWAGGER ; Taunt
	db 37, SWORDS_DANCE
	db 39, CRUNCH
	db 43, AQUA_TAIL ; Crabhammer
	db 48, DRAGON_DANCE ; Guillotine
	db 0 ; no more level-up moves

CrawdauntEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, HARDEN
	db 7, VICEGRIP
	db 10, LEER
	db 14, BUBBLEBEAM
	db 17, PROTECT
	db 20, PSYCHO_CUT ; Double Hit
	db 23, FAINT_ATTACK ; Knock Off
	db 26, NIGHT_SLASH
	db 29, SWIFT
	db 32, AQUA_JET ; Razor Shell
	db 36, SWAGGER ; Taunt
	db 40, SWORDS_DANCE
	db 43, CRUNCH
	db 48, AQUA_TAIL ; Crabhammer
	db 54, DRAGON_DANCE ; Guillotine
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FORESIGHT ; Mud Sport
	db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MUD_SHOT ; Mud Bomb
	db 21, ICY_WIND
	db 24, ICE_SHARD
	db 28, TAKE_DOWN
	db 35, MIST
	db 37, EARTHQUAKE
	db 40, FLAIL
	db 44, BLIZZARD
	db 48, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db EVOLVE_ITEM, ICE_STONE, MAMOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FORESIGHT ; Mud Sport
	db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MUD_SHOT ; Mud Bomb
	db 21, ICY_WIND
	db 24, ICE_SHARD ; Ice Fang
	db 28, TAKE_DOWN
	db 32, ICE_FANG ; Fury Attack
	db 37, MIST
	db 41, ICICLE_CRASH ; Thrash
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, FORESIGHT ; Mud Sport
	db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MUD_SHOT ; Mud Bomb
	db 21, ICY_WIND
	db 24, ICE_SHARD ; Ice Fang
	db 28, TAKE_DOWN
	db 32, ICE_FANG ; Fury Attack
	db 37, MIST
	db 41, ICICLE_CRASH ; Thrash
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, SCARY_FACE
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, BODY_SLAM ; Chip Away
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, DOUBLE_EDGE ; Thrash
	db 32, DARK_PULSE
	db 37, MAGNITUDE ; Payback
	db 41, CRUNCH
	db 46, EARTHQUAKE
	db 50, STONE_EDGE
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, BODY_SLAM ; Chip Away
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, DOUBLE_EDGE ; Thrash
	db 34, DARK_PULSE
	db 41, MAGNITUDE ; Payback
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 60, STONE_EDGE
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, BODY_SLAM ; Chip Away
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, DOUBLE_EDGE ; Thrash
	db 34, DARK_PULSE
	db 41, MAGNITUDE ; Payback
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 63, STONE_EDGE
	db 73, HYPER_BEAM
	db 82, GIGA_IMPACT
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	db EVOLVE_LEVEL, 59, VOLCARONA
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, STRING_SHOT
	db 10, LEECH_LIFE ; Absorb
	db 20, TAKE_DOWN
	; Skipped Flame Charge
	db 30, BUG_BITE
	db 40, DOUBLE_EDGE
	db 50, FLAME_WHEEL
	db 60, BUG_BUZZ
	db 70, AMNESIA
	; Skipped Thrash
	db 80, FLARE_BLITZ
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, STRING_SHOT
	db 10, LEECH_LIFE ; Absorb
	db 20, GUST
	db 30, FIRE_SPIN
	db 40, WHIRLWIND
	; Skipped Silver Wind
	db 50, LAVA_PLUME ; Heat Wave
	db 58, QUIVER_DANCE
	db 60, BUG_BUZZ
	; Skipped Rage Powder
	db 70, HURRICANE
	db 80, OVERHEAT ; Fiery Dance
	db 0 ; no more level-up moves

TynamoEvosAttacks:
	db EVOLVE_LEVEL, 39, EELEKTRIK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDER_WAVE
	db 1, SPARK
	db 1, ACID ; Charge Beam
	db 9, WRAP
	db 29, THUNDER_FANG
	db 0 ; no more level-up moves

EelektrikEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, EELEKTROSS
	db 0 ; no more evolutions
	db 1, TACKLE ; Headbutt
	db 1, THUNDER_WAVE
	db 1, SPARK
	db 9, WRAP ; Bind
	db 19, ACID
	db 29, THUNDER_FANG ; Added from Tynamo's moves
	db 29, DISCHARGE
	db 38, CRUNCH
	db 44, THUNDERBOLT
	db 49, GUNK_SHOT ; Acid Spray
	db 54, GLARE ; Coil
	db 59, WILD_CHARGE
	; Skipped Gastro Acid
	db 64, ZAP_CANNON
	db 0 ; no more level-up moves

EelektrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, CRUNCH
	db 1, ACID
	db 1, ZAP_CANNON
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	db EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 0 ; no more level-up moves

MetangEvosAttacks:
	db EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 19, CONFUSION
	db 20, METAL_CLAW
	db 23, PURSUIT
	db 26, BULLET_PUNCH
	db 29, CALM_MIND ; Miracle Eye
	db 32, ZEN_HEADBUTT
	db 35, SCARY_FACE
	db 38, PSYCHIC_M
	db 41, AGILITY
	db 44, METEOR_MASH
	db 47, IRON_DEFENSE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 19, CONFUSION
	db 20, METAL_CLAW
	db 23, PURSUIT
	db 26, BULLET_PUNCH
	db 29, CALM_MIND ; Miracle Eye
	db 32, ZEN_HEADBUTT
	db 35, SCARY_FACE
	db 38, PSYCHIC_M
	db 41, AGILITY
	db 44, METEOR_MASH
	db 44, HAMMER_ARM
	db 52, IRON_DEFENSE
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

SphealEvosAttacks:
	db EVOLVE_LEVEL, 32, SEALEO
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POWDER_SNOW
	db 1, GROWL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, ENCORE
	db 13, ICE_SHARD ; Ice Ball
	db 17, SCALD ; Brine
	db 21, AURORA_BEAM
	db 26, BODY_SLAM
	db 31, REST ; + Snore
	db 36, HAIL
	db 41, BLIZZARD
	db 46, BELLY_DRUM ; Sheer Cold
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	db EVOLVE_LEVEL, 44, WALREIN
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POWDER_SNOW
	db 1, GROWL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, ENCORE
	db 13, ICE_SHARD ; Ice Ball
	db 17, SCALD ; Brine
	db 21, AURORA_BEAM
	db 26, BODY_SLAM
	db 31, REST ; + Snore
	db 31, SWAGGER
	db 38, HAIL
	db 45, BLIZZARD
	db 52, BELLY_DRUM ; Sheer Cold
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POWDER_SNOW
	db 1, GROWL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, ENCORE
	db 13, ICE_SHARD ; Ice Ball
	db 17, SCALD ; Brine
	db 21, AURORA_BEAM
	db 26, BODY_SLAM
	db 31, REST ; + Snore
	db 31, SWAGGER
	db 38, HAIL
	db 43, ICE_FANG
	db 49, BLIZZARD
	db 60, BELLY_DRUM ; Sheer Cold
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	db EVOLVE_LEVEL, 42, GLALIE
	db EVOLVE_ITEM_GENDER, MON_FEMALE, DAWN_STONE, FROSLASS
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, LEER
	db 5, DOUBLE_TEAM
	db 10, ICE_SHARD
	db 14, ICY_WIND
	db 19, BITE
	db 23, ICE_FANG
	db 28, HEADBUTT
	db 32, PROTECT
	db 37, ICE_BEAM ; Frost Breath
	db 41, CRUNCH
	db 46, BLIZZARD
	db 50, HAIL
	db 0 ; no more level-up moves

GlalieEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, LEER
	db 5, DOUBLE_TEAM
	db 10, ICE_SHARD
	db 14, ICY_WIND
	db 19, BITE
	db 23, ICE_FANG
	db 28, HEADBUTT
	db 32, PROTECT
	db 37, ICE_BEAM ; Frost Breath
	db 41, CRUNCH
	db 41, ICICLE_CRASH ; Freeze-Dry
	db 48, BLIZZARD
	db 54, HAIL
	db 60, GLARE ; Sheer Cold
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, LEER
	db 5, DOUBLE_TEAM
	db 10, ICE_SHARD
	db 14, ICY_WIND
	db 19, SHADOW_SNEAK ; Astonish
	db 23, DRAININGKISS
	db 28, WILL_O_WISP
	db 32, CONFUSE_RAY
	db 37, ICE_BEAM ; Wake-Up Slap
	db 41, SHADOW_BALL
	db 48, BLIZZARD
	db 54, HAIL
	db 60, DESTINY_BOND
	db 0 ; no more level-up moves

CryogonalEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_SHARD
	db 5, ICY_WIND
	db 9, MIST
	db 9, HAZE
	db 13, AURORA_BEAM
	db 17, ACID_ARMOR
	db 21, ANCIENTPOWER
	db 25, ICE_BEAM
	db 29, LIGHT_SCREEN
	db 33, REFLECT
	db 37, SLASH
	db 41, CONFUSE_RAY
	db 45, RECOVER
	db 50, SOLARBEAM
	db 53, NIGHT_SLASH
	db 57, BLIZZARD ; Sheer Cold
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE ; Water Gun
	db 17, DRAGON_RAGE ; Twister
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, SCALD ; Brine
	db 36, AGILITY
	db 41, DRAGON_PULSE
	db 46, DRAGON_DANCE
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_HOLD, DRAGON_SCALE, TR_ANYTIME, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE ; Water Gun
	db 17, DRAGON_RAGE ; Twister
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, SCALD ; Brine
	db 38, AGILITY
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE ; Water Gun
	db 17, DRAGON_RAGE ; Twister
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, SCALD ; Brine
	db 38, AGILITY
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

StunfiskEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 5, MUD_SLAP ; Bide
	db 9, THUNDERSHOCK
	db 13, MUD_SHOT
	db 17, MINIMIZE ; Camouflage
	db 21, MAGNITUDE ; Mud Bomb
	db 25, DISCHARGE
	db 30, ENDURE
	db 35, ACROBATICS ; Bounce
	db 40, EARTH_POWER ; Muddy Water
	db 45, THUNDERBOLT
	db 50, COUNTER ; Revenge
	db 55, FLAIL
	db 61, EARTHQUAKE ; Fissure
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ; Slam
	db 25, AGILITY
	db 31, DRAGON_CLAW ; Dragon Tail
	db 35, AQUA_TAIL
	db 41, DRAGON_PULSE ; Dragon Rush
	db 45, SAFEGUARD
	db 51, DRAGON_DANCE
	db 55, OUTRAGE
	db 61, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ; Slam
	db 25, AGILITY
	db 33, DRAGON_CLAW ; Dragon Tail
	db 39, AQUA_TAIL
	db 47, DRAGON_PULSE ; Dragon Rush
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM ; Slam
	db 25, AGILITY
	db 33, DRAGON_CLAW ; Dragon Tail
	db 39, AQUA_TAIL
	db 47, DRAGON_PULSE ; Dragon Rush
	db 53, SAFEGUARD
	db 54, WING_ATTACK
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 81, HURRICANE
	db 0 ; no more level-up moves

DeinoEvosAttacks:
	db EVOLVE_LEVEL, 50, ZWEILOUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DRAGON_RAGE
	db 4, FOCUS_ENERGY
	db 9, BITE
	db 12, HEADBUTT
	db 17, DRAGONBREATH
	db 20, ROAR
	db 25, CRUNCH
	db 28, BODY_SLAM ; Slam
	db 32, DRAGON_PULSE
	db 38, HONE_CLAWS ; Work Up
	db 42, DRAGON_CLAW ; Dragon Rush
	db 48, DARK_PULSE ; Body Slam
	db 50, SCARY_FACE
	db 58, HYPER_VOICE
	db 62, OUTRAGE
	db 0 ; no more level-up moves

ZweilousEvosAttacks:
	db EVOLVE_LEVEL, 64, HYDREIGON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DRAGON_RAGE
	db 4, FOCUS_ENERGY
	db 9, BITE
	db 12, HEADBUTT
	db 17, DRAGONBREATH
	db 20, ROAR
	db 25, CRUNCH
	db 28, BODY_SLAM ; Slam
	db 32, DRAGON_PULSE
	db 38, HONE_CLAWS ; Work Up
	db 42, DRAGON_CLAW ; Dragon Rush
	db 48, DARK_PULSE ; Body Slam
	db 50, SCARY_FACE
	db 64, HYPER_VOICE
	db 71, OUTRAGE
	db 0 ; no more level-up moves

HydreigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DRAGON_RAGE
	db 4, FOCUS_ENERGY
	db 9, BITE
	db 12, HEADBUTT
	db 17, DRAGONBREATH
	db 20, ROAR
	db 25, CRUNCH
	db 28, BODY_SLAM ; Slam
	db 32, DRAGON_PULSE
	db 38, HONE_CLAWS ; Work Up
	db 42, DRAGON_CLAW ; Dragon Rush
	db 48, DARK_PULSE ; Body Slam
	db 50, SCARY_FACE
	db 63, TRI_ATTACK
	db 64, HYPER_VOICE
	db 79, OUTRAGE
	db 0 ; no more level-up moves

GenesectEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, METAL_CLAW
	db 1, SCREECH
	db 7, FURY_CUTTER
	db 11, LOCK_ON
	db 18, FLAME_WHEEL
	db 22, ROAR ; Magnet Bomb
	db 29, SLASH
	db 33, BODY_SLAM ; Metal Sound
	db 40, SIGNAL_BEAM
	db 44, TRI_ATTACK
	db 51, X_SCISSOR
	db 55, BUG_BUZZ
	db 62, SCARY_FACE ; Simple Beam
	db 66, ZAP_CANNON
	db 73, HYPER_BEAM
	db 77, SELFDESTRUCT
	db 0 ; no more level-up moves

GenesisEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTHQUAKE
	db 1, FLAMETHROWER
	db 1, ICE_BEAM
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves
