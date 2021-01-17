; ===========================================================================
; Song name: New song
;
; File converted by FroggestSpirit's Midi to GSC ASM converter 1.barelyabove0
; ===========================================================================

		SONG_START EQU $0 ; WARNING: unconverted

		include "pkms.asm" ; WARNING: unconverted

		SECTION "ROM", HOME[0] ; WARNING: unconverted
; ===========================================================================
NewSong_Channel1:
		tempo $70
		volume $77
		dutycycle 1
		notetype 12, $B8
Channel1_Bar1:
		octave 3
		dutycycle 4
		note C_, 1
		note G_, 1
		note F#, 1
		note C_, 1
		note G_, 1
		note F#, 1
		note C_, 1
		note G_, 1
		note F#, 1
		note A#, 1
		note F#, 1
		note G_, 1
		note C_, 1
		note G_, 1
		note F#, 1
		note C_, 1
Channel1_Bar2:
		note G_, 1
		note F#, 1
		note C_, 1
		note G_, 1
		note F#, 1
		note A#, 1
		note F#, 1
		note G_, 1
		dutycycle 7
		note C_, 3
		note F#, 1
		note G#, 3
		note G_, 1
Channel1_Bar3:
		note A#, 3
		note G_, 1
		octave 4
		note D#, 4
		dutycycle 4
		dutycycle 7
		note E_, 16
Channel1_Bar4:
		octave 3
		note C_, 3
		note F#, 1
		note G#, 3
		note G_, 1
Channel1_Bar5:
		note A#, 3
		note G_, 1
		note B_, 4
		octave 4
		note C_, 16
Channel1_Bar6:
		dutycycle 0
		note C_, 16
Channel1_Bar7:
		note C_, 11
Channel1_Bar8:
		note C#, 5
		note C_, 16
Channel1_Bar9:
		note C_, 1
		note F_, 1
		note D#, 1
		octave 3
		note A#, 3
		note A#, 3
Channel1_Bar10:
		note A#, 3
		octave 4
		note F#, 4
		note C_, 12
Channel1_Bar11:
		note G_, 4
		note D#, 7
		note G#, 5
Channel1_Bar12:
		note G_, 4
		note D#, 3
		note D_, 1
		note C_, 12
Channel1_Bar13:
		dutycycle 7
		note C_, 3
		note D_, 1
		note D#, 8
Channel1_Bar14:
		note C#, 3
		note C#, 1
		dutycycle 0
		note C_, 12
Channel1_Bar15:
		note G_, 4
		note D#, 7
		note G#, 5
Channel1_Bar16:
		note G_, 4
		note D#, 3
		note D_, 1
		note C_, 12
Channel1_Bar17:
		dutycycle 7
		note C_, 3
		note D_, 1
		note D#, 8
Channel1_Bar18:
		note F_, 4
		dutycycle 0
		note D_, 12
Channel1_Bar19:
		note A_, 4
		note G_, 7
		note A#, 5
Channel1_Bar20:
		note A_, 4
		note F_, 3
		note G_, 1
		note A_, 16
Channel1_Bar21:
		note A_, 11
Channel1_Bar22:
		octave 3
		note D#, 1
		note E_, 4
		note E_, 4
Channel1_Bar23:
		note E_, 3
		note E_, 3
		note E_, 3
		note E_, 3
		note G_, 3
		note G_, 3
Channel1_Bar24:
		note F_, 3
		note D_, 3
		note F_, 3
		note E_, 4
		note E_, 4
Channel1_Bar25:
		note E_, 3
		note E_, 3
		note E_, 3
		note E_, 3
		note G_, 3
Channel1_Bar26:
		note G_, 3
		note F_, 3
		note A#, 3
		note A_, 3
		octave 4
		note E_, 3
Channel1_Bar27:
		note E_, 1
		note E_, 3
		note E_, 1
		note E_, 3
		note E_, 3
		note E_, 3
		note E_, 3
Channel1_Bar28:
		note G_, 3
		note G_, 3
		note F_, 3
		note D_, 3
		note F_, 3
Channel1_Bar29:
		note E_, 4
		note E_, 4
		note E_, 3
		note E_, 3
		note E_, 3
Channel1_Bar30:
		note E_, 3
		note G_, 3
		note G_, 3
		note F_, 3
		note A#, 3
Channel1_Bar31:
		octave 5
		note C#, 3
		note D_, 16
Channel1_Bar32:
		note D_, 16
Channel1_Bar33:
		note D_, 16
Channel1_Bar34:
		note D_, 16
Channel1_Bar35:
		octave 4
		note D_, 12
Channel1_Bar36:
		note A_, 4
		note F_, 7
		note A#, 5
Channel1_Bar37:
		note A_, 4
		note F_, 3
		note E_, 1
		note D_, 16
Channel1_Bar38:
		note D_, 12
Channel1_Bar39:
		note D_, 12
Channel1_Bar40:
		note A_, 4
		note F_, 7
		note A#, 5
Channel1_Bar41:
		note A_, 4
		note F_, 3
		note E_, 1
		note D_, 16
Channel1_Bar42:
		note D_, 12
Channel1_Bar43:
		note E_, 12
