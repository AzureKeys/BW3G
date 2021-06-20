;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_IcirrusCity:
	musicheader 4, 1, Music_IcirrusCity_Ch1
	musicheader 1, 2, Music_IcirrusCity_Ch2
	musicheader 1, 3, Music_IcirrusCity_Ch3
	musicheader 1, 4, Music_IcirrusCity_Ch4

Music_IcirrusCity_Ch1:
	volume $77
	tempo 94
	notetype 12, $93
	dutycycle $0
	tone $0001
;Bar 1
	octave 3
	callchannel Music_IcirrusCity_Ch1_Bar1
;Bar 2
	note D_, 4
	note A_, 4
	note B_, 2
	note B_, 4
	note G_, 2
;Bar 3
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
;Bar 4
	note B_, 2
	note B_, 4
	note D_, 2
	note B_, 4
	note A_, 4
;Bar 5
	note D_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note A_, 2
;Bar 6
	note F_, 4
	note E_, 4
	note F_, 4
	note E_, 4
Music_IcirrusCity_Ch1_loop:
;Bar 7
	callchannel Music_IcirrusCity_Ch1_Bar1
;Bar 8
	callchannel Music_IcirrusCity_Ch1_Bar8
;Bar 9
	callchannel Music_IcirrusCity_Ch1_Bar9
;Bar 10
	callchannel Music_IcirrusCity_Ch1_Bar10
;Bar 11
	octave 3
	note B_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note A_, 2
;Bar 12
	note F_, 4
	note G_, 4
	note F_, 4
	note E_, 4
;Bar 13
	callchannel Music_IcirrusCity_Ch1_Bar1
;Bar 14
	note D_, 4
	note A_, 4
	note D_, 2
	note B_, 4
	note D_, 2
;Bar 15
	callchannel Music_IcirrusCity_Ch1_Bar9
;Bar 16
	callchannel Music_IcirrusCity_Ch1_Bar1
;Bar 17
	note A_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note C_, 2
;Bar 18
	note F_, 4
	note E_, 4
	note F_, 4
	note E_, 4
;Bar 19
	callchannel Music_IcirrusCity_Ch1_Bar1
;Bar 20
	callchannel Music_IcirrusCity_Ch1_Bar8
;Bar 21
	callchannel Music_IcirrusCity_Ch1_Bar9
;Bar 22
	callchannel Music_IcirrusCity_Ch1_Bar10
;Bar 23
	octave 3
	note B_, 4
	note A_, 4
	note F_, 2
	note F_, 4
	note F_, 2
;Bar 24
	note G_, 2
	note A_, 2
	note G_, 4
	note F_, 4
	note E_, 4
;Bar 25
	intensity $97
	dutycycle $2
	note B_, 12
	note A_, 8
;Bar 26
	note G_, 12
;Bar 27
	note F#, 8
	note G_, 12
;Bar 28
	note F#, 8
	note G_, 12
;Bar 29
	note A_, 8
;Bar 30
	note A#, 4
	note B_, 12
;Bar 31
	note A_, 8
	note G_, 12
;Bar 32
	note F#, 8
	note G_, 12
;Bar 33
	note B_, 12
;Bar 34
	note A_, 12
;Bar 35
	note E_, 12
Music_IcirrusCity_Ch1_Bar35_36:
	intensity $78
	note F#, 16
	intensity $77
	note F#, 8
	loopchannel 2, Music_IcirrusCity_Ch1_Bar35_36
;Bar 38
	intensity $93
	dutycycle $0
	note G_, 2
	note G_, 4
;Bar 39
	note D_, 2
	note G_, 4
	note A_, 4
	note D_, 4
;Bar 40
	note A_, 4
	note B_, 2
	note B_, 4
	note G_, 2
	note B_, 4
;Bar 41
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note A_, 4
	note B_, 2
	note B_, 4
;Bar 42
	note D_, 2
	note B_, 4
	note A_, 4
	note D_, 4
