;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BattleCynthia:
	musicheader 4, 1, Music_BattleCynthia_Ch1
	musicheader 1, 2, Music_BattleCynthia_Ch2
	musicheader 1, 3, Music_BattleCynthia_Ch3
	musicheader 1, 4, Music_BattleCynthia_Ch4

Music_BattleCynthia_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $68
	tone $0001
	tempo 102
;Bar 1
	octave 3
	note G#, 6
	intensity $67
	note G#, 4
	intensity $38
	note G#, 13
	notetype 6, $3f
	slidepitchto 2, 5, B_;
	note G#, 8
	octave 4
	intensity $78
	note C_, 1
	intensity $7f
	slidepitchto 2, 3, D#;
	note C_, 9
	; octave 3
	; intensity $48
	; note A_, 1
	; intensity $58
	; note A#, 1
	; intensity $68
	; note B_, 1
	; octave 4
	; intensity $78
	; note C_, 1
	; intensity $88
	; note C#, 1
	; intensity $98
	; note D_, 1
	; intensity $a8
	; note D#, 1
;Bar 3
	octave 2
	notetype 12, $85
	dutycycle $3
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 4
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 5
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 6
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 7
Music_BattleCynthia_Ch1_loop:
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 8
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 9
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 10
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 11
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 12
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 13
	callchannel Music_BattleCynthia_Ch1_Bar13
;Bar 14
	callchannel Music_BattleCynthia_Ch1_Bar13
;Bar 15
	callchannel Music_BattleCynthia_Ch1_Bar23
;Bar 16
	callchannel Music_BattleCynthia_Ch1_Bar16
;Bar 17
Music_BattleCynthia_Ch1_Bar17:
	octave 1
	note C#, 2
	octave 2
	note F#, 2
	loopchannel 4, Music_BattleCynthia_Ch1_Bar17
;Bar 18
	callchannel Music_BattleCynthia_Ch1_Bar18
;Bar 19
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 20
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 21
	callchannel Music_BattleCynthia_Ch1_Bar13
;Bar 22
	callchannel Music_BattleCynthia_Ch1_Bar13
;Bar 23
	callchannel Music_BattleCynthia_Ch1_Bar23
;Bar 24
	callchannel Music_BattleCynthia_Ch1_Bar16
;Bar 25
	callchannel Music_BattleCynthia_Ch1_Bar13
;Bar 26
	callchannel Music_BattleCynthia_Ch1_Bar18
;Bar 27
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 28
	callchannel Music_BattleCynthia_Ch1_Bar28
;Bar 29
	callchannel Music_BattleCynthia_Ch1_Bar3
;Bar 30
	callchannel Music_BattleCynthia_Ch1_Bar28
;Bar 31
	callchannel Music_BattleCynthia_Ch1_Bar31
;Bar 32
	callchannel Music_BattleCynthia_Ch1_Bar32
;Bar 33
	callchannel Music_BattleCynthia_Ch1_Bar33
;Bar 34
	callchannel Music_BattleCynthia_Ch1_Bar34
	callchannel Music_BattleCynthia_Ch1_Bar34
;Bar 35
	callchannel Music_BattleCynthia_Ch1_Bar31
;Bar 36
	callchannel Music_BattleCynthia_Ch1_Bar32
;Bar 37
	callchannel Music_BattleCynthia_Ch1_Bar33
;Bar 38
	callchannel Music_BattleCynthia_Ch1_Bar34
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	octave 1
	note B_, 2
	octave 2
	note C_, 2
;Bar 39
Music_BattleCynthia_Ch1_Bar39_42:
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type2
;Bar 40
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type3
;Bar 41
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type4
	loopchannel 5, Music_BattleCynthia_Ch1_Bar39_42
;Bar 59 ;transplant
	octave 4
	slidepitchto 1, 4, B_
	intensity $56
	note B_, 8
	slidepitchto 1, 5, B_
	intensity $46
	note B_, 8
;Bar 60
	slidepitchto 1, 6, B_
	intensity $36
	note B_, 16
;Bar 61
	intensity $85
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type4
;Bar 63
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type2
;Bar 64
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type3
;Bar 65
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type4
	loopchannel 0, Music_BattleCynthia_Ch1_loop

Music_BattleCynthia_Ch1_Bar3:
	octave 1
	note D#, 2
	octave 2
	note G#, 2
	octave 1
	loopchannel 4, Music_BattleCynthia_Ch1_Bar3
	endchannel

