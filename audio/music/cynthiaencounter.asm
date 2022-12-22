;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_CynthiaEncounter:
	musicheader 3, 1, Music_CynthiaEncounter_Ch1
	musicheader 1, 2, Music_CynthiaEncounter_Ch2
	musicheader 1, 3, Music_CynthiaEncounter_Ch3

Music_CynthiaEncounter_Ch1:
	stereopanning $f
	volume $77
	dutycycle $3
	vibrato $08, $14
	notetype 8, $a4
	tempo 95
;Bar 1
	note __, 6
	octave 3
	note B_, 12
	note B_, 12
;Bar 2
	note B_, 12
	note A#, 10
;Bar 3
	intensity $38
	note A#, 2
Music_CynthiaEncounter_Ch1_loop:
	intensity $83
	note A#, 2
	intensity $38
	note A#, 4
	intensity $83
	note G_, 2
	intensity $38
	note G_, 4
	intensity $83
	note E_, 2
	intensity $38
	note E_, 4
;Bar 4
	intensity $83
	note C#, 2
	intensity $38
	note C#, 4
	octave 2
	intensity $83
	note E_, 2
	intensity $38
	note E_, 4
	intensity $83
	note A#, 2
	intensity $38
	note A#, 4
	octave 3
	intensity $83
	note F#, 2
	intensity $38
	note F#, 4
	note __, 6
;Bar 5
	intensity $a4
	callchannel Music_CynthiaEncounter_Ch1_Part1_B_
	callchannel Music_CynthiaEncounter_Ch1_Part1_As
;Bar 6
	callchannel Music_CynthiaEncounter_Ch1_Part1_B_
	callchannel Music_CynthiaEncounter_Ch1_Part1_B_
;Bar 7
	octave 4
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
	callchannel Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 8
	callchannel Music_CynthiaEncounter_Ch1_Part1_E_
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 9
	callchannel Music_CynthiaEncounter_Ch1_Part1_E_
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 10
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 11
	callchannel Music_CynthiaEncounter_Ch1_Part1_E_
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 12
	callchannel Music_CynthiaEncounter_Ch1_Part1_Cs
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 13
	callchannel Music_CynthiaEncounter_Ch1_Part1_Cs
	callchannel Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 14
	octave 3
	callchannel Music_CynthiaEncounter_Ch1_Part1_As
	callchannel Music_CynthiaEncounter_Ch1_Part1_As
;Bar 15
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 16
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 17
	note __, 4
	callchannel Music_CynthiaEncounter_Ch1_Bar17_19
;Bar 19
	intensity $d2
	note D_, 2
	note D_, 2
	note D_, 2
	intensity $d4
	note A#, 6
;Bar 20
	intensity $34
	note A#, 2
	note __, 8
	intensity $a4
	callchannel Music_CynthiaEncounter_Ch1_Bar17_19
;Bar 22
	intensity $38
	note C#, 4
	intensity $83
	note D_, 2
	intensity $38
	note D_, 4
	intensity $83
	note E_, 2
;Bar 23
	intensity $d2
	note D_, 2
	note D_, 2
	note D_, 2
	intensity $d4
	note C#, 6
	intensity $d3
	note A_, 2
	note A_, 2
	note A_, 2
	intensity $d4
	note G#, 6
;Bar 24
	octave 4
	intensity $d2
	note D_, 2
	note D_, 2
	note D_, 2
	intensity $d4
	note C#, 6
	octave 3
	note D_, 6
	octave 2
	note A#, 6
;Bar 25
Music_CynthiaEncounter_Ch1_silence:
	note __, 16
	loopchannel 12, Music_CynthiaEncounter_Ch1_silence
	note __, 6
	loopchannel 0, Music_CynthiaEncounter_Ch1_loop

Music_CynthiaEncounter_Ch1_Part1_B_:
	intensity $a2
	note B_, 2
	intensity $a3
	note B_, 10
	endchannel

Music_CynthiaEncounter_Ch1_Part1_As:
	intensity $a2
	note A#, 2
	intensity $a3
	note A#, 10
	endchannel

Music_CynthiaEncounter_Ch1_Part1_D_:
	intensity $a2
	note D_, 2
	intensity $a3
	note D_, 10
	endchannel

Music_CynthiaEncounter_Ch1_Part1_Cs:
	intensity $a2
	note C#, 2
	intensity $a3
	note C#, 10
	endchannel

