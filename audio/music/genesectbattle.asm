;Coverted using MIDI2ASM
;Version 2.0. (23-Sep-2019)
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BattleVsRegis:
	musicheader 4, 1, Music_BattleVsRegis_Ch1
	musicheader 1, 2, Music_BattleVsRegis_Ch2
	musicheader 1, 3, Music_BattleVsRegis_Ch3
	musicheader 1, 4, Music_BattleVsRegis_Ch4

Music_BattleVsRegis_Ch1:
	volume $66
	dutycycle $2
	tempo 119
	tone $0001
;Bar 1
	notetype 8, $97
	octave 5
	callchannel Music_BattleVsRegis_Ch1_main_loop
	octave 3
	callchannel Music_BattleVsRegis_Ch1_main_loop
;Bar 2
	octave 4
	callchannel Music_BattleVsRegis_Ch1_main_loop
	octave 5
	callchannel Music_BattleVsRegis_Ch1_main_loop
;Bar 3
	octave 4
	callchannel Music_BattleVsRegis_Ch1_main_loop
	octave 5
	callchannel Music_BattleVsRegis_Ch1_main_loop
;Bar 4
	octave 4
Music_BattleVsRegis_Ch1_loop1:
	callchannel Music_BattleVsRegis_Ch1_main_loop
	loopchannel 10, Music_BattleVsRegis_Ch1_loop1
;Bar 9
	pitchoffset 0, C#
Music_BattleVsRegis_Ch1_loop2:
	callchannel Music_BattleVsRegis_Ch1_main_loop
	loopchannel 12, Music_BattleVsRegis_Ch1_loop2
;Bar 15
	pitchoffset 0, C_
Music_BattleVsRegis_Ch1_loop3:
	callchannel Music_BattleVsRegis_Ch1_main_loop
	loopchannel 12, Music_BattleVsRegis_Ch1_loop3
;Bar 21
Music_BattleVsRegis_Ch1_loop:
	pitchoffset 0, C#
Music_BattleVsRegis_Ch1_loop4:
	callchannel Music_BattleVsRegis_Ch1_main_loop
	loopchannel 24, Music_BattleVsRegis_Ch1_loop4
	pitchoffset 0, C_
;Bar 33
	stereopanning $f
	intensity $87
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	octave 4
	note G#, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note F#, 2
	intensity $77
	note B_, 2
	note F_, 2
	note A#, 2
	note E_, 2
	note G#, 2
;Bar 34
	note D#, 2
	note G_, 2
	note D_, 2
	intensity $67
	note F#, 2
	note C#, 2
	note F_, 2
	note C_, 2
	intensity $57
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	stereopanning $ff
;Bar 35
	intensity $87
	octave 4
Music_BattleVsRegis_Ch1_loop5:
	callchannel Music_BattleVsRegis_Ch1_main_loop
	loopchannel 12, Music_BattleVsRegis_Ch1_loop5
	loopchannel 0, Music_BattleVsRegis_Ch1_loop

Music_BattleVsRegis_Ch1_main_loop:
	note C#, 2
	note __, 2
	note C#, 2
	note __, 2
	note A_, 2
	note G#, 2
	endchannel

; ============================================================================================================

Music_BattleVsRegis_Ch2:
	dutycycle $3
	vibrato $12, $35
;Bar 1
	notetype 8, $B6
	octave 4
	note C#, 2
	octave 3
	note G#, 2
	octave 4
	note C#, 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note F#, 2
	note B_, 2
	note A#, 2
	note F_, 2
	note A#, 2
;Bar 2
	note A_, 2
	note E_, 2
	note A_, 2
	note G#, 2
	note D#, 2
	note G#, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note F#, 2
	note C#, 2
	note F#, 2
;Bar 3
	note F_, 2
	note C_, 2
	note F_, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
;Bar 4
	notetype 12, $D8
	note __, 16
	note __, 6
	octave 4
;Bar 5
	note C#, 6
	note D_, 2
	note __, 8
;Bar 6
	octave 3
	note G#, 6
	note A_, 2
	note __, 8
;Bar 7
	note C#, 6
	note D_, 2
	note __, 16
	note __, 2
;Bar 9
	octave 4
	note F_, 2
	note C#, 2
	note D#, 2
	note __, 2
	octave 3
	note A_, 3
	octave 4
	note C_, 3
	note D#, 2
;Bar 10
	note __, 16
	note __, 6
;Bar 11
	note C_, 2
	octave 3
	note A#, 2
	note G#, 2
	note __, 2
	note E_, 3
;Bar 12
	note A#, 3
	note E_, 2
	note __, 13
