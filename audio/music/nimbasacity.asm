;Coverted using MIDI2ASM
;Version 4.0
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_NimbasaCity:
	musicheader 4, 1, Music_NimbasaCity_Ch1
	musicheader 1, 2, Music_NimbasaCity_Ch2
	musicheader 1, 3, Music_NimbasaCity_Ch3
	musicheader 1, 4, Music_NimbasaCity_Ch4

Music_NimbasaCity_Ch1:
	volume $66
	vibrato $00, $22
	notetype 4, $a8
	tempo 115
;Bar 1
	note __, 3
Music_NimbasaCity_Ch1_loop:
	dutycycle $3
	octave 2
	callchannel Music_NimbasaCity_Ch1_Bar1
;Bar 2
	callchannel Music_NimbasaCity_Ch1_Bar2
;Bar 3
	callchannel Music_NimbasaCity_Ch1_Bar3_4
;Bar 5
	callchannel Music_NimbasaCity_Ch1_Bar1
;Bar 6
	callchannel Music_NimbasaCity_Ch1_Bar2
;Bar 7
	callchannel Music_NimbasaCity_Ch1_Bar7
;Bar 8
	note G_, 8
	note D#, 2
	note D_, 2
	note C#, 2
;Bar 9
	octave 2
	callchannel Music_NimbasaCity_Ch1_Bar1
;Bar 10
	callchannel Music_NimbasaCity_Ch1_Bar2
;Bar 11
	callchannel Music_NimbasaCity_Ch1_Bar3_4
;Bar 13
	callchannel Music_NimbasaCity_Ch1_Bar1
;Bar 14
	callchannel Music_NimbasaCity_Ch1_Bar2
;Bar 15
	callchannel Music_NimbasaCity_Ch1_Bar7
;Bar 16
	note G_, 13
;Bar 17
	callchannel Music_NimbasaCity_Ch1_Bar17
;Bar 18
	note __, 4
	notetype 4, $a8
	note E_, 15
	note C#, 1
	note D#, 3
	note __, 9
	note C#, 4
	note __, 7
;Bar 19
	note C#, 1
	callchannel Music_NimbasaCity_Ch1_Bar19
;Bar 21
	notetype 8, $a8
	note C#, 11
	note __, 1
	octave 2
	note A#, 4
	octave 3
	note C#, 2
	note __, 4
	note D#, 2
;Bar 22
	note __, 4
	note C#, 8
	octave 2
	note B_, 2
	note __, 4
	note A#, 2
	note __, 4
;Bar 23
	note G#, 11
	note __, 1
	note G#, 4
	note A#, 1
	notetype 4, $a8
	note __, 9
	note A#, 1
	octave 3
	notetype 12, $a8
	note C_, 10
	notetype 8, $a8
;Bar 24
	note __, 3
	intensity $a8
	octave 2
	note G#, 1
	note __, 1
	intensity $a8
	octave 3
	note C#, 4
	note D#, 1
;Bar 25
	callchannel Music_NimbasaCity_Ch1_Bar17
;Bar 26
	note __, 4
	note E_, 8
	note D#, 2
	note __, 4
	note C#, 2
	note __, 4
;Bar 27
	callchannel Music_NimbasaCity_Ch1_Bar19
;Bar 29
	notetype 4, $a8
	note C#, 3
	note __, 15
	notetype 8, $a8
	note C#, 15
;Bar 30
	notetype 4, $a8
	note D_, 3
	note __, 15
	notetype 8, $a8
	note D_, 9
	notetype 4, $a8
	octave 2
	note A#, 9
;Bar 31
	notetype 4, $a8
	note __, 2
	octave 3
	note C#, 1
	dutycycle $2
	notetype 8, $a8
	note D#, 2
	note D_, 2
	note D#, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note G#, 2
	note G_, 2
	note G#, 2
;Bar 32
	note A_, 2
	note G#, 2
	note A_, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note E_, 2
	note A_, 2
	note B_, 2
	octave 4
	note E_, 2
	note A_, 2
	note B_, 2
;Bar 33
	notetype 8, $a8
	stereopanning $ff
	dutycycle $3
	octave 3
	note C_, 10
	note __, 2
	note C_, 4
	intensity $a8
	note D_, 1
	note __, 4
	note D_, 1
	note E_, 11