Channel1_Bar44:
		note B_, 4
		note A_, 7
		octave 5
		note C_, 5
Channel1_Bar45:
		octave 4
		note B_, 4
		note G_, 3
		note A_, 1
		note B_, 16
Channel1_Bar46:
		dutycycle 1
		note B_, 12
Channel1_Bar47:
		octave 3
		note A_, 3
		note A#, 3
		note A_, 3
		octave 4
		note C_, 3
Channel1_Bar48:
		octave 3
		note A#, 3
		note G_, 3
		note A_, 3
		note A#, 3
		octave 4
		note C_, 3
		octave 3
		note A#, 3
Channel1_Bar49:
		octave 4
		note C_, 3
		note D#, 3
		note D_, 3
		note D#, 3
		note D_, 3
Channel1_Bar50:
		note F_, 3
		note D#, 3
		note C_, 3
		note D_, 3
		note D#, 3
Channel1_Bar51:
		note F_, 3
		note D#, 3
		note F_, 3
		note G#, 3
		dutycycle 0
		note G_, 16
Channel1_Bar52:
		note G#, 13
Channel1_Bar53:
		note A#, 1
		note G#, 1
		note G_, 16
Channel1_Bar54:
		note C_, 8
Channel1_Bar55:
		octave 3
		octave 2
		octave 3
		octave 4
		note G_, 16
Channel1_Bar56:
		note G#, 13
Channel1_Bar57:
		note A#, 1
		note G#, 1
		note G_, 12
		octave 3
		octave 4
		octave 5
		note C_, 15
Channel1_Bar58:
		note D#, 1
		note C#, 16
Channel1_Bar59:
		note C#, 16
Channel1_Bar60:
		note C#, 16
Channel1_Bar61:
		octave 4
		note A#, 16
Channel1_Bar62:
		octave 5
		note C_, 16
Channel1_Bar63:
		note C_, 16
Channel1_Bar64:
		note C_, 16
Channel1_Bar65:
		note C_, 15
Channel1_Bar66:
		note D#, 1
		note C#, 16
Channel1_Bar67:
		note C#, 16
Channel1_Bar68:
		note C#, 16
Channel1_Bar69:
		octave 6
		note C#, 16
Channel1_Bar70:
		note C_, 2
Channel1_Bar71:
		octave 5
		octave 4
		note G_, 16
Channel1_Bar72:
		note G_, 16
Channel1_Bar73:
		note G_, 16
Channel1_Bar74:
		note G_, 7
		octave 3
		note G#, 1
		note A_, 1
		endchannel

; ===========================================================================
NewSong_Channel2:
		dutycycle 1
		notetype 12, $B8
Channel2_Bar1:
		octave 2
		note D_, 1
		note D#, 1
		note E_, 1
		note D#, 1
		note E_, 1
		note F_, 1
		note E_, 1
		note F_, 1
		note F#, 1
		note F_, 1
		note F#, 1
		note G_, 1
		note F#, 1
		note G_, 1
		note G#, 1
		note G_, 1
Channel2_Bar2:
		note G#, 1
		note A_, 1
		note G#, 1
		note A_, 1
		note A#, 1
		note A_, 1
		note A#, 1
		note B_, 1
		octave 3
		note C_, 16
Channel2_Bar3:
		note E_, 3
		note G_, 3
		note E_, 3
Channel2_Bar4:
		note C_, 3
		note C#, 3
		octave 2
		note A#, 3
		octave 3
		note C_, 16
Channel2_Bar5:
		note E_, 3
		note G_, 3
Channel2_Bar6:
		note E_, 3
		note A#, 3
		note F#, 3
		note G_, 3
		dutycycle 5
		octave 2
		note C_, 1
		note C_, 1
		note C_, 1
		note C_, 3
Channel2_Bar7:
		note C_, 9
		note C_, 1
		note C_, 9
Channel2_Bar8:
		note C#, 5
		note C_, 1
		note C_, 1
		note C_, 1
		note C_, 3
Channel2_Bar9:
		note C_, 9
		octave 3
		note C_, 1
		dutycycle 1
		dutycycle 5
		note F_, 1
		dutycycle 1
		dutycycle 5
		note D#, 1
		dutycycle 1
		dutycycle 5
		note F#, 3
		note F#, 3
Channel2_Bar10:
		note F#, 3
		note F#, 4
		dutycycle 1
		note G_, 12
Channel2_Bar11:
		note F_, 4
		note G#, 7
Channel2_Bar12:
		note F_, 5
		note B_, 4
		note D#, 3
		note F_, 1
		note G_, 12
Channel2_Bar13:
		dutycycle 5
		note C_, 3
		note D_, 1
		note D#, 8
Channel2_Bar14:
		note C#, 3
		note C#, 1
		dutycycle 1
		note G_, 12
Channel2_Bar15:
		note D#, 4
		note G#, 7
Channel2_Bar16:
		note A#, 5
		note B_, 4
		octave 4
		note C_, 3
		octave 3
		note A#, 1
		note G_, 12
Channel2_Bar17:
		dutycycle 5
		note C_, 3
		note D_, 1
		note D#, 8
Channel2_Bar18:
		note G_, 4
		dutycycle 1
		note A_, 12
