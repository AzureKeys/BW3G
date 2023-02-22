Music_HughBattle:
	musicheader 4, 1, Music_HughBattle_Ch1
	musicheader 1, 2, Music_HughBattle_Ch2
	musicheader 1, 3, Music_HughBattle_Ch3
	musicheader 1, 4, Music_HughBattle_Ch4

Music_HughBattle_Ch1:
	volume $77
	dutycycle $3
	notetype 6, $a7
	stereopanning $f
	tempo 122
;Bar 1
	callchannel Music_HughBattle_Ch1_Bar1
;Bar 2
	octave 1
	callchannel Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	note __, 1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
;Bar 3
	octave 4
	callchannel Music_HughBattle_Ch1_Bar3
;Bar 4
	octave 1
	callchannel Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	note __, 1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
;Bar 5
Music_HughBattle_Ch1_loop:
	octave 2
	note A_, 2
	octave 3
	note E_, 1
	note __, 3
	octave 2
	note A_, 1
	note __, 5
	note A_, 2
	octave 3
	note E_, 1
	note __, 3
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note G_, 5
	note __, 3
	note G#, 1
	note __, 3
;Bar 6
	octave 2
	note A_, 2
	octave 3
	note E_, 1
	note __, 3
	octave 2
	note A_, 1
	note __, 5
	note A_, 2
	octave 3
	note E_, 1
	note __, 3
	octave 2
	note A_, 1
	note __, 9
	octave 3
	note E_, 1
	note __, 3
;Bar 7
	octave 2
	note A_, 4
	note G#, 1
	note __, 1
	notetype 12, $a8
	note F#, 16
	intensity $a7
	note F#, 5
	notetype 6, $a7
;Bar 8
	note __, 16
;Bar 9
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note A_, 1
	note __, 3
	note A_, 1
	note __, 3
	note A_, 2
	octave 3
	note E_, 1
	note __, 5
	note G_, 5
	note __, 3
	note G#, 1
	note __, 3
;Bar 10
	octave 2
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note A_, 1
	note __, 3
	note A_, 1
	note __, 3
	note A_, 2
	octave 3
	note E_, 1
	note __, 5
	note G_, 5
	note __, 3
	note E_, 1
	note __, 3
;Bar 11
	octave 2
	note B_, 4
	note A_, 1
	note __, 1
	octave 3
	notetype 12, $a8
	note C#, 16
	intensity $a7
	note C#, 8
	notetype 6, $a7
;Bar 12
	note __, 10
;Bar 13
	callchannel Music_HughBattle_Ch1_Bar1
;Bar 14
	octave 1
	callchannel Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	note __, 1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
;Bar 15
	note F#, 4
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	note F#, 3
	note __, 2
	octave 2
	note C#, 3
;Bar 16
	octave 1
	note A_, 4
	note A#, 4
	note __, 12
	octave 2
	note E_, 4
	note __, 4
	note F_, 4
;Bar 17
Music_HughBattle_Ch1_Bar17:
	note F#, 4
	note E_, 1
	note __, 1
	loopchannel 4, Music_HughBattle_Ch1_Bar17
	note F#, 4
	note E_, 4
;Bar 18
	octave 1
Music_HughBattle_Ch1_Bar18:
	note E_, 1
	note __, 1
	note F#, 3
	note __, 1
	loopchannel 4, Music_HughBattle_Ch1_Bar18
	note F_, 4
	note B_, 4
;Bar 19
	octave 3
	note C#, 1
	note __, 1
	octave 2
	note B_, 2
	octave 3
	note C#, 3
	note __, 1
	note F#, 8
	note A_, 8
	octave 4
	note F#, 4
	note E_, 8
;Bar 20
	note C#, 1
	note __, 3
	octave 3
	note A_, 4
	note B_, 1
	note __, 3
	note A_, 1
	note __, 1
	note G#, 1
	note __, 3
	note E_, 1
	note __, 1
	note F#, 1
	note __, 3
	note A_, 2
	note B_, 2
;Bar 21
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 15
	note __, 1
	note D_, 2
	octave 3
	note A_, 2
	note F#, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 4
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 22
	octave 3
	callchannel Music_HughBattle_Ch1_Type3
	octave 2
	note E_, 2
	note F_, 2
	note A_, 2
	note B_, 2
;Bar 23
	octave 3
	note A_, 8
	note F#, 8
	note A_, 8
	octave 4
	note F#, 4
	note A_, 8
;Bar 24
	note F#, 1
	note __, 3
	octave 3
	note A_, 4
	note B_, 1
	note __, 3
	note A_, 1
	note __, 1
	note G#, 1
	note __, 1
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F#, 1
	note __, 3
	note A_, 2
	note B_, 2
