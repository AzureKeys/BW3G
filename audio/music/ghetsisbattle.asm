;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BattleGhetsis:
	musicheader 4, 1, Music_BattleGhetsis_Ch1
	musicheader 1, 2, Music_BattleGhetsis_Ch2
	musicheader 1, 3, Music_BattleGhetsis_Ch3
	musicheader 1, 4, Music_BattleGhetsis_Ch4

Music_BattleGhetsis_Ch1:
	volume $77
	dutycycle $3
	notetype 12, $a7
	tempo 100
;Bar 1
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 6
	intensity $b5
	octave 3
	note D_, 8
	note G_, 16
;Bar 7
	note G_, 16
;Bar 8
	note G_, 16
;Bar 9
	note G_, 16
;Bar 10
	octave 4
	dutycycle $0
	note C#, 16
;Bar 11
	note C#, 16
	note C#, 16
;Bar 13
	note __, 8
Music_BattleGhetsis_Ch1_loop:
	intensity $85
	octave 4
;Bar 14
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 20
	dutycycle $2
	note G_, 16
;Bar 21
	note G_, 16
;Bar 22
	note G_, 16
;Bar 23
	note C#, 16
;Bar 24
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 28
	note G_, 16
;Bar 29
	note G_, 16
;Bar 30
	note G_, 16
;Bar 31
	note C#, 16
;Bar 32
	note G_, 16
;Bar 33
	note G_, 16
;Bar 34
	note G_, 16
;Bar 35
	note C#, 16
;Bar 36
	dutycycle $1
	note __, 16
	note __, 16
;Bar 38
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 44
	intensity $93
	callchannel Music_BattleGhetsis_Ch1_Bar44
;Bar 45
	callchannel Music_BattleGhetsis_Ch1_Bar45
;Bar 46
	callchannel Music_BattleGhetsis_Ch1_Bar44
;Bar 47
	note C#, 2
	note G_, 2
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
;Bar 48
	octave 4
	note G_, 2
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
;Bar 49
	callchannel Music_BattleGhetsis_Ch1_Bar45
;Bar 50
	callchannel Music_BattleGhetsis_Ch1_Bar44
;Bar 51
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note F_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
;Bar 52
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 62
	intensity $93
	octave 2
	note C#, 6
	note C#, 6
	note C#, 4
;Bar 63
	note C#, 6
	note C#, 6
	note C#, 4
;Bar 64
Music_BattleGhetsis_Ch1_Bar64_67:
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 1
	note G_, 1
	octave 2
	note C#, 2
	octave 1
	note G_, 2
;Bar 65
	note G_, 1
	octave 2
	note C#, 1
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
;Bar 66
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
;Bar 67
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	loopchannel 2, Music_BattleGhetsis_Ch1_Bar64_67
;Bar 72
	octave 2
	intensity $a7
	note C#, 16
	note __, 16
;Bar 74
	vibrato $12, $52
	callchannel Music_BattleGhetsis_Ch1_vocals1
;Bar 76
	callchannel Music_BattleGhetsis_Ch1_vocals1
;Bar 78
	callchannel Music_BattleGhetsis_Ch1_vocals2
;Bar 80
	callchannel Music_BattleGhetsis_Ch1_vocals2
;Bar 82
	intensity $4d
	octave 2
	note C#, 4
	note D#, 4
	note E_, 4
	note F#, 4
;Bar 83
	note E_, 4
	note D#, 4
	note C#, 4
	note C_, 4
;Bar 84
	octave 1
	note A_, 8
	note G_, 8
	note __, 6
;Bar 85
	note __, 10
;Bar 86
	octave 2
	note C#, 4
	note D#, 4
	note E_, 4
	note F#, 4
;Bar 87
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
;Bar 88
	note D#, 8
	note C#, 8
	note __, 6
;Bar 89
	note __, 10
;Bar 90
	callchannel Music_BattleGhetsis_Ch1_vocals1
;Bar 92
	callchannel Music_BattleGhetsis_Ch1_vocals1
;Bar 94
	callchannel Music_BattleGhetsis_Ch1_vocals2
;Bar 96
	callchannel Music_BattleGhetsis_Ch1_vocals2
	intensity $c7
;Bar 98
	octave 3
	note C#, 16
;Bar 99
	note D_, 16