Channel2_Bar19:
		note F_, 4
		note A#, 7
Channel2_Bar20:
		note A_, 5
		octave 4
		note C#, 4
		note D_, 3
		note E_, 1
		note F_, 12
Channel2_Bar21:
		dutycycle 5
		octave 3
		note D_, 3
		note E_, 1
		note F_, 16
Channel2_Bar22:
		dutycycle 1
		octave 2
		note G_, 4
Channel2_Bar23:
		note G_, 3
		note G_, 3
		note G_, 3
		note G_, 3
		note A#, 3
Channel2_Bar24:
		note A#, 3
		note G#, 3
		note F_, 3
		note G#, 3
		note G_, 4
Channel2_Bar25:
		note G_, 4
		note G_, 3
		note G_, 3
		note G_, 3
		note G_, 3
Channel2_Bar26:
		note A#, 3
		note A#, 3
		note G#, 3
		octave 3
		note C#, 3
		note C_, 3
		dutycycle 5
		octave 2
		note G_, 5
Channel2_Bar27:
		note A#, 5
		note A_, 5
		note G_, 5
Channel2_Bar28:
		note E_, 5
		note F_, 5
		dutycycle 6
		note E_, 5
Channel2_Bar29:
		dutycycle 5
		dutycycle 6
		note A#, 5
		dutycycle 5
		dutycycle 6
		note A_, 5
		dutycycle 5
		dutycycle 6
		note G_, 5
Channel2_Bar30:
		dutycycle 5
		note F_, 5
		note C#, 5
		note D_, 16
Channel2_Bar31:
		note D_, 13
Channel2_Bar32:
		note G_, 1
		note G_, 4
		dutycycle 1
		octave 3
		note A#, 5
Channel2_Bar33:
		note D_, 5
		note A_, 3
		note F#, 3
		note A_, 3
Channel2_Bar34:
		note F#, 3
		note D_, 3
		note F#, 3
		note A_, 3
		note A_, 12
Channel2_Bar35:
		note F_, 4
		note A#, 7
Channel2_Bar36:
		note G_, 5
		octave 4
		note C#, 4
		octave 3
		note F_, 3
		note G_, 1
Channel2_Bar37:
		note A_, 12
		dutycycle 5
		note D_, 3
		note E_, 1
Channel2_Bar38:
		note F_, 8
		note D#, 4
		dutycycle 1
		note A_, 12
Channel2_Bar39:
		note F_, 4
		note A#, 7
Channel2_Bar40:
		octave 4
		note C_, 5
		note C#, 4
		note D_, 3
		note C_, 1
Channel2_Bar41:
		octave 3
		note A_, 12
		dutycycle 5
		note D_, 3
		note E_, 1
Channel2_Bar42:
		note F_, 8
		note A#, 4
		dutycycle 1
		note B_, 12
Channel2_Bar43:
		note G_, 4
		octave 4
		note C_, 7
Channel2_Bar44:
		octave 3
		note B_, 5
		octave 4
		note D#, 4
		note E_, 3
		note F#, 1
Channel2_Bar45:
		note G_, 12
		dutycycle 5
		note G_, 3
		note A_, 1
Channel2_Bar46:
		note B_, 16
Channel2_Bar47:
		dutycycle 1
		note B_, 16
Channel2_Bar48:
		note B_, 16
Channel2_Bar49:
		note B_, 16
Channel2_Bar50:
		note B_, 12
		octave 3
		note G_, 1
		note F_, 1
		note G_, 14
Channel2_Bar51:
		note G#, 13
Channel2_Bar52:
		note A#, 1
		note G#, 1
		note G_, 16
Channel2_Bar53:
		note C_, 1
		octave 2
		note A#, 1
		octave 3
		note C_, 5
Channel2_Bar54:
		note D#, 4
		note F_, 4
		note G_, 16
Channel2_Bar55:
		note G#, 13
Channel2_Bar56:
		note A#, 1
		note G#, 1
		note G_, 8
Channel2_Bar57:
		note F_, 8
		octave 4
		note C_, 8
Channel2_Bar58:
		note D#, 7
		note F_, 1
		note C#, 1
		note F_, 1
		note G#, 1
		octave 5
		note C_, 1
		note C#, 1
		note C_, 1
		octave 4
		note G#, 1
Channel2_Bar59:
		note F_, 1
		note C#, 1
		octave 3
		note G#, 1
		note F_, 1
		note G#, 1
		octave 4
		note C#, 1
		note F_, 1
		note G#, 1
		octave 5
		note C_, 1
		note C#, 1
		note C_, 1
		octave 4
		note G#, 1
		note F_, 1
		note C#, 1
		octave 3
		note G#, 1
		note F_, 1
Channel2_Bar60:
		note G#, 1
		octave 4
		note C#, 1
		note F_, 1
		note G#, 1
		octave 5
		note C_, 1
		note C#, 1
		note C_, 1
		octave 4
		note G#, 1
		note F_, 1
		note C#, 1
		octave 3
		note G#, 1
		note F_, 1
		note G#, 1
		note A#, 1
		octave 4
		note C#, 1
		note F_, 1