Music_CynthiaEncounter_Ch1_Part1_E_:
	intensity $a2
	note E_, 2
	intensity $a3
	note E_, 10
	endchannel

Music_CynthiaEncounter_Ch1_Part1_Fs:
	intensity $a2
	note F#, 2
	intensity $a3
	note F#, 10
	endchannel

Music_CynthiaEncounter_Ch1_Part1_G_:
	intensity $a2
	note G_, 2
	intensity $a3
	note G_, 10
	endchannel

Music_CynthiaEncounter_Ch1_Bar17_19:
	note G_, 2;
	intensity $38
	note G_, 4
	intensity $83
	note F#, 2
	intensity $38
	note F#, 4
	intensity $83
	note E_, 2
;bar18
	intensity $38
	note E_, 4
	intensity $83
	note D_, 2
	intensity $38
	note D_, 4
	intensity $83
	note C#, 2
	intensity $38
	note C#, 4
	octave 2
	intensity $83
	note B_, 2
	intensity $38
	note B_, 4
	intensity $83
	note A#, 2
;bar19
	intensity $38
	note A#, 4
	intensity $83
	note B_, 2
	intensity $38
	note B_, 4
	octave 3
	intensity $83
	note C#, 2
	endchannel

; ============================================================================================================

Music_CynthiaEncounter_Ch2:
	dutycycle $1
	stereopanning $f0
	vibrato $08, $14
	notetype 8, $a4
;Bar 1
	intensity $44
	note __, 6
	octave 4
	intensity $f4
	note F#, 12
	note G_, 12
;Bar 2
	note F_, 12
	intensity $e4
	note F#, 6
;Bar 3
	note __, 6
	octave 5
	intensity $c4
	note E_, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note F#, 2
	note A#, 2
	note C#, 2
	note F#, 2
	note G_, 2
	note F#, 2
;Bar 4
	note E_, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	note A#, 2
	note F#, 2
	note G_, 2
	note A_, 2
Music_CynthiaEncounter_Ch2_loop:
	octave 4
	note F#, 2
	note E_, 2
	note C#, 2
	octave 3
	note A#, 2
;Bar 5
	note __, 6
	octave 4
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
	callchannel Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 6
	callchannel Music_CynthiaEncounter_Ch1_Part1_E_
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
;Bar 7
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
	callchannel Music_CynthiaEncounter_Ch1_Part1_E_
;Bar 8
	callchannel Music_CynthiaEncounter_Ch1_Part1_G_
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 9
	intensity $a2
	note A_, 2
	intensity $a3
	note A_, 10
	callchannel Music_CynthiaEncounter_Ch1_Part1_G_
;Bar 10
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
	callchannel Music_CynthiaEncounter_Ch1_Part1_G_
;Bar 11
	callchannel Music_CynthiaEncounter_Ch1_Part1_G_
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 12
	note F_, 2
	intensity $a3
	note F_, 10
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
;Bar 13
	callchannel Music_CynthiaEncounter_Ch1_Part1_Fs
	callchannel Music_CynthiaEncounter_Ch1_Part1_E_
;Bar 14
	callchannel Music_CynthiaEncounter_Ch1_Part1_D_
	callchannel Music_CynthiaEncounter_Ch1_Part1_Cs
;Bar 15
	octave 3
	callchannel Music_CynthiaEncounter_Ch1_Part1_B_
	callchannel Music_CynthiaEncounter_Ch1_Part1_As
;Bar 16
	octave 4
	callchannel Music_CynthiaEncounter_Ch1_Part1_Cs
	octave 3
	callchannel Music_CynthiaEncounter_Ch1_Part1_B_
;Bar 17
	octave 5
	note F#, 2
	note G_, 2
	note C#, 2
	note E_, 2
	octave 4
	note A#, 2
	note F#, 2
	callchannel Music_CynthiaEncounter_Ch2_Bar17
;Bar 18
	note D_, 2
	note C#, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
;Bar 19
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	intensity $d4
	note C#, 2
	octave 3
	intensity $d2
	note B_, 2
	note B_, 2
	note B_, 2
	octave 4
	intensity $d4
	note F#, 6
;Bar 20
	note __, 6
	octave 3
	intensity $c4
	note F#, 2
	note A#, 2
	octave 4
	note C#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	callchannel Music_CynthiaEncounter_Ch2_Bar17
;Bar 21
	note F#, 2
	note C#, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note G_, 2