;Bar 25
	octave 4
	note D_, 2
	octave 3
	note A_, 1
	note __, 3
	octave 4
	note D_, 11
	note __, 3
	note D_, 2
	octave 3
	note A_, 2
	note F#, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 4
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 26
	octave 3
	callchannel Music_HughBattle_Ch1_Type3
	octave 4
	note D_, 2
	note E_, 1
	note __, 5
;Bar 27
	callchannel Music_HughBattle_Ch1_Bar3
;Bar 28
	octave 1
	callchannel Music_HughBattle_Ch1_Type2
	octave 2
	note C#, 2
	octave 1
	note C#, 1
	note __, 1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
	callchannel Music_HughBattle_Ch1_Type1
;Bar 29
	note D_, 4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	octave 2
	note C#, 4
;Bar 30
	octave 1
	note B_, 4
	callchannel Music_HughBattle_Ch1_Type5
	callchannel Music_HughBattle_Ch1_Type5
	callchannel Music_HughBattle_Ch1_Type5
	callchannel Music_HughBattle_Ch1_Type5
	octave 2
	note E_, 4
	octave 1
	callchannel Music_HughBattle_Ch1_Type5
	octave 2
	note F#, 4
;Bar 31
	note G#, 4
	note E_, 1
	note __, 1
	note A_, 4
	note E_, 1
	note __, 1
	note B_, 4
	note E_, 1
	note __, 1
	note A_, 4
	note E_, 1
	note __, 1
	note G#, 4
	note F#, 4
;Bar 32
Music_HughBattle_Ch1_Bar32:
	note A_, 1
	note __, 1
	octave 3
	note C#, 3
	note __, 1
	octave 2
	loopchannel 4, Music_HughBattle_Ch1_Bar32
	note A_, 4
	note G#, 4
;Bar 33
	note D_, 2
	note __, 2
	callchannel Music_HughBattle_Ch1_Type4
	note A_, 4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	note F#, 4
	note D_, 4
;Bar 34
	note D_, 2
	note __, 2
	callchannel Music_HughBattle_Ch1_Type4
	note F#, 4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	callchannel Music_HughBattle_Ch1_Type4
	note F_, 4
	note C#, 4
;Bar 35
	note C#, 1
	note __, 3
	callchannel Music_HughBattle_Ch1_Type2
	note F_, 4
	note C#, 4
	note C#, 1
	note __, 3
	callchannel Music_HughBattle_Ch1_Type2
	note F_, 4
	note G#, 4
;Bar 36
	note F#, 1
	note __, 1
	note A#, 3
	note C#, 1
	note __, 2
	note F#, 3
	note __, 1
	octave 1
	note A#, 1
	note __, 1
	octave 2
	note C#, 3
	note __, 1
	octave 1
	note F#, 1
	note __, 1
	note A#, 3
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 4
;Bar 37
	dutycycle $2
	octave 3
	note E_, 6
	note F#, 2
	note __, 4
	octave 2
	note B_, 16
	octave 3
	note C#, 1
	note __, 3
;Bar 38
	note E_, 6
	note F#, 2
	note __, 4
	note D_, 16
	note E_, 2
	note __, 2
;Bar 39
	dutycycle $3
	octave 4
	note C#, 6
	note __, 2
	note C#, 2
	note __, 4
	note E_, 2
	note C#, 2
	note __, 2
	octave 3
	note G#, 2
	note __, 2
	note F_, 2
	note __, 2
	note G#, 2
	note __, 2
;Bar 40
	octave 4
	note C#, 4
	octave 3
	note F#, 2
	note A#, 4
	octave 4
	note F#, 2
	octave 3
	note A#, 4
	octave 4
	note E_, 6
	note D_, 6
	note E_, 4
;Bar 41
	note E_, 6
	note F#, 2
	note __, 4
	octave 3
	note B_, 14
	note __, 2
	octave 4
	note D_, 4
;Bar 42
	note E_, 5
	note __, 1
	note F#, 2
	note __, 4
	note D_, 13
	note __, 3
	note E_, 1
	note __, 1
	intensity $a8
	note C#, 16
	intensity $a7
	note C#, 10
;Bar 43
	note __, 16
;Bar 44
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	callchannel Music_HughBattle_Ch1_Type2
	note C#, 4
	loopchannel 0, Music_HughBattle_Ch1_loop

