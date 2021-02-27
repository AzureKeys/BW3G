specialcall: MACRO
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_BIANCA,   BiancaPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_BIANCA,   BiancaPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_BIANCA,   BiancaPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_BIANCA,   BiancaPhoneCallerScript
	specialcall SpecialCallWhereverYouAre, PHONECONTACT_CHEREN,   CherenPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_CHEREN,   CherenPhoneCallerScript
	