;Bar 43
	note A_, 4
	note F_, 2
	note F_, 4
	note A_, 2
	note F_, 4
;Bar 44
	note E_, 4
	note F_, 4
	note E_, 4
	loopchannel 0, Music_IcirrusCity_Ch1_loop

Music_IcirrusCity_Ch1_Bar1:
	note G_, 2;
	note G_, 4
	note D_, 2
	note G_, 4
	note A_, 4
	endchannel

Music_IcirrusCity_Ch1_Bar8:
	note D_, 4;
	note A_, 4
	note B_, 2
	note B_, 4
	note D_, 2
	endchannel

Music_IcirrusCity_Ch1_Bar9:
	note G_, 4;
	note A_, 4
	note F#, 4
	note A_, 4
	endchannel

Music_IcirrusCity_Ch1_Bar10:
	note B_, 2;
	note B_, 4
	note G_, 2
	note B_, 4
	octave 4
	note C_, 4
	endchannel

; ============================================================================================================

Music_IcirrusCity_Ch2:
	notetype 12, $b7
	vibrato $10, $16
;Bar 1
Music_IcirrusCity_Ch2_Intro_Rest:
	note __, 16
	loopchannel 6, Music_IcirrusCity_Ch2_Intro_Rest
Music_IcirrusCity_Ch2_loop:
;Bar 7
	intensity $b7
	callchannel Music_IcirrusCity_Ch2_Bar7_12
	note G_, 11
	dutycycle $1
	notetype 6, $b7
	octave 2
	note B_, 1
	octave 3
	note C_, 1
;Bar 13
	notetype 12, $b7
	note D_, 8
	note G_, 4
	note A_, 6
;Bar 14
	note D_, 2
	note A_, 3
	notetype 6, $b7
	note A_, 1
	note A#, 1
	notetype 12, $b7
	note B_, 8
;Bar 15
	note D_, 4
	octave 4
	note C_, 6
	octave 3
	note B_, 2
	note A_, 3
	notetype 6, $b7
	note B_, 1
	octave 4
	note C_, 1
;Bar 16
	notetype 12, $b7
	note D_, 7
	note __, 1
	note D_, 4
	note C_, 4
;Bar 17
	octave 3
	note B_, 4
	note A_, 3
	notetype 6, $b7
	note D_, 1
	note E_, 1
	notetype 12, $b7
	note F_, 6
	note G_, 2
;Bar 18
	note A_, 4
	note G_, 12
;Bar 19
	callchannel Music_IcirrusCity_Ch2_Bar7_12
	note G_, 10
	dutycycle $1
	notetype 6, $b7
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D_, 1
	note E_, 1
;Bar 25
	notetype 12, $b7
	note F#, 12
	note E_, 4
;Bar 26
	note A_, 1
	note __, 2
	octave 2
	notetype 6, $b7
	note B_, 1
	octave 3
	note C#, 1
	notetype 12, $b7
	note D_, 16
;Bar 27
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 12
;Bar 28
	octave 2
	note B_, 4
	octave 3
	note E_, 1
	note __, 3
	note D_, 10
;Bar 29
	note E_, 1
	note D_, 1
	note C#, 4
	note D_, 4
;Bar 30
	note E_, 4
	note F#, 12
;Bar 31
	note E_, 4
	note A_, 1
	note __, 3
	note D_, 16
;Bar 32
	note B_, 2
	octave 4
	note C#, 2
	note D_, 12
;Bar 33
	intensity $b7
	octave 3
	note B_, 6
	notetype 6, $97
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
;Bar 34
	notetype 12, $b7
	note E_, 4
	note D_, 12
;Bar 35
	note C#, 11
	note __, 1
	intensity $98
	note C#, 16
	intensity $97
	note C#, 8
;Bar 37
	intensity $98
	octave 3
	note B_, 16
	intensity $97
	note B_, 8
;Bar 38
	dutycycle $0
	intensity $94
	note B_, 2
	note A_, 2