;Bar 100
	note D#, 16
;Bar 101
	note D_, 16
;Bar 102
	note D#, 16
;Bar 103
	note E_, 8
	note F_, 16
;Bar 104
	note F#, 8
;Bar 105
	note G_, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16;extra
	note __, 16;extra
	vibrato $12, $00
	loopchannel 0, Music_BattleGhetsis_Ch1_loop

Music_BattleGhetsis_Ch1_vocals1:
	octave 2
	intensity $4e
	note G_, 16
;Bar 75
	intensity $c2
	note F#, 16
	endchannel

Music_BattleGhetsis_Ch1_vocals2:
	octave 3
	intensity $3e
	note C#, 16
;Bar 79
	intensity $c2
	note C_, 16
	endchannel

Music_BattleGhetsis_Ch1_Bar44:
	note G_, 2;
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	endchannel

Music_BattleGhetsis_Ch1_Bar45:
	note G_, 2;
	note C#, 2
	note G_, 2
	octave 5
	note C#, 2
	note G_, 2
	note C#, 2
	octave 4
	note G_, 2
	note C#, 2
	endchannel
	
; ============================================================================================================

Music_BattleGhetsis_Ch2:
	dutycycle $1
	notetype 12, $a8
;Bar 1
	octave 2
	note G_, 12
	note C#, 1
	note G_, 1
	note F_, 1
	note C#, 1
;Bar 2
	intensity $a7
	note C#, 16
	note __, 16
;Bar 4
	intensity $a7
	note C#, 8
	note G_, 8
;Bar 5
	note C#, 8
	note G_, 8
;Bar 6
	note C#, 8
	note G_, 8
;Bar 7
	note C#, 4
	note G_, 4
	note C#, 8
;Bar 8
	note G_, 8
	note C#, 8
;Bar 9
	note G_, 8
	note C#, 8
;Bar 10
	note G_, 8
	note C#, 4
	note G_, 4
;Bar 11
	note C#, 8
	note G_, 4
	note G_, 2
	note __, 2
Music_BattleGhetsis_Ch2_loop:
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 16
	intensity $85
	octave 4
	dutycycle $2
	note G_, 16
;Bar 17
	note G_, 16
;Bar 18
	note G_, 16
;Bar 19
	note C#, 16
;Bar 20
	note A#, 16
;Bar 21
	note A#, 16
;Bar 22
	note A#, 16
;Bar 23
	note E_, 16
;Bar 24
	note G_, 16
;Bar 25
	note G_, 16
;Bar 26
	note G_, 16
;Bar 27
	note C#, 16
;Bar 28
	note A#, 16
;Bar 29
	note A#, 16
;Bar 30
	note A#, 16
;Bar 31
	note E_, 16
;Bar 32
	dutycycle $1
	intensity $93
	octave 3
	callchannel Music_BattleGhetsis_Ch2_Bar44
;Bar 33
	callchannel Music_BattleGhetsis_Ch2_Bar45
;Bar 34
	callchannel Music_BattleGhetsis_Ch2_Bar44
;Bar 35
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note F_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	octave 2
	note G_, 2
	intensity $95
;Bar 36
	dutycycle $2
	octave 4
	note C#, 16
	note C#, 16
	note __, 16
	note __, 16
;Bar 40
	note C#, 16
	note C#, 16
;Bar 42
	note __, 16
	note __, 16
	dutycycle $1
;Bar 44
	intensity $b3
	octave 3
	callchannel Music_BattleGhetsis_Ch2_Bar44
;Bar 45
	callchannel Music_BattleGhetsis_Ch2_Bar45
;Bar 46
	callchannel Music_BattleGhetsis_Ch2_Bar44
;Bar 47
	note C#, 2
	note G_, 2
	note C#, 2
	note G_, 2
	octave 4
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	octave 2
	note G_, 2
;Bar 48
	octave 3
	callchannel Music_BattleGhetsis_Ch2_Bar44
;Bar 49
	callchannel Music_BattleGhetsis_Ch2_Bar45
;Bar 50
	callchannel Music_BattleGhetsis_Ch2_Bar44
;Bar 51
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note F_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	note __, 2
;Bar 52
	octave 2
	intensity $85
	note C#, 16
;Bar 53
	note C#, 16