Music_HughBattle_Ch1_Bar3:
	note C#, 2;
	note __, 2
	octave 3
	note B_, 1
	note __, 1
	note A_, 1
	note __, 5
	note A_, 2
	note __, 2
	note G#, 1
	note __, 1
	note F#, 1
	note __, 5
	note F#, 2
	note __, 2
	note E_, 1
	note __, 1
	note C#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch1_Bar1:
	octave 4;
	note C#, 2
	note __, 2
	octave 3
	note B_, 1
	note __, 1
	note A#, 1
	note __, 5
	note A#, 2
	note __, 2
	note G#, 1
	note __, 1
	note F#, 1
	note __, 5
	note F#, 2
	note __, 2
	note E_, 1
	note __, 1
	note C#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch1_Type1:
	octave 2;
	note C#, 2
	octave 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch1_Type2:
	note C#, 1;
	note __, 1
	note C#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch1_Type3:
	note B_, 3
	note __, 1
	note G#, 1
	note __, 1
	loopchannel 4, Music_HughBattle_Ch1_Type3
	endchannel

Music_HughBattle_Ch1_Type4:
	note D_, 1;
	note __, 1
	note D_, 1
	note __, 1
	endchannel

Music_HughBattle_Ch1_Type5:
	note B_, 1;
	note __, 1
	note B_, 1
	note __, 1
	endchannel

; ============================================================================================================

Music_HughBattle_Ch2:
	dutycycle $0
	notetype 6, $c7
	vibrato $00, $21
	stereopanning $f0
;Bar 1
	octave 4
	callchannel Music_HughBattle_Ch2_Bar1_2
;Bar 2
	dutycycle $1
	octave 1
	note F#, 2
	note C#, 2
	note A#, 2
	note F#, 2
	octave 2
	note C#, 2
	octave 1
	note A#, 2
	octave 2
	note F#, 2
	note C#, 2
	note A#, 2
	note F#, 2
	octave 3
	note C#, 2
	octave 2
	note A#, 2
	octave 3
	note F#, 2
	note C#, 2
	note A#, 2
	octave 4
	note C#, 2
;Bar 3
	dutycycle $0
	octave 4
	callchannel Music_HughBattle_Ch2_Bar3_4
;Bar 4
	dutycycle $1
	note __, 4
	note C#, 3
	note __, 3
	note C#, 3
	note __, 3
	note E_, 3
	note __, 3
	note C#, 3
	note __, 3
	note E_, 3
	note __, 1
	dutycycle $0
;Bar 5
Music_HughBattle_Ch2_loop:
	intensity $c7
	octave 3
	note A_, 2
	octave 4
	note F#, 1
	note __, 3
	octave 3
	note A_, 1
	note __, 5
	note A_, 2
	octave 4
	note F#, 1
	note __, 3
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note A_, 5
	note __, 3
	note A#, 1
	note __, 3
;Bar 6
	octave 3
	note A_, 2
	octave 4
	note F#, 1
	note __, 3
	octave 3
	note A_, 1
	note __, 5
	note A_, 2
	octave 4
	note F#, 1
	note __, 3
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note A_, 5
	note __, 3
	note F#, 1
	note __, 3
;Bar 7
	octave 3
	note E_, 4
	note D#, 1
	note __, 1
	notetype 12, $b8
	note C#, 16
	intensity $b7
	note C#, 5
	notetype 6, $c7
;Bar 8
	note __, 16
;Bar 9
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 1
	note __, 3
	note A_, 1
	note __, 3
	note A_, 2
	octave 4
	note F#, 1
	note __, 5
	note A_, 5
	note __, 3
	note A#, 1
	note __, 3
;Bar 10
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 1
	note __, 3
	note A_, 1
	note __, 3
	note A_, 2
	octave 4
	note F#, 1
	note __, 5
	note A_, 5
	note __, 3
	note F#, 1
	note __, 3
;Bar 11
	octave 3
	note E_, 4
	note D#, 1
	note __, 1
	notetype 12, $b8
	note F#, 16
	intensity $b7
	note F#, 8
	notetype 6, $c7
;Bar 12
	note __, 10
;Bar 13
	octave 4
	callchannel Music_HughBattle_Ch2_Bar1_2
	note __, 16
	note __, 16
;Bar 15
	octave 2
	callchannel Music_HughBattle_Ch2_Type2
	callchannel Music_HughBattle_Ch2_Type2
	callchannel Music_HughBattle_Ch2_Type2
	callchannel Music_HughBattle_Ch2_Type2
	note F#, 2
	note E_, 1
	note __, 1
	octave 3
	note C#, 2
	octave 2
	note B_, 1
	note __, 1
;Bar 16
	note A_, 4
	note A#, 4
	octave 4
	callchannel Music_HughBattle_Ch2_Bar16
;Bar 17
	note F#, 1
	note __, 16
	note __, 15
;Bar 18
	octave 2
	note E_, 1
	note __, 1
	callchannel Music_HughBattle_Ch2_Type2
	callchannel Music_HughBattle_Ch2_Type2
	callchannel Music_HughBattle_Ch2_Type2
	note F#, 3
	note __, 1
	note E_, 2
	note F_, 2
	note A_, 2
	note B_, 2