;Bar 39
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
;Bar 40
	note A_, 2
	note D_, 2
	note G_, 4
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
;Bar 41
	note D_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 4
;Bar 42
	notetype 8, $94
	note A_, 2
	note B_, 2
	note A_, 2
	notetype 12, $94
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
;Bar 43
	note F#, 2
	note D_, 2
	note F_, 4
	notetype 8, $94
	note E_, 2
	note F_, 2
	note E_, 2
	notetype 12, $94
	note C_, 2
	note F_, 2
;Bar 44
	note E_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C_, 2
	loopchannel 0, Music_IcirrusCity_Ch2_loop

Music_IcirrusCity_Ch2_Bar7_12:
	dutycycle $2
	octave 4
	note D_, 4
	note __, 2
	notetype 8, $b6
	note D_, 1
	intensity $96
	note E_, 1
	intensity $b6
	note D_, 1
	notetype 12, $b6
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 4
;Bar 8
	intensity $b2
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	intensity $b6
	note B_, 4
	note __, 2
	notetype 8, $b6
	note B_, 1
	octave 5
	intensity $96
	note C_, 1
	intensity $b6
	octave 4
	note B_, 1
;Bar 9
	notetype 12, $b6
	note A_, 2
	note B_, 2
	octave 5
	note C_, 4
	octave 4
	intensity $b2
	note B_, 2
	note __, 2
	note A_, 2
	note __, 2
;Bar 10
	intensity $b6
	octave 5
	note D_, 4
	note __, 2
	notetype 8, $b6
	note D_, 1
	intensity $96
	note E_, 1
	intensity $b6
	note D_, 1
	notetype 12, $b6
	note C_, 2
	octave 4
	note B_, 2
	octave 5
	intensity $b2
	note C_, 2
	note __, 2
;Bar 11
	octave 4
	note B_, 2
	note __, 2
	note A_, 2
	note __, 2
	intensity $b6
	note F_, 5
	note __, 1
	note F_, 2
;Bar 12
	note G_, 2
	note A_, 2
	endchannel

; ============================================================================================================

Music_IcirrusCity_Ch3:
	notetype 12, $12
;Bar 1
	callchannel Music_IcirrusCity_Ch3_Bar1
;Bar 2
	callchannel Music_IcirrusCity_Ch3_Bar2
;Bar 3
	callchannel Music_IcirrusCity_Ch3_Bar3
;Bar 4
	callchannel Music_IcirrusCity_Ch3_Bar4
;Bar 5
	callchannel Music_IcirrusCity_Ch3_Bar5
;Bar 6
	callchannel Music_IcirrusCity_Ch3_Bar6
;Bar 7
Music_IcirrusCity_Ch3_loop:
	callchannel Music_IcirrusCity_Ch3_Bar1
;Bar 8
	callchannel Music_IcirrusCity_Ch3_Bar2
;Bar 9
	callchannel Music_IcirrusCity_Ch3_Bar3
;Bar 10
	callchannel Music_IcirrusCity_Ch3_Bar4
;Bar 11
	callchannel Music_IcirrusCity_Ch3_Bar5
;Bar 12
	callchannel Music_IcirrusCity_Ch3_Bar6
;Bar 13
	callchannel Music_IcirrusCity_Ch3_Bar1
;Bar 14
	callchannel Music_IcirrusCity_Ch3_Bar2
;Bar 15
	callchannel Music_IcirrusCity_Ch3_Bar3
;Bar 16
	callchannel Music_IcirrusCity_Ch3_Bar4
;Bar 17
	callchannel Music_IcirrusCity_Ch3_Bar5
;Bar 18
	callchannel Music_IcirrusCity_Ch3_Bar6
;Bar 19
	callchannel Music_IcirrusCity_Ch3_Bar1
;Bar 20
	callchannel Music_IcirrusCity_Ch3_Bar2
;Bar 21
	callchannel Music_IcirrusCity_Ch3_Bar3