;Bar 22
	note F#, 2
	note F_, 2
	note F#, 2
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	intensity $d4
	note E_, 2
	intensity $c4
	note F#, 2
	note G_, 2
	note E_, 2
	note C#, 2
	note D_, 2
	octave 3
	note A#, 2
;Bar 23
	intensity $d2
	note B_, 2
	note B_, 2
	note B_, 2
	intensity $d4
	note A#, 6
	octave 4
	intensity $d2
	note F#, 2
	note F#, 2
	note F#, 2
	intensity $d4
	note F_, 6
;Bar 24
	intensity $d2
	note B_, 2
	note B_, 2
	note B_, 2
	intensity $d4
	note A#, 6
	intensity $c4
	note F#, 2
	note G_, 2
	note E_, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
;Bar 25
	callchannel Music_CynthiaEncounter_Ch2_Type1
Music_CynthiaEncounter_Ch2_Bar25:
	octave 4
	intensity $c4
	note C#, 2
	octave 3
	intensity $94
	note B_, 2
	note G_, 2
	loopchannel 2, Music_CynthiaEncounter_Ch2_Bar25
;Bar 26
Music_CynthiaEncounter_Ch2_Bar26:
	octave 4
	intensity $c4
	note E_, 2
	intensity $84
	note C#, 2
	octave 3
	note G_, 2
	loopchannel 2, Music_CynthiaEncounter_Ch2_Bar26
	callchannel Music_CynthiaEncounter_Ch2_Type1
;Bar 27
	callchannel Music_CynthiaEncounter_Ch2_Type4
	callchannel Music_CynthiaEncounter_Ch2_Type4
Music_CynthiaEncounter_Ch2_Bar27:
	intensity $c4
	note A#, 2
	intensity $94
	note E_, 2
	note C#, 2
	loopchannel 2, Music_CynthiaEncounter_Ch2_Bar27
;Bar 28
	callchannel Music_CynthiaEncounter_Ch2_Type2
	callchannel Music_CynthiaEncounter_Ch2_Type3
;Bar 29
	callchannel Music_CynthiaEncounter_Ch2_Type1
	octave 4
	intensity $c4
	note E_, 2
	intensity $94
	note C#, 2
	octave 3
	note G_, 2
	octave 4
	intensity $c4
	note C#, 2
	octave 3
	intensity $94
	note G_, 2
	note F#, 2
;Bar 30
Music_CynthiaEncounter_Ch2_Bar30:
	octave 4
	intensity $c4
	note F#, 2
	intensity $94
	note C#, 2
	octave 3
	note G_, 2
	loopchannel 2, Music_CynthiaEncounter_Ch2_Bar30
	octave 4
	intensity $c4
	note E_, 2
	octave 3
	intensity $94
	note B_, 2
	note F#, 2
	octave 4
	intensity $c4
	note D_, 2
	octave 3
	intensity $84
	note B_, 2
	note F#, 2
;Bar 31
	callchannel Music_CynthiaEncounter_Ch2_Type4
	intensity $c4
	note A#, 2
	intensity $94
	note F#, 2
	note C#, 2
	octave 4
	intensity $c4
	note E_, 2
	octave 3
	intensity $94
	note A#, 2
	note G_, 2
	octave 4
	intensity $c4
	note C#, 2
	octave 3
	intensity $94
	note G_, 2
	note E_, 2
;Bar 32
	callchannel Music_CynthiaEncounter_Ch2_Type2
	callchannel Music_CynthiaEncounter_Ch2_Type3
;Bar 33
	note __, 6
	octave 4
	intensity $c4
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note D_, 2
;Bar 34
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note A#, 2
	note B_, 2
	note A#, 2
	note F#, 2
	note A#, 2
	loopchannel 0, Music_CynthiaEncounter_Ch2_loop

Music_CynthiaEncounter_Ch2_Bar17:
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
;Bar 18
	octave 3
	note F#, 2
	note A#, 2
	octave 4
	note C#, 2
	note F#, 2
	note A#, 2
	octave 5
	note C#, 2
	note E_, 2
	endchannel

Music_CynthiaEncounter_Ch2_Type1:
	intensity $c4
	octave 4
	note D_, 2;
	octave 3
	intensity $94
	note B_, 2
	note F#, 2
	loopchannel 2, Music_CynthiaEncounter_Ch2_Type1
	endchannel