;Bar 13
	octave 4
	note F_, 2
	note C#, 2
	note D#, 2
	note __, 2
	octave 3
	note A_, 3
	octave 4
	note C_, 3
;Bar 14
	octave 3
	note A_, 2
	note __, 13
;Bar 15
	octave 3
	intensity $Af
	note C#, 1
	intensity $D8
	note C#, 15
	note C#, 12
;Bar 16
	notetype 8, $D8
	note A_, 4
	note G#, 2
;Bar 17
	notetype 12, $Af
	note B_, 1
	intensity $D8
	note B_, 15
;Bar 18
	notetype 8, $Af
	note A_, 2
	intensity $D8
	note A_, 14
	note G#, 2
	note F#, 4
	note A_, 2
;Bar 19
	notetype 12, $Af
	note G#, 1
	intensity $D8
	note G#, 15
;Bar 20
	intensity $Af
	note C#, 1
	intensity $D8
	note C#, 15
Music_BattleVsRegis_Ch2_loop:
;Bar 21
	intensity $Af
	note D_, 1
	intensity $D8
	note D_, 15
	note D_, 12
;Bar 22
	notetype 8, $D8
	note A#, 4
	note A_, 2
;Bar 23
	notetype 12, $Af
	octave 4
	note C_, 1
	intensity $D8
	note C_, 15
;Bar 24
	notetype 8, $Af
	octave 3
	note A#, 2
	intensity $D8
	note A#, 14
	note A_, 2
	note G_, 4
	note A#, 2
;Bar 25
	notetype 12, $Af
	note A_, 1
	intensity $D8
	note A_, 15
;Bar 26
	intensity $9f
	octave 4
	note D_, 1
	intensity $B8
	note D_, 15
	octave 3
;Bar 27
	intensity $5e
	note D#, 9
	intensity $D8
	note D#, 7
;Bar 28
	intensity $5e
	note C_, 9
	intensity $D8
	note C_, 7
;Bar 29
	intensity $B8
	note D_, 2
	note __, 16
	note __, 14
;Bar 31
	octave 4
	intensity $8f
	note D#, 1
	intensity $B8
	note D#, 15
;Bar 32
	intensity $Af
	note G_, 1
	intensity $D8
	note G_, 15
;Bar 33
	notetype 8, $D8
;Bar 33
	stereopanning $f0
	octave 3
	note D_, 2
	note G_, 2
	note C#, 2
	note F#, 2
	note C_, 2
	note F_, 2
	octave 2
	note B_, 2
	octave 3
	intensity $C8
	note E_, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	octave 2
	note A_, 2
	octave 3
	note C#, 2
;Bar 34
	octave 2
	note G#, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	intensity $B8
	note B_, 2
	note F#, 2
	note A#, 2
	note F_, 2
	intensity $A8
	note A_, 2
	note E_, 2
	note G#, 2
	note D#, 2
	note G_, 2
	stereopanning $ff
	notetype 12, $D8
;Bar 35
	octave 3
	note C#, 16
	note C#, 12
;Bar 36
	notetype 8, $D8
	note A_, 4
	note G#, 2
;Bar 37
	notetype 12, $Af
	note B_, 1
	intensity $D8
	note B_, 15
;Bar 38
	notetype 8, $D8
	note A_, 2
	intensity $D8
	note A_, 14
	note G#, 2
	note F#, 4
	note A_, 2
;Bar 39
	notetype 12, $Af
	note G#, 1
	intensity $D8
	note G#, 15
;Bar 40
	intensity $Af
	note C#, 1
	intensity $D8
	note C#, 15
	loopchannel 0, Music_BattleVsRegis_Ch2_loop

; ============================================================================================================

Music_BattleVsRegis_Ch3:
;Bar 1
	notetype 8, $16
	tone $0002
	octave 1
	callchannel Music_BattleVsRegis_Ch1_main_loop
	octave 2
	callchannel Music_BattleVsRegis_Ch1_main_loop
;Bar 2
	octave 3
	callchannel Music_BattleVsRegis_Ch1_main_loop
	octave 2
	note C#, 2
	octave 1
	note G#, 2
	note G#, 2
	note G#, 2
	note B_, 2
	octave 2
	note C_, 2
;Bar 3
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 5
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 7
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 9
	pitchoffset 0, C#
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 11
	callchannel Music_BattleVsRegis_Ch3_Type1
	pitchoffset 0, C_
;Bar 13
	note D_, 2
	note __, 2
	note D_, 2
	note D_, 2
	note A#, 2
	note A_, 2
	note D_, 2
	note __, 2
	note D_, 2
	note D_, 2
	note A#, 2
	note A_, 2