;Bar 54
	note C#, 16
;Bar 55
	note C#, 16
;Bar 56
	note C#, 16
;Bar 57
	note C#, 16
;Bar 58
	note G_, 16
;Bar 59
	note G_, 16
;Bar 60
	note G_, 16
;Bar 61
	note G_, 16
;Bar 62
	note G_, 16
;Bar 63
	note G_, 16
;Bar 64
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 74
	vibrato $12, $52
	callchannel Music_BattleGhetsis_Ch2_vocals1
;Bar 76
	callchannel Music_BattleGhetsis_Ch2_vocals1
;Bar 78
	callchannel Music_BattleGhetsis_Ch2_vocals2
;Bar 80
	callchannel Music_BattleGhetsis_Ch2_vocals2
;Bar 82
	intensity $4d
	octave 3
	note C#, 8
	note G_, 8
;Bar 83
	octave 4
	note C#, 8
	octave 3
	note G_, 8
;Bar 84
	note A_, 8
	note G_, 8
;Bar 85
	note __, 16
;Bar 86
	octave 3
	note C#, 8
	note G_, 8
;Bar 87
	octave 4
	note C#, 8
	octave 3
	note G_, 8
;Bar 88
	note A_, 8
	note C#, 8
;Bar 89
	note __, 16
;Bar 90
	octave 3
	callchannel Music_BattleGhetsis_Ch2_vocals1
;Bar 92
	callchannel Music_BattleGhetsis_Ch2_vocals1
;Bar 94
	callchannel Music_BattleGhetsis_Ch2_vocals2
;Bar 96
	callchannel Music_BattleGhetsis_Ch2_vocals2
;Bar 98
	intensity $a8
	note B_, 16
	note B_, 16
;Bar 100
	note A#, 16
	note A#, 16
;Bar 102
	note B_, 16
	note B_, 16
;Bar 104
	octave 4
	note C#, 16
	note C#, 16
;Bar 106
	intensity $a7
	vibrato $12, $00
	note __, 8
	octave 2
	note G_, 8
;Bar 107
	note __, 8
	note G_, 8
;Bar 108
	note __, 8
	note G_, 8
;Bar 109
	note __, 4
	note G_, 4
	note __, 8
	loopchannel 0, Music_BattleGhetsis_Ch2_loop

Music_BattleGhetsis_Ch2_vocals1:
	octave 3
	intensity $4e
	note C#, 16
;Bar 75
	intensity $d2
	note C_, 16
	endchannel

Music_BattleGhetsis_Ch2_vocals2:
	octave 3
	intensity $4e
	note G_, 16
;Bar 79
	intensity $d2
	note F#, 16
	endchannel

Music_BattleGhetsis_Ch2_Bar44:
	note G_, 2;
	note C#, 2
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	endchannel

Music_BattleGhetsis_Ch2_Bar45:
	note G_, 2;
	octave 4
	note C#, 2
	octave 3
	note G_, 2
	octave 4
	note C#, 2
	note G_, 2
	note C#, 2
	octave 3
	note G_, 2
	note C#, 2
	endchannel

; ============================================================================================================

Music_BattleGhetsis_Ch3:
	notetype 12, $14
;Bar 1
	octave 2
	note G_, 12
	note C#, 1
	note G_, 1
	note F_, 1
	note C#, 1
;Bar 2
	note C#, 4
	intensity $24
	note C#, 8
	intensity $14
	note __, 4
	note __, 16
;Bar 4
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note G_, 8
;Bar 5
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note G_, 8
;Bar 6
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note G_, 8
;Bar 7
	note C#, 4
	octave 1
	note G_, 4
	octave 2
	note C#, 8
;Bar 8
	note G_, 8
	note C#, 8
;Bar 9
	note G_, 8
	note C#, 8
;Bar 10
	note G_, 8
	note C#, 4
	note G_, 4
;Bar 11
	note C#, 8
	note G_, 4
	note G_, 2
	note __, 2
;Bar 12
Music_BattleGhetsis_Ch3_loop:
	callchannel Music_BattleGhetsis_Ch3_Bar12
;Bar 13
	callchannel Music_BattleGhetsis_Ch3_Bar13
;Bar 14
	callchannel Music_BattleGhetsis_Ch3_Bar14