Music_CynthiaEncounter_Ch2_Type2:
	octave 4;
	intensity $c4
	note C#, 2
	octave 3
	intensity $94
	note F#, 2
	note D_, 2
	loopchannel 2, Music_CynthiaEncounter_Ch2_Type2
	endchannel

Music_CynthiaEncounter_Ch2_Type3:
	intensity $c4;
	note B_, 2
	intensity $94
	note F#, 2
	note D_, 2
	loopchannel 2, Music_CynthiaEncounter_Ch2_Type3
	endchannel

Music_CynthiaEncounter_Ch2_Type4:
	intensity $c4;
	note B_, 2
	intensity $94
	note F#, 2
	note C#, 2
	endchannel

; ============================================================================================================

Music_CynthiaEncounter_Ch3:
	notetype 4, $16
	stereopanning $ff
;Bar 1
	octave 2
	callchannel Music_CynthiaEncounter_Ch3_Bar1
Music_CynthiaEncounter_Ch3_Bar1_s:
	note F_, 3
	note __, 1
	loopchannel 3, Music_CynthiaEncounter_Ch3_Bar1_s
	note F_, 12
;Bar 2
Music_CynthiaEncounter_Ch3_Bar2_s:
	note C#, 3
	note __, 1
	loopchannel 3, Music_CynthiaEncounter_Ch3_Bar2_s
	note C#, 12
	callchannel Music_CynthiaEncounter_Ch3_Bar1
;Bar 3
	notetype 16, $16
	note F#, 12
;Bar 4
	note __, 12
;Bar 5
	notetype 8, $16
Music_CynthiaEncounter_Ch3_loop:
	callchannel Music_CynthiaEncounter_Ch3_Type4
	callchannel Music_CynthiaEncounter_Ch3_Type5
;Bar 6
	callchannel Music_CynthiaEncounter_Ch3_Type6
	callchannel Music_CynthiaEncounter_Ch3_Type4
;Bar 7
	callchannel Music_CynthiaEncounter_Ch3_Type4
	callchannel Music_CynthiaEncounter_Ch3_Type5
;Bar 8
	callchannel Music_CynthiaEncounter_Ch3_Type6
	callchannel Music_CynthiaEncounter_Ch3_Type4
;Bar 9
	callchannel Music_CynthiaEncounter_Ch3_Type7
	note E_, 2
	note B_, 2
	octave 4
	note E_, 2
	note F#, 2
	note E_, 2
	octave 3
	note B_, 2
;Bar 10
	note E_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	note E_, 2
	octave 3
	note B_, 2
	callchannel Music_CynthiaEncounter_Ch3_Type7
;Bar 11
	callchannel Music_CynthiaEncounter_Ch3_Type4
	callchannel Music_CynthiaEncounter_Ch3_Type6
;Bar 12
	callchannel Music_CynthiaEncounter_Ch3_Type4
	callchannel Music_CynthiaEncounter_Ch3_Type5
;Bar 13
	callchannel Music_CynthiaEncounter_Ch3_Type8
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note C#, 2
;Bar 14
	callchannel Music_CynthiaEncounter_Ch3_Type8
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	note F#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	note C#, 2
;Bar 15
	callchannel Music_CynthiaEncounter_Ch3_Type4
	octave 2
	note B_, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note A#, 2
	note F#, 2
;Bar 16
	callchannel Music_CynthiaEncounter_Ch3_Type6
	callchannel Music_CynthiaEncounter_Ch3_Type4
;Bar 17
	octave 2
	callchannel Music_CynthiaEncounter_Ch3_Bar17
;Bar 18
	note __, 16
	note __, 16
	note __, 4
;Bar 19
	callchannel Music_CynthiaEncounter_Ch3_Bar19
;Bar 20
	callchannel Music_CynthiaEncounter_Ch3_Bar17
;Bar 21
	note __, 16
	note __, 16
	note __, 16
;Bar 23
	callchannel Music_CynthiaEncounter_Ch3_Bar19
	octave 3
Music_CynthiaEncounter_Ch3_Bar23:
	notetype 4, $16
	note D_, 3
	note __, 1
	loopchannel 3, Music_CynthiaEncounter_Ch3_Bar23
	note C#, 12
	notetype 8, $16
;Bar 24
	callchannel Music_CynthiaEncounter_Ch3_Bar19
	note __, 12
;Bar 25
	stereopanning $f
	callchannel Music_CynthiaEncounter_Ch3_Type1
	octave 2
	intensity $16
	note B_, 2
	octave 3
	intensity $26
	note G_, 2
	note B_, 2
	octave 4
	intensity $16
	note D_, 2
	octave 3
	intensity $26
	note B_, 2
	note G_, 2