;Bar 34
	note __, 3
	note E_, 6
	notetype 4, $a8
	note G_, 3
	note __, 8
;Bar 35
	note F_, 1
	notetype 8, $a8
	note F#, 12
	note D_, 4
	note F#, 1
	note __, 7
;Bar 36
	note F_, 4
	note E_, 2
	note D_, 2
	note __, 2
	note E_, 6
	note D_, 2
	note C_, 4
	octave 2
	note B_, 2
;Bar 37
	note A_, 6
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note D#, 1
	note __, 3
	octave 2
	note B_, 2
	note B_, 4
	note A_, 1
;Bar 38
	note __, 1
	note G#, 4
	note G#, 1
	note __, 1
	note G#, 4
	note G#, 1
	note __, 5
	note G_, 6
	notetype 4, $76
	octave 3
	note C_, 1
;Bar 39
	octave 2
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	loopchannel 0, Music_NimbasaCity_Ch1_loop

Music_NimbasaCity_Ch1_Bar1:
	notetype 8, $a8
	note B_, 11
	note __, 1
	note B_, 4
	notetype 4, $a8
	octave 3
	note C#, 2
	note __, 10
	notetype 8, $a8
	note D#, 12
	endchannel

Music_NimbasaCity_Ch1_Bar2:
	notetype 8, $a8
	note __, 2;
	note D#, 6
	note F#, 1
	note __, 5
	note F_, 11
	note __, 1
	endchannel

Music_NimbasaCity_Ch1_Bar3_4:
	note C#, 4;
	note F_, 2
	note __, 4
	note E_, 6
	note D#, 2
	note C#, 3
	note __, 1
	note D#, 6
	note C#, 2
	octave 2
	note A#, 6
	endchannel

Music_NimbasaCity_Ch1_Bar7:
	note F_, 4
	note C#, 1
	note __, 1
	note F_, 4
	note D#, 12
	endchannel

Music_NimbasaCity_Ch1_Bar17:
	note __, 6
	note D#, 1
	note E_, 4
	note D#, 2
	note E_, 4
	note G#, 2
	note __, 4
	note F#, 2
	endchannel

Music_NimbasaCity_Ch1_Bar19:
	notetype 8, $a8
	note D#, 12
	note C#, 4
	note D#, 2
	note __, 4
	notetype 12, $a8
	octave 2
	note B_, 13
;Bar 20
	notetype 4, $a8
	octave 3
	note C#, 1
	note D#, 4
	note __, 8
	endchannel

; ============================================================================================================

Music_NimbasaCity_Ch2:
	dutycycle $1
	vibrato $00, $22
	notetype 4, $c8
	callchannel Music_NimbasaCity_Ch2_Intro

Music_NimbasaCity_Ch2_loop:
;Bar 1
	callchannel Music_NimbasaCity_Ch2_Bar1
;Bar 2
	callchannel Music_NimbasaCity_Ch2_Bar2
;Bar 3
	callchannel Music_NimbasaCity_Ch2_Bar3
;Bar 4
	callchannel Music_NimbasaCity_Ch2_Bar4
;Bar 5
	callchannel Music_NimbasaCity_Ch2_Bar5
;Bar 6
	callchannel Music_NimbasaCity_Ch2_Bar6
;Bar 7
	callchannel Music_NimbasaCity_Ch2_Bar7
;Bar 8
	notetype 4, $c8
	note __, 1
;Bar 9
	intensity $c8
	callchannel Music_NimbasaCity_Ch2_Intro
	callchannel Music_NimbasaCity_Ch2_Bar1
;Bar 10
	callchannel Music_NimbasaCity_Ch2_Bar2
;Bar 11
	callchannel Music_NimbasaCity_Ch2_Bar3
;Bar 12
	callchannel Music_NimbasaCity_Ch2_Bar4
;Bar 13
	callchannel Music_NimbasaCity_Ch2_Bar5
;Bar 14
	callchannel Music_NimbasaCity_Ch2_Bar6
;Bar 15
	callchannel Music_NimbasaCity_Ch2_Bar7