;Bar 14
	note D_, 2
	note __, 2
	note D_, 2
	note D_, 2
	note A#, 2
	note A_, 2
	note D_, 2
	octave 3
	note D_, 2
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	note C#, 2
;Bar 15
	octave 2
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 17
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 19
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 21
Music_BattleVsRegis_Ch3_loop:
	pitchoffset 0, C#

Music_BattleVsRegis_Ch3_loop1:
	callchannel Music_BattleVsRegis_Ch3_Type1
	loopchannel 7, Music_BattleVsRegis_Ch3_loop1
;Bar 35
	pitchoffset 0, C_
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 37
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 39
	callchannel Music_BattleVsRegis_Ch3_Type1
;Bar 41
	loopchannel 0, Music_BattleVsRegis_Ch3_loop

Music_BattleVsRegis_Ch3_Type1:
	note C#, 2
	note __, 2
	note C#, 2
	note C#, 2
	note A_, 2
	note G#, 2
	note C#, 2
	note __, 2
	note C#, 2
	note C#, 2
	note A_, 2
	note G#, 2
;Bar 4
	note C#, 2
	note __, 2
	note C#, 2
	note C#, 2
	note A_, 2
	note G#, 2
	note C#, 2
	octave 1
	note G#, 2
	note G#, 2
	note G#, 2
	note B_, 2
	octave 2
	note C_, 2
	endchannel

; ============================================================================================================

Music_BattleVsRegis_Ch4:
	togglenoise 1 
	notetype 12
;Bar 1
	callchannel Music_BattleVsRegis_Ch4_Type1
;Bar 2
	callchannel Music_BattleVsRegis_Ch4_Type1
;Bar 3
	callchannel Music_BattleVsRegis_Ch4_Type1
;Bar 4
	note C_, 4
	note C_, 4
	note F#, 8
;Bar 5
	callchannel Music_BattleVsRegis_Ch4_Type1
;Bar 6
	callchannel Music_BattleVsRegis_Ch4_Type2
;Bar 7
	callchannel Music_BattleVsRegis_Ch4_Type1
;Bar 8
	callchannel Music_BattleVsRegis_Ch4_Type2
;Bar 9
	note C_, 8
Music_BattleVsRegis_Ch4_loop9:
	note C_, 8
	loopchannel 9, Music_BattleVsRegis_Ch4_loop9
	notetype 8
	note C_, 6
	note __, 2
;Bar 14
	note A_, 2
	note A_, 2
;Bar 15
	notetype 12
Music_BattleVsRegis_Ch4_loop15:
	note C_, 12
	note E_, 4
	loopchannel 5, Music_BattleVsRegis_Ch4_loop15
;Bar 20
	note C_, 12
	notetype 8
	note D_, 4
	note D_, 2
Music_BattleVsRegis_Ch4_loop:
;Bar 21
	notetype 12
Music_BattleVsRegis_Ch4_loop1:
	callchannel Music_BattleVsRegis_Ch4_Type3
	loopchannel 7, Music_BattleVsRegis_Ch4_loop1
	note C_, 4
	notetype 8
	note D_, 4
	note D_, 2
;Bar 25
	notetype 12
Music_BattleVsRegis_Ch4_loop2:
	callchannel Music_BattleVsRegis_Ch4_Type3
	loopchannel 11, Music_BattleVsRegis_Ch4_loop2
	notetype 8
	note C_, 4
	note D_, 4
	note D_, 4
;Bar 31
	notetype 12
Music_BattleVsRegis_Ch4_loop3:
	callchannel Music_BattleVsRegis_Ch4_Type3
	loopchannel 4, Music_BattleVsRegis_Ch4_loop3
;Bar 33
	note C_, 8
	note __, 16
	note __, 4
;Bar 34
	note D_, 4
;Bar 35
Music_BattleVsRegis_Ch4_loop4:
	callchannel Music_BattleVsRegis_Ch4_Type3
	loopchannel 7, Music_BattleVsRegis_Ch4_loop4
	note C_, 4
	notetype 8
	note D_, 4
	note D_, 2
;Bar 39
	notetype 12
Music_BattleVsRegis_Ch4_loop5:
	callchannel Music_BattleVsRegis_Ch4_Type3
	loopchannel 4, Music_BattleVsRegis_Ch4_loop5

	loopchannel 0, Music_BattleVsRegis_Ch4_loop

Music_BattleVsRegis_Ch4_Type1:
	note C_, 4
	note C_, 4
	note C_, 4
	note E_, 4
	endchannel

Music_BattleVsRegis_Ch4_Type2:
	note C_, 4
	note C_, 4
	note C_, 4
	note F_, 4
	endchannel

Music_BattleVsRegis_Ch4_Type3:
	note C_, 4
	note D_, 4
	endchannel

; ============================================================================================================