;Bar 22
	callchannel Music_IcirrusCity_Ch3_Bar4
;Bar 23
	callchannel Music_IcirrusCity_Ch3_Bar5
;Bar 24
	callchannel Music_IcirrusCity_Ch3_Bar6
;Bar 25
	note B_, 4
	note __, 2
	note B_, 6
	note F#, 1
	note __, 3
;Bar 26
	note F#, 4
	note G_, 4
	note __, 2
	note G_, 6
;Bar 27
	callchannel Music_IcirrusCity_Ch3_Bar27
;Bar 28
	note F#, 2
	note __, 2
	note F#, 2
	note __, 2
	note E_, 6
;Bar 29
	note G_, 2
	note __, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 1
	note __, 3
;Bar 30
	note F#, 4
	octave 2
	note B_, 4
	note __, 2
	note B_, 6
;Bar 31
	octave 3
	callchannel Music_IcirrusCity_Ch3_Bar27
;Bar 32
	note F#, 2
	note __, 2
	note F#, 2
	note __, 2
	note E_, 5
;Bar 33
	note __, 1
	note E_, 5
	note __, 1
	note E_, 8
;Bar 34
	note E_, 1
	note __, 3
	note A_, 7
	note __, 1
	note E_, 1
	note __, 3
;Bar 35
	octave 2
	note A_, 10
	note __, 2
	notetype 16, $12
	note B_, 15
	notetype 12, $12
;Bar 37
	octave 3
	note F#, 1
	note __, 3
	note B_, 12
	note B_, 12
;Bar 38
	octave 2
	note G_, 5
;Bar 39
	note __, 1
	note G_, 6
	octave 3
	note D_, 1
	note __, 3
	note D_, 1
	note __, 3
;Bar 40
	note D_, 1
	note __, 3
	note G_, 5
	note __, 1
	note G_, 6
;Bar 41
	callchannel Music_IcirrusCity_Ch3_Bar3
	octave 2
	note G_, 4
;Bar 42
	note __, 2
	note G_, 6
	octave 3
	note D_, 1
	note __, 3
	note D_, 1
	note __, 3
;Bar 43
	note D_, 1
	note __, 3
	note F_, 4
	note __, 2
	note F_, 6
;Bar 44
	callchannel Music_IcirrusCity_Ch3_Bar6
	loopchannel 0, Music_IcirrusCity_Ch3_loop

Music_IcirrusCity_Ch3_Bar1:
	octave 2;
	note G_, 5
	note __, 1
	note G_, 6
	octave 3
	note D_, 1
	note __, 3
	endchannel

Music_IcirrusCity_Ch3_Bar2:
	note D_, 1;
	note __, 3
	note D_, 1
	note __, 3
	note G_, 5
	note __, 1
	note G_, 6
	endchannel

Music_IcirrusCity_Ch3_Bar3:
	note D_, 1
	note __, 3
	loopchannel 3, Music_IcirrusCity_Ch3_Bar3
	endchannel

Music_IcirrusCity_Ch3_Bar4:
	octave 2;
	note G_, 4
	note __, 2
	note G_, 6
	octave 3
	note D_, 1
	note __, 3
	endchannel

Music_IcirrusCity_Ch3_Bar5:
	note D_, 1;
	note __, 3
	note D_, 1
	note __, 3
	note F_, 4
	note __, 2
	note F_, 6
	endchannel

Music_IcirrusCity_Ch3_Bar6:
	note C_, 1
	note __, 3
	loopchannel 3, Music_IcirrusCity_Ch3_Bar6
	endchannel

Music_IcirrusCity_Ch3_Bar27:
	note F#, 2;
	note __, 2
	note F#, 2
	note __, 2
	note G_, 5
	note __, 1
	note G_, 6
	endchannel

; ============================================================================================================

Music_IcirrusCity_Ch4:
	togglenoise 5
	notetype 12
;Bar 1
	callchannel Music_IcirrusCity_Ch4_Bar1
;Bar 2
	callchannel Music_IcirrusCity_Ch4_Bar1