;Bar 17
	notetype 8, $c8
	note __, 2
	callchannel Music_NimbasaCity_Ch2_Bar17
;Bar 18
	callchannel Music_NimbasaCity_Ch2_Bar18
;Bar 19
	callchannel Music_NimbasaCity_Ch2_Bar19
;Bar 20
	callchannel Music_NimbasaCity_Ch2_Bar20
;Bar 21
	octave 4
	note C#, 9
	intensity $c2
	note C#, 3
	intensity $c8
	note C#, 4
	octave 3
	note B_, 2
	note __, 4
	note A#, 2
;Bar 22
	note __, 4
	note G_, 8
	note G#, 2
	note __, 4
	note A#, 2
	note __, 4
;Bar 23
	note B_, 9
	intensity $c2
	note B_, 3
	intensity $c8
	note B_, 4
	octave 4
	note C#, 2
	note __, 4
	note D#, 8
;Bar 24
	dutycycle $2
	octave 3
	intensity $c8
	note D#, 2
	note D_, 2
	note D#, 2
	note F#, 2
	note G#, 2
	note A#, 2
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	dutycycle $1
	intensity $c8
;Bar 25
	callchannel Music_NimbasaCity_Ch2_Bar17
;Bar 26
	callchannel Music_NimbasaCity_Ch2_Bar18
;Bar 27
	callchannel Music_NimbasaCity_Ch2_Bar19
;Bar 28
	callchannel Music_NimbasaCity_Ch2_Bar20
;Bar 29
	octave 4
	note C#, 2
	note __, 8
	note C#, 9
	intensity $c2
	note C#, 3
	intensity $c8
	note __, 2
;Bar 30
	note D_, 2
	note __, 8
	note D_, 9
	intensity $c2
	note D_, 3
	intensity $c8
	note __, 2
;Bar 31
	note D#, 16
	intensity $c2
	note D#, 3
	note __, 3
	notetype 12, $c8
	note E_, 14
	intensity $c2
	note E_, 2
;Bar 33
	notetype 4, $c8
	note __, 1
	octave 3
	note E_, 1
	note F#, 1
	note G#, 1
	notetype 8, $c8
	note A_, 8
	intensity $c2
	note A_, 3
	intensity $c8
	note __, 1
	note A_, 4
	note B_, 1
	note __, 5
	octave 4
	note C_, 9
	intensity $c2
	note C_, 3
	intensity $c8
;Bar 34
	note __, 2
	note C_, 5
	notetype 4, $c8
	note C#, 1
	note D_, 1
	notetype 8, $c8
	note E_, 2
	note __, 4
;Bar 35
	note D_, 9
	intensity $c2
	note D_, 3
	intensity $c8
	octave 3
	note A_, 4
	octave 4
	note D_, 1
	note __, 5
	note C_, 6
;Bar 36
	octave 3
	note B_, 2
	notetype 4, $c8
	note A_, 5
	note __, 3
	notetype 8, $c8
	note B_, 6
	note A_, 2
	note G_, 6
;Bar 37
	note A_, 6
	octave 4
	note E_, 2
	note D#, 2
	note E_, 2
	notetype 4, $c8
	note A_, 2
	note __, 6
	note D#, 4
	note D_, 8
	note C_, 2
;Bar 38
	note __, 2
	octave 3
	note B_, 5
	note __, 3
	octave 4
	note C_, 2
	note __, 2
	notetype 8, $c8
	note D_, 4
	note E_, 1
	note __, 5
	note D#, 6
	notetype 4, $96
	note D_, 1
;Bar 39
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	loopchannel 0, Music_NimbasaCity_Ch2_loop

Music_NimbasaCity_Ch2_Intro:
	octave 3;
	note D#, 1
	note F_, 1
	note G_, 1
	endchannel

Music_NimbasaCity_Ch2_Bar1:
	notetype 8, $c8;
	note G#, 8
	intensity $c2
	note G#, 3
	intensity $c8
	note __, 1
	note G#, 4
	note A#, 1
	note __, 5
	note B_, 8
	intensity $c2
	note B_, 3
	intensity $c8
	endchannel