;Bar 15
	callchannel Music_BattleGhetsis_Ch3_Bar15
;Bar 16
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 17
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 18
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 19
	callchannel Music_BattleGhetsis_Ch3_Bar19
;Bar 20
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 21
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 22
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 23
	callchannel Music_BattleGhetsis_Ch3_Bar19
;Bar 24
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 25
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 26
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 27
	callchannel Music_BattleGhetsis_Ch3_Bar19
;Bar 28
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 29
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 30
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 31
	callchannel Music_BattleGhetsis_Ch3_Bar19
;Bar 32
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 33
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 34
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 35
	callchannel Music_BattleGhetsis_Ch3_Bar19
;Bar 36
Music_BattleGhetsis_Ch3_Bar36_38:
	octave 2
	note G_, 8
	octave 3
	note C#, 8
;Bar 37
	octave 2
	note G_, 8
	octave 3
	note C#, 8
;Bar 38
	octave 2
	note G_, 4
	octave 3
	note C#, 4
	note C#, 4
	octave 2
	note G_, 4
	note G_, 16
	loopchannel 2, Music_BattleGhetsis_Ch3_Bar36_38
;Bar 44
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 45
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 46
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 47
	callchannel Music_BattleGhetsis_Ch3_Bar19
;Bar 48
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 49
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 50
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 51
	callchannel Music_BattleGhetsis_Ch3_Bar19
;Bar 52
	callchannel Music_BattleGhetsis_Ch3_Bar16
;Bar 53
	octave 1
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 54
	callchannel Music_BattleGhetsis_Ch3_Bar18
;Bar 55
	note C#, 16
;Bar 56
	note C#, 16
;Bar 57
	note C#, 16
;Bar 58
	octave 1
	note G_, 16
;Bar 59
	note G_, 16
;Bar 60
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 61
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 62
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 63
	callchannel Music_BattleGhetsis_Ch3_Bar17
;Bar 64
Music_BattleGhetsis_Ch3_Bar64_67:
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 1
	note C#, 1
;Bar 65
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
;Bar 66
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
;Bar 67
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 1
	note G_, 1
	loopchannel 2, Music_BattleGhetsis_Ch3_Bar64_67
;Bar 72
	note G_, 4
	intensity $24
	note G_, 4
	intensity $34
	note G_, 4
	intensity $14
	note __, 4
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 90
	callchannel Music_BattleGhetsis_Ch3_Bar12
;Bar 91
	callchannel Music_BattleGhetsis_Ch3_Bar13
;Bar 92
	callchannel Music_BattleGhetsis_Ch3_Bar14
;Bar 93
	callchannel Music_BattleGhetsis_Ch3_Bar15
;Bar 94
	callchannel Music_BattleGhetsis_Ch3_Bar12
;Bar 95
	callchannel Music_BattleGhetsis_Ch3_Bar13
;Bar 96
	callchannel Music_BattleGhetsis_Ch3_Bar14
;Bar 97
	callchannel Music_BattleGhetsis_Ch3_Bar15
;Bar 98
	callchannel Music_BattleGhetsis_Ch3_Bar12
;Bar 99
	callchannel Music_BattleGhetsis_Ch3_Bar13
;Bar 100
	callchannel Music_BattleGhetsis_Ch3_Bar14
;Bar 101
	callchannel Music_BattleGhetsis_Ch3_Bar15
;Bar 102
	callchannel Music_BattleGhetsis_Ch3_Bar12
;Bar 103
	callchannel Music_BattleGhetsis_Ch3_Bar13
;Bar 104
	callchannel Music_BattleGhetsis_Ch3_Bar14
;Bar 105
	callchannel Music_BattleGhetsis_Ch3_Bar15
;Bar 106
Music_BattleGhetsis_Ch3_Bar106_108:
	note C#, 4
	octave 1
	note G#, 4
	octave 2
	note G_, 8
	loopchannel 3, Music_BattleGhetsis_Ch3_Bar106_108
;Bar 109
	note C#, 4
	octave 1
	note G#, 4
	octave 2
	note C#, 8
	loopchannel 0, Music_BattleGhetsis_Ch3_loop

Music_BattleGhetsis_Ch3_Bar12:
	note C#, 2;
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
	endchannel

Music_BattleGhetsis_Ch3_Bar13:
	note G_, 2;
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
	endchannel