Music_BattleCynthia_Ch1_Bar13:
	octave 1
	note C#, 2
	octave 2
	note F#, 2
	octave 1
	loopchannel 4, Music_BattleCynthia_Ch1_Bar13
	endchannel

Music_BattleCynthia_Ch1_Bar23:
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	loopchannel 4, Music_BattleCynthia_Ch1_Bar23
	endchannel

Music_BattleCynthia_Ch1_Bar28:
	octave 1;
	note D#, 2
	octave 2
	note G#, 2
	octave 3
	note C_, 2
	note D#, 2
	note G#, 2
	note D#, 2
	note C_, 2
	octave 2
	note G#, 2
	endchannel

Music_BattleCynthia_Ch1_Bar31:
	octave 1
	note D#, 2
	octave 2
	note G#, 2
	loopchannel 4, Music_BattleCynthia_Ch1_Bar31
	endchannel

Music_BattleCynthia_Ch1_Bar32:
	octave 1
	note C#, 2
	octave 2
	note F_, 2
	loopchannel 4, Music_BattleCynthia_Ch1_Bar32
	endchannel

Music_BattleCynthia_Ch1_Bar33:
	octave 1
	note C#, 2
	octave 2
	note F_, 2
	loopchannel 4, Music_BattleCynthia_Ch1_Bar33
	endchannel

Music_BattleCynthia_Ch1_Bar34:
	octave 1
	note F_, 2
	octave 2
	note G#, 2
	loopchannel 2, Music_BattleCynthia_Ch1_Bar34
	endchannel

Music_BattleCynthia_Ch1_Type1:
	octave 1;
	note B_, 2
	octave 2
	note F#, 2
	note F_, 2
	note D_, 2
	endchannel

Music_BattleCynthia_Ch1_Type2:
	octave 1;
	note B_, 2
	octave 2
	note C_, 2
	octave 1
	note A#, 2
	octave 2
	note C_, 2
	endchannel

Music_BattleCynthia_Ch1_Type3:
	octave 1;
	note B_, 2
	octave 2
	note D_, 2
	note F_, 2
	note D_, 2
	endchannel

Music_BattleCynthia_Ch1_Type4:
	octave 1;
	note B_, 2
	octave 2
	note D_, 2
	octave 1
	note A#, 2
	octave 2
	note C_, 2
;Bar 42
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note F_, 2
	note C#, 2
	note F#, 2
	note E_, 2
	note A_, 2
	note D_, 2
	endchannel

Music_BattleCynthia_Ch1_Bar16:
	octave 1;
	note B_, 2
	octave 2
	note E_, 2
	note G#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	note G#, 2
	note E_, 2
	endchannel

Music_BattleCynthia_Ch1_Bar18:
	octave 1;
	note C#, 2
	octave 2
	note F#, 2
	note A#, 2
	octave 3
	note C#, 2
	note F#, 2
	note C#, 2
	octave 2
	note A#, 2
	note F#, 2
	endchannel
; ============================================================================================================

Music_BattleCynthia_Ch2:
	dutycycle $3
	notetype 12, $94
	vibrato $08, $24
;Bar 1 ;transplant
	octave 1
	note D#, 4
	intensity $34
	note D#, 4
	intensity $94
	note D#, 4
	intensity $34
	note D#, 4
;Bar 2
	intensity $94
	note D#, 4
	intensity $34
	note D#, 4
	octave 2
	intensity $88
	note D#, 2
	note E_, 2
	note D#, 2
	note A_, 2
;Bar 3
	octave 4
	intensity $86
	dutycycle $1
	note __, 16
	note __, 16
	note __, 16
	note __, 16
Music_BattleCynthia_Ch2_loop:
	dutycycle $1
	note __, 16
	intensity $78
	dutycycle $0
	note __, 16
	note __, 16
	note __, 16
;Bar 11
	callchannel Music_BattleCynthia_Ch2_Bar11_14
;Bar 15
	note B_, 10
	note E_, 6
;Bar 16
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
;Bar 17
	note F#, 10
	note C#, 6
;Bar 18
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 3
	note C_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 2
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
;Bar 19
	callchannel Music_BattleCynthia_Ch2_Bar11_14