Channel2_Bar61:
		note A_, 1
		note A#, 1
		note A_, 1
		note F_, 1
		note C#, 1
		octave 3
		note A#, 1
		note F_, 1
		note C#, 1
		note F_, 1
		dutycycle 7
		note C_, 4
		octave 2
		note C_, 4
Channel2_Bar62:
		octave 3
		note C_, 1
		note C_, 1
		note C_, 1
		octave 2
		note C_, 4
		note C_, 3
		octave 1
		note G_, 4
		octave 3
		note C_, 1
Channel2_Bar63:
		note C_, 1
		note C_, 1
		note C_, 1
		octave 2
		note C_, 4
		octave 3
		note C_, 4
		octave 2
		note C_, 4
		octave 3
		note C_, 1
Channel2_Bar64:
		note C_, 1
		note C_, 1
		octave 2
		note C_, 4
		note C_, 3
		octave 1
		note G_, 7
Channel2_Bar65:
		octave 3
		note C_, 1
		note C_, 1
		octave 2
		note C_, 3
		dutycycle 1
		octave 5
		note D#, 1
		octave 4
		note C#, 1
		note F#, 1
		note A#, 1
		octave 5
		note C_, 1
		note C#, 1
		note C_, 1
		octave 4
		note A#, 1
		note F#, 1
		note C#, 1
		octave 3
		note A#, 1
Channel2_Bar66:
		note F#, 1
		note A#, 1
		octave 4
		note C#, 1
		note F#, 1
		note A#, 1
		octave 5
		note C_, 1
		note C#, 1
		note C_, 1
		octave 4
		note A#, 1
		note F#, 1
		note C#, 1
		octave 3
		note A#, 1
		note F#, 1
		note A#, 1
		octave 4
		note C#, 1
		note F#, 1
Channel2_Bar67:
		note A#, 1
		octave 5
		note C_, 1
		note C#, 1
		note C_, 1
		octave 4
		note A#, 1
		note F#, 1
		note C#, 1
		octave 3
		note A#, 1
		note F#, 1
		note A#, 1
		note A#, 1
		octave 4
		note C#, 1
		note F_, 1
		note G#, 1
		note A#, 1
		note G#, 1
Channel2_Bar68:
		note F_, 1
		note C#, 1
		octave 3
		note A#, 1
		note F_, 3
		note F_, 1
		dutycycle 4
		octave 4
		note G_, 8
		octave 3
		note C_, 8
Channel2_Bar69:
		octave 2
		note G_, 8
		note C_, 8
Channel2_Bar70:
		note G_, 16
Channel2_Bar71:
		dutycycle 7
		octave 1
		endchannel

; ===========================================================================
NewSong_Channel3:
		notetype 12, $15
Channel3_Bar1:
		octave 4
		intensity $15
		note F#, 1
		note G_, 1
		note F#, 1
		note G_, 1
		note F#, 1
		note A#, 1
		note F#, 1
		note G_, 1
		note F#, 1
		note G_, 1
		note F#, 1
		note G_, 1
		note F#, 1
		note G_, 1
		note F#, 1
		note G_, 1
Channel3_Bar2:
		note F#, 1
		note G_, 1
		note F#, 1
		note G_, 1
		note F#, 1
		note A#, 3
		note G_, 1
		intensity $11
		octave 5
		note C_, 16
Channel3_Bar3:
		note E_, 3
		note G_, 3
		note E_, 3
Channel3_Bar4:
		note C_, 3
		note C#, 3
		octave 3
		note A#, 3
		octave 5
		note C_, 16
Channel3_Bar5:
		note E_, 3
		note G_, 3
Channel3_Bar6:
		note E_, 3
		note A#, 3
		note F#, 3
		note G_, 3
		octave 6
		note C_, 4
Channel3_Bar7:
		note C_, 3
		intensity $17
		octave 4
		note F_, 1
		octave 3
		note F_, 4
		octave 2
		note A_, 1
		octave 3
		note F_, 1
		octave 2
		note A_, 1
		intensity $11
		octave 6
		note C_, 11
Channel3_Bar8:
		note C#, 5
		intensity $17
		octave 4
		note C#, 4
Channel3_Bar9:
		note A#, 3
		octave 5
		note C_, 1
		octave 3
		note G_, 4
		note D#, 4
		intensity $11
		octave 6
		note C_, 1
		note F_, 1
		note D#, 1
		octave 5
		note F#, 3
Channel3_Bar10:
		note F#, 3
		note F#, 3
		note F#, 4
		octave 4
		note G_, 12
Channel3_Bar11:
		note F_, 4
		note G#, 7
Channel3_Bar12:
		note F_, 5
		note B_, 4
		note D#, 3
		note F_, 1
Channel3_Bar13:
		note G_, 12
		intensity $17
		octave 5
		note C_, 3
		note D_, 1
Channel3_Bar14:
		note D#, 8
		note C#, 3
		note C#, 1
		intensity $11
		octave 4
		note G_, 12
Channel3_Bar15:
		note D#, 4
		note G#, 7
Channel3_Bar16:
		note A#, 5
		note B_, 4
		octave 5
		note C_, 3
		octave 4
		note A#, 1
Channel3_Bar17:
		note G_, 12
		intensity $17
		octave 5
		note C_, 3
		note D_, 1