Music_NimbasaCity_Ch2_Bar2:
	notetype 8, $c8
	note __, 3
	note B_, 5
	notetype 4, $c8
	octave 4
	note C_, 1
	note C#, 1
	notetype 8, $c2
	note D#, 2
	note __, 4
	intensity $c8
	endchannel

Music_NimbasaCity_Ch2_Bar3:
	note C#, 8
	intensity $c2
	note C#, 3
	intensity $c8
	note __, 1
	octave 3
	note G#, 4
	octave 4
	note C#, 2
	note __, 4
	octave 3
	note B_, 6
	endchannel

Music_NimbasaCity_Ch2_Bar4:
	note A#, 2
	notetype 4, $c8
	note G#, 5
	note __, 3
	notetype 8, $c8
	note A#, 6
	note G#, 2
	note F#, 6
	endchannel

Music_NimbasaCity_Ch2_Bar5:
	note G#, 8
	intensity $c2
	note G#, 3
	intensity $c8
	note __, 1
	note G#, 4
	notetype 4, $c8
	note A#, 2
	note __, 9
	note A#, 1
	notetype 8, $c8
	note B_, 10
	intensity $c2
	note B_, 3
	intensity $c8
	note __, 1
	endchannel

Music_NimbasaCity_Ch2_Bar6:
	note B_, 5;
	notetype 4, $c8
	octave 4
	note C_, 1
	note C#, 1
	intensity $c2
	note D#, 4
	intensity $c8
	note __, 8
	endchannel

Music_NimbasaCity_Ch2_Bar7:
	notetype 8, $c8;
	note C#, 8
	intensity $c2
	note C#, 3
	intensity $c8
	note __, 1
	note C#, 4
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note C#, 4
	notetype 12, $c8
	note D#, 13
	intensity $c2
	note D#, 3
	intensity $c8
	endchannel

Music_NimbasaCity_Ch2_Bar17:
	note E_, 7
	intensity $c2
	note E_, 3
	intensity $c8
	note __, 2
	note E_, 4
	note D#, 2
	note __, 4
	note C#, 2
	endchannel

Music_NimbasaCity_Ch2_Bar18:
	note __, 4
	octave 3
	note A#, 5
	intensity $c2
	note A#, 3
	intensity $c8
	note B_, 2
	note __, 4
	octave 4
	note C#, 2
	note __, 4
	endchannel

Music_NimbasaCity_Ch2_Bar19:
	note D#, 6
	intensity $c2
	note D#, 3
	intensity $c8
	note __, 3
	note D#, 4
	note C#, 2
	note __, 4
	octave 3
	note B_, 2
	endchannel

Music_NimbasaCity_Ch2_Bar20:
	note __, 4
	note G#, 5
	intensity $c2
	note G#, 3
	intensity $c8
	note A#, 2
	note __, 4
	note B_, 2
	note __, 4
	endchannel

; ============================================================================================================

Music_NimbasaCity_Ch3:
	notetype 4, $14
;Bar 1
	note __, 3
Music_NimbasaCity_Ch3_loop:
	notetype 8, $14
	callchannel Music_NimbasaCity_Ch3_Bar1
;Bar 2
	callchannel Music_NimbasaCity_Ch3_Bar2
;Bar 3
	callchannel Music_NimbasaCity_Ch3_Bar3
	note E_, 7
;Bar 4
	callchannel Music_NimbasaCity_Ch3_Bar4
;Bar 5
	callchannel Music_NimbasaCity_Ch3_Bar1
;Bar 6
	callchannel Music_NimbasaCity_Ch3_Bar2
;Bar 7
	callchannel Music_NimbasaCity_Ch3_Bar3
	octave 2
	note D#, 6
;Bar 8
	note G#, 1
	note __, 1
	note A#, 1
	note __, 3
	note D#, 8
	note G#, 6
;Bar 9
	callchannel Music_NimbasaCity_Ch3_Bar1
;Bar 10
	callchannel Music_NimbasaCity_Ch3_Bar2
;Bar 11
	callchannel Music_NimbasaCity_Ch3_Bar3
	octave 2
	note E_, 7
;Bar 12
	callchannel Music_NimbasaCity_Ch3_Bar4
