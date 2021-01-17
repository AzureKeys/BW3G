time_group EQUS "0," ; use the nth TimeFishGroups entry

fishgroup: MACRO
; chance, old rod, good rod, super rod
	dbwww \1, \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super

.Shore_Old:
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     CORPHISH,     10
.Shore_Good:
	db  35 percent,     TYMPOLE,   20
	db  70 percent,     CORPHISH,     20
	db  90 percent + 1, CORPHISH,     20
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     CORPHISH,     40
	db  70 percent,     time_group 1
	db  90 percent + 1, CORPHISH,     40
	db 100 percent,     CRAWDAUNT,    40

.Ocean_Old:
	db  70 percent + 1, FRILLISH,   10
	db  85 percent + 1, FRILLISH,   10
	db 100 percent,     MANTYKE,  10
.Ocean_Good:
	db  35 percent,     FRILLISH,   20
	db  70 percent,     MANTYKE,  20
	db  90 percent + 1, MANTYKE,   20
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     STARYU,   40
	db  70 percent,     time_group 3
	db  90 percent + 1, STARYU, 40
	db 100 percent,     JELLICENT,    40

.Lake_Old:
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     REMORAID,    10
.Lake_Good:
	db  35 percent,     REMORAID,   20
	db  70 percent,     BASCULIN,    20
	db  90 percent + 1, BASCULIN,    20
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     BASCULIN,    40
	db  70 percent,     time_group 5
	db  90 percent + 1, HORSEA,   40
	db 100 percent,     OCTILLERY,    40

.Pond_Old:
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, TYMPOLE,   10
	db 100 percent,     TYNAMO,    10
.Pond_Good:
	db  35 percent,     TYNAMO,   20
	db  70 percent,     TYNAMO,    20
	db  90 percent + 1, PALPITOAD,    20
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     PALPITOAD,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, EELEKTRIK,   40
	db 100 percent,     EELEKTRIK,    40

.Dratini_Old:
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     HORSEA,   10
.Dratini_Good:
	db  35 percent,     HORSEA,   20
	db  70 percent,     TYNAMO,   20
	db  90 percent + 1, TYNAMO,   20
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     DRATINI,   40
	db  70 percent,     time_group 9
	db  90 percent + 1, SEADRA,   40
	db 100 percent,     SEADRA,  40

.Qwilfish_Swarm_Old:
	db  70 percent + 1, TYNAMO,   5
	db  85 percent + 1, TYNAMO,   5
	db 100 percent,     STUNFISK,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     TYNAMO,   20
	db  70 percent,     STUNFISK,   20
	db  90 percent + 1, STUNFISK,   20
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     STUNFISK,   40
	db  70 percent,     time_group 11
	db  90 percent + 1, STUNFISK,   40
	db 100 percent,     STUNFISK,   40

.Remoraid_Swarm_Old:
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	db  35 percent,     TYNAMO,   20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   40
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   40
	db 100 percent,     REMORAID,   40

.Gyarados_Old:
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     TYNAMO,   10
.Gyarados_Good:
	db  35 percent,     TYNAMO,   20
	db  70 percent,     TYNAMO,   20
	db  90 percent + 1, TYNAMO,   20
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     TYNAMO,   40
	db  70 percent,     time_group 15
	db  90 percent + 1, TYNAMO,   40
	db 100 percent,     TYNAMO,   40

.Dratini_2_Old:
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     TYNAMO,   10
.Dratini_2_Good:
	db  35 percent,     TYNAMO,   10
	db  70 percent,     TYNAMO,   10
	db  90 percent + 1, TYNAMO,   10
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     TYNAMO,   10
	db  70 percent,     time_group 17
	db  90 percent + 1, TYNAMO,   10
	db 100 percent,     DRAGONAIR,  10

.WhirlIslands_Old:
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     DWEBBLE,     10
.WhirlIslands_Good:
	db  35 percent,     TYNAMO,   20
	db  70 percent,     DWEBBLE,     20
	db  90 percent + 1, DWEBBLE,     20
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     DWEBBLE,     40
	db  70 percent,     time_group 19
	db  90 percent + 1, CRUSTLE,    40
	db 100 percent,     SEADRA,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     FRILLISH,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     TYNAMO,   20
	db  70 percent,     FRILLISH,  20
	db  90 percent + 1, FRILLISH,  20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     FRILLISH,  40
	db  70 percent,     time_group 21
	db  90 percent + 1, TYNAMO,   40
	db 100 percent,     STUNFISK,   40

.Remoraid_Old:
	db  70 percent + 1, TYNAMO,   10
	db  85 percent + 1, TYNAMO,   10
	db 100 percent,     TYMPOLE,    10
.Remoraid_Good:
	db  35 percent,     TYNAMO,   20
	db  70 percent,     TYMPOLE,    20
	db  90 percent + 1, TYMPOLE,    20
	db 100 percent,     time_group 6
.Remoraid_Super:
	db  40 percent,     TYMPOLE,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, TYNAMO,   40
	db 100 percent,     REMORAID,   40

TimeFishGroups:
	;  day              nite
	db CORSOLA,    20,  CORSOLA,     20 ; 0
	db CORSOLA,    40,  CORSOLA,     40 ; 1
	db STARYU,   20,  STARYU,   20 ; 2
	db MANTINE,   40,  MANTINE,   40 ; 3
	db HORSEA,    20,  HORSEA,    20 ; 4
	db HORSEA,    40,  HORSEA,    40 ; 5
	db STUNFISK,    20,  STUNFISK,    20 ; 6
	db STUNFISK,    40,  STUNFISK,    40 ; 7
	db DRATINI,    20,  DRATINI,    20 ; 8
	db EELEKTRIK,    40,  EELEKTRIK,    40 ; 9
	db STUNFISK,   20,  STUNFISK,   20 ; 10
	db STUNFISK,   40,  STUNFISK,   40 ; 11
	db REMORAID,   20,  REMORAID,   20 ; 12
	db REMORAID,   40,  REMORAID,   40 ; 13
	db EELEKTRIK,   20,  EELEKTRIK,   20 ; 14
	db EELEKTRIK,   40,  EELEKTRIK,   40 ; 15
	db DRATINI,    10,  DRATINI,    10 ; 16
	db DRATINI,    10,  DRATINI,    10 ; 17
	db HORSEA,     20,  HORSEA,     20 ; 18
	db HORSEA,     40,  HORSEA,     40 ; 19
	db FRILLISH,  20,  FRILLISH,  20 ; 20
	db FRILLISH,  40,  FRILLISH,  40 ; 21
