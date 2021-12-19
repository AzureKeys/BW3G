npctrade: MACRO
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	shift
	dw \7
	db \8, \9, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	npctrade TRADE_DIALOGSET_HAPPY,     CLEFFA,     MAGNEMITE,  "TRON@@@@@@@", $68, $96, BERRY,        37460, "HUEY@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_CREEPY,    ZORUA,      SPIRITOMB,  "SOULCASKET@", $96, $66, MYSTERYBERRY, 48926, "REGINA@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      CORSOLA,    BELDUM,     "ARMS@@@@@@@", $98, $88, GOLD_BERRY,   29189, "LUCY@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, MARACTUS,   THROH,      "ERNESTO@@@@", $AA, $66, PROTEIN,      00283, "EMY@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, MARACTUS,   SAWK,       "ROBERTO@@@@", $AA, $66, PROTEIN,      15616, "KRISSY@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     TROPIUS,    PAWNIARD,   "SHREDDER@@@", $C9, $69, FOCUS_SASH,   37644, "LAURIE@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      SKARMORY,   LARVITAR,   "FLUFFY@@@@@", $C9, $69, KINGS_ROCK,   26491, "KIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     AXEW,       DEINO,      "VALMONT@@@@", $89, $BC, DRAGON_FANG,  50082, "DOUG@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, KLINK,      DRATINI,    "SHEN@@@@@@@", $B8, $BA, LIFE_ORB,     26592, "STANLEY@@@@", TRADE_GENDER_EITHER
