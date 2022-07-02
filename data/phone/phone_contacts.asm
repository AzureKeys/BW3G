phone: MACRO
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	phone TRAINER_NONE,   PHONE_00,              N_A,                0,       UnusedPhoneScript,       0, UnusedPhoneScript
	phone TRAINER_NONE,   PHONECONTACT_MOM,      PLAYERS_HOUSE_1F,   ANYTIME, MomPhoneCalleeScript,    0, UnusedPhoneScript
	phone TRAINER_NONE,   PHONECONTACT_BILL,     N_A,                ANYTIME, BillPhoneCalleeScript,   0, BillPhoneCallerScript
	phone TRAINER_NONE,   PHONECONTACT_CHEREN,   N_A,                ANYTIME, CherenPhoneCalleeScript, 0, CherenPhoneCallerScript
	phone TRAINER_NONE,   PHONECONTACT_BIANCA,   N_A,                ANYTIME, BiancaPhoneCalleeScript, 0, BiancaPhoneCallerScript
	phone YOUNGSTER,      YOUNGSTER_R13,         R_13,               ANYTIME, DanPhoneCalleeScript,    0, DanPhoneCallerScript
	phone SCHOOL_KIDF,    SCHOOL_KIDF_R14,       R_14,               ANYTIME, JewelPhoneCalleeScript,    0, JewelPhoneCallerScript
	phone BIRD_KEEPER,    BIRD_KEEPER_OUTSKIRTS, LENTIMAS_OUTSKIRTS, ANYTIME, FreddyPhoneCalleeScript,   0, FreddyPhoneCallerScript
	phone DANCER,         DANCER_R5_1,           R_5,                ANYTIME, EricPhoneCalleeScript,     0, EricPhoneCallerScript
	phone LADY,           LADY_R4,               R_4,                ANYTIME, LaceyPhoneCalleeScript,    0, LaceyPhoneCallerScript
	phone MAID,           MAID_R19,              R_19,               ANYTIME, SophiePhoneCalleeScript,   0, SophiePhoneCallerScript
	phone PKMN_RANGERF,   PKMN_RANGERF_R3,       R_3,                ANYTIME, ArianaPhoneCalleeScript,   0, ArianaPhoneCallerScript
	phone COOLTRAINERF_D, COOLTRAINERF_R2,       R_2,                ANYTIME, CarlaPhoneCalleeScript,    0, CarlaPhoneCallerScript
	phone MAID,           MAID_R1,               R_1,                ANYTIME, ClarissaPhoneCalleeScript, 0, ClarissaPhoneCallerScript
	phone COOLTRAINERF_D, COOLTRAINERF_R18,      R_18,               ANYTIME, JennyPhoneCalleeScript,    0, JennyPhoneCallerScript
	phone SCIENTIST_M,    SCIENTISTM_R6,         R_6,                ANYTIME, MarcoPhoneCalleeScript,    0, MarcoPhoneCallerScript
	phone PSYCHIC_T_F,    PSYCHIC_R7,            R_7,                ANYTIME, MarlaPhoneCalleeScript,    0, MarlaPhoneCallerScript
	; phone BUG_CATCHER,  ARNIE1,                ROUTE_35,                  ANYTIME, ArniePhoneCalleeScript,    0, ArniePhoneCallerScript
	; phone SCHOOLBOY,    ALAN1,                 ROUTE_36,                  ANYTIME, AlanPhoneCalleeScript,     0, AlanPhoneCallerScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	; phone LASS,         DANA1,                 ROUTE_38,                  ANYTIME, DanaPhoneCalleeScript,    ANYTIME, DanaPhoneCallerScript
	; phone SCHOOLBOY,    CHAD1,                 ROUTE_38,                  ANYTIME, ChadPhoneCalleeScript,    ANYTIME, ChadPhoneCallerScript
	; phone POKEFANM,     DEREK1,                ROUTE_39,                  ANYTIME, DerekPhoneCalleeScript,   ANYTIME, DerekPhoneCallerScript
	; phone FISHER,       TULLY1,                ROUTE_42,                  ANYTIME, TullyPhoneCalleeScript,   ANYTIME, TullyPhoneCallerScript
	; phone POKEMANIAC,   BRENT1,                ROUTE_43,                  ANYTIME, BrentPhoneCalleeScript,   ANYTIME, BrentPhoneCallerScript
	; phone PICNICKER,    TIFFANY3,              ROUTE_43,                  ANYTIME, TiffanyPhoneCalleeScript, ANYTIME, TiffanyPhoneCallerScript
	; phone BIRD_KEEPER,  VANCE1,                ROUTE_44,                  ANYTIME, VancePhoneCalleeScript,   ANYTIME, VancePhoneCallerScript
	; phone FISHER,       WILTON1,               ROUTE_44,                  ANYTIME, WiltonPhoneCalleeScript,  ANYTIME, WiltonPhoneCallerScript
	; phone BLACKBELT_T,  KENJI3,                ROUTE_45,                  ANYTIME, KenjiPhoneCalleeScript,   ANYTIME, KenjiPhoneCallerScript
	; phone HIKER,        PARRY1,                ROUTE_45,                  ANYTIME, ParryPhoneCalleeScript,   ANYTIME, ParryPhoneCallerScript
	; phone PICNICKER,    ERIN1,                 ROUTE_46,                  ANYTIME, ErinPhoneCalleeScript,    ANYTIME, ErinPhoneCallerScript
	; phone TRAINER_NONE, PHONECONTACT_BUENA,    GOLDENROD_DEPT_STORE_ROOF, ANYTIME, BuenaPhoneCalleeScript,   ANYTIME, BuenaPhoneCallerScript
	