;Bar 26
	callchannel Music_CynthiaEncounter_Ch3_Type2
	callchannel Music_CynthiaEncounter_Ch3_Type1
;Bar 27
	octave 2
	callchannel Music_CynthiaEncounter_Ch3_Type3
	octave 2
	intensity $16
	note F#, 2
	octave 3
	intensity $26
	note C#, 2
	note F#, 2
	intensity $16
	note A#, 2
	intensity $26
	note F#, 2
	note C#, 2
;Bar 28
	callchannel Music_CynthiaEncounter_Ch3_Type1
	callchannel Music_CynthiaEncounter_Ch3_Type1
;Bar 29
	callchannel Music_CynthiaEncounter_Ch3_Type1
	intensity $16
	note C#, 2
	intensity $26
	note G_, 2
	note B_, 2
	octave 4
	intensity $16
	note C#, 2
	octave 3
	intensity $26
	note B_, 2
	note G_, 2
;Bar 30
	callchannel Music_CynthiaEncounter_Ch3_Type2
	callchannel Music_CynthiaEncounter_Ch3_Type1
;Bar 31
	octave 2
	callchannel Music_CynthiaEncounter_Ch3_Type3
	octave 2
	intensity $16
	note F#, 2
	octave 3
	intensity $26
	note C#, 2
	note G_, 2
	intensity $16
	note A#, 2
	intensity $26
	note F#, 2
	note C#, 2
;Bar 32
	callchannel Music_CynthiaEncounter_Ch3_Type1
	callchannel Music_CynthiaEncounter_Ch3_Type1
;Bar 33
	stereopanning $ff
	octave 2
	notetype 12, $16
	note F#, 16
	note __, 16
	notetype 8, $16
	loopchannel 0, Music_CynthiaEncounter_Ch3_loop

Music_CynthiaEncounter_Ch3_Type1:
	octave 2
	intensity $16
	note B_, 2;
	octave 3
	intensity $26
	note F#, 2
	note B_, 2
	octave 4
	intensity $16
	note C#, 2
	octave 3
	intensity $26
	note B_, 2
	note F#, 2
	endchannel

Music_CynthiaEncounter_Ch3_Type2:
	octave 2;
	intensity $16
	note A#, 2
	octave 3
	intensity $26
	note E_, 2
	note A#, 2
	intensity $16
	note B_, 2
	intensity $26
	note A#, 2
	note E_, 2
	octave 2
	intensity $16
	endchannel

Music_CynthiaEncounter_Ch3_Type3:
	intensity $16;
	note F#, 2
	octave 3
	intensity $26
	note C#, 2
	note F#, 2
	intensity $16
	note G_, 2
	intensity $26
	note F#, 2
	note C#, 2
	endchannel

Music_CynthiaEncounter_Ch3_Type4:
	octave 2
	note B_, 2;
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note F#, 2
	endchannel

Music_CynthiaEncounter_Ch3_Type5:
	octave 2;
	note B_, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note F#, 2
	endchannel

Music_CynthiaEncounter_Ch3_Type6:
	octave 2;
	note B_, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	note F#, 2
	endchannel

Music_CynthiaEncounter_Ch3_Type7:
	note E_, 2;
	note B_, 2
	octave 4
	note E_, 2
	note G_, 2
	note E_, 2
	octave 3
	note B_, 2
	endchannel

Music_CynthiaEncounter_Ch3_Type8:
	octave 2;
	note F#, 2
	octave 3
	note C#, 2
	note F#, 2
	note A#, 2
	note F#, 2
	note C#, 2
	endchannel

Music_CynthiaEncounter_Ch3_Bar17:
	note F#, 1;
	note __, 1
	notetype 16, $16
	note F#, 11
	notetype 8, $16
	endchannel

Music_CynthiaEncounter_Ch3_Bar1:
	note F#, 3
	note __, 1
	loopchannel 3, Music_CynthiaEncounter_Ch3_Bar1
	note F#, 12
	endchannel

Music_CynthiaEncounter_Ch3_Bar19:
	notetype 4, $16
	note G_, 3
	note __, 1
	loopchannel 3, Music_CynthiaEncounter_Ch3_Bar19
	note F#, 12
	notetype 8, $16
	endchannel

; ============================================================================================================