;Bar 23
	intensity $67
	dutycycle $2
	octave 4
	note B_, 2
	note G#, 2
	note B_, 6
	octave 5
	note E_, 2
	octave 4
	note B_, 2
	note G#, 2
;Bar 24
	octave 5
	note E_, 2
	octave 4
	note B_, 2
	octave 5
	note E_, 2
	note G_, 2
	note G#, 2
	note E_, 2
	note C#, 2
	octave 4
	note B_, 2
;Bar 25
	octave 5
	note C#, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 6
	note F#, 2
	note C#, 2
	octave 4
	note A#, 2
;Bar 26
	octave 5
	note F#, 2
	note C#, 2
	note F#, 2
	note G#, 2
	note A#, 2
	note F#, 2
	note D#, 2
	note C#, 2
;Bar 27
	callchannel Music_BattleCynthia_Ch2_Bar29
;Bar 28
	octave 6
	note C_, 2
	octave 5
	note G#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note G#, 2
	note D#, 2
	note C#, 2
;Bar 29
	callchannel Music_BattleCynthia_Ch2_Bar29
;Bar 30
	octave 6
	note C_, 2
	octave 5
	note G#, 2
	note D#, 2
	note F_, 2
	note G#, 2
	note G_, 2
	note F_, 2
	note D#, 2
;Bar 31
	intensity $78
	dutycycle $0
	octave 3
	note D#, 8
	note C#, 8
;Bar 32
	note G#, 6
	note F_, 6
	note C#, 4
;Bar 33
	note G#, 6
	note F_, 6
	note C#, 4
;Bar 34
	octave 2
	note G#, 16
;Bar 35
	octave 4
	note D#, 8
	note C#, 8
;Bar 36
	octave 3
	note G#, 6
	note A#, 6
	note G#, 4
;Bar 37
	octave 4
	note C#, 6
	note F_, 6
	note E_, 4
;Bar 38
	note F_, 16
;Bar 39
	dutycycle $1
Music_BattleCynthia_Ch2_Bar39_40:
	octave 3
	stereopanning $f0
	intensity $77
	note B_, 1
	intensity $37
	note B_, 2
	note __, 1
	stereopanning $f
	callchannel Music_BattleCynthia_Ch2_Type2
	octave 4
	callchannel Music_BattleCynthia_Ch2_Type3
	stereopanning $f0
	intensity $a7
	note B_, 1
	intensity $57
	note B_, 2
	note __, 1
	stereopanning $f
	intensity $a7
	note F#, 1
	intensity $57
	note F#, 2
	note __, 1
;Bar 40
	octave 3
	callchannel Music_BattleCynthia_Ch2_Type2
	octave 4
	callchannel Music_BattleCynthia_Ch2_Type3
	octave 3
	stereopanning $f0
	callchannel Music_BattleCynthia_Ch2_Type2
	octave 4
	callchannel Music_BattleCynthia_Ch2_Type3
	stereopanning $f
	callchannel Music_BattleCynthia_Ch2_Type2
	octave 5
	intensity $a7
	note E_, 1
	intensity $57
	note E_, 1
	stereopanning $f0
	octave 4
	callchannel Music_BattleCynthia_Ch2_Type3
	callchannel Music_BattleCynthia_Ch2_Type2
	loopchannel 6, Music_BattleCynthia_Ch2_Bar39_40
Music_BattleCynthia_Ch2_Bar51_52:
;Bar 51
	stereopanning $f0
	intensity $77
	note C_, 1
	intensity $37
	note C_, 2
	note __, 1
	stereopanning $f
	callchannel Music_BattleCynthia_Ch2_Type4
	callchannel Music_BattleCynthia_Ch2_Type5
	octave 5
	stereopanning $f0
	intensity $a7
	note C_, 1
	intensity $57
	note C_, 2
	note __, 1
	octave 4
	stereopanning $f
	intensity $a7
	note G_, 1
	intensity $57
	note G_, 2
	note __, 1
;Bar 52
	callchannel Music_BattleCynthia_Ch2_Type4
	callchannel Music_BattleCynthia_Ch2_Type5
	stereopanning $f0
	callchannel Music_BattleCynthia_Ch2_Type4
	callchannel Music_BattleCynthia_Ch2_Type5
	octave 5
	stereopanning $f
	callchannel Music_BattleCynthia_Ch2_Type4
	intensity $a7
	note F_, 1
	intensity $57
	note F_, 1
	octave 4
	stereopanning $f0
	callchannel Music_BattleCynthia_Ch2_Type5
	octave 5
	callchannel Music_BattleCynthia_Ch2_Type4
	loopchannel 2, Music_BattleCynthia_Ch2_Bar51_52