Channel3_Bar18:
		note D#, 8
		note F_, 4
		intensity $11
		octave 4
		note A_, 12
Channel3_Bar19:
		note F_, 4
		note A#, 7
Channel3_Bar20:
		note A_, 5
		octave 5
		note C#, 4
		note D_, 3
		note E_, 1
Channel3_Bar21:
		note F_, 12
		intensity $16
		octave 3
		note D_, 4
Channel3_Bar22:
		note C_, 3
		note C#, 1
		note D_, 1
		note D_, 1
		note D_, 1
		intensity $17
		octave 2
		note B_, 1
		octave 3
		note D_, 1
		octave 2
		note B_, 1
		octave 3
		note E_, 4
		octave 2
		note B_, 7
Channel3_Bar23:
		octave 3
		note E_, 3
		octave 2
		note B_, 3
		octave 3
		note E_, 3
		octave 2
		note B_, 5
Channel3_Bar24:
		octave 3
		note E_, 3
		octave 2
		note B_, 3
		octave 3
		note E_, 3
		note E_, 3
		note E_, 1
Channel3_Bar25:
		octave 2
		note B_, 3
		note B_, 1
		octave 3
		note E_, 4
		octave 2
		note B_, 3
		note B_, 1
		octave 3
		note E_, 3
		octave 2
		note B_, 3
Channel3_Bar26:
		octave 3
		note E_, 3
		octave 2
		note B_, 3
		octave 3
		note E_, 1
		octave 2
		note B_, 1
		octave 3
		note E_, 1
		note E_, 1
		note E_, 3
		note E_, 1
Channel3_Bar27:
		octave 2
		note B_, 3
		note B_, 1
		octave 3
		note E_, 4
		octave 2
		note B_, 3
		note B_, 1
		octave 3
		note E_, 3
		octave 2
		note B_, 3
Channel3_Bar28:
		octave 3
		note E_, 3
		octave 2
		note B_, 3
		octave 3
		note E_, 1
		octave 2
		note B_, 1
		octave 3
		note E_, 1
		note E_, 1
		note E_, 3
		note E_, 1
Channel3_Bar29:
		octave 2
		note B_, 3
		note B_, 1
		octave 3
		note E_, 3
		octave 2
		note B_, 1
		octave 3
		note E_, 3
		octave 2
		note B_, 1
		octave 3
		note E_, 3
		octave 2
		note B_, 1
Channel3_Bar30:
		octave 3
		note E_, 3
		octave 2
		note B_, 1
		note B_, 4
		note A_, 1
		note A_, 1
		note A_, 1
		note A_, 1
		note A_, 1
		note A_, 1
		intensity $11
		octave 5
		note G_, 3
Channel3_Bar31:
		note A#, 3
		note G_, 3
		note D_, 3
		note G_, 3
		note A_, 3
Channel3_Bar32:
		note F#, 3
		note A_, 3
		note F#, 3
		note D_, 3
		note F#, 3
		note A_, 3
Channel3_Bar33:
		note G_, 3
		note A#, 3
		note G_, 3
		note D_, 3
		note G_, 3
Channel3_Bar34:
		note A_, 3
		note F#, 3
		note A_, 3
		note F#, 3
		note D_, 3
Channel3_Bar35:
		note F#, 3
		note A_, 3
		octave 4
		note A_, 12
Channel3_Bar36:
		note F_, 4
		note A#, 7
		note G_, 5
Channel3_Bar37:
		octave 5
		note C#, 4
		octave 4
		note F_, 3
		note G_, 1
		note A_, 12
Channel3_Bar38:
		intensity $16
		octave 3
		note D_, 4
		note C_, 3
		note C#, 1
		note D_, 1
		note D_, 1
Channel3_Bar39:
		note D_, 1
		note D_, 4
		intensity $11
		octave 4
		note A_, 12
Channel3_Bar40:
		note F_, 4
		note A#, 7
		octave 5
		note C_, 5
Channel3_Bar41:
		note C#, 4
		note D_, 3
		note C_, 1
		octave 4
		note A_, 12
Channel3_Bar42:
		intensity $16
		octave 3
		note D_, 1
		note D_, 1
		note D_, 1
		note D_, 4
		note D_, 1
		note D_, 1
		note D_, 1
		note E_, 4
Channel3_Bar43:
		intensity $11
		octave 4
		note B_, 12
		note G_, 4
Channel3_Bar44:
		octave 5
		note C_, 7
		octave 4
		note B_, 5
		octave 5
		note D#, 4
Channel3_Bar45:
		note E_, 3
		note F#, 1
		note G_, 12
Channel3_Bar46:
		intensity $16
		octave 3
		note E_, 4
		note D_, 3
		note D#, 1
		note E_, 1
		note E_, 1
		note E_, 1
		note E_, 4
Channel3_Bar47:
		intensity $1A
		note G_, 3
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 1
		note G_, 1
Channel3_Bar48:
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 1
		note G_, 1
		note G_, 1
Channel3_Bar49:
		note G_, 3
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 1
		note G_, 1
		note G_, 1
		note G_, 3
Channel3_Bar50:
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 3
		note G_, 1
		note G_, 1
		note G_, 1
		note G_, 1
		intensity $16
		note C_, 3