;Bar 13
	callchannel Music_NimbasaCity_Ch3_Bar1
;Bar 14
	intensity $24
	note G#, 1
	intensity $14
	note B_, 5
	intensity $24
	note B_, 1
	intensity $14
	octave 2
	note D#, 5
	intensity $24
	note D#, 1
	intensity $14
	note F#, 5
	intensity $24
	note F#, 1
	intensity $14
	note B_, 5
;Bar 15
	callchannel Music_NimbasaCity_Ch3_Bar3
	octave 2
	note D#, 6
;Bar 16
	note G#, 2
	note A#, 1
	note __, 3
	note D#, 8
	note C#, 2
	note D_, 2
	note D#, 2
;Bar 17
	note C#, 5
	intensity $24
	note C#, 1
	intensity $14
	note E_, 5
	intensity $24
	note E_, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note C#, 5
;Bar 18
	intensity $24
	note C#, 1
	callchannel Music_NimbasaCity_Ch3_Bar18
;Bar 19
	intensity $24
	note C#, 1
	intensity $14
	octave 1
	note B_, 5
	intensity $24
	note B_, 1
	intensity $14
	note F#, 5
	intensity $24
	note F#, 1
	intensity $14
	note B_, 5
	intensity $24
	note B_, 1
	intensity $14
	octave 2
	note D#, 5
;Bar 20
	intensity $24
	note D#, 1
	intensity $14
	note E_, 5
	intensity $24
	note E_, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note E_, 5
	intensity $24
	note E_, 1
	intensity $14
	octave 1
	note B_, 5
;Bar 21
	intensity $24
	note B_, 1
	intensity $14
	note A#, 5
	intensity $24
	note A#, 1
	intensity $14
	octave 2
	note C#, 5
	intensity $24
	note C#, 1
	intensity $14
	note F_, 5
	intensity $24
	note F_, 1
	intensity $14
	note A#, 5
;Bar 22
	intensity $24
	note A#, 1
	intensity $14
	note D#, 5
	intensity $24
	note D#, 1
	intensity $14
	note G_, 5
	intensity $24
	note G_, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note A#, 5
;Bar 23
	intensity $24
	note A#, 1
	intensity $14
	octave 1
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	octave 2
	note D#, 5
	intensity $24
	note D#, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note B_, 2
	note __, 2
	note C_, 8
;Bar 24
	note G#, 1
	note __, 3
	octave 3
	note C_, 5
	note __, 1
	octave 2
	note G#, 1
	note __, 1
	note D#, 4
	notetype 4, $14
	note C_, 1
;Bar 25
	note __, 3
	notetype 8, $24
	note C#, 5
	intensity $24
	note C#, 1
	intensity $14
	note E_, 5
	intensity $24
	note E_, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note E_, 5
;Bar 26
	intensity $24
	note E_, 1
	callchannel Music_NimbasaCity_Ch3_Bar18
;Bar 27
	intensity $24
	note C#, 1
	intensity $14
	octave 1
	note B_, 5
	intensity $24
	note B_, 1
	intensity $14
	octave 2
	note D#, 5
	intensity $24
	note D#, 1
	intensity $14
	note F#, 5
	intensity $24
	note F#, 1
	intensity $14
	note D#, 5
;Bar 28
	intensity $24
	note D#, 1
	intensity $14
	note E_, 5
	intensity $24
	note E_, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note A#, 5
	intensity $24
	note A#, 1
	intensity $14
	note B_, 5
;Bar 29
	intensity $24
	note B_, 1
	intensity $14
	octave 1
	note A#, 3
	note __, 2
	intensity $24
	note A#, 2
	note __, 2
	intensity $14
	note A#, 7
	note __, 2
	note A#, 2
	octave 2
	note C#, 2
	note F_, 2
;Bar 30
	octave 1
	note A#, 3
	note __, 2
	note A#, 1
	note __, 3
	octave 2
	note D_, 9
	octave 1
	note A#, 6
;Bar 31
	octave 2
	note D#, 5
	intensity $24
	note D#, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note A#, 5
	intensity $24
	note A#, 1
	intensity $14
	note D#, 2
	note __, 2
	note E_, 7