Music_BattleGhetsis_Ch3_Bar14:
	octave 1;
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	endchannel

Music_BattleGhetsis_Ch3_Bar15:
	octave 2;
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
	endchannel

Music_BattleGhetsis_Ch3_Bar16:
	note G_, 2;
	octave 2
	note C#, 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 1
	note C#, 1
	endchannel

Music_BattleGhetsis_Ch3_Bar17:
	note G_, 2;
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 1
	note G_, 1
	endchannel

Music_BattleGhetsis_Ch3_Bar18:
	note G_, 2;
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	octave 2
	note C#, 1
	note C#, 1
	endchannel

Music_BattleGhetsis_Ch3_Bar19:
	note C#, 2;
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	octave 2
	note C#, 2
	octave 1
	note G_, 2
	note G_, 2
	note G_, 1
	note G_, 1
	endchannel
	

; ============================================================================================================

Music_BattleGhetsis_Ch4:
	togglenoise 0
	notetype 12
;Bar 1
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	;Bar 1
	octave 2
	note C#, 12
	note C#, 1
	note C#, 1
	note C#, 1
	note C#, 1
;Bar 2
	note C#, 16
	note __, 16
;Bar 4
	note C#, 4
	note C#, 4
	note C#, 8
;Bar 5
	note C#, 4
	note C#, 4
	note C#, 8
;Bar 6
	note C#, 4
	note C#, 4
	note C#, 8
;Bar 7
	note C#, 4
	note C#, 4
	note C#, 8
;Bar 8
	note C#, 8
	note C#, 8
;Bar 9
	note C#, 8
	note C#, 8
;Bar 10
	note C#, 8
	note C#, 4
	note C#, 4
;Bar 11
	note C#, 8
	note C#, 4
	note C#, 4
;Bar 12
Music_BattleGhetsis_Ch4_loop:
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 13
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 14
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 15
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 16
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 17
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 18
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 19
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 20
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 21
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 22
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 23
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 24
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 25
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 26
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 27
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 28
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 29
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 30
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 31
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 32
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 33
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 34
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 35
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 36
	note D_, 6
	note A#, 2
	note A#, 4
	note A#, 2
	note A#, 2
;Bar 37
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 38
	note D_, 6
	note A#, 2
	note A#, 4
	note A#, 2
	note A#, 2
;Bar 39
	note E_, 6
	note A#, 4
	note A#, 2
	note A#, 4
;Bar 40
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 41
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 42
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 43
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 44
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 45
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 46
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 47
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 48
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 49
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 50
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 51
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 52
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 53
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 54
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 55
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 56
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 57
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 58
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 59
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 60
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 61
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 62
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 63
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 64
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 65
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 66
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 67
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 68
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 69
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 70
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 71
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 72
	note G#, 16
;Bar 73
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 90
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 91
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 92
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 93
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 94
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 95
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 96
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 97
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 98
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 99
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 100
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 101
	callchannel Music_BattleGhetsis_Ch4_Bar15
;Bar 102
	callchannel Music_BattleGhetsis_Ch4_Bar12
;Bar 103
	callchannel Music_BattleGhetsis_Ch4_Bar13
;Bar 104
	callchannel Music_BattleGhetsis_Ch4_Bar14
;Bar 105
	note E_, 16
;Bar 106
Music_BattleGhetsis_Ch4_end:
	note C#, 4
	note C#, 4
	note C#, 8
	loopchannel 4, Music_BattleGhetsis_Ch4_end
	loopchannel 0, Music_BattleGhetsis_Ch4_loop

Music_BattleGhetsis_Ch4_Bar12:
	note A#, 6;
	note A#, 2
	note A#, 4
	note A#, 4
	endchannel

Music_BattleGhetsis_Ch4_Bar13:
	note A#, 2;
	note A#, 2
	note A#, 6
	note A#, 4
	note A#, 2
	endchannel

Music_BattleGhetsis_Ch4_Bar14:
	note A#, 2;
	note A#, 4
	note A#, 4
	note A#, 2
	note A#, 4
	endchannel

Music_BattleGhetsis_Ch4_Bar15:
	note A#, 6;
	note A#, 2
	note A#, 4
	note A#, 2
	note A#, 2
	endchannel

; ============================================================================================================

