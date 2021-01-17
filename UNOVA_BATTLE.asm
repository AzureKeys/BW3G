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
		db oct4
		pkmsSetDuty	2
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 1)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 1)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 1)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 1)
Channel1_Bar2:
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 1)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 1)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
Channel1_Bar3:
		db (ntE | 15)
Channel1_Bar4:
		db (ntE | 15)
Channel1_Bar5:
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db (ntG | 3)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db (ntA | 3)
Channel1_Bar6:
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db (ntA# | 3)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db (ntB | 15)
Channel1_Bar7:
		db (ntB | 15)
Channel1_Bar8:
		db (ntB | 3)
Channel1_Bar9:
		db (ntF | 1)
		db (ntF | 1)
		db (ntG# | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntA# | 3)
Channel1_Bar10:
		db (ntF | 1)
		db (ntF | 1)
		db (ntB | 3)
		db (ntF | 1)
		db (ntF | 1)
		db oct4
		db (ntC | 15)
Channel1_Bar11:
		db (ntC | 15)
Channel1_Bar12:
		db (ntC | 15)
Channel1_Bar13:
		db (ntC | 3)
Channel1_Bar14:
		db oct3
		db (ntF | 1)
		db (ntF# | 9)
		db oct2
		db oct3
		db oct2
		db oct3
		db oct2
		db oct3
		db oct2
		db (ntA | 0)
		db (ntF | 0)
		db oct3
		db (ntC | 15)
Channel1_Bar15:
		db (ntC | 15)
Channel1_Bar16:
		db (ntC | 15)
Channel1_Bar17:
		db oct2
		db oct3
		db (ntD | 1)
Channel1_Bar18:
		db oct2
		db oct3
		db (ntD# | 9)
		db oct2
		db oct3
		db oct2
		db oct3
		db oct2
		db (ntF | 0)
		db (ntG | 0)
		db oct3
		db (ntC# | 5)
Channel1_Bar19:
		db (ntC | 1)
		db oct2
		db (ntG# | 5)
		db (ntG | 1)
		db (ntF | 5)
Channel1_Bar20:
		db (ntG | 1)
		db (ntG# | 5)
		db (ntA# | 1)
		db oct3
		db (ntC | 13)
Channel1_Bar21:
		db (ntC# | 1)
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntD# | 3)
Channel1_Bar22:
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntD# | 3)
		db oct2
		db oct3
		db (ntD# | 1)
		db (ntF | 5)
Channel1_Bar23:
		db (ntD# | 1)
		db (ntC# | 5)
		db (ntC | 1)
		db oct2
		db (ntA# | 5)
Channel1_Bar24:
		db (ntG# | 1)
		db (ntF | 5)
		db (ntG# | 1)
		db oct1
		db oct2
		db (ntG | 1)
		db oct1
		db oct2
		db (ntG | 3)
Channel1_Bar25:
		db (ntA# | 1)
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db oct2
		db oct3
		db oct2
		db (ntA | 5)
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 3)
Channel1_Bar26:
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db (ntA# | 1)
		db (ntA# | 7)
Channel1_Bar27:
		db (ntA# | 1)
		db (ntA# | 5)
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 3)
Channel1_Bar28:
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntC# | 0)
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntD# | 0)
		db oct1
		db oct2
		db (ntC# | 15)
Channel1_Bar29:
		db (ntC# | 7)
Channel1_Bar30:
		db oct3
		db (ntC# | 15)
Channel1_Bar31:
		db (ntC# | 15)
Channel1_Bar32:
		db (ntC# | 7)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
Channel1_Bar33:
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntF# | 1)
		db (ntF# | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntG | 1)
Channel1_Bar34:
		db (ntG | 15)
Channel1_Bar35:
		db (ntG | 15)
Channel1_Bar36:
		db (ntG | 15)
Channel1_Bar37:
		db (ntG | 15)
Channel1_Bar38:
		db (ntG | 9)
		db oct2
		db (ntG | 7)
Channel1_Bar39:
		db oct1
		db (ntG | 3)
		db (ntG# | 3)
		db (ntA# | 7)
Channel1_Bar40:
		db (ntG | 7)
		db oct2
		db (ntE | 7)
Channel1_Bar41:
		db oct1
		db (ntG# | 3)
		db (ntA# | 3)
		db (ntB | 7)
Channel1_Bar42:
		db (ntG# | 3)
		db oct2
		db (ntE | 3)
		db (ntD# | 7)
Channel1_Bar43:
		db oct1
		db (ntA# | 11)
		db (ntG | 11)
Channel1_Bar44:
		db (ntD# | 7)
Channel1_Bar45:
		db (ntC# | 3)
		db (ntD# | 3)
		db (ntA# | 7)
Channel1_Bar46:
		db (ntA | 3)
		db oct2
		db (ntD | 15)
Channel1_Bar47:
		db (ntD | 15)
Channel1_Bar48:
		db (ntD | 15)
Channel1_Bar49:
		db (ntD | 15)
Channel1_Bar50:
		db (ntD | 15)
Channel1_Bar51:
		db (ntD | 15)
Channel1_Bar52:
		db (ntD | 15)
Channel1_Bar53:
		db (ntD | 15)
Channel1_Bar54:
		db (ntD | 15)
Channel1_Bar55:
		db (ntD | 15)
Channel1_Bar56:
		db (ntD | 15)
Channel1_Bar57:
		db (ntD | 15)
Channel1_Bar58:
		db (ntD | 15)
Channel1_Bar59:
		db (ntD | 15)
Channel1_Bar60:
		db (ntD | 15)
Channel1_Bar61:
		db (ntD | 15)
Channel1_Bar62:
		db (ntD | 3)
		db oct1
		db (ntE | 5)
Channel1_Bar63:
		db (ntG | 5)
		db (ntA | 3)
		db oct2
		db (ntC | 0)
		db (ntC# | 12)
Channel1_Bar64:
		db oct0
		db (ntG# | 0)
		db (ntG | 0)
		db (ntF# | 1)
		db (ntF# | 1)
		db oct1
		db (ntC# | 3)
Channel1_Bar65:
		db oct0
		db (ntF# | 1)
		db (ntF# | 1)
		db oct1
		db (ntD | 3)
		db oct0
		db (ntF# | 1)
		db (ntF# | 1)
		db oct1
		db (ntC# | 3)
Channel1_Bar66:
		db oct0
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF | 3)
		db (ntF# | 1)
		db (ntF# | 1)
		db oct1
		db (ntD# | 3)
Channel1_Bar67:
		db oct0
		db (ntF# | 1)
		db (ntF# | 1)
		db oct1
		db (ntE | 3)
		db oct0
		db (ntF# | 1)
		db (ntF# | 1)
		db oct1
		db (ntD# | 3)
Channel1_Bar68:
		db oct0
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntG# | 1)
		db (ntD# | 15)
Channel1_Bar69:
		db (ntD# | 15)
Channel1_Bar70:
		db (ntD# | 15)
Channel1_Bar71:
		db (ntD# | 15)
Channel1_Bar72:
		db (ntD# | 15)
Channel1_Bar73:
		db (ntD# | 15)
Channel1_Bar74:
		db (ntD# | 15)
Channel1_Bar75:
		db (ntD# | 9)
Channel1_Bar76:
		db oct2
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 15)
Channel1_Bar77:
		db (ntC# | 15)
Channel1_Bar78:
		db (ntC# | 15)
Channel1_Bar79:
		db (ntC# | 11)
Channel1_Bar80:
		db (ntA# | 0)
		db oct3
		db (ntC | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntE | 1)
		pkmsSetDuty	3
		db oct4
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
Channel1_Bar81:
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
Channel1_Bar82:
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db (ntE | 0)
		db oct3
		db (ntB | 0)
		db oct4
		db (ntE | 0)
		db (ntB | 0)
		db oct3
		db oct4
		db (ntE | 11)
Channel1_Bar83:
		db oct3
		db oct2
		db oct3
		db (ntE | 15)
Channel1_Bar84:
		db (ntE | 15)
Channel1_Bar85:
		db (ntE | 15)
Channel1_Bar86:
		db oct4
		db (ntF | 11)
Channel1_Bar87:
		db oct3
		db (ntF | 15)
Channel1_Bar88:
		db (ntF | 15)
Channel1_Bar89:
		db (ntF | 11)
		db oct2
		db (ntA# | 0)
Channel1_Bar90:
		db oct3
		db (ntC | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntE | 0)
		db oct2
		db oct3
		db (ntF | 15)
Channel1_Bar91:
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntC | 5)
		db oct2
		db oct3
		db (ntF | 3)
		db oct4
		db (ntC | 3)
Channel1_Bar92:
		db oct3
		db oct4
		db (ntC | 1)
		db oct3
		db oct4
		db (ntC# | 15)
Channel1_Bar93:
		db (ntC# | 11)
Channel1_Bar94:
		db oct3
		db (ntC | 0)
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntF | 15)
Channel1_Bar95:
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntC | 5)
		db oct2
		db oct3
		db (ntF | 3)
		db oct4
		db (ntC | 3)
Channel1_Bar96:
		db oct3
		db oct4
		db (ntC | 1)
		db oct2
		db oct3
		db (ntA# | 15)
Channel1_Bar97:
		db (ntA# | 9)
		db oct2
		db oct3
		db (ntC# | 0)
Channel1_Bar98:
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntF | 0)
		db oct2
		db oct3
		db (ntG | 0)
		db oct2
		db oct3
		db (ntG# | 15)
Channel1_Bar99:
		db oct2
		db oct3
		db (ntF | 7)
		db oct4
		db (ntC | 3)
		db oct2
		db oct3
		db (ntG# | 3)
Channel1_Bar100:
		db oct2
		db oct3
		db (ntG | 5)
		db oct2
		db oct3
		db (ntA# | 15)
Channel1_Bar101:
		db (ntA# | 9)
Channel1_Bar102:
		db oct2
		db oct3
		db (ntG# | 15)
Channel1_Bar103:
		db oct2
		db oct3
		db (ntF | 7)
		db oct4
		db (ntC | 3)
		db oct2
		db oct3
		db (ntG# | 3)
Channel1_Bar104:
		db oct2
		db oct3
		db (ntA# | 5)
		db oct4
		db (ntD# | 15)
Channel1_Bar105:
		db (ntD# | 15)
Channel1_Bar106:
		db (ntD# | 15)
Channel1_Bar107:
		db (ntD# | 15)
Channel1_Bar108:
		db (ntD# | 15)
Channel1_Bar109:
		db (ntD# | 9)
Channel1_Bar110:
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db (ntD# | 1)
Channel1_Bar111:
		db oct3
		db (ntF# | 1)
		db (ntF# | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntG | 1)
		db (ntG | 3)
		db oct2
		db (ntD# | 1)
		db (ntC# | 1)
Channel1_Bar112:
		db (ntD# | 1)
		db (ntD# | 1)
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db (ntD# | 1)
Channel1_Bar113:
		db oct3
		db (ntF# | 1)
		db (ntF# | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntG | 1)
		db (ntG | 9)
Channel1_Bar114:
		db oct2
		db (ntE | 1)
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db (ntE | 1)
		db oct3
		db (ntF | 1)
		db (ntF | 1)
		db oct2
		db (ntE | 1)
Channel1_Bar115:
		db oct3
		db (ntG | 1)
		db (ntG | 1)
		db oct2
		db (ntE | 1)
		db oct3
		db (ntG# | 1)
		db (ntG# | 1)
		db (ntG# | 1)
		db oct2
		db (ntE | 1)
		db (ntC# | 1)
Channel1_Bar116:
		db (ntE | 1)
		db (ntD# | 1)
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db (ntD# | 1)
Channel1_Bar117:
		db oct3
		db (ntF# | 1)
		db (ntF | 1)
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntF# | 1)
		db (ntG | 1)
		db oct2
		db (ntD# | 7)
Channel1_Bar118:
		db oct1
		db (ntG | 5)
		db (ntA# | 15)
Channel1_Bar119:
		db (ntA# | 1)
		db oct2
		db (ntC# | 7)
Channel1_Bar120:
		db oct1
		db (ntB | 11)
		db (ntA# | 3)
Channel1_Bar121:
		db (ntG# | 11)
		db (ntG | 3)
Channel1_Bar122:
		db (ntG# | 3)
		db (ntA# | 15)
Channel1_Bar123:
		db (ntA# | 3)
		db oct2
		db (ntC# | 3)
		db (ntD | 3)
Channel1_Bar124:
		db (ntD# | 15)
Channel1_Bar125:
		db (ntD# | 7)
		db (ntD | 7)
Channel1_Bar126:
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntC | 1)
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntF | 9)
Channel1_Bar127:
		db oct2
		db oct3
		db (ntC# | 7)
		db oct1
		db oct2
		db (ntG# | 1)
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntG# | 1)
Channel1_Bar128:
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntD# | 5)
		db oct1
		db oct2
		db (ntA# | 9)
Channel1_Bar129:
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntA# | 9)
Channel1_Bar130:
		db oct2
		db oct3
		db (ntC# | 5)
		db oct2
		db oct3
		db (ntF | 5)
		db oct2
		db oct3
		db (ntC# | 3)
Channel1_Bar131:
		db oct1
		db oct2
		db (ntG# | 5)
		db oct1
		db (ntC# | 1)
		db oct2
		db (ntG# | 1)
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntG# | 1)
Channel1_Bar132:
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntD# | 5)
		db oct1
		db oct2
		db (ntA# | 5)
		db oct3
		db (ntD# | 3)
Channel1_Bar133:
		db oct2
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntG | 5)
		db oct2
		db oct3
		db (ntA# | 5)
Channel1_Bar134:
		db oct2
		db oct3
		db (ntF | 5)
		db oct2
		db oct3
		db (ntC | 5)
		db oct2
		db oct3
		db (ntF | 3)
Channel1_Bar135:
		db oct2
		db oct3
		db (ntA | 15)
Channel1_Bar136:
		db oct2
		db oct3
		db (ntG | 5)
		db oct2
		db oct3
		db (ntD | 5)
		db oct2
		db oct3
		db (ntG | 3)
Channel1_Bar137:
		db oct2
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntB | 13)
Channel1_Bar138:
		db oct2
		db oct3
		db (ntA | 5)
		db oct2
		db oct3
		db (ntE | 5)
		db oct2
		db oct3
		db (ntA | 3)
Channel1_Bar139:
		db oct4
		db (ntC# | 15)
Channel1_Bar140:
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntE | 3)
		db oct2
		db oct3
		db (ntC# | 5)
		db oct2
		db oct3
		db (ntE | 3)
Channel1_Bar141:
		db oct2
		db oct3
		db (ntA | 15)
Channel1_Bar142:
		db oct2
		db (ntE | 5)
		db (ntG | 5)
		db (ntA | 3)
Channel1_Bar143:
		db oct3
		db (ntC# | 5)
		db oct2
		db oct3
		db (ntA | 5)
		db (ntA | 0)
Channel1_Bar144:
		db (ntA# | 0)
		db (ntB | 0)
		db oct4
		db (ntC | 0)
		db oct3
		db oct4
		db (ntC# | 1)
		db oct3
		db oct4
		db (ntC# | 1)
		db oct3
		db oct4
		db (ntD | 3)
		db oct3
		db oct4
		db (ntC# | 1)
		db oct3
		db oct4
		db (ntC# | 1)
		db oct3
		db oct4
		db (ntE | 3)
Channel1_Bar145:
		db oct3
		db oct4
		db (ntC# | 1)
		db oct3
		db oct4
		db (ntC# | 1)
		db oct3
		db oct4
		db (ntF# | 3)
		db oct3
		db oct4
		db (ntC# | 1)
		db oct3
		db oct4
		db (ntC# | 1)
		db (ntG | 3)
Channel1_Bar146:
		db oct3
		db oct4
		db (ntD# | 1)
		db oct3
		db oct4
		db (ntD# | 1)
		db oct3
		db oct4
		db (ntE | 3)
		db oct3
		db oct4
		db (ntD# | 1)
		db oct3
		db oct4
		db (ntD# | 1)
		db oct3
		db oct4
		db (ntF# | 3)
Channel1_Bar147:
		db oct3
		db oct4
		db (ntD# | 1)
		db oct3
		db oct4
		db (ntD# | 1)
		db (ntG# | 3)
		db oct3
		db oct4
		db (ntD# | 1)
		db oct3
		db oct4
		db (ntD# | 1)
		db (ntG# | 1)
Channel1_Bar148:
		db (ntA | 1)
		db oct3
		db (ntG# | 1)
		db oct2
		db oct1
		db (ntG# | 13)
Channel1_Bar149:
		db oct0
		db oct1
		db oct2
		db (ntG# | 15)
Channel1_Bar150:
		db oct1
		db oct2
		db oct3
		db (ntA | 15)
Channel1_Bar151:
		db oct0
		db oct1
		db oct2
		db oct3
		db oct4
		db (ntC# | 5)
		db oct3
		db (ntB | 5)
		db (ntA | 3)
Channel1_Bar152:
		db oct1
		db oct2
		db oct3
		db (ntB | 15)
Channel1_Bar153:
		db oct0
		db oct1
		db oct2
		db (ntB | 15)
Channel1_Bar154:
		db oct1
		db oct3
		db (ntB | 1)
		db oct2
		db oct3
		db oct4
		db (ntC# | 11)
Channel1_Bar155:
		db (ntF | 0)
		db (ntD# | 0)
		db oct1
		db oct2
		db oct4
		db (ntG# | 2)
		db (ntG# | 2)
		db (ntG# | 0)
		db (ntG# | 0)
		db oct2
		db oct3
		db oct4
		db (ntC# | 2)
		db oct2
		db oct3
		db oct4
		db (ntC# | 0)
		db oct2
		db oct3
		db oct4
		db (ntC# | 0)
Channel1_Bar156:
		db oct2
		db oct3
		db oct4
		db (ntC# | 0)
		db oct2
		db oct3
		db oct4
		db (ntC# | 0)
		db oct2
		db oct3
		db oct4
		db (ntC# | 1)
		db oct1
		db (ntF | 1)
		db (ntF# | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntG# | 3)
Channel1_Bar157:
		db (ntF | 1)
		db (ntF | 1)
		db (ntA# | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntB | 3)
Channel1_Bar158:
		db (ntF | 1)
		db (ntF | 1)
		db (ntF# | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntG# | 3)
Channel1_Bar159:
		db (ntF | 1)
		db (ntF | 1)
		db (ntA# | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntB | 4)
Channel1_Bar160:
		pkmsSetDuty	6
		db oct3
		db (ntG# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntG | 0)
		db (ntF# | 0)
		db (ntF | 0)
		db (ntF# | 0)
		db (ntF | 0)
		db (ntE | 0)
		db (ntF | 0)
		db (ntE | 0)
		db oct2
		db oct3
		db (ntD# | 0)
		db (ntE | 0)
Channel1_Bar161:
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntC# | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntC# | 0)
		db oct2
		db oct3
		db (ntC | 0)
		db oct2
		db oct3
		db (ntC# | 0)
		db oct2
		db oct3
		db (ntC | 0)
		db oct2
		db (ntB | 0)
		db oct3
		db (ntC | 0)
		db oct2
		db (ntB | 0)
		db (ntA# | 0)
		db (ntB | 0)
		db (ntA# | 0)
Channel1_Bar162:
		db (ntB | 0)
		db (ntA# | 0)
		db (ntA | 0)
		db oct3
		db (ntG# | 11)
		db oct2
		db (ntG# | 15)
Channel1_Bar163:
		db oct1
		db oct2
		db (ntB | 1)
Channel1_Bar164:
		db (ntB | 1)
		db oct3
		db (ntD | 3)
		db oct2
		db (ntB | 1)
		db (ntB | 1)
		db oct3
		db (ntE | 3)
		db oct2
		db (ntB | 1)
Channel1_Bar165:
		db (ntB | 1)
		db oct3
		db (ntF | 3)
		db oct2
		db (ntB | 1)
		db (ntB | 1)
		db oct3
		db (ntE | 0)
		db oct2
		db oct3
		db (ntF | 0)
		db oct2
		db oct3
		db (ntG | 0)
		db oct2
		db oct3
		db (ntG# | 0)
		db (ntA | 11)
Channel1_Bar166:
		db oct2
		db (ntA | 15)
Channel1_Bar167:
		db oct3
		db (ntC | 1)
		db (ntC | 1)
		db (ntD# | 3)
Channel1_Bar168:
		db (ntC | 1)
		db (ntC | 1)
		db (ntF | 3)
		db (ntC | 1)
		db (ntC | 1)
		db (ntF# | 3)
Channel1_Bar169:
		db (ntC | 1)
		db (ntC | 1)
		db (ntF | 3)
		db (ntC | 15)
Channel1_Bar170:
		db (ntC | 1)
		db oct2
		db (ntF | 5)
Channel1_Bar171:
		db oct3
		db (ntC | 3)
		db (ntF | 3)
		db (ntF | 1)
		db (ntF# | 3)
Channel1_Bar172:
		db (ntA# | 0)
		db (ntG# | 0)
		db (ntF# | 5)
		db (ntF# | 0)
		db (ntF | 0)
		db (ntD# | 7)
Channel1_Bar173:
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntC | 3)
		db (ntG# | 1)
		db (ntC | 15)
Channel1_Bar174:
		db (ntC | 1)
		db oct2
		db (ntF | 5)
Channel1_Bar175:
		db oct3
		db (ntC | 3)
		db (ntF | 3)
		db (ntF | 1)
		db (ntD# | 3)
Channel1_Bar176:
		db (ntG | 0)
		db (ntF | 0)
		db (ntD# | 5)
		db (ntD# | 0)
		db (ntD | 0)
		db (ntC | 7)
Channel1_Bar177:
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntC | 5)
		db (ntC# | 5)
Channel1_Bar178:
		db oct2
		db (ntG# | 0)
		db oct3
		db (ntC | 0)
		db (ntF | 5)
		db (ntF | 0)
		db (ntD# | 0)
		db (ntC# | 7)
Channel1_Bar179:
		db (ntF | 3)
		db (ntC# | 3)
		db (ntD# | 1)
		db (ntF | 1)
		db (ntC# | 1)
Channel1_Bar180:
		db (ntD# | 1)
		db (ntF | 1)
		db (ntG | 1)
		db (ntG# | 1)
		db (ntF | 1)
		db (ntD# | 5)
Channel1_Bar181:
		db (ntD | 1)
		db (ntG | 5)
		db (ntD# | 1)
		db (ntC# | 5)
Channel1_Bar182:
		db oct2
		db (ntG# | 0)
		db oct3
		db (ntC# | 0)
		db (ntF | 5)
		db (ntF | 0)
		db (ntD# | 0)
		db (ntC# | 7)
Channel1_Bar183:
		db (ntF | 3)
		db (ntC# | 3)
		db (ntD# | 1)
		db (ntG | 1)
		db (ntD | 1)
Channel1_Bar184:
		db (ntD# | 1)
		db (ntF | 5)
		db (ntG# | 1)
		db (ntG | 5)
Channel1_Bar185:
		db (ntA# | 1)
		db (ntG | 0)
		db (ntF | 0)
		db (ntD# | 0)
		db (ntC# | 0)
		db oct2
		db (ntB | 0)
		db (ntA# | 0)
		db (ntF | 1)
		db oct3
		db oct4
		db oct3
		db oct4
		db oct3
		db oct4
		db (ntD# | 4)
Channel1_Bar186:
		db oct2
		db oct3
		db oct4
		db (ntE | 9)
		db oct2
		db oct3
		db oct4
		db (ntC# | 7)
Channel1_Bar187:
		db oct1
		db oct2
		db oct3
		db (ntA# | 1)
		db oct2
		db oct3
		db oct4
		db (ntC# | 1)
		db oct2
		db oct3
		db oct4
		db oct2
		db oct3
		db oct4
		db oct2
		db oct3
		db oct4
		db (ntG# | 0)
		db oct2
		db oct3
		db oct4
		db (ntE | 1)
		db oct2
		db oct3
		db oct4
		db (ntD# | 5)
		db oct1
		db oct2
		db oct3
		db (ntA# | 9)
Channel1_Bar188:
		db oct1
		db oct2
		db oct3
		db (ntG | 7)
Channel1_Bar189:
		db oct1
		db oct2
		db oct3
		db oct4
		db (ntD# | 1)
		db oct1
		db oct2
		db oct3
		db oct4
		db (ntA# | 1)
		db oct2
		db oct3
		db oct4
		db (ntG | 0)
		db oct2
		db oct3
		db oct4
		db (ntG# | 0)
		db oct2
		db oct3
		db oct4
		db (ntE | 1)
		db oct2
		db oct3
		db oct4
		db (ntD# | 15)
Channel1_Bar190:
		db (ntD# | 15)
Channel1_Bar191:
		db (ntD# | 15)
Channel1_Bar192:
		db (ntD# | 7)
Channel1_Bar193:
		db oct1
		db oct2
		db oct3
		db (ntD# | 1)
		db oct1
		db oct2
		db oct3
		db (ntB | 1)
		db oct2
		db oct3
		db oct4
		db oct2
		db oct3
		db oct4
		db oct2
		db oct3
		db oct4
		db (ntG# | 0)
		db oct2
		db oct3
		db oct4
		db (ntF | 1)
		db oct2
		db oct3
		db oct4
		db (ntE | 15)
Channel1_Bar194:
		db (ntE | 7)
Channel1_Bar195:
		db oct1
		db oct2
		db (ntG# | 1)
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntG# | 1)
		db oct2
		db oct3
		db (ntE | 1)
		db oct2
		db oct3
		db (ntD# | 5)
		db oct1
		db oct2
		db (ntA# | 9)
Channel1_Bar196:
		db oct1
		db oct2
		db (ntG | 7)
Channel1_Bar197:
		db oct1
		db oct2
		db (ntD# | 1)
		db oct1
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntD# | 15)
Channel1_Bar198:
		db (ntD# | 7)
Channel1_Bar199:
		db oct1
		db oct2
		db (ntG | 1)
		db oct1
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntE | 13)
Channel1_Bar200:
		db oct2
		db oct3
		db (ntD# | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntC# | 11)
Channel1_Bar201:
		db oct2
		db oct3
		db (ntE | 3)
		db oct2
		db oct3
		db (ntD# | 15)
Channel1_Bar202:
		db (ntD# | 7)
Channel1_Bar203:
		db oct1
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntG# | 1)
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntG | 13)
Channel1_Bar204:
		db oct2
		db oct3
		db (ntG# | 1)
		db oct2
		db oct3
		db (ntA# | 11)
Channel1_Bar205:
		db (ntD | 3)
		db oct2
		db oct3
		db (ntC# | 15)
Channel1_Bar206:
		db oct2
		db oct3
		db (ntC# | 1)
		db oct1
		db oct2
		db (ntG# | 5)
Channel1_Bar207:
		db oct3
		db (ntC# | 3)
		db oct2
		db oct3
		db (ntG# | 3)
		db oct2
		db oct3
		db (ntG# | 1)
		db oct2
		db oct3
		db (ntG | 13)
Channel1_Bar208:
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntG | 13)
Channel1_Bar209:
		db oct2
		db oct3
		db (ntC# | 15)
Channel1_Bar210:
		db oct2
		db oct3
		db (ntC# | 1)
		db oct1
		db oct2
		db (ntG# | 5)
Channel1_Bar211:
		db oct3
		db (ntC# | 3)
		db oct2
		db oct3
		db (ntG# | 3)
		db oct2
		db oct3
		db (ntG# | 1)
		db oct2
		db oct3
		db (ntA# | 13)
Channel1_Bar212:
		db oct2
		db oct3
		db (ntA# | 1)
		db oct2
		db oct3
		db (ntG | 13)
Channel1_Bar213:
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntF | 13)
Channel1_Bar214:
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntC | 13)
Channel1_Bar215:
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntG | 13)
Channel1_Bar216:
		db oct2
		db oct3
		db (ntD | 7)
Channel1_Bar217:
		db oct2
		db oct3
		db (ntG | 7)
		db oct2
		db oct3
		db (ntD | 1)
		db oct2
		db oct3
		db (ntE | 13)
Channel1_Bar218:
		db oct2
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntA | 13)
Channel1_Bar219:
		db oct1
		db oct2
		db (ntC# | 1)
		db oct1
		db oct2
		db (ntC# | 3)
		db oct1
		db (ntA | 5)
Channel1_Bar220:
		db oct2
		db (ntC# | 3)
		db oct1
		db (ntA | 15)
Channel1_Bar221:
		db oct2
		db oct3
		db (ntG | 5)
		db oct2
		db oct3
		db (ntA# | 5)
Channel1_Bar222:
		db oct4
		db (ntC | 3)
		db oct3
		db oct4
		db (ntC# | 15)
Channel1_Bar223:
		db oct1
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntG | 3)
Channel1_Bar224:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA | 3)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntB | 3)
Channel1_Bar225:
		db (ntF# | 1)
		db (ntF# | 1)
		db oct2
		db (ntC | 3)
		db oct1
		db (ntG# | 1)
		db (ntG# | 1)
		db (ntA | 3)
Channel1_Bar226:
		db (ntG# | 1)
		db (ntG# | 1)
		db (ntB | 3)
		db (ntG# | 1)
		db (ntG# | 1)
		db oct2
		db (ntC# | 3)
Channel1_Bar227:
		db oct1
		db (ntG# | 1)
		db (ntG# | 1)
		db oct2
		db (ntC# | 1)
		db (ntD | 1)
		db (ntC# | 15)
Channel1_Bar228:
		db (ntC# | 15)
Channel1_Bar229:
		db (ntC# | 15)
Channel1_Bar230:
		db (ntC# | 15)
Channel1_Bar231:
		db (ntB | 15)
Channel1_Bar232:
		db (ntF# | 15)
Channel1_Bar233:
		db (ntB | 1)
		db oct3
		db (ntC# | 13)
Channel1_Bar234:
		db oct1
		db oct2
		db (ntG# | 2)
		db oct1
		db oct2
		db (ntG# | 0)
		db oct1
		db oct2
		db (ntG# | 0)
		db oct1
		db oct2
		db (ntG# | 0)
		db oct1
		db oct2
		db (ntG# | 0)
		db oct3
		db (ntC# | 2)
Channel1_Bar235:
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 3)
		db oct1
		db (ntC# | 3)
		db (ntC | 1)
Channel1_Bar236:
		db (ntC | 1)
		db (ntD# | 3)
		db (ntC | 1)
		db (ntC | 1)
		db (ntF | 3)
		db (ntC | 1)
Channel1_Bar237:
		db (ntC | 1)
		db (ntF | 3)
		db (ntC | 1)
		db (ntC | 1)
		db (ntC# | 3)
		db (ntC | 1)
Channel1_Bar238:
		db (ntC | 1)
		db (ntD# | 3)
		db (ntC | 1)
		db (ntC | 1)
		db (ntF | 3)
		db (ntC | 1)
Channel1_Bar239:
		db (ntC | 1)
		pkmsEndSound

; ===========================================================================
NewSong_Channel2:
		pkmsSetDuty	1
		pkmsSetNtr	$C, 11, 8
Channel2_Bar1:
		db oct0
		pkmsSetDuty	0
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 3)
Channel2_Bar2:
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 3)
		db (ntE | 3)
Channel2_Bar3:
		db (ntE | 1)
		db (ntB | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntB | 1)
		db oct1
		db (ntF | 1)
		db (ntF | 1)
		db oct0
		db (ntE | 1)
		db (ntA | 1)
Channel2_Bar4:
		db oct1
		db (ntG | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntG# | 1)
		db (ntD | 1)
		db oct0
		db (ntE | 0)
		db (ntG# | 0)
		db (ntB | 1)
		db oct1
		db (ntE | 1)
		db (ntF | 1)
Channel2_Bar5:
		db oct0
		db (ntE | 1)
		db (ntB | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntB | 1)
		db oct1
		db (ntF | 1)
		db (ntF | 1)
		db oct0
		db (ntE | 1)
		db (ntA# | 1)
Channel2_Bar6:
		db oct1
		db (ntG | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntG# | 1)
		db (ntD | 1)
		db oct0
		db (ntE | 1)
		db (ntB | 1)
		db oct1
		db (ntE | 1)
		db (ntF | 0)
		db (ntG | 0)
Channel2_Bar7:
		db oct0
		db (ntF | 1)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntC | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db oct0
		db (ntF | 1)
		db (ntA# | 1)
Channel2_Bar8:
		db oct1
		db (ntG# | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntA | 1)
		db (ntD# | 1)
		db oct0
		db (ntF | 0)
		db (ntB | 0)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntF# | 1)
Channel2_Bar9:
		db oct0
		db (ntF | 1)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntC | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db oct0
		db (ntF | 1)
		db (ntA# | 1)
Channel2_Bar10:
		db oct1
		db (ntG# | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntA | 1)
		db (ntD# | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntD | 1)
		db (ntD# | 1)
		db (ntE | 1)
Channel2_Bar11:
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
Channel2_Bar12:
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
Channel2_Bar13:
		db oct0
		db (ntF# | 1)
		db oct1
		db (ntF# | 1)
		db (ntA# | 1)
		db oct0
		db (ntF# | 1)
		db oct2
		db (ntC | 1)
		db oct1
		db (ntA# | 1)
		db oct0
		db (ntF# | 1)
		db oct1
		db (ntF# | 1)
Channel2_Bar14:
		db oct0
		db (ntF# | 1)
		db oct1
		db (ntC# | 1)
		db (ntF# | 1)
		db oct0
		db (ntF# | 1)
		db oct1
		db (ntA# | 1)
		db oct2
		db (ntC | 1)
		db oct0
		db (ntC# | 1)
		db (ntD# | 1)
Channel2_Bar15:
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
Channel2_Bar16:
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
Channel2_Bar17:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar18:
		db oct0
		db (ntD# | 1)
		db (ntA# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntA# | 1)
		db oct2
		db (ntC | 1)
		db oct1
		db (ntD# | 1)
		db (ntD | 1)
Channel2_Bar19:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
Channel2_Bar20:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntD | 1)
		db oct1
		db (ntD | 1)
Channel2_Bar21:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntE | 1)
		db (ntF | 1)
Channel2_Bar22:
		db (ntG | 1)
		db oct1
		db (ntG | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
Channel2_Bar23:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
Channel2_Bar24:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntD | 1)
		db oct1
		db (ntD | 1)
Channel2_Bar25:
		db oct0
		db (ntD# | 3)
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar26:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db (ntG | 1)
		db (ntE | 1)
		db (ntD# | 0)
		db (ntE | 0)
		db (ntC# | 1)
Channel2_Bar27:
		db oct0
		db (ntD# | 1)
		db (ntA# | 1)
		db (ntD# | 1)
		db (ntA# | 1)
		db oct1
		db (ntE | 1)
		db (ntE | 1)
		db oct0
		db (ntD# | 1)
		db (ntG# | 1)
Channel2_Bar28:
		db oct1
		db (ntF# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntG | 1)
		db (ntC# | 1)
		db oct0
		db (ntD# | 1)
		db (ntA# | 1)
		db (ntD# | 1)
		db (ntA# | 1)
Channel2_Bar29:
		db (ntD# | 1)
		db (ntA# | 1)
		db (ntD# | 1)
		db (ntA# | 1)
		db oct1
		db (ntE | 1)
		db (ntE | 1)
		db oct0
		db (ntD# | 1)
		db (ntG# | 1)
Channel2_Bar30:
		db oct1
		db (ntE | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntG | 1)
		db (ntC# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntG | 1)
Channel2_Bar31:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar32:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar33:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar34:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar35:
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
Channel2_Bar36:
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
Channel2_Bar37:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar38:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar39:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar40:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar41:
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
Channel2_Bar42:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db (ntD | 1)
Channel2_Bar43:
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar44:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar45:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar46:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db (ntD | 1)
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db (ntG# | 1)
		db oct1
		db (ntD | 3)
Channel2_Bar47:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
Channel2_Bar48:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntD | 1)
		db oct1
		db (ntD | 1)
Channel2_Bar49:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db (ntC# | 1)
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar50:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntF | 0)
		db (ntF | 0)
		db (ntD# | 1)
		db (ntC# | 1)
		db (ntD# | 1)
		db oct0
		db (ntA# | 1)
Channel2_Bar51:
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntG# | 1)
		db oct1
		db (ntF | 1)
		db (ntC | 1)
		db (ntC# | 1)
Channel2_Bar52:
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntC# | 1)
		db oct0
		db (ntC# | 1)
		db oct1
		db (ntD | 1)
Channel2_Bar53:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db (ntC# | 1)
		db (ntD# | 1)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar54:
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntG | 0)
		db (ntG | 0)
		db oct0
		db (ntD# | 1)
		db oct1
		db (ntD# | 1)
		db oct0
		db (ntE | 1)
		db oct1
		db (ntE | 1)
Channel2_Bar55:
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntA | 1)
Channel2_Bar56:
		db (ntF | 1)
		db (ntC | 1)
		db (ntF | 1)
		db oct0
		db (ntF | 1)
		db (ntA | 1)
		db (ntG# | 1)
		db oct1
		db (ntC | 1)
		db oct0
		db (ntF | 1)
Channel2_Bar57:
		db (ntG | 1)
		db oct1
		db (ntG | 1)
		db oct0
		db (ntG | 1)
		db oct1
		db (ntG | 1)
		db oct0
		db (ntG | 1)
		db oct1
		db (ntD | 1)
		db (ntG | 1)
		db (ntB | 1)
Channel2_Bar58:
		db (ntG | 1)
		db (ntD | 1)
		db (ntG | 1)
		db oct0
		db (ntG | 1)
		db oct1
		db (ntG | 1)
		db (ntD | 1)
		db oct0
		db (ntG | 1)
		db (ntG# | 1)
Channel2_Bar59:
		db (ntA | 1)
		db oct1
		db (ntA | 1)
		db oct0
		db (ntA | 1)
		db oct1
		db (ntA | 1)
		db oct0
		db (ntA | 1)
		db oct1
		db (ntE | 1)
		db (ntA | 1)
		db oct2
		db (ntC# | 1)
Channel2_Bar60:
		db oct1
		db (ntA | 1)
		db (ntE | 1)
		db (ntA | 1)
		db oct0
		db (ntA | 1)
		db oct1
		db (ntA | 1)
		db (ntE | 1)
		db oct0
		db (ntG | 1)
		db (ntG# | 1)
Channel2_Bar61:
		db (ntA | 1)
		db oct1
		db (ntA | 3)
		db (ntA | 1)
		db oct0
		db (ntA | 1)
		db oct1
		db (ntE | 1)
		db (ntA | 1)
		db oct2
		db (ntC# | 1)
Channel2_Bar62:
		db oct1
		db (ntA | 1)
		db (ntG | 1)
		db (ntA | 1)
		db oct0
		db (ntA | 1)
		db (ntA# | 1)
		db (ntA | 1)
		db (ntG | 1)
		db (ntA# | 1)
Channel2_Bar63:
		db (ntA | 1)
		db oct1
		db (ntA | 1)
		db (ntA | 1)
		db oct0
		db (ntA | 1)
		db oct1
		db (ntA | 1)
		db (ntE | 1)
		db (ntE | 1)
		db (ntA# | 1)
Channel2_Bar64:
		db oct0
		db (ntA | 1)
		db oct1
		db (ntE | 1)
		db (ntA | 1)
		db oct0
		db (ntC# | 1)
		db (ntA | 1)
		db (ntA# | 1)
		db (ntA | 1)
		db (ntE | 1)
Channel2_Bar65:
		db (ntC# | 1)
		db (ntA | 1)
		db (ntD | 1)
		db (ntA# | 1)
		db (ntC# | 1)
		db (ntA | 1)
		db (ntE | 1)
		db oct1
		db (ntC | 1)
Channel2_Bar66:
		db oct0
		db (ntC# | 1)
		db (ntA | 1)
		db (ntF# | 1)
		db oct1
		db (ntD | 1)
		db oct0
		db (ntC# | 1)
		db (ntA | 1)
		db (ntG | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar67:
		db oct0
		db (ntD# | 1)
		db (ntB | 1)
		db (ntE | 1)
		db oct1
		db (ntC | 1)
		db oct0
		db (ntD# | 1)
		db (ntB | 1)
		db (ntF# | 1)
		db oct1
		db (ntD | 1)
Channel2_Bar68:
		db oct0
		db (ntD# | 1)
		db (ntB | 1)
		db (ntG# | 1)
		db oct1
		db (ntE | 1)
		db oct0
		db (ntD# | 1)
		db (ntB | 1)
		db (ntG# | 1)
		db oct1
		db (ntD# | 1)
Channel2_Bar69:
		db oct0
		db (ntD# | 0)
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntG# | 0)
		db (ntG# | 0)
		db (ntG# | 2)
		db (ntG# | 2)
		db (ntG# | 0)
		db (ntG# | 0)
		db (ntG# | 0)
Channel2_Bar70:
		db (ntF# | 0)
		db (ntG# | 2)
		db (ntG# | 0)
		db (ntG# | 0)
		db (ntG# | 2)
		db (ntG# | 2)
		db (ntG# | 0)
		db (ntG# | 0)
		db (ntC# | 0)
		db (ntE | 0)
Channel2_Bar71:
		db (ntA | 2)
		db (ntA | 0)
		db (ntA | 0)
		db (ntE | 0)
		db (ntC# | 0)
		db (ntA | 2)
		db (ntA | 0)
		db (ntA | 0)
		db (ntA | 0)
		db (ntG# | 0)
		db (ntA | 2)
Channel2_Bar72:
		db (ntA | 0)
		db (ntA | 0)
		db (ntE | 0)
		db (ntA | 0)
		db oct1
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db oct0
		db (ntB | 0)
		db (ntA | 0)
		db (ntF# | 0)
		db (ntB | 0)
		db (ntB | 0)
		db (ntB | 0)
Channel2_Bar73:
		db (ntB | 2)
		db (ntB | 2)
		db (ntB | 0)
		db (ntB | 0)
		db (ntF# | 0)
		db (ntA | 0)
		db (ntB | 2)
		db (ntB | 0)
		db (ntB | 0)
		db (ntB | 0)
Channel2_Bar74:
		db (ntB | 0)
		db (ntB | 0)
		db (ntB | 0)
		db (ntF# | 0)
		db (ntB | 0)
		db oct1
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db oct0
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 2)
Channel2_Bar75:
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntF | 0)
		db (ntG# | 0)
		db oct1
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db oct0
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 0)
Channel2_Bar76:
		db (ntC# | 0)
		db (ntC# | 1)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntC | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db oct0
		db (ntF | 1)
		db (ntA# | 1)
Channel2_Bar77:
		db oct1
		db (ntG# | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntA | 1)
		db (ntD# | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntF# | 1)
Channel2_Bar78:
		db oct0
		db (ntF | 1)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntC | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db oct0
		db (ntF | 1)
		db (ntA# | 1)
Channel2_Bar79:
		db oct1
		db (ntG# | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntA | 1)
		db (ntD# | 1)
		db oct0
		db (ntF | 1)
		db oct1
		db (ntC | 1)
		db (ntF | 1)
		db (ntF# | 2)
Channel2_Bar80:
		pkmsSetDuty	5
		db oct0
		db (ntB | 2)
		db oct1
		db (ntB | 0)
		db (ntC | 2)
		db oct2
		db (ntC | 0)
		db oct1
		db (ntC# | 2)
		db oct2
		db (ntC# | 0)
		db oct1
		db (ntD | 2)
Channel2_Bar81:
		db oct2
		db (ntD | 0)
		db oct1
		db (ntD# | 2)
		db oct2
		db (ntD# | 0)
		db oct1
		db (ntE | 2)
		db oct2
		db (ntE | 0)
		db oct1
		db (ntF | 2)
		db oct2
		db (ntF | 0)
		db oct1
		db (ntF# | 2)
Channel2_Bar82:
		db oct2
		db (ntF# | 0)
		db oct1
		db (ntE | 15)
Channel2_Bar83:
		db (ntE | 15)
Channel2_Bar84:
		db oct2
		db (ntE | 1)
		db (ntE | 1)
		db (ntG | 3)
		db (ntE | 1)
		db (ntE | 1)
		db (ntA | 3)
Channel2_Bar85:
		db (ntE | 1)
		db (ntE | 1)
		db (ntA# | 3)
		db (ntE | 1)
		db (ntE | 1)
		db (ntB | 15)
Channel2_Bar86:
		db (ntB | 15)
Channel2_Bar87:
		db (ntB | 3)
Channel2_Bar88:
		db (ntF | 1)
		db (ntF | 1)
		db (ntG# | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntA# | 3)
Channel2_Bar89:
		db (ntF | 1)
		db (ntF | 1)
		db (ntB | 3)
		db (ntF | 1)
		db (ntF | 1)
		db oct3
		db (ntC | 3)
Channel2_Bar90:
		db oct1
		db (ntA | 14)
Channel2_Bar91:
		db (ntF | 1)
		db (ntF | 5)
		db (ntA | 3)
		db (ntA | 3)
Channel2_Bar92:
		db (ntA | 1)
		db (ntF# | 13)
Channel2_Bar93:
		db oct2
		db (ntC# | 1)
		db oct1
		db (ntA# | 11)
		db (ntA | 0)
Channel2_Bar94:
		db (ntA# | 0)
		db oct2
		db (ntC | 13)
		db oct1
		db (ntB | 0)
Channel2_Bar95:
		db (ntA# | 0)
		db (ntA | 1)
		db (ntF | 5)
		db oct2
		db (ntC | 3)
		db (ntD# | 3)
Channel2_Bar96:
		db (ntD# | 1)
		db (ntC# | 13)
Channel2_Bar97:
		db oct1
		db (ntD# | 1)
		db (ntG | 11)
		db (ntD# | 0)
Channel2_Bar98:
		db (ntG# | 5)
		db (ntC# | 5)
		db (ntF | 3)
Channel2_Bar99:
		db (ntG# | 5)
		db (ntF | 5)
		db (ntG# | 3)
Channel2_Bar100:
		db (ntA# | 5)
		db (ntG | 5)
		db (ntG# | 3)
Channel2_Bar101:
		db oct2
		db (ntD# | 5)
		db oct1
		db (ntA# | 5)
		db oct2
		db (ntG | 3)
Channel2_Bar102:
		db (ntF | 5)
		db (ntC# | 5)
		db (ntF | 3)
Channel2_Bar103:
		db (ntG# | 5)
		db (ntF | 5)
		db (ntG# | 3)
Channel2_Bar104:
		db (ntA# | 5)
		db (ntG | 5)
		db (ntG# | 3)
Channel2_Bar105:
		db (ntA# | 5)
		db (ntB | 1)
		db (ntG | 15)
Channel2_Bar106:
		db (ntG | 15)
Channel2_Bar107:
		db (ntG | 15)
Channel2_Bar108:
		db (ntG | 15)
Channel2_Bar109:
		db (ntG | 7)
Channel2_Bar110:
		db oct3
		db (ntD# | 1)
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
Channel2_Bar111:
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db (ntD# | 1)
		db (ntD# | 1)
		db (ntC# | 1)
		db (ntD# | 1)
Channel2_Bar112:
		db oct2
		db (ntA# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
Channel2_Bar113:
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db oct4
		db (ntD# | 1)
		db oct3
		db (ntA# | 1)
		db (ntE | 1)
		db (ntC# | 15)
Channel2_Bar114:
		db (ntC# | 11)
Channel2_Bar115:
		db (ntE | 1)
		db (ntC# | 1)
		db (ntE | 1)
Channel2_Bar116:
		db (ntD# | 15)
Channel2_Bar117:
		db (ntD# | 15)
Channel2_Bar118:
		db (ntD# | 7)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntG# | 1)
		db oct2
		db oct3
		db (ntF | 1)
Channel2_Bar119:
		db oct2
		db oct3
		db (ntG | 15)
Channel2_Bar120:
		db oct2
		db oct3
		db (ntG# | 7)
		db oct1
		db oct2
		db (ntB | 3)
		db oct3
		db (ntC | 3)
Channel2_Bar121:
		db oct2
		db oct3
		db (ntC# | 11)
		db oct2
		db oct3
		db (ntE | 3)
Channel2_Bar122:
		db oct2
		db oct3
		db (ntG | 7)
		db oct2
		db oct3
		db (ntD# | 3)
		db oct2
		db oct3
		db (ntF | 3)
Channel2_Bar123:
		db oct2
		db oct3
		db (ntG | 7)
		db oct2
		db oct3
		db (ntG | 1)
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntF | 1)
Channel2_Bar124:
		db oct2
		db oct3
		db (ntG | 7)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntF | 1)
		db oct2
		db oct3
		db (ntA# | 1)
		db oct2
		db oct3
		db (ntG# | 1)
Channel2_Bar125:
		db oct2
		db oct3
		db (ntG | 11)
		db oct2
		db (ntA | 3)
Channel2_Bar126:
		db oct3
		db (ntC# | 1)
		db (ntC | 1)
		db (ntC# | 1)
		db (ntF | 9)
Channel2_Bar127:
		db (ntC# | 7)
		db oct2
		db (ntG# | 1)
		db oct3
		db (ntC# | 1)
		db (ntG# | 1)
		db (ntF | 1)
Channel2_Bar128:
		db (ntD# | 5)
		db oct2
		db (ntA# | 9)
Channel2_Bar129:
		db oct3
		db (ntG | 1)
		db (ntF | 1)
		db (ntG | 1)
		db (ntA# | 3)
		db oct2
		db (ntG | 1)
		db (ntA# | 1)
		db (ntD# | 1)
Channel2_Bar130:
		db oct3
		db (ntC# | 5)
		db (ntF | 5)
		db (ntC# | 3)
Channel2_Bar131:
		db oct2
		db (ntG# | 7)
		db (ntG# | 1)
		db oct3
		db (ntC# | 1)
		db (ntG# | 1)
		db (ntF | 1)
Channel2_Bar132:
		db (ntD# | 5)
		db oct2
		db (ntA# | 5)
		db oct3
		db (ntD# | 3)
Channel2_Bar133:
		db (ntG | 1)
		db (ntF | 1)
		db (ntG | 5)
		db (ntA# | 5)
Channel2_Bar134:
		db (ntF | 5)
		db (ntC | 5)
		db (ntF | 3)
Channel2_Bar135:
		db (ntA | 5)
		db oct4
		db (ntC | 0)
		db (ntC | 0)
		db oct3
		db (ntA | 1)
		db (ntF | 1)
		db (ntC | 1)
		db oct2
		db (ntA | 1)
Channel2_Bar136:
		db oct3
		db (ntG | 5)
		db (ntD | 5)
		db (ntG | 3)
Channel2_Bar137:
		db (ntG | 1)
		db (ntB | 3)
		db oct4
		db (ntD | 0)
		db (ntD | 0)
		db oct3
		db (ntB | 1)
		db (ntG | 1)
		db (ntD | 1)
		db oct2
		db (ntB | 1)
Channel2_Bar138:
		db oct3
		db (ntA | 5)
		db (ntE | 5)
		db (ntA | 3)
Channel2_Bar139:
		db oct4
		db (ntC# | 7)
		db oct3
		db (ntC# | 1)
		db (ntE | 11)
Channel2_Bar140:
		db oct2
		db (ntC# | 5)
		db (ntE | 3)
Channel2_Bar141:
		db (ntA | 15)
Channel2_Bar142:
		db (ntE | 5)
		db (ntG | 5)
		db (ntA | 3)
Channel2_Bar143:
		db (ntA# | 13)
		db (ntB | 0)
		db oct3
		db (ntC | 0)
Channel2_Bar144:
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntD | 3)
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntE | 3)
Channel2_Bar145:
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntF# | 3)
		db oct2
		db oct3
		db (ntC# | 1)
		db oct2
		db oct3
		db (ntC# | 1)
		db (ntG | 3)
Channel2_Bar146:
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntE | 3)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntF# | 3)
Channel2_Bar147:
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db (ntG# | 3)
		db oct2
		db oct3
		db (ntD# | 1)
		db oct2
		db oct3
		db (ntD# | 1)
		db (ntG# | 1)
		db (ntA | 1)
Channel2_Bar148:
		db oct1
		db oct2
		db oct3
		db (ntG# | 2)
		db (ntG# | 12)
Channel2_Bar149:
		db oct0
		db oct1
		db (ntG# | 15)
Channel2_Bar150:
		db oct2
		db (ntA | 15)
Channel2_Bar151:
		db oct3
		db (ntC# | 5)
		db oct1
		db oct2
		db (ntB | 5)
		db oct1
		db oct2
		db (ntA | 3)
Channel2_Bar152:
		db oct1
		db oct2
		db (ntB | 15)
Channel2_Bar153:
		db oct0
		db oct1
		db (ntB | 15)
Channel2_Bar154:
		db oct2
		db (ntF# | 1)
		db oct1
		db oct2
		db (ntF | 13)
Channel2_Bar155:
		db (ntC# | 2)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 0)
		db (ntC# | 0)
		db oct1
		db (ntG# | 2)
		db (ntG# | 0)
		db (ntG# | 0)
		db (ntG# | 0)
		db (ntG# | 0)
		pkmsEndSound

; ===========================================================================
NewSong_Channel3:
		pkmsSetNtr	$C, 1, 5
Channel3_Bar1:
		db (ntRst | 15)
Channel3_Bar2:
		pkmsSetVel	1, 1
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntC# | 0)
		db oct2
		db oct3
		db (ntD | 0)
		db oct2
		db oct3
		db (ntC# | 0)
		db oct2
		db oct3
		db (ntC | 0)
		db oct2
		db oct3
		db (ntC# | 0)
		db oct2
		db oct3
		db (ntC | 0)
		db oct2
		db (ntB | 0)
		db oct3
		db (ntC | 0)
		db oct2
		db (ntB | 0)
		db (ntA# | 0)
		db (ntB | 0)
		db (ntA# | 0)
		db (ntB | 0)
		db (ntA# | 0)
		db (ntF | 0)
Channel3_Bar3:
		db oct3
		db (ntE | 15)
Channel3_Bar4:
		db oct2
		db (ntB | 15)
Channel3_Bar5:
		db oct3
		db (ntE | 1)
		db oct2
		db (ntE | 5)
		db oct3
		db (ntE | 1)
		db oct2
		db (ntE | 3)
		db (ntE | 1)
Channel3_Bar6:
		db oct3
		db (ntE | 3)
		db oct2
		db (ntE | 3)
		db oct3
		db (ntE | 3)
		db oct2
		db (ntE | 3)
Channel3_Bar7:
		db oct3
		db (ntF | 15)
Channel3_Bar8:
		db (ntC | 15)
Channel3_Bar9:
		db (ntF | 1)
		db oct2
		db (ntF | 5)
		db oct3
		db (ntF | 1)
		db oct2
		db (ntF | 3)
		db (ntF | 1)
Channel3_Bar10:
		db oct3
		db (ntF | 3)
		db oct2
		db (ntF | 3)
		db oct3
		db (ntF | 3)
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
Channel3_Bar11:
		db oct2
		db (ntF | 15)
Channel3_Bar12:
		db (ntF | 15)
Channel3_Bar13:
		db (ntF | 15)
Channel3_Bar14:
		db (ntF | 5)
		db oct3
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntC# | 5)
Channel3_Bar15:
		db oct2
		db (ntF | 15)
Channel3_Bar16:
		db (ntF | 15)
Channel3_Bar17:
		db (ntF | 15)
Channel3_Bar18:
		db (ntA | 5)
		db oct3
		db (ntD# | 1)
		db (ntD# | 1)
		db oct2
		db (ntA# | 3)
		db oct3
		db (ntD# | 1)
Channel3_Bar19:
		db oct2
		db (ntG# | 15)
Channel3_Bar20:
		db (ntG# | 15)
Channel3_Bar21:
		db (ntG# | 15)
Channel3_Bar22:
		db (ntG# | 15)
Channel3_Bar23:
		db (ntG# | 15)
Channel3_Bar24:
		db (ntG# | 15)
Channel3_Bar25:
		db (ntG# | 15)
Channel3_Bar26:
		db (ntG# | 15)
Channel3_Bar27:
		db (ntD# | 1)
		db (ntA# | 1)
		db (ntD# | 1)
		db (ntA# | 1)
		db oct3
		db (ntE | 1)
		db (ntE | 1)
		db oct2
		db (ntD# | 1)
		db (ntG# | 1)
Channel3_Bar28:
		db oct3
		db (ntF# | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntG | 1)
		db (ntC# | 1)
		db oct2
		db (ntD# | 1)
		db (ntA# | 1)
		db (ntD# | 1)
		db (ntA# | 1)
Channel3_Bar29:
		db (ntD# | 1)
		db (ntA# | 1)
		db (ntD# | 1)
		db (ntA# | 1)
		db oct3
		db (ntE | 1)
		db (ntE | 1)
		db oct2
		db (ntD# | 1)
		db (ntG# | 1)
Channel3_Bar30:
		db oct3
		db (ntE | 1)
		db oct2
		db (ntD# | 1)
		db oct3
		db (ntG | 1)
		db (ntC# | 1)
		db oct2
		db (ntD# | 1)
		db (ntG | 1)
		db (ntD# | 1)
		db (ntG | 15)
Channel3_Bar31:
		db (ntG | 15)
Channel3_Bar32:
		db (ntG | 15)
Channel3_Bar33:
		db (ntG | 15)
Channel3_Bar34:
		db (ntG | 15)
Channel3_Bar35:
		db (ntG | 15)
Channel3_Bar36:
		db (ntG | 15)
Channel3_Bar37:
		db (ntG | 15)
Channel3_Bar38:
		db (ntG | 10)
Channel3_Bar39:
		db oct3
		db (ntD# | 1)
		db (ntF | 1)
		db (ntG# | 1)
		db (ntF | 1)
Channel3_Bar40:
		db (ntG | 15)
Channel3_Bar41:
		db (ntG# | 7)
		db oct2
		db (ntB | 3)
		db oct3
		db (ntC | 3)
Channel3_Bar42:
		db (ntC# | 11)
		db (ntE | 3)
Channel3_Bar43:
		db (ntG | 7)
		db (ntD# | 3)
		db (ntF | 3)
Channel3_Bar44:
		db (ntG | 7)
		db (ntG | 1)
		db (ntF | 1)
		db (ntD# | 1)
		db (ntF | 1)
Channel3_Bar45:
		db (ntG | 7)
		db (ntD# | 1)
		db (ntF | 1)
		db (ntA# | 1)
		db (ntG# | 1)
Channel3_Bar46:
		db (ntG | 14)
Channel3_Bar47:
		db (ntF | 1)
		db (ntD# | 1)
		db (ntF | 1)
		db (ntG# | 5)
		db (ntF | 3)
Channel3_Bar48:
		db (ntE | 0)
		db (ntF | 6)
		db (ntC# | 1)
		db (ntF | 1)
		db oct4
		db (ntC# | 1)
		db oct3
		db (ntG# | 1)
Channel3_Bar49:
		db (ntG# | 5)
		db (ntG | 9)
Channel3_Bar50:
		db (ntA# | 1)
		db (ntA | 1)
		db (ntA# | 1)
		db oct4
		db (ntD# | 9)
Channel3_Bar51:
		db oct3
		db (ntF | 5)
		db (ntG# | 5)
		db (ntF | 3)
Channel3_Bar52:
		db (ntF | 7)
		db (ntC# | 1)
		db (ntF | 1)
		db oct4
		db (ntC# | 1)
		db oct3
		db (ntG# | 1)
Channel3_Bar53:
		db (ntA# | 5)
		db (ntD# | 5)
		db (ntA# | 3)
Channel3_Bar54:
		db (ntA# | 1)
		db (ntA | 1)
		db (ntA# | 5)
		db oct4
		db (ntD# | 5)
Channel3_Bar55:
		db oct3
		db (ntA | 5)
		db (ntF | 5)
		db (ntA | 3)
Channel3_Bar56:
		db oct4
		db (ntC | 15)
Channel3_Bar57:
		db oct3
		db (ntB | 5)
		db (ntG | 5)
		db (ntB | 3)
Channel3_Bar58:
		db oct4
		db (ntD | 15)
Channel3_Bar59:
		db (ntC# | 5)
		db oct3
		db (ntA | 5)
		db oct4
		db (ntC# | 3)
Channel3_Bar60:
		db (ntE | 15)
Channel3_Bar61:
		db oct3
		db (ntG | 1)
		db (ntG | 3)
		db (ntE | 5)
		db (ntG | 3)
Channel3_Bar62:
		db (ntC# | 15)
Channel3_Bar63:
		db (ntC# | 15)
Channel3_Bar64:
		db (ntC# | 7)
		db oct2
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
		db (ntG | 0)
Channel3_Bar65:
		db oct3
		db (ntC# | 5)
		db (ntC# | 5)
		db (ntC# | 5)
Channel3_Bar66:
		db (ntC# | 5)
		db oct2
		db (ntF# | 3)
		db (ntF# | 3)
Channel3_Bar67:
		db oct3
		db (ntD# | 5)
		db (ntD# | 5)
		db (ntD# | 5)
Channel3_Bar68:
		db (ntD# | 5)
		db oct2
		db (ntG# | 3)
		db (ntG# | 3)
Channel3_Bar69:
		db (ntG# | 15)
Channel3_Bar70:
		db (ntG# | 15)
Channel3_Bar71:
		db (ntG# | 15)
Channel3_Bar72:
		db (ntG# | 15)
Channel3_Bar73:
		db (ntG# | 15)
Channel3_Bar74:
		db (ntG# | 15)
Channel3_Bar75:
		db (ntG# | 15)
Channel3_Bar76:
		db (ntG# | 15)
Channel3_Bar77:
		db (ntG# | 15)
Channel3_Bar78:
		db (ntG# | 15)
Channel3_Bar79:
		db (ntG# | 15)
Channel3_Bar80:
		db (ntG# | 11)
		db oct3
		db (ntC | 0)
		db (ntC | 0)
		db (ntC | 0)
		pkmsEndSound

; ===========================================================================
NewSong_Channel4:
		pkmsSetDSpeed	$C
		pkmsSetDrums	0
Channel4_Bar1:
		db (ntRst | 15)
Channel4_Bar2:
		db (ntRst | 15)
Channel4_Bar3:
		db (ntRst | 15)
Channel4_Bar4:
		db (ntRst | 15)
Channel4_Bar5:
		db (ntE | 1)
		db (ntE | 1)
		db (ntB | 3)
		db (ntE | 1)
		db (ntE | 1)
		db (ntC | 3)
Channel4_Bar6:
		db (ntE | 1)
		db (ntE | 1)
		db (ntB | 3)
		db (ntE | 1)
		db (ntE | 1)
		db (ntD# | 15)
Channel4_Bar7:
		db (ntD# | 15)
Channel4_Bar8:
		db (ntD# | 3)
Channel4_Bar9:
		db (ntF | 1)
		db (ntF | 1)
		db (ntC | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntC# | 3)
Channel4_Bar10:
		db (ntF | 1)
		db (ntF | 1)
		db (ntC | 3)
		db (ntF | 1)
		db (ntF | 1)
		db (ntE | 3)
Channel4_Bar11:
		db (ntA | 13)
		db (ntG | 0)
		db (ntF# | 0)
Channel4_Bar12:
		db (ntF | 1)
		db (ntC | 5)
		db (ntA | 3)
		db (ntF | 3)
Channel4_Bar13:
		db (ntC# | 1)
		db (ntA# | 13)
Channel4_Bar14:
		db (ntG# | 1)
		db (ntF# | 13)
Channel4_Bar15:
		db (ntA | 13)
		db (ntF | 0)
		db (ntG | 0)
Channel4_Bar16:
		db (ntA | 1)
		db (ntC | 5)
		db (ntA | 3)
		db (ntF | 3)
Channel4_Bar17:
		db (ntG | 1)
		db (ntA# | 13)
Channel4_Bar18:
		db (ntC | 1)
		db (ntA# | 13)
Channel4_Bar19:
		db (ntG# | 5)
		db (ntG# | 9)
Channel4_Bar20:
		db (ntC# | 5)
		db (ntC# | 9)
Channel4_Bar21:
		db (ntD# | 5)
		db (ntD# | 9)
Channel4_Bar22:
		db (ntG | 3)
		db (ntF | 3)
		db (ntD# | 3)
		db (ntC# | 3)
Channel4_Bar23:
		db (ntG# | 5)
		db (ntC# | 9)
Channel4_Bar24:
		db (ntF | 5)
		db (ntG# | 9)
Channel4_Bar25:
		db (ntD# | 5)
		db (ntD# | 9)
Channel4_Bar26:
		db (ntD# | 3)
		db (ntC# | 3)
		db (ntG | 1)
		db (ntF | 15)
Channel4_Bar27:
		db (ntF | 15)
Channel4_Bar28:
		db (ntF | 15)
Channel4_Bar29:
		db (ntF | 15)
Channel4_Bar30:
		db (ntF | 5)
Channel4_Bar31:
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 3)
Channel4_Bar32:
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 3)
Channel4_Bar33:
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 3)
Channel4_Bar34:
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 3)
		db (ntD# | 1)
		db (ntD | 0)
		db (ntD# | 0)
Channel4_Bar35:
		db (ntE | 1)
		db (ntE | 1)
		db (ntE | 3)
		db (ntF | 1)
		db (ntF | 3)
		db (ntG | 1)
Channel4_Bar36:
		db (ntG | 3)
		db (ntG# | 1)
		db (ntG# | 1)
		db (ntG# | 9)
Channel4_Bar37:
		db (ntD# | 1)
		db (ntD | 3)
		db (ntF | 1)
		db (ntE | 3)
		db (ntF# | 1)
Channel4_Bar38:
		db (ntF | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntG | 15)
Channel4_Bar39:
		db (ntG | 15)
Channel4_Bar40:
		db (ntG | 15)
Channel4_Bar41:
		db (ntG | 15)
Channel4_Bar42:
		db (ntG | 15)
Channel4_Bar43:
		db (ntG | 15)
Channel4_Bar44:
		db (ntG | 15)
Channel4_Bar45:
		db (ntG | 15)
Channel4_Bar46:
		db (ntG | 15)
Channel4_Bar47:
		db (ntG | 15)
Channel4_Bar48:
		db (ntG | 15)
Channel4_Bar49:
		db (ntG | 15)
Channel4_Bar50:
		db (ntG | 15)
Channel4_Bar51:
		db (ntG | 15)
Channel4_Bar52:
		db (ntG | 15)
Channel4_Bar53:
		db (ntG | 15)
Channel4_Bar54:
		db (ntG | 15)
Channel4_Bar55:
		db (ntG | 15)
Channel4_Bar56:
		db (ntG | 9)
Channel4_Bar57:
		db (ntB | 15)
Channel4_Bar58:
		db (ntG | 7)
		db (ntD | 3)
		db (ntB | 3)
Channel4_Bar59:
		db (ntA | 5)
		db (ntC# | 15)
Channel4_Bar60:
		db (ntC# | 15)
Channel4_Bar61:
		db (ntC# | 15)
Channel4_Bar62:
		db (ntC# | 15)
Channel4_Bar63:
		db (ntC# | 15)
Channel4_Bar64:
		db (ntC# | 15)
Channel4_Bar65:
		db (ntC# | 15)
Channel4_Bar66:
		db (ntC# | 15)
Channel4_Bar67:
		db (ntC# | 15)
Channel4_Bar68:
		db (ntC# | 15)
Channel4_Bar69:
		db (ntC# | 15)
Channel4_Bar70:
		db (ntC# | 15)
Channel4_Bar71:
		db (ntC# | 15)
Channel4_Bar72:
		db (ntC# | 15)
Channel4_Bar73:
		db (ntC# | 15)
Channel4_Bar74:
		db (ntC# | 15)
Channel4_Bar75:
		db (ntC# | 15)
Channel4_Bar76:
		db (ntC# | 11)
Channel4_Bar77:
		db (ntC | 1)
		db (ntF | 1)
		db (ntF# | 1)
		db (ntF | 1)
		db (ntC | 1)
		db (ntA | 1)
		db (ntF | 1)
Channel4_Bar78:
		db (ntF# | 1)
		db (ntF | 1)
		db (ntC | 1)
		db (ntC# | 1)
		db (ntC | 1)
		db (ntG# | 1)
		db (ntA | 1)
		db (ntE | 1)
Channel4_Bar79:
		db (ntF | 1)
		db (ntB | 1)
		db (ntE | 1)
		db (ntF | 1)
		db (ntE | 1)
		db (ntB | 1)
		db (ntG# | 1)
		db (ntE | 1)
Channel4_Bar80:
		db (ntF | 1)
		db (ntE | 1)
		db (ntB | 1)
		db (ntC | 1)
		db (ntB | 1)
		db (ntG | 1)
		db (ntG# | 1)
		db (ntD# | 2)
Channel4_Bar81:
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntA# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntA# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntA# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntA# | 1)
Channel4_Bar82:
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntA# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntA# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntA# | 1)
Channel4_Bar83:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
Channel4_Bar84:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
Channel4_Bar85:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar86:
		db (ntA# | 3)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar87:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
Channel4_Bar88:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar89:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar90:
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
Channel4_Bar91:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar92:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar93:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar94:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
Channel4_Bar95:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar96:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar97:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar98:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
Channel4_Bar99:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar100:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar101:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar102:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar103:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar104:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar105:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar106:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntG | 1)
Channel4_Bar107:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar108:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntG | 1)
Channel4_Bar109:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntG | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar110:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar111:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar112:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar113:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar114:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 3)
		db (ntF# | 1)
Channel4_Bar115:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar116:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar117:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar118:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 3)
		db (ntF# | 1)
Channel4_Bar119:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar120:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar121:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar122:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar123:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar124:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar125:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar126:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar127:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar128:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar129:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar130:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar131:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar132:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar133:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar134:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar135:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar136:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar137:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar138:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar139:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar140:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar141:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar142:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 1)
		db (ntF# | 1)
Channel4_Bar143:
		db (ntF# | 1)
		db (ntF# | 3)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 0)
		db (ntF# | 0)
Channel4_Bar144:
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntF# | 1)
		db (ntA# | 5)
Channel4_Bar145:
		db (ntE | 0)
		db (ntC# | 0)
		db (ntF | 5)
		db (ntF# | 0)
		db (ntE | 0)
		db (ntF | 15)
Channel4_Bar146:
		db (ntF | 15)
Channel4_Bar147:
		db (ntF | 15)
Channel4_Bar148:
		db (ntF | 15)
Channel4_Bar149:
		db (ntF | 15)
Channel4_Bar150:
		db (ntF | 15)
Channel4_Bar151:
		db (ntF | 1)
		db (ntG# | 15)
Channel4_Bar152:
		db (ntF | 2)
Channel4_Bar153:
		db (ntF | 2)
		db (ntF | 10)
		db (ntD | 3)
Channel4_Bar154:
		db (ntD | 2)
		db (ntD | 8)
		pkmsEndSound