;Bar 3
	callchannel Music_IcirrusCity_Ch4_Bar3
;Bar 4
	callchannel Music_IcirrusCity_Ch4_Bar1
;Bar 5
	callchannel Music_IcirrusCity_Ch4_Bar1
;Bar 6
	callchannel Music_IcirrusCity_Ch4_Bar3
;Bar 7
Music_IcirrusCity_Ch4_loop:
	callchannel Music_IcirrusCity_Ch4_Bar7
;Bar 8
	callchannel Music_IcirrusCity_Ch4_Bar8
;Bar 9
	callchannel Music_IcirrusCity_Ch4_Bar9
;Bar 10
	callchannel Music_IcirrusCity_Ch4_Bar7
;Bar 11
	callchannel Music_IcirrusCity_Ch4_Bar8
;Bar 12
	callchannel Music_IcirrusCity_Ch4_Bar9
;Bar 13
	callchannel Music_IcirrusCity_Ch4_Bar13
;Bar 14
	callchannel Music_IcirrusCity_Ch4_Bar14
;Bar 15
	note E_, 2
	note E_, 2
	note B_, 4
	noisesampleset 0
	note D_, 4
	note D_, 2
	noisesampleset 5
	note B_, 2
;Bar 16
	callchannel Music_IcirrusCity_Ch4_Bar16
;Bar 17
	callchannel Music_IcirrusCity_Ch4_Bar17
;Bar 18
	note E_, 2
	note E_, 2
	note E_, 4
	note C_, 4
	note C_, 2
	note B_, 2
;Bar 19
	callchannel Music_IcirrusCity_Ch4_Bar13
;Bar 20
	callchannel Music_IcirrusCity_Ch4_Bar14
;Bar 21
	note E_, 2
	note E_, 2
	note B_, 4
	noisesampleset 0
	note A_, 4
	note A_, 2
	noisesampleset 5
	note B_, 2
;Bar 22
	callchannel Music_IcirrusCity_Ch4_Bar16
;Bar 23
	noisesampleset 0
	note A_, 4
	note A_, 4
	note D_, 2
	noisesampleset 5
	note B_, 2
	note E_, 2
	noisesampleset 0
	note D#, 2
;Bar 24 V
	noisesampleset 5
	note E_, 2
	note E_, 2
	note B_, 4
	noisesampleset 0
	note A_, 4
	note A_, 2
	noisesampleset 5
	note B_, 1
	note B_, 1
;Bar 25 V
	note G#, 6
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 2
	note E_, 2
	noisesampleset 0
	note A_, 4
;Bar 26 V
	note A_, 4
	note D_, 2
	noisesampleset 5
	note B_, 4
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
;Bar 27
	noisesampleset 0
	note D_, 4
	note D_, 2
	noisesampleset 5
	note B_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note B_, 4
	noisesampleset 0
	note D_, 2
	noisesampleset 5
;Bar 28
	note E_, 4
	noisesampleset 0
	note D_, 4
	note D_, 4
	note D_, 2
	noisesampleset 5
	note B_, 4
;Bar 29
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
	note B_, 4
	noisesampleset 0
	note A_, 4
;Bar 30
	note A_, 4
	noisesampleset 5
	note G#, 6
	noisesampleset 0
	note D_, 6
;Bar 31
	note A_, 4
	note A_, 4
	note D_, 2
	noisesampleset 5
	note B_, 4
	noisesampleset 0
	note D_, 2
	noisesampleset 5
;Bar 32
	note E_, 4
	noisesampleset 0
	note D_, 4
	note D_, 2
	note D_, 2
	note D_, 2
	noisesampleset 5
	note E_, 2
;Bar 33
	note __, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5;
	note E_, 4
	note B_, 4
	noisesampleset 0
	note D_, 4
;Bar 34 V
	note D_, 2
	noisesampleset 5
	note B_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
	note E_, 2
	note E_, 4