;Bar 55
	octave 3
	dutycycle $0
	stereopanning $ff
	intensity $97
	note B_, 2
	note F#, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	octave 5
	note D_, 2
	octave 4
	note F#, 2
	note A_, 2
;Bar 56
	octave 5
	note A_, 2
	note F#, 2
	note C_, 2
	note D_, 2
	note C_, 2
	octave 4
	note G#, 2
	note F#, 2
	note D_, 2
;Bar 57
	dutycycle $1
	octave 2
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note __, 1
	note B_, 6
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
;Bar 58
	note B_, 1
	note B_, 1
	note A#, 2
	note B_, 4
	octave 3
	note D_, 4
	note F_, 4
;Bar 59 transplant
	intensity $88
	dutycycle $3
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type2
;Bar 60
	callchannel Music_BattleCynthia_Ch1_Type1
	callchannel Music_BattleCynthia_Ch1_Type3
;Bar 61
	octave 3
	dutycycle $0
	intensity $81
	note B_, 1
	note F_, 1
	octave 2
	note A_, 1
	octave 3
	note A#, 1
	octave 4
	note A#, 1
	note F_, 1
	note G_, 1
	octave 3
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note D#, 1
	note G_, 1
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note C#, 1
	note A_, 1
	octave 3
	note A_, 1
;Bar 62
	octave 4
	note D_, 1
	note G_, 1
	note E_, 1
	note F_, 1
	octave 5
	note E_, 1
	octave 4
	note F#, 1
	octave 5
	note C_, 1
	octave 4
	note C_, 1
	note G#, 1
	octave 3
	note B_, 1
	octave 4
	note F#, 1
	octave 3
	note G#, 1
	intensity $91
	note D_, 1
	note G#, 1
	octave 4
	note D_, 1
	note G_, 1
;Bar 63
	intensity $97
	callchannel Music_BattleCynthia_Ch2_Type1
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
;Bar 64
	callchannel Music_BattleCynthia_Ch2_Type1
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F_, 2
	note D_, 2
;Bar 65
	callchannel Music_BattleCynthia_Ch2_Type1
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
;Bar 66
	octave 2
	note B_, 2
	octave 3
	note F#, 2
	note F_, 2
	note C#, 2
	note F#, 2
	note E_, 2
	note A_, 2
	note D_, 2
	loopchannel 0, Music_BattleCynthia_Ch2_loop

Music_BattleCynthia_Ch2_Bar11_14:
	octave 3
	note D#, 8
	octave 2
	note G#, 4
	octave 3
	note C#, 2
	note D#, 2
;Bar 12
	note E_, 2
	note D#, 2
	note D_, 2
	note E_, 2
	note D#, 4
	note D_, 2
	note C_, 2
;Bar 13
	note C#, 8
	octave 2
	note F#, 4
	octave 3
	note C_, 2
	note C#, 2
;Bar 14
	note D_, 2
	note C#, 2
	note C_, 2
	note D_, 2
	note C#, 4
	octave 2
	note B_, 2
	note A#, 2
	endchannel

Music_BattleCynthia_Ch2_Type1:
	octave 2;
	note B_, 2
	octave 3
	note F#, 2
	note F_, 2
	note D_, 2
	endchannel

Music_BattleCynthia_Ch2_Bar29:
	note D#, 2;
	note C_, 2
	note D#, 6
	octave 6
	note C_, 2
	octave 5
	note G#, 2
	note D#, 2
	endchannel

Music_BattleCynthia_Ch2_Type2:
	intensity $a7;
	note B_, 1
	intensity $57
	note B_, 1
	endchannel

Music_BattleCynthia_Ch2_Type3:
	intensity $a7;
	note F#, 1
	intensity $57
	note F#, 1
	endchannel

Music_BattleCynthia_Ch2_Type4:
	intensity $a7;
	note C_, 1
	intensity $57
	note C_, 1
	endchannel

Music_BattleCynthia_Ch2_Type5:
	intensity $a7;
	note G_, 1
	intensity $57
	note G_, 1
	endchannel
; ============================================================================================================