Channel3_Bar51:
		note C_, 1
		note C_, 3
		note C_, 1
		octave 2
		note G_, 1
		note G_, 1
		note G_, 1
		octave 3
		note D#, 4
		note C#, 3
Channel3_Bar52:
		note C#, 1
		note C#, 3
		note C#, 1
		octave 2
		note G#, 1
		note G#, 1
		note G#, 1
		octave 3
		note F_, 4
		note C_, 3
		note C_, 1
Channel3_Bar53:
		note C_, 3
		note C_, 1
		octave 2
		note G_, 1
		note G_, 1
		note G_, 1
		octave 3
		note D#, 1
		note C_, 1
		octave 2
		note G_, 1
		octave 3
		note C_, 3
		note C_, 1
		note C_, 3
Channel3_Bar54:
		note C_, 1
		octave 2
		note G_, 1
		note G_, 1
		note G_, 1
		octave 3
		note G_, 1
		note C#, 1
		octave 2
		note G_, 1
		octave 3
		note C_, 3
		note C_, 1
		note C_, 3
		note C_, 1
Channel3_Bar55:
		octave 2
		note G_, 1
		note G_, 1
		note G_, 1
		octave 3
		note D#, 4
		note C#, 3
		note C#, 1
		note C#, 3
		note C#, 1
		octave 2
		note G#, 1
Channel3_Bar56:
		note G#, 1
		note G#, 1
		octave 3
		note F_, 4
		note C_, 3
		note C_, 1
		note C_, 3
		note C_, 1
		octave 2
		note G_, 1
		note G_, 1
Channel3_Bar57:
		note G_, 1
		octave 3
		note D#, 1
		note C_, 1
		octave 2
		note G_, 1
		octave 3
		note C_, 3
		note C_, 1
		note C_, 3
		note C_, 1
		octave 2
		note G_, 1
		note G_, 1
		note G_, 1
		octave 3
		note G_, 1
Channel3_Bar58:
		note C#, 1
		intensity $15
		octave 4
		note D#, 1
		note C#, 3
		note C#, 1
		note C#, 3
		note C#, 1
		note C#, 3
		note C#, 1
		note C#, 4
Channel3_Bar59:
		note C#, 3
		note C#, 1
		note C#, 3
		note C#, 1
		note C#, 3
		note C#, 1
		note C#, 4
Channel3_Bar60:
		note C#, 1
		note C_, 1
		note C#, 1
		note C#, 3
		note C#, 1
		note C#, 3
		note C#, 1
		octave 3
		note A#, 4
Channel3_Bar61:
		octave 4
		note C#, 3
		note C#, 1
		octave 3
		note A#, 4
		octave 4
		note C#, 1
		note C_, 1
		note C#, 1
		octave 3
		note A#, 4
Channel3_Bar62:
		intensity $17
		octave 4
		note C_, 4
		intensity $15
		intensity $17
		octave 3
		note C_, 4
		octave 4
		note C_, 1
		note C_, 1
		note C_, 1
		octave 3
		note C_, 4
		note C_, 3
Channel3_Bar63:
		octave 2
		note G_, 4
		octave 4
		note C_, 1
		note C_, 1
		note C_, 1
		note C_, 1
		octave 3
		note C_, 4
		octave 4
		note C_, 4
Channel3_Bar64:
		octave 3
		note C_, 4
		octave 4
		note C_, 1
		note C_, 1
		note C_, 1
		octave 3
		note C_, 4
		note C_, 3
Channel3_Bar65:
		octave 2
		note G_, 7
		octave 4
		note C_, 1
		note C_, 1
		octave 3
		note C_, 4
		intensity $15
		octave 4
		note C#, 16
Channel3_Bar66:
		note F#, 16
Channel3_Bar67:
		note A#, 16
Channel3_Bar68:
		octave 5
		note C#, 16
Channel3_Bar69:
		note C_, 4
Channel3_Bar70:
		intensity $17
		octave 1
		note B_, 16
Channel3_Bar71:
		note B_, 16
Channel3_Bar72:
		note B_, 12
		octave 2
		endchannel

; ===========================================================================
NewSong_Channel4:
		notetype $C
		togglenoise 0
Channel4_Bar1:
		note C_, 3
		note C_, 1
		note D_, 3
		note C#, 1
		note C_, 3
		note C#, 1
		note D_, 3
		note C#, 1
Channel4_Bar2:
		note C_, 3
		note C#, 1
		note D_, 3
		note C#, 1
		note C_, 3
		note C#, 1
		note D_, 3
		note C#, 1
Channel4_Bar3:
		note C_, 3
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G#, 1
		note C_, 1
		note D#, 3
		note C#, 1
		note C_, 3
Channel4_Bar4:
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G#, 1
		note C_, 1
		note D#, 3
		note C#, 1
		note C_, 3
Channel4_Bar5:
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G#, 1
		note C_, 1
		note D#, 1
		note C_, 1
		note C#, 1
		note C_, 3
		note C#, 1
Channel4_Bar6:
		note D#, 3
		note C#, 1
		note C_, 1
		note G#, 1
		note C_, 1
		note D#, 3
		note C#, 1
		note C_, 3
		note C#, 1
		note D#, 3