;Bar 32
	intensity $24
	note E_, 1
	intensity $14
	note A_, 1
	note __, 3
	note B_, 8
	note G#, 6
;Bar 33
	octave 1
	note A_, 5
	intensity $24
	note A_, 1
	intensity $14
	octave 2
	note C_, 5
	intensity $24
	note C_, 1
	intensity $14
	note E_, 5
	intensity $24
	note E_, 1
	intensity $14
	note A_, 5
;Bar 34
	intensity $24
	note A_, 1
	intensity $14
	note C_, 5
	intensity $24
	note C_, 1
	intensity $14
	note E_, 5
	intensity $24
	note E_, 1
	intensity $14
	note G_, 5
	intensity $24
	note G_, 1
	intensity $14
	octave 3
	note C_, 5
;Bar 35
	intensity $24
	note C_, 1
	intensity $14
	octave 2
	note D_, 5
	intensity $24
	note D_, 1
	intensity $14
	note F#, 5
	intensity $24
	note F#, 1
	intensity $14
	note A_, 5
	intensity $24
	note A_, 1
	intensity $14
	octave 3
	note D_, 2
	note __, 2
	octave 2
	note F_, 7
;Bar 36
	intensity $24
	note F_, 1
	intensity $14
	note C_, 2
	note __, 1
	intensity $24
	note C_, 1
	intensity $14
	note G_, 6
	note __, 1
	intensity $24
	note G_, 1
	intensity $14
	note D_, 5
;Bar 37
	intensity $24
	note D_, 1
	intensity $14
	octave 1
	note A_, 5
	intensity $24
	note A_, 1
	notetype 4, $24
	octave 2
	note A_, 7
	note __, 3
	notetype 8, $14
	note A_, 1
	notetype 4, $24
	note G#, 7
	note __, 3
	notetype 8, $14
	note G#, 1
	notetype 4, $24
	note G_, 7
	note __, 3
;Bar 38
	notetype 8, $14
	note G_, 1
	notetype 4, $24
	note F#, 7
	note __, 3
	notetype 8, $14
	note F#, 1
	intensity $14
	note F_, 4
	note E_, 1
	note __, 5
	note D#, 6
	notetype 4, $14
	note __, 1
;Bar 39
	note D#, 2
	note __, 2
	loopchannel 0, Music_NimbasaCity_Ch3_loop

Music_NimbasaCity_Ch3_Bar1:
	octave 1;
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	note B_, 5
	intensity $24
	note B_, 1
	intensity $14
	octave 2
	note D#, 5
	intensity $24
	note D#, 1
	intensity $14
	octave 1
	note G#, 5
	endchannel

Music_NimbasaCity_Ch3_Bar2:
	intensity $24;
	note G#, 1
	intensity $14
	note B_, 5
	intensity $24
	note B_, 1
	intensity $14
	octave 2
	note D#, 5
	intensity $24
	note D#, 1
	intensity $14
	note F#, 5
	intensity $24
	note F#, 1
	intensity $14
	octave 1
	note B_, 5
	endchannel

Music_NimbasaCity_Ch3_Bar3:
	intensity $24;
	note B_, 1
	intensity $14
	octave 2
	note C#, 5
	intensity $24
	note C#, 1
	intensity $14
	note F_, 5
	intensity $24
	note F_, 1
	intensity $14
	note G#, 5
	intensity $24
	note G#, 1
	intensity $14
	octave 3
	note C#, 2
	note __, 2
	endchannel

Music_NimbasaCity_Ch3_Bar4:
	intensity $24
	note E_, 1
	intensity $14
	octave 1
	note B_, 2
	note __, 1
	intensity $24
	note B_, 1
	intensity $14
	octave 2
	note F#, 6
	note __, 1
	intensity $24
	note F#, 1
	intensity $14
	note C#, 5
	intensity $24
	note C#, 1
	intensity $14
	endchannel

Music_NimbasaCity_Ch3_Bar18:
	intensity $14;
	octave 1
	note F#, 5
	intensity $24
	note F#, 1
	intensity $14
	note A#, 5
	intensity $24
	note A#, 1
	intensity $14
	note B_, 5
	intensity $24
	note B_, 1
	intensity $14
	octave 2
	note C#, 5
	endchannel