;Bar 19
	octave 3
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	note F#, 3
	note __, 1
	octave 4
	note C#, 8
	note F#, 8
	octave 5
	note C#, 4
	octave 4
	note B_, 8
;Bar 20
	note A_, 1
	note __, 3
	octave 4
	notetype 12, $b8
	note F#, 16
	intensity $b7
	note F#, 12
	notetype 6, $c7
;Bar 22
	octave 4
	callchannel Music_HughBattle_Ch2_Type1
	note E_, 2
	note F_, 2
	note A_, 2
	note B_, 2
;Bar 23
	octave 4
	note F#, 8
	note C#, 8
	note F#, 8
	octave 5
	note C#, 4
	note F#, 8
;Bar 24
	note C#, 1
	note __, 3
	octave 4
	notetype 12, $b8
	note F#, 16
	intensity $b7
	note F#, 12
	notetype 6, $c7
;Bar 26
	callchannel Music_HughBattle_Ch2_Type1
	octave 4
	note G#, 2
	note B_, 1
	note __, 5
;Bar 27
	callchannel Music_HughBattle_Ch2_Bar3_4
	note __, 16
	note __, 16
	note __, 12
;Bar 29
	octave 4
	note A_, 1
	note __, 3
	note G#, 1
	note __, 3
	note A_, 1
	note __, 3
	note F#, 4
	note __, 2
	note D_, 2
;Bar 30
	octave 3
	note A_, 1
	note __, 11
	octave 4
	note A_, 1
	note __, 3
	note G#, 1
	note __, 3
	note A_, 1
	note __, 3
	note B_, 6
	note G#, 2
;Bar 31
	notetype 12, $b8
	note E_, 8
	intensity $b7
	note E_, 4
	notetype 6, $c7
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	notetype 12, $b8
	note C#, 8
	intensity $b7
	note C#, 4
	notetype 6, $c7
;Bar 32
	note __, 16
	note __, 8
;Bar 33
	note A_, 1
	note __, 3
	note G#, 1
	note __, 3
	note A_, 1
	note __, 3
	note F#, 3
	note __, 3
	note D_, 2
;Bar 34
	octave 3
	note A_, 1
	note __, 11
	octave 4
	note A_, 1
	note __, 3
	note G#, 1
	note __, 3
	note A_, 1
	note __, 3
	note B_, 6
	note G#, 2
;Bar 35
	octave 5
	notetype 12, $b8
	note C#, 8
	intensity $b7
	note C#, 4
	notetype 6, $c7
	octave 4
	note B_, 1
	note __, 1
	octave 5
	note C#, 1
	note __, 1
	octave 4
	notetype 12, $b8
	note A#, 8
	intensity $b7
	note A#, 4
	notetype 6, $c7
;Bar 36
	note __, 8
	note F#, 4
;Bar 37
	dutycycle $1
	vibrato $00, $00
	note C#, 6
	note D_, 2
	note __, 4
	octave 3
	note F#, 16
	note A_, 2
	note __, 2
;Bar 38
	note B_, 6
	octave 4
	note C#, 2
	note __, 4
	octave 3
	note A_, 16
	note B_, 2
	note __, 2
;Bar 39
	dutycycle $0
	vibrato $00, $21
	octave 4
	note G#, 6
	note __, 2
	note G#, 2
	note __, 4
	note A_, 2
	note B_, 2
	note __, 2
	note G#, 2
	note __, 2
	note C#, 2
	note __, 2
	note E_, 2
	note __, 2
;Bar 40
	note G#, 6
	note F#, 1
	note __, 5
	note F#, 1
	note __, 16
	note __, 3
;Bar 41
	octave 5
	note C#, 6
	note D_, 2
	note __, 4
	octave 4
	note F#, 15
	note __, 1
	note A_, 4
;Bar 42
	note B_, 6
	octave 5
	note C#, 2
	note __, 4
	octave 4
	note A_, 14
	note __, 2
	note B_, 1
	note __, 1
	intensity $b8
	note G#, 16
	intensity $b7
	note G#, 10
;Bar 43
	note __, 16
;Bar 44
	callchannel Music_HughBattle_Ch2_Bar16
	loopchannel 0, Music_HughBattle_Ch2_loop

Music_HughBattle_Ch2_Bar1_2:
	note E_, 3
	note __, 1
	note D#, 1
	note __, 1
	note C#, 1
	note __, 5
	note C#, 3
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	note A#, 1
	note __, 5
	note A#, 3
	note __, 1
	note G#, 1
	note __, 1
	note F#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch2_Bar3_4:
	note F#, 3;
	note __, 1
	note E_, 1
	note __, 1
	note C#, 1
	note __, 5
	note C#, 3
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	note A_, 1
	note __, 5
	note A_, 3
	note __, 1
	note G#, 1
	note __, 1
	note F#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch2_Bar16:
	note E_, 1
	note __, 1
	loopchannel 10, Music_HughBattle_Ch2_Bar16
	note F_, 4
	endchannel

