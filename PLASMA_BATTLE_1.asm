; ===========================================================================
; Song name: New song
;
; File converted by FroggestSpirit's Midi to GSC ASM converter 1.barelyabove0
; ===========================================================================

SONG_START EQU $0

		include "pkms.asm"

		SECTION "ROM", HOME[0]
; ===========================================================================
NewSong_Channel1:
		pkmsSetTempo	0, $70
		pkmsSetVolume	$77
		pkmsSetDuty	1
		pkmsSetNtr	$C, 11, 8
Channel1_Bar1:
		db oct2
		pkmsSetDuty	4
		db (ntC | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntC | 0)
Channel1_Bar2:
		db (ntG | 0)
		db (ntF# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntG | 0)
		pkmsSetDuty	7
		db (ntC | 2)
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntG | 0)
Channel1_Bar3:
		db (ntA# | 2)
		db (ntG | 0)
		db oct3
		db (ntD# | 3)
		pkmsSetDuty	4
		pkmsSetDuty	7
		db (ntE | 15)
Channel1_Bar4:
		db oct2
		db (ntC | 2)
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntG | 0)
Channel1_Bar5:
		db (ntA# | 2)
		db (ntG | 0)
		db (ntB | 3)
		db oct3
		db (ntC | 15)
Channel1_Bar6:
		pkmsSetDuty	0
		db (ntC | 15)
Channel1_Bar7:
		db (ntC | 10)
Channel1_Bar8:
		db (ntC# | 4)
		db (ntC | 15)
Channel1_Bar9:
		db (ntC | 0)
		db (ntF | 0)
		db (ntD# | 0)
		db oct2
		db (ntA# | 2)
		db (ntA# | 2)
Channel1_Bar10:
		db (ntA# | 2)
		db oct3
		db (ntF# | 3)
		db (ntC | 11)
Channel1_Bar11:
		db (ntG | 3)
		db (ntD# | 6)
		db (ntG# | 4)
Channel1_Bar12:
		db (ntG | 3)
		db (ntD# | 2)
		db (ntD | 0)
		db (ntC | 11)
Channel1_Bar13:
		pkmsSetDuty	7
		db (ntC | 2)
		db (ntD | 0)
		db (ntD# | 7)
Channel1_Bar14:
		db (ntC# | 2)
		db (ntC# | 0)
		pkmsSetDuty	0
		db (ntC | 11)
Channel1_Bar15:
		db (ntG | 3)
		db (ntD# | 6)
		db (ntG# | 4)
Channel1_Bar16:
		db (ntG | 3)
		db (ntD# | 2)
		db (ntD | 0)
		db (ntC | 11)
Channel1_Bar17:
		pkmsSetDuty	7
		db (ntC | 2)
		db (ntD | 0)
		db (ntD# | 7)
Channel1_Bar18:
		db (ntF | 3)
		pkmsSetDuty	0
		db (ntD | 11)
Channel1_Bar19:
		db (ntA | 3)
		db (ntG | 6)
		db (ntA# | 4)
Channel1_Bar20:
		db (ntA | 3)
		db (ntF | 2)
		db (ntG | 0)
		db (ntA | 15)
Channel1_Bar21:
		db (ntA | 10)
Channel1_Bar22:
		db oct2
		db (ntD# | 0)
		db (ntE | 3)
		db (ntE | 3)
Channel1_Bar23:
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
		db (ntG | 2)
		db (ntG | 2)
Channel1_Bar24:
		db (ntF | 2)
		db (ntD | 2)
		db (ntF | 2)
		db (ntE | 3)
		db (ntE | 3)
Channel1_Bar25:
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
		db (ntG | 2)
Channel1_Bar26:
		db (ntG | 2)
		db (ntF | 2)
		db (ntA# | 2)
		db (ntA | 2)
		db oct3
		db (ntE | 2)
Channel1_Bar27:
		db (ntE | 0)
		db (ntE | 2)
		db (ntE | 0)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
Channel1_Bar28:
		db (ntG | 2)
		db (ntG | 2)
		db (ntF | 2)
		db (ntD | 2)
		db (ntF | 2)
Channel1_Bar29:
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
Channel1_Bar30:
		db (ntE | 2)
		db (ntG | 2)
		db (ntG | 2)
		db (ntF | 2)
		db (ntA# | 2)
Channel1_Bar31:
		db oct4
		db (ntC# | 2)
		db (ntD | 15)
Channel1_Bar32:
		db (ntD | 15)
Channel1_Bar33:
		db (ntD | 15)
Channel1_Bar34:
		db (ntD | 15)
Channel1_Bar35:
		db oct3
		db (ntD | 11)
Channel1_Bar36:
		db (ntA | 3)
		db (ntF | 6)
		db (ntA# | 4)
Channel1_Bar37:
		db (ntA | 3)
		db (ntF | 2)
		db (ntE | 0)
		db (ntD | 15)
Channel1_Bar38:
		db (ntD | 11)
Channel1_Bar39:
		db (ntD | 11)
Channel1_Bar40:
		db (ntA | 3)
		db (ntF | 6)
		db (ntA# | 4)
Channel1_Bar41:
		db (ntA | 3)
		db (ntF | 2)
		db (ntE | 0)
		db (ntD | 15)
Channel1_Bar42:
		db (ntD | 11)
Channel1_Bar43:
		db (ntE | 11)
Channel1_Bar44:
		db (ntB | 3)
		db (ntA | 6)
		db oct4
		db (ntC | 4)
Channel1_Bar45:
		db oct3
		db (ntB | 3)
		db (ntG | 2)
		db (ntA | 0)
		db (ntB | 15)
Channel1_Bar46:
		pkmsSetDuty	1
		db (ntB | 11)
Channel1_Bar47:
		db oct2
		db (ntA | 2)
		db (ntA# | 2)
		db (ntA | 2)
		db oct3
		db (ntC | 2)
Channel1_Bar48:
		db oct2
		db (ntA# | 2)
		db (ntG | 2)
		db (ntA | 2)
		db (ntA# | 2)
		db oct3
		db (ntC | 2)
		db oct2
		db (ntA# | 2)
Channel1_Bar49:
		db oct3
		db (ntC | 2)
		db (ntD# | 2)
		db (ntD | 2)
		db (ntD# | 2)
		db (ntD | 2)
Channel1_Bar50:
		db (ntF | 2)
		db (ntD# | 2)
		db (ntC | 2)
		db (ntD | 2)
		db (ntD# | 2)
Channel1_Bar51:
		db (ntF | 2)
		db (ntD# | 2)
		db (ntF | 2)
		db (ntG# | 2)
		pkmsSetDuty	0
		db (ntG | 15)
Channel1_Bar52:
		db (ntG# | 12)
Channel1_Bar53:
		db (ntA# | 0)
		db (ntG# | 0)
		db (ntG | 15)
Channel1_Bar54:
		db (ntC | 7)
Channel1_Bar55:
		db oct2
		db oct1
		db oct2
		db oct3
		db (ntG | 15)
Channel1_Bar56:
		db (ntG# | 12)
Channel1_Bar57:
		db (ntA# | 0)
		db (ntG# | 0)
		db (ntG | 11)
		db oct2
		db oct3
		db oct4
		db (ntC | 14)
Channel1_Bar58:
		db (ntD# | 0)
		db (ntC# | 15)
Channel1_Bar59:
		db (ntC# | 15)
Channel1_Bar60:
		db (ntC# | 15)
Channel1_Bar61:
		db oct3
		db (ntA# | 15)
Channel1_Bar62:
		db oct4
		db (ntC | 15)
Channel1_Bar63:
		db (ntC | 15)
Channel1_Bar64:
		db (ntC | 15)
Channel1_Bar65:
		db (ntC | 14)
Channel1_Bar66:
		db (ntD# | 0)
		db (ntC# | 15)
Channel1_Bar67:
		db (ntC# | 15)
Channel1_Bar68:
		db (ntC# | 15)
Channel1_Bar69:
		db oct5
		db (ntC# | 15)
Channel1_Bar70:
		db (ntC | 1)
Channel1_Bar71:
		db oct4
		db oct3
		db (ntG | 15)
Channel1_Bar72:
		db (ntG | 15)
Channel1_Bar73:
		db (ntG | 15)
Channel1_Bar74:
		db (ntG | 6)
		db oct2
		db (ntG# | 0)
		db (ntA | 0)
		pkmsEndSound

; ===========================================================================
NewSong_Channel2:
		pkmsSetDuty	1
		pkmsSetNtr	$C, 11, 8
Channel2_Bar1:
		db oct1
		db (ntD | 0)
		db (ntD# | 0)
		db (ntE | 0)
		db (ntD# | 0)
		db (ntE | 0)
		db (ntF | 0)
		db (ntE | 0)
		db (ntF | 0)
		db (ntF# | 0)
		db (ntF | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntG# | 0)
		db (ntG | 0)
Channel2_Bar2:
		db (ntG# | 0)
		db (ntA | 0)
		db (ntG# | 0)
		db (ntA | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntA# | 0)
		db (ntB | 0)
		db oct2
		db (ntC | 15)
Channel2_Bar3:
		db (ntE | 2)
		db (ntG | 2)
		db (ntE | 2)
Channel2_Bar4:
		db (ntC | 2)
		db (ntC# | 2)
		db oct1
		db (ntA# | 2)
		db oct2
		db (ntC | 15)
Channel2_Bar5:
		db (ntE | 2)
		db (ntG | 2)
Channel2_Bar6:
		db (ntE | 2)
		db (ntA# | 2)
		db (ntF# | 2)
		db (ntG | 2)
		pkmsSetDuty	5
		db oct1
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 2)
Channel2_Bar7:
		db (ntC | 8)
		db (ntC | 0)
		db (ntC | 8)
Channel2_Bar8:
		db (ntC# | 4)
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 2)
Channel2_Bar9:
		db (ntC | 8)
		db oct2
		db (ntC | 0)
		pkmsSetDuty	1
		pkmsSetDuty	5
		db (ntF | 0)
		pkmsSetDuty	1
		pkmsSetDuty	5
		db (ntD# | 0)
		pkmsSetDuty	1
		pkmsSetDuty	5
		db (ntF# | 2)
		db (ntF# | 2)
Channel2_Bar10:
		db (ntF# | 2)
		db (ntF# | 3)
		pkmsSetDuty	1
		db (ntG | 11)
Channel2_Bar11:
		db (ntF | 3)
		db (ntG# | 6)
Channel2_Bar12:
		db (ntF | 4)
		db (ntB | 3)
		db (ntD# | 2)
		db (ntF | 0)
		db (ntG | 11)
Channel2_Bar13:
		pkmsSetDuty	5
		db (ntC | 2)
		db (ntD | 0)
		db (ntD# | 7)
Channel2_Bar14:
		db (ntC# | 2)
		db (ntC# | 0)
		pkmsSetDuty	1
		db (ntG | 11)
Channel2_Bar15:
		db (ntD# | 3)
		db (ntG# | 6)
Channel2_Bar16:
		db (ntA# | 4)
		db (ntB | 3)
		db oct3
		db (ntC | 2)
		db oct2
		db (ntA# | 0)
		db (ntG | 11)
Channel2_Bar17:
		pkmsSetDuty	5
		db (ntC | 2)
		db (ntD | 0)
		db (ntD# | 7)
Channel2_Bar18:
		db (ntG | 3)
		pkmsSetDuty	1
		db (ntA | 11)
Channel2_Bar19:
		db (ntF | 3)
		db (ntA# | 6)
Channel2_Bar20:
		db (ntA | 4)
		db oct3
		db (ntC# | 3)
		db (ntD | 2)
		db (ntE | 0)
		db (ntF | 11)
Channel2_Bar21:
		pkmsSetDuty	5
		db oct2
		db (ntD | 2)
		db (ntE | 0)
		db (ntF | 15)
Channel2_Bar22:
		pkmsSetDuty	1
		db oct1
		db (ntG | 3)
Channel2_Bar23:
		db (ntG | 2)
		db (ntG | 2)
		db (ntG | 2)
		db (ntG | 2)
		db (ntA# | 2)
Channel2_Bar24:
		db (ntA# | 2)
		db (ntG# | 2)
		db (ntF | 2)
		db (ntG# | 2)
		db (ntG | 3)
Channel2_Bar25:
		db (ntG | 3)
		db (ntG | 2)
		db (ntG | 2)
		db (ntG | 2)
		db (ntG | 2)
Channel2_Bar26:
		db (ntA# | 2)
		db (ntA# | 2)
		db (ntG# | 2)
		db oct2
		db (ntC# | 2)
		db (ntC | 2)
		pkmsSetDuty	5
		db oct1
		db (ntG | 4)
Channel2_Bar27:
		db (ntA# | 4)
		db (ntA | 4)
		db (ntG | 4)
Channel2_Bar28:
		db (ntE | 4)
		db (ntF | 4)
		pkmsSetDuty	6
		db (ntE | 4)
Channel2_Bar29:
		pkmsSetDuty	5
		pkmsSetDuty	6
		db (ntA# | 4)
		pkmsSetDuty	5
		pkmsSetDuty	6
		db (ntA | 4)
		pkmsSetDuty	5
		pkmsSetDuty	6
		db (ntG | 4)
Channel2_Bar30:
		pkmsSetDuty	5
		db (ntF | 4)
		db (ntC# | 4)
		db (ntD | 15)
Channel2_Bar31:
		db (ntD | 12)
Channel2_Bar32:
		db (ntG | 0)
		db (ntG | 3)
		pkmsSetDuty	1
		db oct2
		db (ntA# | 4)
Channel2_Bar33:
		db (ntD | 4)
		db (ntA | 2)
		db (ntF# | 2)
		db (ntA | 2)
Channel2_Bar34:
		db (ntF# | 2)
		db (ntD | 2)
		db (ntF# | 2)
		db (ntA | 2)
		db (ntA | 11)
Channel2_Bar35:
		db (ntF | 3)
		db (ntA# | 6)
Channel2_Bar36:
		db (ntG | 4)
		db oct3
		db (ntC# | 3)
		db oct2
		db (ntF | 2)
		db (ntG | 0)
Channel2_Bar37:
		db (ntA | 11)
		pkmsSetDuty	5
		db (ntD | 2)
		db (ntE | 0)
Channel2_Bar38:
		db (ntF | 7)
		db (ntD# | 3)
		pkmsSetDuty	1
		db (ntA | 11)
Channel2_Bar39:
		db (ntF | 3)
		db (ntA# | 6)
Channel2_Bar40:
		db oct3
		db (ntC | 4)
		db (ntC# | 3)
		db (ntD | 2)
		db (ntC | 0)
Channel2_Bar41:
		db oct2
		db (ntA | 11)
		pkmsSetDuty	5
		db (ntD | 2)
		db (ntE | 0)
Channel2_Bar42:
		db (ntF | 7)
		db (ntA# | 3)
		pkmsSetDuty	1
		db (ntB | 11)
Channel2_Bar43:
		db (ntG | 3)
		db oct3
		db (ntC | 6)
Channel2_Bar44:
		db oct2
		db (ntB | 4)
		db oct3
		db (ntD# | 3)
		db (ntE | 2)
		db (ntF# | 0)
Channel2_Bar45:
		db (ntG | 11)
		pkmsSetDuty	5
		db (ntG | 2)
		db (ntA | 0)
Channel2_Bar46:
		db (ntB | 15)
Channel2_Bar47:
		pkmsSetDuty	1
		db (ntB | 15)
Channel2_Bar48:
		db (ntB | 15)
Channel2_Bar49:
		db (ntB | 15)
Channel2_Bar50:
		db (ntB | 11)
		db oct2
		db (ntG | 0)
		db (ntF | 0)
		db (ntG | 13)
Channel2_Bar51:
		db (ntG# | 12)
Channel2_Bar52:
		db (ntA# | 0)
		db (ntG# | 0)
		db (ntG | 15)
Channel2_Bar53:
		db (ntC | 0)
		db oct1
		db (ntA# | 0)
		db oct2
		db (ntC | 4)
Channel2_Bar54:
		db (ntD# | 3)
		db (ntF | 3)
		db (ntG | 15)
Channel2_Bar55:
		db (ntG# | 12)
Channel2_Bar56:
		db (ntA# | 0)
		db (ntG# | 0)
		db (ntG | 7)
Channel2_Bar57:
		db (ntF | 7)
		db oct3
		db (ntC | 7)
Channel2_Bar58:
		db (ntD# | 6)
		db (ntF | 0)
		db (ntC# | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db oct4
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 0)
		db oct3
		db (ntG# | 0)
Channel2_Bar59:
		db (ntF | 0)
		db (ntC# | 0)
		db oct2
		db (ntG# | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db oct4
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 0)
		db oct3
		db (ntG# | 0)
		db (ntF | 0)
		db (ntC# | 0)
		db oct2
		db (ntG# | 0)
		db (ntF | 0)
Channel2_Bar60:
		db (ntG# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db oct4
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 0)
		db oct3
		db (ntG# | 0)
		db (ntF | 0)
		db (ntC# | 0)
		db oct2
		db (ntG# | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db (ntA# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF | 0)
Channel2_Bar61:
		db (ntA | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntC# | 0)
		db oct2
		db (ntA# | 0)
		db (ntF | 0)
		db (ntC# | 0)
		db (ntF | 0)
		pkmsSetDuty	7
		db (ntC | 3)
		db oct1
		db (ntC | 3)
Channel2_Bar62:
		db oct2
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db oct1
		db (ntC | 3)
		db (ntC | 2)
		db oct0
		db (ntG | 3)
		db oct2
		db (ntC | 0)
Channel2_Bar63:
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db oct1
		db (ntC | 3)
		db oct2
		db (ntC | 3)
		db oct1
		db (ntC | 3)
		db oct2
		db (ntC | 0)
Channel2_Bar64:
		db (ntC | 0)
		db (ntC | 0)
		db oct1
		db (ntC | 3)
		db (ntC | 2)
		db oct0
		db (ntG | 6)
Channel2_Bar65:
		db oct2
		db (ntC | 0)
		db (ntC | 0)
		db oct1
		db (ntC | 2)
		pkmsSetDuty	1
		db oct4
		db (ntD# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF# | 0)
		db (ntA# | 0)
		db oct4
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 0)
		db oct3
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntC# | 0)
		db oct2
		db (ntA# | 0)
Channel2_Bar66:
		db (ntF# | 0)
		db (ntA# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF# | 0)
		db (ntA# | 0)
		db oct4
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 0)
		db oct3
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntC# | 0)
		db oct2
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntA# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF# | 0)
Channel2_Bar67:
		db (ntA# | 0)
		db oct4
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 0)
		db oct3
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntC# | 0)
		db oct2
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntA# | 0)
		db (ntA# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db (ntA# | 0)
		db (ntG# | 0)
Channel2_Bar68:
		db (ntF | 0)
		db (ntC# | 0)
		db oct2
		db (ntA# | 0)
		db (ntF | 2)
		db (ntF | 0)
		pkmsSetDuty	4
		db oct3
		db (ntG | 7)
		db oct2
		db (ntC | 7)
Channel2_Bar69:
		db oct1
		db (ntG | 7)
		db (ntC | 7)
Channel2_Bar70:
		db (ntG | 15)
Channel2_Bar71:
		pkmsSetDuty	7
		db oct0
		pkmsEndSound

; ===========================================================================
NewSong_Channel3:
		pkmsSetNtr	$C, 1, 5
Channel3_Bar1:
		db oct3
		pkmsSetVel	1, 5
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntA# | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
Channel3_Bar2:
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntA# | 2)
		db (ntG | 0)
		pkmsSetVel	1, 1
		db oct4
		db (ntC | 15)
Channel3_Bar3:
		db (ntE | 2)
		db (ntG | 2)
		db (ntE | 2)
Channel3_Bar4:
		db (ntC | 2)
		db (ntC# | 2)
		db oct2
		db (ntA# | 2)
		db oct4
		db (ntC | 15)
Channel3_Bar5:
		db (ntE | 2)
		db (ntG | 2)
Channel3_Bar6:
		db (ntE | 2)
		db (ntA# | 2)
		db (ntF# | 2)
		db (ntG | 2)
		db oct5
		db (ntC | 3)
Channel3_Bar7:
		db (ntC | 2)
		pkmsSetVel	1, 7
		db oct3
		db (ntF | 0)
		db oct2
		db (ntF | 3)
		db oct1
		db (ntA | 0)
		db oct2
		db (ntF | 0)
		db oct1
		db (ntA | 0)
		pkmsSetVel	1, 1
		db oct5
		db (ntC | 10)
Channel3_Bar8:
		db (ntC# | 4)
		pkmsSetVel	1, 7
		db oct3
		db (ntC# | 3)
Channel3_Bar9:
		db (ntA# | 2)
		db oct4
		db (ntC | 0)
		db oct2
		db (ntG | 3)
		db (ntD# | 3)
		pkmsSetVel	1, 1
		db oct5
		db (ntC | 0)
		db (ntF | 0)
		db (ntD# | 0)
		db oct4
		db (ntF# | 2)
Channel3_Bar10:
		db (ntF# | 2)
		db (ntF# | 2)
		db (ntF# | 3)
		db oct3
		db (ntG | 11)
Channel3_Bar11:
		db (ntF | 3)
		db (ntG# | 6)
Channel3_Bar12:
		db (ntF | 4)
		db (ntB | 3)
		db (ntD# | 2)
		db (ntF | 0)
Channel3_Bar13:
		db (ntG | 11)
		pkmsSetVel	1, 7
		db oct4
		db (ntC | 2)
		db (ntD | 0)
Channel3_Bar14:
		db (ntD# | 7)
		db (ntC# | 2)
		db (ntC# | 0)
		pkmsSetVel	1, 1
		db oct3
		db (ntG | 11)
Channel3_Bar15:
		db (ntD# | 3)
		db (ntG# | 6)
Channel3_Bar16:
		db (ntA# | 4)
		db (ntB | 3)
		db oct4
		db (ntC | 2)
		db oct3
		db (ntA# | 0)
Channel3_Bar17:
		db (ntG | 11)
		pkmsSetVel	1, 7
		db oct4
		db (ntC | 2)
		db (ntD | 0)
Channel3_Bar18:
		db (ntD# | 7)
		db (ntF | 3)
		pkmsSetVel	1, 1
		db oct3
		db (ntA | 11)
Channel3_Bar19:
		db (ntF | 3)
		db (ntA# | 6)
Channel3_Bar20:
		db (ntA | 4)
		db oct4
		db (ntC# | 3)
		db (ntD | 2)
		db (ntE | 0)
Channel3_Bar21:
		db (ntF | 11)
		pkmsSetVel	1, 6
		db oct2
		db (ntD | 3)
Channel3_Bar22:
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD | 0)
		db (ntD | 0)
		db (ntD | 0)
		pkmsSetVel	1, 7
		db oct1
		db (ntB | 0)
		db oct2
		db (ntD | 0)
		db oct1
		db (ntB | 0)
		db oct2
		db (ntE | 3)
		db oct1
		db (ntB | 6)
Channel3_Bar23:
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 2)
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 4)
Channel3_Bar24:
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 2)
		db oct2
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 0)
Channel3_Bar25:
		db oct1
		db (ntB | 2)
		db (ntB | 0)
		db oct2
		db (ntE | 3)
		db oct1
		db (ntB | 2)
		db (ntB | 0)
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 2)
Channel3_Bar26:
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 2)
		db oct2
		db (ntE | 0)
		db oct1
		db (ntB | 0)
		db oct2
		db (ntE | 0)
		db (ntE | 0)
		db (ntE | 2)
		db (ntE | 0)
Channel3_Bar27:
		db oct1
		db (ntB | 2)
		db (ntB | 0)
		db oct2
		db (ntE | 3)
		db oct1
		db (ntB | 2)
		db (ntB | 0)
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 2)
Channel3_Bar28:
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 2)
		db oct2
		db (ntE | 0)
		db oct1
		db (ntB | 0)
		db oct2
		db (ntE | 0)
		db (ntE | 0)
		db (ntE | 2)
		db (ntE | 0)
Channel3_Bar29:
		db oct1
		db (ntB | 2)
		db (ntB | 0)
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 0)
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 0)
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 0)
Channel3_Bar30:
		db oct2
		db (ntE | 2)
		db oct1
		db (ntB | 0)
		db (ntB | 3)
		db (ntA | 0)
		db (ntA | 0)
		db (ntA | 0)
		db (ntA | 0)
		db (ntA | 0)
		db (ntA | 0)
		pkmsSetVel	1, 1
		db oct4
		db (ntG | 2)
Channel3_Bar31:
		db (ntA# | 2)
		db (ntG | 2)
		db (ntD | 2)
		db (ntG | 2)
		db (ntA | 2)
Channel3_Bar32:
		db (ntF# | 2)
		db (ntA | 2)
		db (ntF# | 2)
		db (ntD | 2)
		db (ntF# | 2)
		db (ntA | 2)
Channel3_Bar33:
		db (ntG | 2)
		db (ntA# | 2)
		db (ntG | 2)
		db (ntD | 2)
		db (ntG | 2)
Channel3_Bar34:
		db (ntA | 2)
		db (ntF# | 2)
		db (ntA | 2)
		db (ntF# | 2)
		db (ntD | 2)
Channel3_Bar35:
		db (ntF# | 2)
		db (ntA | 2)
		db oct3
		db (ntA | 11)
Channel3_Bar36:
		db (ntF | 3)
		db (ntA# | 6)
		db (ntG | 4)
Channel3_Bar37:
		db oct4
		db (ntC# | 3)
		db oct3
		db (ntF | 2)
		db (ntG | 0)
		db (ntA | 11)
Channel3_Bar38:
		pkmsSetVel	1, 6
		db oct2
		db (ntD | 3)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD | 0)
		db (ntD | 0)
Channel3_Bar39:
		db (ntD | 0)
		db (ntD | 3)
		pkmsSetVel	1, 1
		db oct3
		db (ntA | 11)
Channel3_Bar40:
		db (ntF | 3)
		db (ntA# | 6)
		db oct4
		db (ntC | 4)
Channel3_Bar41:
		db (ntC# | 3)
		db (ntD | 2)
		db (ntC | 0)
		db oct3
		db (ntA | 11)
Channel3_Bar42:
		pkmsSetVel	1, 6
		db oct2
		db (ntD | 0)
		db (ntD | 0)
		db (ntD | 0)
		db (ntD | 3)
		db (ntD | 0)
		db (ntD | 0)
		db (ntD | 0)
		db (ntE | 3)
Channel3_Bar43:
		pkmsSetVel	1, 1
		db oct3
		db (ntB | 11)
		db (ntG | 3)
Channel3_Bar44:
		db oct4
		db (ntC | 6)
		db oct3
		db (ntB | 4)
		db oct4
		db (ntD# | 3)
Channel3_Bar45:
		db (ntE | 2)
		db (ntF# | 0)
		db (ntG | 11)
Channel3_Bar46:
		pkmsSetVel	1, 6
		db oct2
		db (ntE | 3)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntE | 0)
		db (ntE | 0)
		db (ntE | 0)
		db (ntE | 3)
Channel3_Bar47:
		pkmsSetVel	1, 10
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
Channel3_Bar48:
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
Channel3_Bar49:
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 2)
Channel3_Bar50:
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 2)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		pkmsSetVel	1, 6
		db (ntC | 2)
Channel3_Bar51:
		db (ntC | 0)
		db (ntC | 2)
		db (ntC | 0)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db oct2
		db (ntD# | 3)
		db (ntC# | 2)
Channel3_Bar52:
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db oct1
		db (ntG# | 0)
		db (ntG# | 0)
		db (ntG# | 0)
		db oct2
		db (ntF | 3)
		db (ntC | 2)
		db (ntC | 0)
Channel3_Bar53:
		db (ntC | 2)
		db (ntC | 0)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db oct2
		db (ntD# | 0)
		db (ntC | 0)
		db oct1
		db (ntG | 0)
		db oct2
		db (ntC | 2)
		db (ntC | 0)
		db (ntC | 2)
Channel3_Bar54:
		db (ntC | 0)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db oct2
		db (ntG | 0)
		db (ntC# | 0)
		db oct1
		db (ntG | 0)
		db oct2
		db (ntC | 2)
		db (ntC | 0)
		db (ntC | 2)
		db (ntC | 0)
Channel3_Bar55:
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db oct2
		db (ntD# | 3)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db oct1
		db (ntG# | 0)
Channel3_Bar56:
		db (ntG# | 0)
		db (ntG# | 0)
		db oct2
		db (ntF | 3)
		db (ntC | 2)
		db (ntC | 0)
		db (ntC | 2)
		db (ntC | 0)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
Channel3_Bar57:
		db (ntG | 0)
		db oct2
		db (ntD# | 0)
		db (ntC | 0)
		db oct1
		db (ntG | 0)
		db oct2
		db (ntC | 2)
		db (ntC | 0)
		db (ntC | 2)
		db (ntC | 0)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db oct2
		db (ntG | 0)
Channel3_Bar58:
		db (ntC# | 0)
		pkmsSetVel	1, 5
		db oct3
		db (ntD# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 3)
Channel3_Bar59:
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 3)
Channel3_Bar60:
		db (ntC# | 0)
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db oct2
		db (ntA# | 3)
Channel3_Bar61:
		db oct3
		db (ntC# | 2)
		db (ntC# | 0)
		db oct2
		db (ntA# | 3)
		db oct3
		db (ntC# | 0)
		db (ntC | 0)
		db (ntC# | 0)
		db oct2
		db (ntA# | 3)
Channel3_Bar62:
		pkmsSetVel	1, 7
		db oct3
		db (ntC | 3)
		pkmsSetVel	1, 5
		pkmsSetVel	1, 7
		db oct2
		db (ntC | 3)
		db oct3
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db oct2
		db (ntC | 3)
		db (ntC | 2)
Channel3_Bar63:
		db oct1
		db (ntG | 3)
		db oct3
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db oct2
		db (ntC | 3)
		db oct3
		db (ntC | 3)
Channel3_Bar64:
		db oct2
		db (ntC | 3)
		db oct3
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db oct2
		db (ntC | 3)
		db (ntC | 2)
Channel3_Bar65:
		db oct1
		db (ntG | 6)
		db oct3
		db (ntC | 0)
		db (ntC | 0)
		db oct2
		db (ntC | 3)
		pkmsSetVel	1, 5
		db oct3
		db (ntC# | 15)
Channel3_Bar66:
		db (ntF# | 15)
Channel3_Bar67:
		db (ntA# | 15)
Channel3_Bar68:
		db oct4
		db (ntC# | 15)
Channel3_Bar69:
		db (ntC | 3)
Channel3_Bar70:
		pkmsSetVel	1, 7
		db oct0
		db (ntB | 15)
Channel3_Bar71:
		db (ntB | 15)
Channel3_Bar72:
		db (ntB | 11)
		db oct1
		pkmsEndSound

; ===========================================================================
NewSong_Channel4:
		pkmsSetDSpeed	$C
		pkmsSetDrums	0
Channel4_Bar1:
		db (ntC | 2)
		db (ntC | 0)
		db (ntD | 2)
		db (ntC# | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntC# | 0)
Channel4_Bar2:
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntC# | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntC# | 0)
Channel4_Bar3:
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG# | 0)
		db (ntC | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 2)
Channel4_Bar4:
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG# | 0)
		db (ntC | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 2)
Channel4_Bar5:
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG# | 0)
		db (ntC | 0)
		db (ntD# | 0)
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 2)
		db (ntC# | 0)
Channel4_Bar6:
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG# | 0)
		db (ntC | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
Channel4_Bar7:
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG# | 0)
		db (ntC | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
Channel4_Bar8:
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG# | 0)
		db (ntC | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
Channel4_Bar9:
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG# | 0)
		db (ntC | 0)
		db (ntD# | 0)
		db (ntC | 0)
		db (ntC# | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
Channel4_Bar10:
		db (ntF# | 0)
		db (ntA# | 0)
		db (ntC | 0)
		db (ntF# | 0)
		db (ntC | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntD# | 0)
Channel4_Bar11:
		db (ntG# | 0)
		db (ntG | 0)
		db (ntB | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntD# | 0)
		db (ntG# | 0)
		db (ntG | 0)
Channel4_Bar12:
		db (ntB | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntD# | 0)
		db (ntG# | 0)
		db (ntG | 0)
		db (ntB | 0)
		db (ntC | 2)
Channel4_Bar13:
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntD# | 0)
		db (ntG# | 0)
		db (ntG | 0)
		db (ntB | 0)
		db (ntC | 2)
Channel4_Bar14:
		db (ntC# | 0)
		db (ntD# | 2)
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntD# | 0)
		db (ntG# | 0)
		db (ntG | 0)
		db (ntB | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
Channel4_Bar15:
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntD# | 0)
		db (ntG# | 0)
		db (ntG | 0)
		db (ntB | 0)
		db (ntC | 2)
		db (ntC# | 0)
		db (ntD# | 2)
Channel4_Bar16:
		db (ntC# | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntD# | 0)
		db (ntG# | 0)
		db (ntG | 0)
		db (ntB | 0)
		db (ntC | 2)
		db (ntD | 0)
		db (ntD# | 2)
		db (ntD | 0)
		db (ntC | 0)
Channel4_Bar17:
		db (ntD | 0)
		db (ntD# | 0)
		db (ntG | 3)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
Channel4_Bar18:
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
Channel4_Bar19:
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
Channel4_Bar20:
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntB | 0)
		db (ntD | 0)
		db (ntB | 0)
		db (ntE | 3)
Channel4_Bar21:
		db (ntE | 3)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
Channel4_Bar22:
		db (ntG | 2)
		db (ntG | 2)
		db (ntF | 2)
		db (ntD | 2)
		db (ntF | 2)
Channel4_Bar23:
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
Channel4_Bar24:
		db (ntE | 2)
		db (ntG | 2)
		db (ntG | 2)
		db (ntF | 2)
		db (ntA# | 2)
Channel4_Bar25:
		db (ntA | 2)
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 2)
		db (ntE | 2)
Channel4_Bar26:
		db (ntE | 2)
		db (ntE | 2)
		db (ntG | 2)
		db (ntG | 2)
		db (ntF | 2)
Channel4_Bar27:
		db (ntD | 2)
		db (ntF | 2)
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 2)
Channel4_Bar28:
		db (ntE | 2)
		db (ntE | 2)
		db (ntE | 2)
		db (ntG | 2)
		db (ntG | 2)
Channel4_Bar29:
		db (ntF | 2)
		db (ntA# | 2)
		db (ntC# | 2)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
Channel4_Bar30:
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
Channel4_Bar31:
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
Channel4_Bar32:
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
Channel4_Bar33:
		db (ntA | 0)
		db (ntC# | 15)
Channel4_Bar34:
		db (ntC# | 15)
Channel4_Bar35:
		db (ntC# | 15)
Channel4_Bar36:
		db (ntC# | 0)
		db (ntC# | 3)
		db (ntC# | 2)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntF | 0)
		db (ntF | 0)
		db (ntC# | 0)
		db (ntD | 0)
Channel4_Bar37:
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
Channel4_Bar38:
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntD# | 0)
Channel4_Bar39:
		db (ntF | 2)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntD | 2)
		db (ntD# | 0)
		db (ntF | 2)
Channel4_Bar40:
		db (ntD# | 0)
		db (ntD | 0)
		db (ntA | 0)
		db (ntF | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db (ntC# | 0)
		db (ntE | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntF | 0)
Channel4_Bar41:
		db (ntE | 0)
		db (ntB | 0)
		db (ntG | 0)
		db (ntC | 0)
		db (ntB | 0)
		db (ntD# | 0)
		db (ntE | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntF | 0)
		db (ntE | 0)
		db (ntB | 0)
Channel4_Bar42:
		db (ntG | 0)
		db (ntC | 0)
		db (ntB | 0)
		db (ntD# | 0)
		db (ntE | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntF | 0)
		db (ntE | 0)
		db (ntB | 0)
		db (ntG | 0)
		db (ntC | 0)
Channel4_Bar43:
		db (ntB | 0)
		db (ntD# | 0)
		db (ntE | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntF | 0)
		db (ntE | 0)
		db (ntB | 0)
		db (ntG | 0)
		db (ntC | 0)
		db (ntB | 0)
		db (ntD# | 0)
Channel4_Bar44:
		db (ntD | 2)
		db (ntD# | 2)
		db (ntD | 2)
		db (ntF | 2)
		db (ntD# | 2)
		db (ntC | 2)
Channel4_Bar45:
		db (ntD | 2)
		db (ntD# | 2)
		db (ntF | 2)
		db (ntD# | 2)
		db (ntF | 2)
Channel4_Bar46:
		db (ntG# | 2)
		db (ntG | 2)
		db (ntG# | 2)
		db (ntG | 2)
		db (ntA# | 2)
Channel4_Bar47:
		db (ntG# | 2)
		db (ntF | 2)
		db (ntG | 2)
		db (ntG# | 2)
		db (ntA# | 2)
		db (ntG# | 2)
Channel4_Bar48:
		db (ntF | 2)
		db (ntC# | 2)
		db (ntC | 2)
		db (ntD# | 0)
		db (ntG | 2)
		db (ntD# | 0)
Channel4_Bar49:
		db (ntC | 0)
		db (ntD# | 0)
		db (ntG | 0)
		db (ntD# | 2)
		db (ntG | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG# | 2)
		db (ntF | 0)
		db (ntC | 0)
Channel4_Bar50:
		db (ntF | 0)
		db (ntG# | 0)
		db (ntF | 2)
		db (ntG# | 0)
		db (ntC | 2)
		db (ntD# | 0)
		db (ntG | 2)
		db (ntD# | 0)
		db (ntC | 0)
		db (ntD# | 0)
Channel4_Bar51:
		db (ntG | 0)
		db (ntD# | 2)
		db (ntG | 0)
		db (ntC | 2)
		db (ntD# | 0)
		db (ntG | 2)
		db (ntD# | 0)
		db (ntC | 0)
		db (ntD# | 0)
		db (ntG | 0)
Channel4_Bar52:
		db (ntD# | 2)
		db (ntG | 0)
		db (ntC | 2)
		db (ntD# | 0)
		db (ntG | 2)
		db (ntD# | 0)
		db (ntC | 0)
		db (ntD# | 0)
		db (ntG | 0)
		db (ntD# | 2)
Channel4_Bar53:
		db (ntG | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG# | 2)
		db (ntF | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db (ntF | 2)
Channel4_Bar54:
		db (ntG# | 0)
		db (ntC | 2)
		db (ntD# | 0)
		db (ntG | 2)
		db (ntD# | 0)
		db (ntC | 0)
		db (ntD# | 0)
		db (ntG | 0)
		db (ntD# | 2)
Channel4_Bar55:
		db (ntG | 0)
		db (ntC | 2)
		db (ntG | 0)
		db (ntC | 2)
		db (ntG | 0)
		db (ntC | 0)
		db (ntG | 0)
		db (ntC | 0)
		db (ntG | 2)
		db (ntC | 0)
Channel4_Bar56:
		db (ntC# | 2)
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntF# | 0)
		db (ntC# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
Channel4_Bar57:
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntF# | 0)
		db (ntC# | 0)
		db (ntF# | 0)
		db (ntC# | 0)
		db (ntF# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
Channel4_Bar58:
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntF# | 0)
		db (ntC# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
		db (ntA# | 2)
Channel4_Bar59:
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntA# | 0)
		db (ntD# | 0)
		db (ntA# | 0)
		db (ntD# | 2)
		db (ntA# | 0)
		db (ntC | 2)
		db (ntF | 0)
Channel4_Bar60:
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG | 2)
Channel4_Bar61:
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG | 2)
Channel4_Bar62:
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG | 2)
Channel4_Bar63:
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC# | 2)
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
Channel4_Bar64:
		db (ntC# | 0)
		db (ntF# | 0)
		db (ntC# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntF# | 0)
		db (ntC# | 0)
Channel4_Bar65:
		db (ntF# | 0)
		db (ntC# | 0)
		db (ntF# | 2)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntF# | 0)
Channel4_Bar66:
		db (ntC# | 0)
		db (ntG# | 2)
		db (ntC# | 0)
		db (ntA# | 2)
		db (ntD# | 0)
		db (ntF | 2)
		db (ntD# | 0)
		db (ntA# | 0)
		db (ntD# | 0)
		db (ntA# | 0)
Channel4_Bar67:
		db (ntD# | 2)
		db (ntA# | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntG | 2)
Channel4_Bar68:
		db (ntC | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntG | 2)
Channel4_Bar69:
		db (ntC | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntG | 2)
Channel4_Bar70:
		db (ntC | 0)
		db (ntC | 2)
		db (ntF | 0)
		db (ntG | 2)
		db (ntC | 0)
		db (ntC | 0)
		db (ntF | 0)
		db (ntC | 0)
		db (ntC# | 2)
		pkmsEndSound