; ============================================================================================================

Music_NimbasaCity_Ch4:
	togglenoise 1 ; WARNING: this will sound bad.
	notetype 4
	note __, 3
;Bar 1
Music_NimbasaCity_Ch4_loop:
	notetype 8
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 2
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 3
	callchannel Music_NimbasaCity_Ch4_Bar11
;Bar 4
	callchannel Music_NimbasaCity_Ch4_Bar4
;Bar 5
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 6
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 7
	callchannel Music_NimbasaCity_Ch4_Bar7
;Bar 8
	callchannel Music_NimbasaCity_Ch4_Bar8
;Bar 9
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 10
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 11
	callchannel Music_NimbasaCity_Ch4_Bar11
;Bar 12
	callchannel Music_NimbasaCity_Ch4_Bar4
;Bar 13
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 14
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 15
	callchannel Music_NimbasaCity_Ch4_Bar7
;Bar 16
	callchannel Music_NimbasaCity_Ch4_Bar16
;Bar 17
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 18
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 19
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 20
	note C_, 4
	note C_, 2
	note C#, 4
	note C_, 2
	note C_, 4
	note C#, 2
	note C#, 4
	note E_, 2
;Bar 21
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 22
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 23
	callchannel Music_NimbasaCity_Ch4_Bar7
;Bar 24
	callchannel Music_NimbasaCity_Ch4_Bar8
;Bar 25
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 26
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 27
	note C_, 4
	note C_, 2
	note C#, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C#, 4
	note C_, 6
;Bar 28
	note C_, 2
	note C#, 4
	note C_, 2
	note C_, 4
	note C#, 2
	note C#, 2
	note C#, 2
	note E_, 2
;Bar 29
	note F_, 6
	note C#, 4
	note F_, 2
	note C_, 4
	note C_, 2
	note C#, 2
	note C#, 2
	note C_, 2
;Bar 30
	note F_, 6
	note C#, 4
	note F_, 2
	note C_, 4
	note C_, 2
	note C#, 4
	note C_, 2
;Bar 31
	callchannel Music_NimbasaCity_Ch4_Bar7
;Bar 32
	callchannel Music_NimbasaCity_Ch4_Bar16
;Bar 33
	callchannel Music_NimbasaCity_Ch4_Bar1
;Bar 34
	callchannel Music_NimbasaCity_Ch4_Bar2
;Bar 35
	callchannel Music_NimbasaCity_Ch4_Bar7
;Bar 36
	note C_, 2
	note C#, 4
	note F_, 2
	note C_, 4
	note C#, 2
	note C#, 4
	note E_, 2
;Bar 37
	note F_, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 4
	note C_, 2
;Bar 38
	note F_, 6
	note C_, 4
	note C_, 2
	note C_, 2
	note C#, 2
	note F_, 2
	note C#, 2
	note C#, 2
	notetype 4
	note E_, 3
;Bar 39
	note E_, 2
	loopchannel 0, Music_NimbasaCity_Ch4_loop

Music_NimbasaCity_Ch4_Bar1:
	note F_, 6;
	note C#, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C#, 4
	note C_, 2
	endchannel

Music_NimbasaCity_Ch4_Bar2:
	note C_, 4;
	note C_, 2
	note C#, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C#, 4
	note C_, 2
	endchannel

Music_NimbasaCity_Ch4_Bar4:
	note C#, 4;
	note F_, 6
	note C#, 2
	note C#, 4
	note E_, 2
	endchannel

Music_NimbasaCity_Ch4_Bar7:
	note C_, 4;
	note C_, 2
	note C#, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C#, 4
	note F_, 6
	endchannel

Music_NimbasaCity_Ch4_Bar8:
	note E_, 2;
	note C#, 4
	note F_, 8
	note C#, 2
	note C#, 2
	note C#, 2
	endchannel

Music_NimbasaCity_Ch4_Bar11:
	note C_, 4;
	note C_, 2
	note C#, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C#, 4
	note F_, 8
	endchannel

Music_NimbasaCity_Ch4_Bar16:
	note E_, 2;
	note C#, 4
	note F_, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	endchannel

; ============================================================================================================