Music_HughBattle_Ch2_Type1:
	octave 4
	note E_, 3
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	loopchannel 4, Music_HughBattle_Ch2_Type1
	endchannel

Music_HughBattle_Ch2_Type2:
	note F#, 3;
	note __, 1
	note E_, 1
	note __, 1
	endchannel

; ============================================================================================================

Music_HughBattle_Ch3:
	notetype 6, $16
;Bar 1
	octave 1
	callchannel Music_HughBattle_Ch3_Type2
	octave 2
	note A#, 4
;Bar 2
	octave 2
	note F#, 2
	octave 1
	callchannel Music_HughBattle_Ch3_Type3
;Bar 3
	callchannel Music_HughBattle_Ch3_Type2
	octave 2
	note A_, 4
;Bar 4
	note C#, 2
	note __, 6
	octave 1
	note B_, 2
	note __, 2
	octave 3
	note C#, 4
	octave 1
	note A_, 2
	note __, 2
	octave 3
	note F#, 4
	octave 1
	note G#, 2
	note __, 2
	octave 2
	note B_, 4
;Bar 5
Music_HughBattle_Ch3_loop:
	octave 2
	callchannel Music_HughBattle_Ch3_Type1_5
	note G_, 4
	note E_, 4
;Bar 6
	callchannel Music_HughBattle_Ch3_Type1_5
	note G_, 7
	note __, 1
;Bar 7
	callchannel Music_HughBattle_Ch3_Type1
	note G_, 4
	note E_, 4
;Bar 8
	callchannel Music_HughBattle_Ch3_Type1_5
	note G_, 7
	note __, 1
;Bar 9
	callchannel Music_HughBattle_Ch3_Type1_5
	note G_, 4
	note E_, 4
;Bar 10
	callchannel Music_HughBattle_Ch3_Type1_5
	note G_, 7
	note __, 1
;Bar 11
	callchannel Music_HughBattle_Ch3_Type1_5
	note G_, 4
	note E_, 4
;Bar 12
	callchannel Music_HughBattle_Ch3_Type1_5
	note G_, 7
	note __, 1
;Bar 13
	octave 1
	callchannel Music_HughBattle_Ch3_Type4
;Bar 14
	callchannel Music_HughBattle_Ch3_Type3
	note F#, 1
	note __, 1
;Bar 15
	octave 2
	note F#, 8
	note E_, 8
	note F#, 4
	octave 3
	note E_, 4
	note __, 4
	note F_, 4
;Bar 16
	octave 2
	callchannel Music_HughBattle_Ch3_Type5
	callchannel Music_HughBattle_Ch3_Type5
	note F#, 3
	note __, 1
	callchannel Music_HughBattle_Ch3_Type5
	callchannel Music_HughBattle_Ch3_Type5
	note F#, 3
	note __, 1
;Bar 17
	callchannel Music_HughBattle_Ch3_Type5
	callchannel Music_HughBattle_Ch3_Type5
	callchannel Music_HughBattle_Ch3_Type5
	callchannel Music_HughBattle_Ch3_Type5
	note F#, 3
	note __, 1
	note E_, 4
;Bar 18
	note E_, 1
	note __, 1
	callchannel Music_HughBattle_Ch3_Type5
	callchannel Music_HughBattle_Ch3_Type5
	callchannel Music_HughBattle_Ch3_Type5
	note F#, 3
	note __, 1
	note F_, 2
	note __, 2
	note B_, 2
	note __, 2
;Bar 19
	callchannel Music_HughBattle_Ch3_Type1
	note G_, 4
	note E_, 4
;Bar 20
	callchannel Music_HughBattle_Ch3_Type1
	note A_, 3
	note __, 1
	note G#, 2
	note __, 2
;Bar 21
	callchannel Music_HughBattle_Ch3_Bar_21
;Bar 22
	callchannel Music_HughBattle_Ch3_Type6
	callchannel Music_HughBattle_Ch3_Type6
	callchannel Music_HughBattle_Ch3_Type6
	callchannel Music_HughBattle_Ch3_Type6
	note F_, 2
	note __, 2
	note B_, 2
	note __, 2
;Bar 23
	callchannel Music_HughBattle_Ch3_Type1
	note F#, 4
	note E_, 4
;Bar 24
	callchannel Music_HughBattle_Ch3_Type1
	note A_, 4
	note B_, 4
;Bar 25
	callchannel Music_HughBattle_Ch3_Bar_21