Channel4_Bar7:
		note C#, 1
		note C_, 1
		note G#, 1
		note C_, 1
		note D#, 3
		note C#, 1
		note C_, 3
		note C#, 1
		note D#, 3
Channel4_Bar8:
		note C#, 1
		note C_, 1
		note G#, 1
		note C_, 1
		note D#, 3
		note C#, 1
		note C_, 3
		note C#, 1
		note D#, 3
Channel4_Bar9:
		note C#, 1
		note C_, 1
		note G#, 1
		note C_, 1
		note D#, 1
		note C_, 1
		note C#, 1
		note C_, 3
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
Channel4_Bar10:
		note F#, 1
		note A#, 1
		note C_, 1
		note F#, 1
		note C_, 1
		note C_, 3
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G_, 1
		note D#, 1
Channel4_Bar11:
		note G#, 1
		note G_, 1
		note B_, 1
		note C_, 3
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G_, 1
		note D#, 1
		note G#, 1
		note G_, 1
Channel4_Bar12:
		note B_, 1
		note C_, 3
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G_, 1
		note D#, 1
		note G#, 1
		note G_, 1
		note B_, 1
		note C_, 3
Channel4_Bar13:
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G_, 1
		note D#, 1
		note G#, 1
		note G_, 1
		note B_, 1
		note C_, 3
Channel4_Bar14:
		note C#, 1
		note D#, 3
		note C#, 1
		note C_, 1
		note G_, 1
		note D#, 1
		note G#, 1
		note G_, 1
		note B_, 1
		note C_, 3
		note C#, 1
		note D#, 3
Channel4_Bar15:
		note C#, 1
		note C_, 1
		note G_, 1
		note D#, 1
		note G#, 1
		note G_, 1
		note B_, 1
		note C_, 3
		note C#, 1
		note D#, 3
Channel4_Bar16:
		note C#, 1
		note C_, 1
		note G_, 1
		note D#, 1
		note G#, 1
		note G_, 1
		note B_, 1
		note C_, 3
		note D_, 1
		note D#, 3
		note D_, 1
		note C_, 1
Channel4_Bar17:
		note D_, 1
		note D#, 1
		note G_, 4
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
Channel4_Bar18:
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
Channel4_Bar19:
		note A_, 1
		note C#, 1
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
Channel4_Bar20:
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note B_, 1
		note D_, 1
		note B_, 1
		note E_, 4
Channel4_Bar21:
		note E_, 4
		note E_, 3
		note E_, 3
		note E_, 3
		note E_, 3
Channel4_Bar22:
		note G_, 3
		note G_, 3
		note F_, 3
		note D_, 3
		note F_, 3
Channel4_Bar23:
		note E_, 4
		note E_, 4
		note E_, 3
		note E_, 3
		note E_, 3
Channel4_Bar24:
		note E_, 3
		note G_, 3
		note G_, 3
		note F_, 3
		note A#, 3
Channel4_Bar25:
		note A_, 3
		note E_, 4
		note E_, 4
		note E_, 3
		note E_, 3
Channel4_Bar26:
		note E_, 3
		note E_, 3
		note G_, 3
		note G_, 3
		note F_, 3
Channel4_Bar27:
		note D_, 3
		note F_, 3
		note E_, 4
		note E_, 4
		note E_, 3
Channel4_Bar28:
		note E_, 3
		note E_, 3
		note E_, 3
		note G_, 3
		note G_, 3
Channel4_Bar29:
		note F_, 3
		note A#, 3
		note C#, 3
		note D_, 3
		note D#, 1
		note F_, 3
Channel4_Bar30:
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
Channel4_Bar31:
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
Channel4_Bar32:
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
Channel4_Bar33:
		note A_, 1
		note C#, 16
Channel4_Bar34:
		note C#, 16
Channel4_Bar35:
		note C#, 16
Channel4_Bar36:
		note C#, 1
		note C#, 4
		note C#, 3
		note D_, 1
		note A_, 1
		note F_, 1
		note F_, 1
		note F_, 1
		note C#, 1
		note D_, 1
Channel4_Bar37:
		note D_, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note D_, 3
Channel4_Bar38:
		note D#, 1
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note D_, 3
		note D#, 1
Channel4_Bar39:
		note F_, 3
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note D_, 3
		note D#, 1
		note F_, 3
Channel4_Bar40:
		note D#, 1
		note D_, 1
		note A_, 1
		note F_, 1
		note A#, 1
		note A_, 1
		note C#, 1
		note E_, 3
		note F_, 1
		note G_, 3
		note F_, 1
Channel4_Bar41:
		note E_, 1
		note B_, 1
		note G_, 1
		note C_, 1
		note B_, 1
		note D#, 1
		note E_, 3
		note F_, 1
		note G_, 3
		note F_, 1
		note E_, 1
		note B_, 1
Channel4_Bar42:
		note G_, 1
		note C_, 1
		note B_, 1
		note D#, 1
		note E_, 3
		note F_, 1
		note G_, 3
		note F_, 1
		note E_, 1
		note B_, 1
		note G_, 1
		note C_, 1