Music_BattleCynthia_Ch3:
	vibrato $04, $13
	notetype 12, $14
;Bar 1
	octave 4
	intensity $14
	note G#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	note G#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	note G#, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 2
	octave 3
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 4
	note C_, 1
	note __, 1
	note C#, 1
	note D#, 2
	note F#, 1
	note G#, 1
	note A_, 2
	note B_, 1
;Bar 3
Music_BattleCynthia_Ch3_loop:
	intensity $14
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 12
;Bar 10
	octave 3
	note G#, 1
	note A_, 1
	octave 4
	note D_, 1
	note D#, 1
Music_BattleCynthia_Ch3_Bar11_18:
;Bar 11
	octave 4
	note G#, 12
	note F#, 2
	note G#, 2
;Bar 12
	note A_, 2
	note G#, 2
	note G_, 2
	note A_, 2
	note G#, 4
	note G_, 2
	note F_, 2
;Bar 13
	note F#, 12
	note F_, 2
	note F#, 2
;Bar 14
	note G_, 2
	note F#, 2
	note F_, 2
	note G_, 2
	note F#, 4
	note E_, 2
	note D#, 2
;Bar 15
	note E_, 10
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note G#, 2
;Bar 16
	note A_, 2
	note G#, 2
	note A_, 2
	note A#, 2
	note B_, 8
;Bar 17
	note F#, 10
	note C#, 2
	note F#, 2
	note A#, 2
;Bar 18
	note B_, 2
	note A#, 2
	note B_, 2
	octave 5
	note C_, 2
	note C#, 8
	loopchannel 2, Music_BattleCynthia_Ch3_Bar11_18
;Bar 27
	octave 4
	note G#, 10
	note D#, 2
	note G#, 2
	octave 5
	note C_, 2
;Bar 28
	note C#, 2
	note C_, 2
	note C#, 2
	note D_, 2
	note D#, 8
;Bar 29
	note C_, 10
	octave 4
	note D#, 2
	note G#, 2
	octave 5
	note C_, 2
;Bar 30
	note C#, 2
	note C_, 2
	note C#, 2
	note D_, 2
	note D#, 8
;Bar 31
	intensity $1F
	note G#, 8
	note F#, 8
;Bar 32
	note F_, 6
	note C#, 6
	octave 4
	note G#, 4
;Bar 33
	octave 5
	note C#, 16
	note C#, 16
;Bar 35
	note G#, 8
	note A#, 8
;Bar 36
	note D#, 6
	note F_, 6
	note F#, 4
;Bar 37
	note G#, 16
	note G#, 16
;Bar 39
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 47
	intensity $19
	octave 4
	note B_, 2
	note F#, 2
	note B_, 2
	octave 5
	note F#, 6
	note E_, 2
	note D#, 2
;Bar 48
	note F#, 4
	note E_, 2
	note D#, 2
	octave 4
	note B_, 4
	note A_, 4
;Bar 49
	note B_, 6
	octave 5
	note F#, 6
	note E_, 2
	note D#, 2
;Bar 50
	note F#, 4
	note E_, 2
	note D#, 2
	octave 4
	note B_, 4
	note A_, 4
;Bar 51
	octave 5
	note C_, 6
	note G_, 6
	note F_, 2
	note E_, 2
;Bar 52
	note G_, 4
	note F_, 2
	note E_, 2
	note C_, 4
	octave 4
	note G_, 4
;Bar 53
	octave 5
	note C_, 6
	note G_, 6
	note F_, 2
	note E_, 2
;Bar 54
	note G_, 4
	note F_, 2
	note E_, 2
	note C_, 4
	octave 4
	note G_, 4
;Bar 55
	intensity $19
	note B_, 4
	octave 5
	note C_, 16
	note C_, 12
;Bar 57
	octave 4
	note B_, 2
	intensity $29
	note B_, 2
	note __, 2
	intensity $19
	note B_, 2
	intensity $29
	note B_, 2
	note __, 2
	intensity $19
	note B_, 2
	intensity $29
	note B_, 2
;Bar 58
	note __, 2
	intensity $19
	note B_, 2
	intensity $29
	note B_, 2
	note __, 2
	octave 5
	intensity $19
	note D_, 4
	note C_, 4