;Bar 26
	callchannel Music_HughBattle_Ch3_Type6
	callchannel Music_HughBattle_Ch3_Type6
	callchannel Music_HughBattle_Ch3_Type6
	callchannel Music_HughBattle_Ch3_Type6
	note E_, 2
	octave 1
	note B_, 1
	note __, 5
;Bar 27
	callchannel Music_HughBattle_Ch3_Type4
;Bar 28
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note C#, 4
	octave 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	octave 2
	note B_, 4
	octave 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	octave 2
	note A_, 4
	octave 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	octave 2
	note G#, 4
;Bar 29
Music_HughBattle_Ch3_Bar29:
	note D_, 3
	note __, 1
	note C#, 1
	note __, 1
	loopchannel 4, Music_HughBattle_Ch3_Bar29
	note D_, 3
	note __, 1
	note C#, 4
;Bar 30
	callchannel Music_HughBattle_Ch3_Type9
	callchannel Music_HughBattle_Ch3_Type9
	octave 2
	note D_, 3
	note __, 1
	callchannel Music_HughBattle_Ch3_Type9
	callchannel Music_HughBattle_Ch3_Type9
	octave 2
	note D_, 3
	note __, 1
;Bar 31v
Music_HughBattle_Ch3_Bar31:
	octave 2
	note C#, 3
	note __, 1
	octave 1
	note B_, 1
	note __, 1
	loopchannel 4, Music_HughBattle_Ch3_Bar31
	octave 2
	note C#, 3
	note __, 1
	octave 1
	note B_, 4
;Bar 32v
	octave 2
	note E_, 1
	note __, 1
	callchannel Music_HughBattle_Ch3_Type5
	note F#, 3
	note __, 1
	octave 3
	note F#, 4
	note __, 2
	octave 2
	note E_, 1
	note __, 1
	note F#, 3
	note __, 1
	note A_, 4
	note G#, 4
;Bar 33v
	note D_, 4
	note C#, 2
	note __, 2
	note G#, 1
	note __, 1
	note A_, 5
	note __, 1
	note F#, 4
	note C#, 2
	note D_, 1
	note __, 1
	note G#, 2
	note __, 2
	note A_, 4
;Bar 34v
	note D_, 4
	note B_, 1
	note __, 3
	note A#, 1
	note __, 1
	note B_, 5
	note __, 1
	note E_, 4
	note D#, 2
	note E_, 1
	note __, 1
	note G#, 2
	note __, 2
	note B_, 4
;Bar 35v
	octave 3
	note C#, 4
	octave 2
	note G#, 1
	note __, 1
	note G#, 4
	note F_, 1
	note __, 1
	note F_, 4
	note C#, 1
	note __, 1
	note C#, 4
	note __, 2
	note C#, 4
	octave 3
	note C#, 3
	note __, 1
;Bar 36v
	octave 2
	note C#, 1
	note __, 1
	note F#, 3
	note __, 1
	note F#, 1
	note __, 1
	note A#, 3
	note __, 1
	note A#, 1
	note __, 1
	octave 3
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	octave 2
	note A#, 3
	note __, 1
	note C#, 4
	note F#, 4
;Bar 37
	note D_, 2
	note __, 2
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	note A_, 4
;Bar 38
	note D_, 2
	note __, 2
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note F#, 4
	octave 2
	note A_, 4
;Bar 39
	note C#, 2
	note __, 2
	callchannel Music_HughBattle_Ch3_Type8
	callchannel Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	callchannel Music_HughBattle_Ch3_Type8
	callchannel Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	note B_, 4
;Bar 40v
	callchannel Music_HughBattle_Ch3_Type5
	note C#, 3
	note __, 1
	octave 1
	note B_, 1
	note __, 1
	octave 2
	callchannel Music_HughBattle_Ch3_Type5
	note A#, 3
	note __, 1
	note G#, 1
	note __, 1
	note F#, 3
	note __, 1
	note E_, 3
	note __, 1
;Bar 41
	note D_, 2
	note __, 2
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	note A_, 4
;Bar 42
	note D_, 2
	note __, 2
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note D_, 4
	octave 2
	callchannel Music_HughBattle_Ch3_Type7
	callchannel Music_HughBattle_Ch3_Type7
	octave 3
	note F#, 4
	octave 2
	note A_, 4
;Bar 43
	note C#, 2
	note __, 2
	callchannel Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	callchannel Music_HughBattle_Ch3_Type8
	callchannel Music_HughBattle_Ch3_Type8
	callchannel Music_HughBattle_Ch3_Type8
	octave 3
	note C#, 4
	octave 2
	note G#, 4