Channel4_Bar43:
		note B_, 1
		note D#, 1
		note E_, 3
		note F_, 1
		note G_, 3
		note F_, 1
		note E_, 1
		note B_, 1
		note G_, 1
		note C_, 1
		note B_, 1
		note D#, 1
Channel4_Bar44:
		note D_, 3
		note D#, 3
		note D_, 3
		note F_, 3
		note D#, 3
		note C_, 3
Channel4_Bar45:
		note D_, 3
		note D#, 3
		note F_, 3
		note D#, 3
		note F_, 3
Channel4_Bar46:
		note G#, 3
		note G_, 3
		note G#, 3
		note G_, 3
		note A#, 3
Channel4_Bar47:
		note G#, 3
		note F_, 3
		note G_, 3
		note G#, 3
		note A#, 3
		note G#, 3
Channel4_Bar48:
		note F_, 3
		note C#, 3
		note C_, 3
		note D#, 1
		note G_, 3
		note D#, 1
Channel4_Bar49:
		note C_, 1
		note D#, 1
		note G_, 1
		note D#, 3
		note G_, 1
		note C_, 3
		note F_, 1
		note G#, 3
		note F_, 1
		note C_, 1
Channel4_Bar50:
		note F_, 1
		note G#, 1
		note F_, 3
		note G#, 1
		note C_, 3
		note D#, 1
		note G_, 3
		note D#, 1
		note C_, 1
		note D#, 1
Channel4_Bar51:
		note G_, 1
		note D#, 3
		note G_, 1
		note C_, 3
		note D#, 1
		note G_, 3
		note D#, 1
		note C_, 1
		note D#, 1
		note G_, 1
Channel4_Bar52:
		note D#, 3
		note G_, 1
		note C_, 3
		note D#, 1
		note G_, 3
		note D#, 1
		note C_, 1
		note D#, 1
		note G_, 1
		note D#, 3
Channel4_Bar53:
		note G_, 1
		note C_, 3
		note F_, 1
		note G#, 3
		note F_, 1
		note C_, 1
		note F_, 1
		note G#, 1
		note F_, 3
Channel4_Bar54:
		note G#, 1
		note C_, 3
		note D#, 1
		note G_, 3
		note D#, 1
		note C_, 1
		note D#, 1
		note G_, 1
		note D#, 3
Channel4_Bar55:
		note G_, 1
		note C_, 3
		note G_, 1
		note C_, 3
		note G_, 1
		note C_, 1
		note G_, 1
		note C_, 1
		note G_, 3
		note C_, 1
Channel4_Bar56:
		note C#, 3
		note F#, 1
		note G#, 3
		note C#, 1
		note C#, 1
		note F#, 1
		note C#, 1
		note G#, 3
		note C#, 1
		note C#, 3
Channel4_Bar57:
		note F#, 1
		note G#, 3
		note F#, 1
		note C#, 1
		note F#, 1
		note C#, 1
		note F#, 3
		note C#, 1
		note C#, 3
Channel4_Bar58:
		note F#, 1
		note G#, 3
		note C#, 1
		note C#, 1
		note F#, 1
		note C#, 1
		note G#, 3
		note C#, 1
		note A#, 3
Channel4_Bar59:
		note D#, 1
		note F_, 3
		note D#, 1
		note A#, 1
		note D#, 1
		note A#, 1
		note D#, 3
		note A#, 1
		note C_, 3
		note F_, 1
Channel4_Bar60:
		note G_, 3
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note G_, 3
		note C_, 1
		note C_, 3
		note F_, 1
		note G_, 3
Channel4_Bar61:
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note G_, 3
		note C_, 1
		note C_, 3
		note F_, 1
		note G_, 3
Channel4_Bar62:
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note G_, 3
		note C_, 1
		note C_, 3
		note F_, 1
		note G_, 3
Channel4_Bar63:
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note G_, 3
		note C_, 1
		note C#, 3
		note F#, 1
		note G#, 3
		note C#, 1
Channel4_Bar64:
		note C#, 1
		note F#, 1
		note C#, 1
		note G#, 3
		note C#, 1
		note C#, 3
		note F#, 1
		note G#, 3
		note F#, 1
		note C#, 1
Channel4_Bar65:
		note F#, 1
		note C#, 1
		note F#, 3
		note C#, 1
		note C#, 3
		note F#, 1
		note G#, 3
		note C#, 1
		note C#, 1
		note F#, 1
Channel4_Bar66:
		note C#, 1
		note G#, 3
		note C#, 1
		note A#, 3
		note D#, 1
		note F_, 3
		note D#, 1
		note A#, 1
		note D#, 1
		note A#, 1
Channel4_Bar67:
		note D#, 3
		note A#, 1
		note C_, 3
		note F_, 1
		note G_, 3
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note G_, 3
Channel4_Bar68:
		note C_, 1
		note C_, 3
		note F_, 1
		note G_, 3
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note G_, 3
Channel4_Bar69:
		note C_, 1
		note C_, 3
		note F_, 1
		note G_, 3
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note G_, 3
Channel4_Bar70:
		note C_, 1
		note C_, 3
		note F_, 1
		note G_, 3
		note C_, 1
		note C_, 1
		note F_, 1
		note C_, 1
		note C#, 3
		endchannel