;Bar 59
	octave 4
	note B_, 2
	intensity $29
	note B_, 2
	note __, 12
	note __, 16
	note __, 16
	note __, 16
	; ;extra
	; note __, 16
	; note __, 16
	; note __, 16
	; note __, 16
	loopchannel 0, Music_BattleCynthia_Ch3_loop

; ============================================================================================================

Music_BattleCynthia_Ch4:
	togglenoise 3
	notetype 12
;Bar 1
	note A#, 8
	note A#, 8
;Bar 2
	note A#, 8
	note A#, 4
	note A#, 4
;Bar 3
	note B_, 4
	callchannel Music_BattleCynthia_Ch4_MiniAsCs
;Bar 4
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 5
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 6
	callchannel Music_BattleCynthia_Ch4_MiniAsCs
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
;Bar 7
Music_BattleCynthia_Ch4_loop:
	note B_, 3
	note G#, 1
	note G#, 2

	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2

	note G#, 2
	note G#, 1
	note G#, 1
;Bar 8
	callchannel Music_BattleCynthia_Ch4_Bar8
;Bar 9
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 10
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 11
	callchannel Music_BattleCynthia_Ch4_Bar7
;Bar 12
	callchannel Music_BattleCynthia_Ch4_Bar8
;Bar 13
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 14
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 15
	callchannel Music_BattleCynthia_Ch4_Bar7
;Bar 16
	callchannel Music_BattleCynthia_Ch4_Bar8
;Bar 17
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 18
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 1
	note G#, 1
	note A#, 1
	note A#, 1
;Bar 19
	callchannel Music_BattleCynthia_Ch4_Bar7
;Bar 20
	callchannel Music_BattleCynthia_Ch4_Bar8
;Bar 21
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 22
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 23
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 24
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 25
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 26
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 27
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 28
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 29
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 30
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 31
	note B_, 4
	callchannel Music_BattleCynthia_Ch4_MiniAsCs
;Bar 32
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 33
	callchannel Music_BattleCynthia_Ch4_MiniAsCs
	note A#, 2
	note A#, 2
;Bar 34
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 35
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 36
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 37
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 38
	callchannel Music_BattleCynthia_Ch4_MiniAsCs
	note A#, 2
	note G#, 1
	note G#, 1
;Bar 39
	callchannel Music_BattleCynthia_Ch4_Bar7
;Bar 40
	callchannel Music_BattleCynthia_Ch4_Bar8
;Bar 41
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 42
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 43
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 44
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 45
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 46
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 47
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 48
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 49
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 50
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 51
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 52
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 53
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 54
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
;Bar 55
	note B_, 4
	callchannel Music_BattleCynthia_Ch4_MiniAsCs
;Bar 56
	callchannel Music_BattleCynthia_Ch4_Bar4
;Bar 57
	note F_, 4
	note A#, 2
	note C#, 2
	note A#, 2
	note C#, 2
	note F_, 4
;Bar 58
	note A#, 2
	note F_, 4
	note C#, 2
	note A#, 2
	note C#, 2
	note A#, 2
	note C#, 2
;Bar 59
	note F_, 4
	callchannel Music_BattleCynthia_Ch4_MiniAsCs
;Bar 60
	callchannel Music_BattleCynthia_Ch4_Bar8
;Bar 61
	callchannel Music_BattleCynthia_Ch4_Bar9
;Bar 62
	callchannel Music_BattleCynthia_Ch4_Bar10
;Bar 63
	note B_, 16
;Bar 64
	note __, 16
	note __, 16
	note __, 4
;Bar 66
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	loopchannel 0, Music_BattleCynthia_Ch4_loop

Music_BattleCynthia_Ch4_Bar4:
	note A#, 2
	note C#, 2
	loopchannel 4, Music_BattleCynthia_Ch4_Bar4
	endchannel

Music_BattleCynthia_Ch4_Bar7:
	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2

	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2

	note G#, 2
	note G#, 1
	note G#, 1
	endchannel

Music_BattleCynthia_Ch4_Bar8:
	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2

	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2

	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	endchannel

Music_BattleCynthia_Ch4_Bar9:
	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2

	note G#, 2
	note G#, 2

	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2
	endchannel

Music_BattleCynthia_Ch4_Bar10:
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	endchannel

Music_BattleCynthia_Ch4_MiniAsCs:
	note A#, 2
	note C#, 2
	loopchannel 3, Music_BattleCynthia_Ch4_MiniAsCs
	endchannel

; ============================================================================================================