;Bar 44
	note C#, 3
	note __, 1
	octave 3
	note C#, 1
	note __, 1
	octave 2
	note C#, 3
	note __, 1
	octave 3
	note C#, 1
	octave 2
	note C#, 3
	octave 3
	note C#, 1
	note __, 9
	note C#, 8
	loopchannel 0, Music_HughBattle_Ch3_loop

Music_HughBattle_Ch3_Type1:
	note F#, 1;
	note __, 3
	note E_, 1
	note __, 1
	note F#, 5
	note __, 1
	note C#, 4
	note C_, 2
	note C#, 1
	note __, 1
	note E_, 1
	note __, 3
	endchannel

Music_HughBattle_Ch3_Type1_5:
	note F#, 3
	note __, 1
	note E_, 1
	note __, 1
	note F#, 5
	note __, 1
	note C#, 4
	note C_, 2
	note C#, 1
	note __, 1
	note E_, 2
	note __, 2
	endchannel

Music_HughBattle_Ch3_Type2:
	note F#, 2
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 2
	note __, 4
	loopchannel 2, Music_HughBattle_Ch3_Type2
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch3_Type3:
	note F#, 1
	note __, 1
	loopchannel 15, Music_HughBattle_Ch3_Type3
	endchannel

Music_HughBattle_Ch3_Type4:
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 2
	note __, 4
	loopchannel 2, Music_HughBattle_Ch3_Type4
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch3_Type5: ;6
	note F#, 3;
	note __, 1
	note E_, 1
	note __, 1
	endchannel

Music_HughBattle_Ch3_Type6:
	note E_, 3;
	note __, 1
	note D_, 1
	note __, 1
	endchannel

Music_HughBattle_Ch3_Bar_21:
	note D_, 2
	note __, 2
	note C#, 1
	note __, 1
	note D_, 5
	note __, 1
	octave 1
	note A_, 4
	octave 2
	note D_, 2
	note C#, 1
	note __, 1
	note D_, 2
	note __, 2
	note F#, 4
	note C#, 4
	endchannel

Music_HughBattle_Ch3_Type7:
	note D_, 1;
	note __, 1
	note D_, 1
	note __, 1
	endchannel

Music_HughBattle_Ch3_Type8:
	note C#, 1;
	note __, 1
	note C#, 1
	note __, 1
	endchannel

Music_HughBattle_Ch3_Type9:
	octave 2;
	note D_, 3
	note __, 1
	octave 1
	note B_, 1
	note __, 1
	endchannel

; ============================================================================================================

Music_HughBattle_Ch4:
	togglenoise 1
	notetype 6
;Bar 1
	callchannel Music_HughBattle_Ch4_Type7
	note A_, 1
	note D_, 2
;Bar 2
	note F#, 4
	note A_, 4
	note A_, 6
	note A_, 4
	note A_, 6
	note A_, 2
	note A_, 6
;Bar 3
	callchannel Music_HughBattle_Ch4_Type7
	note C#, 3
;Bar 4
	note F#, 4
	note A_, 4
	note A#, 4
	note A_, 4

	note A#, 4
	note A_, 4
	note A#, 4
	note A_, 4
;Bar 5
Music_HughBattle_Ch4_loop:
	note F#, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type1
;Bar 6
	note C_, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type3
;Bar 7
	note F#, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
;Bar 8
	note C_, 4
	note A_, 4
	note C_, 4
	note C_, 4
	note C_, 2
	note A_, 6
	note C_, 2
	note A_, 4
	note C_, 1
	note C_, 1
;Bar 9
	note A_, 8
	callchannel Music_HughBattle_Ch4_Type1
;Bar 10
	note C_, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type3
;Bar 11
	note F#, 8
	callchannel Music_HughBattle_Ch4_Type2
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type3
;Bar 12
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note A_, 4
	note C_, 4
	note C_, 4
	note __, 16
	note __, 16
;Bar 14
	note A#, 2
	note A#, 2
	note A_, 4
	note A#, 4
	note A_, 4
	note A#, 4
	note A_, 4
	note A#, 4
	note A_, 4
;Bar 15
	note F#, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note A_, 4
;Bar 16
	note C_, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	note A_, 4
	note C_, 2
	note C_, 2
	note A_, 4
;Bar 17
	callchannel Music_HughBattle_Ch4_Type2
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	note C_, 2
	note C_, 2
;Bar 18
	callchannel Music_HughBattle_Ch4_Type1
	callchannel Music_HughBattle_Ch4_Type3
;Bar 19
	callchannel Music_HughBattle_Ch4_Type4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	callchannel Music_HughBattle_Ch4_Type5
;Bar 20
	note C_, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	note A_, 4
	note C_, 4
	note C_, 4
;Bar 21
	note A_, 4
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type2
	callchannel Music_HughBattle_Ch4_Type5