;Bar 35 V
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
	note E_, 2
	note E_, 4
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 2
;Bar 36
	note __, 2
	note E_, 2
	noisesampleset 0
	note D_, 4
	noisesampleset 5
	note E_, 4
	noisesampleset 0
	note D_, 4
;Bar 37 V
	note D_, 2
	noisesampleset 5
	note E_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
	note E_, 2
	noisesampleset 0
	note D_, 4
	noisesampleset 5
;Bar 38 V
	note E_, 4
	noisesampleset 0
	note A_, 4
	note A_, 2
	noisesampleset 5
	note E_, 2
	noisesampleset 0
	note D_, 4
	noisesampleset 5
;Bar 39
	callchannel Music_IcirrusCity_Ch4_Bar39
;Bar 40
	callchannel Music_IcirrusCity_Ch4_Bar40
;Bar 41
	callchannel Music_IcirrusCity_Ch4_Bar41
;Bar 42
	callchannel Music_IcirrusCity_Ch4_Bar39
;Bar 43
	callchannel Music_IcirrusCity_Ch4_Bar40
;Bar 44
	note F_, 4;
	noisesampleset 0
	note D_, 4
	note D_, 4
	loopchannel 0, Music_IcirrusCity_Ch4_loop

Music_IcirrusCity_Ch4_Bar1:
	noisesampleset 0
	note D_, 4
	noisesampleset 5;
	note C#, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note F_, 4
	note F_, 4
	endchannel

Music_IcirrusCity_Ch4_Bar2:
	noisesampleset 0
	note D_, 4
	note D_, 4
	note D_, 4
	noisesampleset 5
	note C#, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	endchannel

Music_IcirrusCity_Ch4_Bar3:
	note F_, 4;
	note F_, 4
	noisesampleset 0
	note D_, 4
	note D_, 4
	noisesampleset 5
	endchannel

Music_IcirrusCity_Ch4_Bar7:
	noisesampleset 0
	note D_, 4
	noisesampleset 5;
	note E_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
	note E_, 4
	endchannel

Music_IcirrusCity_Ch4_Bar8:
	noisesampleset 0
	note D_, 4
	note D_, 4
	note D_, 4
	noisesampleset 5
	note E_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	endchannel

Music_IcirrusCity_Ch4_Bar9:
	note E_, 2;
	note E_, 2
	note B_, 4
	noisesampleset 0
	note D_, 4
	note D_, 4
	noisesampleset 5
	endchannel

Music_IcirrusCity_Ch4_Bar13:
	noisesampleset 0
	note D_, 2
	noisesampleset 5;
	note B_, 2
	note E_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
	note E_, 4
	endchannel

Music_IcirrusCity_Ch4_Bar14:
	noisesampleset 0
	note D_, 4
	note D_, 4
	note D_, 2
	noisesampleset 5
	note B_, 2
	note E_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	endchannel

Music_IcirrusCity_Ch4_Bar16:
	noisesampleset 0
	note D_, 2
	noisesampleset 5;
	note B_, 2
	note E_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note E_, 4
	note E_, 4
	endchannel

Music_IcirrusCity_Ch4_Bar17:
	noisesampleset 0
	note D_, 4
	note D_, 4
	note D_, 2
	noisesampleset 5
	note B_, 2
	note E_, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	endchannel

Music_IcirrusCity_Ch4_Bar39:
	note C#, 2;
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note F_, 4
	note F_, 4
	noisesampleset 0
	note D_, 4
	noisesampleset 5
	endchannel

Music_IcirrusCity_Ch4_Bar40:
	noisesampleset 0
	note D_, 4
	note D_, 4
	noisesampleset 5
	note C#, 2
	noisesampleset 0
	note D_, 2
	noisesampleset 5
	note F_, 4
	endchannel

Music_IcirrusCity_Ch4_Bar41:
	note F_, 4;
	noisesampleset 0
	note D_, 4
	note D_, 4
	note D_, 4
	noisesampleset 5
	endchannel