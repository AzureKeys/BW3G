mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	mon_prob 20,  0 ; 20% chance
	mon_prob 35,  1 ; 15% chance
	mon_prob 50,  2 ; 15% chance
	mon_prob 65,  3 ; 15% chance
	mon_prob 75,  4 ; 10% chance
	mon_prob 85,  5 ; 10% chance
	mon_prob 90,  6 ;  5% chance
	mon_prob 95,  7 ;  5% chance
	mon_prob 99,  8 ;  4% chance
	mon_prob 100, 9 ;  1% chance

WaterMonProbTable:
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 100, 2 ; 10% chance