;Bar 22
	note A_, 4
	note C_, 2
	note A_, 4
	note C_, 2
	note A_, 4
	note C_, 2
	note A_, 4
	note C_, 2
	note C_, 2
	note A_, 4
	note C_, 1
	note C_, 1
;Bar 23
	callchannel Music_HughBattle_Ch4_Type4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	callchannel Music_HughBattle_Ch4_Type5
;Bar 24
	note C_, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type2
	note A_, 4
	note C_, 4
	note C_, 4
;Bar 25
	note A_, 4
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type2
	callchannel Music_HughBattle_Ch4_Type5
;Bar 26v
	note C_, 4
	note A_, 4
	callchannel Music_HughBattle_Ch4_Type3
	note C_, 2
	note A_, 6
	note C_, 4
	note C_, 4
;Bar 27v
	note __, 16
	note __, 16
;Bar 28v
	note A#, 2
	note A#, 2
	note A_, 4
	note A#, 4
	note A_, 4
	note A#, 4
	note A_, 4
	note A#, 4
	note A_, 4
;Bar 29v
	note F#, 4
	note A_, 4
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type5
	note C_, 4
	note C_, 2
	note C_, 2
;Bar 30v
	note C_, 4
	note A_, 4
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 4
	note A_, 4
	note C_, 4
	note C_, 2
	note C_, 2
;Bar 31v
	callchannel Music_HughBattle_Ch4_Bar31
;Bar 32v
	note __, 2
	note F#, 6
	note F#, 6
	note F#, 6
	note F#, 12
;Bar 33v
	note F#, 4
	note A_, 4
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type5
	note C_, 4
	note C_, 2
	note C_, 2
;Bar 34v
	note C_, 4
	note A_, 4
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type5
	note C_, 4
	note C_, 2
	note C_, 2
;Bar 35v
	callchannel Music_HughBattle_Ch4_Bar31
;Bar 36v
	note __, 2
	note F#, 6
	note F#, 6
	note F#, 6
	note F#, 12
;Bar 37v
	note F#, 4
	callchannel Music_HughBattle_Ch4_Type6
	callchannel Music_HughBattle_Ch4_Type4
	callchannel Music_HughBattle_Ch4_Type6
;Bar 38v
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type6
	callchannel Music_HughBattle_Ch4_Type4
	callchannel Music_HughBattle_Ch4_Type6
;Bar 39v
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type6
	callchannel Music_HughBattle_Ch4_Type4
	callchannel Music_HughBattle_Ch4_Type6
;Bar 40v
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type6
	callchannel Music_HughBattle_Ch4_Type4
	callchannel Music_HughBattle_Ch4_Type6
;Bar 41v
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type6
	callchannel Music_HughBattle_Ch4_Type4
	callchannel Music_HughBattle_Ch4_Type6
;Bar 42v
	note C_, 4 
	callchannel Music_HughBattle_Ch4_Type6 ;12
	callchannel Music_HughBattle_Ch4_Type4 ;4
	callchannel Music_HughBattle_Ch4_Type6 ;12
;Bar 43v
	note C_, 4
	callchannel Music_HughBattle_Ch4_Type6
	callchannel Music_HughBattle_Ch4_Type4
	callchannel Music_HughBattle_Ch4_Type6
;Bar 44v
	note C_, 4
	note C#, 2
	note C_, 2
	note C_, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note C#, 1
	note C_, 1
	note C_, 1
	note C_, 1
	callchannel Music_HughBattle_Ch4_Type6
	loopchannel 0, Music_HughBattle_Ch4_loop

Music_HughBattle_Ch4_Type1:
	note C_, 2;
	loopchannel 12, Music_HughBattle_Ch4_Type1
	endchannel

Music_HughBattle_Ch4_Type2:
	note C_, 2
	loopchannel 6, Music_HughBattle_Ch4_Type2
	endchannel

Music_HughBattle_Ch4_Type3:
	note C_, 2
	loopchannel 4, Music_HughBattle_Ch4_Type3
	endchannel

Music_HughBattle_Ch4_Type4:
	note C_, 1
	loopchannel 4, Music_HughBattle_Ch4_Type4
	endchannel

Music_HughBattle_Ch4_Type5:
	note C_, 2;
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	endchannel

Music_HughBattle_Ch4_Type6:
	note C_, 2;
	note C_, 2
	note C#, 4
	note C_, 2
	note C_, 2
	endchannel

Music_HughBattle_Ch4_Type7:
	note F#, 5;
	note A_, 1
	note A_, 2
	note F#, 4
	note A_, 5
	note A_, 1
	note A_, 6
	note F#, 5
	endchannel
	
Music_HughBattle_Ch4_Bar31:
	note C_, 4;
	note C_, 2
	note C_, 2
	note C_, 4
	note A_, 4
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	endchannel