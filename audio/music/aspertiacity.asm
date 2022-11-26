Music_AspertiaCity:
	musicheader 4, 1, Music_AspertiaCity_Ch1
	musicheader 1, 2, Music_AspertiaCity_Ch2
	musicheader 1, 3, Music_AspertiaCity_Ch3
	musicheader 1, 4, Music_AspertiaCity_Ch4

Music_AspertiaCity_Ch1:
	volume $77
	dutycycle $3
	notetype 12, $a7
	stereopanning $f0
	tempo 222
;Bar 1
	callchannel Music_AspertiaCity_Ch1_Bar1
;Bar 2
	callchannel Music_AspertiaCity_Ch1_Bar2
;Bar 3
	callchannel Music_AspertiaCity_Ch1_Bar1
;Bar 4
	note E_, 1
	octave 3
	note C_, 1
	note E_, 1
	note F#, 2
	note E_, 1
	note C_, 1
	octave 2
	note F#, 1
	note E_, 1
	octave 3
	note C_, 1
	note E_, 1
	note C_, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note F#, 1
;Bar 5
Music_AspertiaCity_Ch1_Bar5:
	octave 2
	note E_, 1
	octave 3
	note C#, 1
	note E_, 1
	note F#, 2
	note E_, 1
	note C#, 1
	octave 2
	note F#, 1
	loopchannel 2, Music_AspertiaCity_Ch1_Bar5
;Bar 6
	note E_, 1
	octave 3
	note D_, 1
	note E_, 1
	note F#, 2
	note E_, 1
	note D_, 1
	octave 2
	note F#, 1
	note E_, 1
	octave 3
	note D_, 1
	note E_, 1
	note D_, 1
	note F#, 1
	note E_, 1
	note G#, 1
	note F#, 1
;Bar 7
	octave 2
	note A_, 1
	octave 3
	note E_, 1
	note A_, 1
	note B_, 2
	note A_, 1
	note E_, 1
	octave 2
	note B_, 1
	note A_, 1
	octave 3
	note E_, 1
	note A_, 1
	note E_, 1
	note __, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	octave 4
	note E_, 1
;Bar 8
	octave 2
	note A_, 1
	octave 3
	note E_, 1
	note A_, 1
	octave 4
	note C_, 2
	octave 3
	note A_, 1
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note A_, 1
	octave 4
	note D_, 1
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note E_, 1
	note D_, 1
	note F#, 1
;Bar 9
	octave 3
	dutycycle $2
	note E_, 4
	note D#, 4
	note F#, 4
	note E_, 4
;Bar 10
	note G#, 4
	note F#, 4
	note A_, 4
	note G#, 4
;Bar 11
	note B_, 8
	note __, 13
;Bar 12
	intensity $a7
	dutycycle $3
	octave 2
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 2
	octave 3
	note D_, 4
	note C_, 2
;Bar 13
	octave 2
	note B_, 3
	note A_, 1
	note B_, 9
	note __, 8
;Bar 14
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 2
	octave 3
	note D_, 2
	note __, 2
	note E_, 2
;Bar 15
	note E_, 6
	note __, 1
	note A_, 5
	octave 4
	note C#, 4
;Bar 16
	octave 3
	note E_, 6
	note __, 1
	note A_, 5
	notetype 6, $a7
	note C_, 1
	note E_, 1
	note F#, 1
	note A_, 1
	octave 4
	note C_, 1
	note D#, 1
	note F#, 1
	note A_, 1
;Bar 17
	notetype 12, $a7
	note F#, 4
	note E_, 4
	note D_, 4
	octave 3
	note B_, 4
;Bar 18
	notetype 8, $a7
	note D_, 1
	octave 2
	note B_, 1
	note G_, 1
	note E_, 1
	note G_, 1
	note B_, 1
	octave 3
	note G_, 1
	note E_, 1
	note C#, 1
	octave 2
	note A_, 1
	octave 3
	note C#, 1
	note E_, 1
	note A_, 1
	note G_, 1
	note E_, 1
	note C#, 1
	note E_, 1
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	note F#, 1
	note D#, 1
	note F#, 1
	note A_, 1
;Bar 19
	notetype 12, $a7
	octave 2
	note B_, 5
	note __, 1
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note A_, 2
	note B_, 1
	note F#, 2
	note E_, 2
	octave 3
	note D_, 1
;Bar 20
	octave 2
	note A_, 5
	note __, 1
	note B_, 1
	note A_, 1
	note G#, 1
	octave 3
	note E_, 1
	note B_, 1
	note E_, 1
	note B_, 1
	note E_, 1
	note D_, 1
	octave 2
	note B_, 1
;Bar 21
	octave 3
	note C_, 5
	note __, 1
	note E_, 1
	note D_, 1
	note C_, 2
	octave 2
	note A_, 1
	note B_, 1
	note A_, 3
	note B_, 1
;Bar 22
	note F#, 5
	note __, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note B_, 1
	octave 3
	note B_, 1
	note F_, 1
	note B_, 1
	note F_, 1
	note B_, 1
	octave 4
	note D_, 1
;Bar 23
	octave 3
	note E_, 1
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 2
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	octave 3
	note D#, 1
	note B_, 1
	note D#, 1
	note B_, 1
	note D#, 1
	note B_, 1
	octave 4
	note D#, 1
;Bar 24
	octave 3
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	note B_, 1
	note D#, 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	note B_, 1
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G_, 1
	note E_, 1
;Bar 25
	note G_, 5
	note __, 1
	note G_, 1
	note G_, 1
	note D#, 4
	note C_, 1
	note C_, 1
	note __, 1
	note C_, 1
;Bar 26
	callchannel Music_AspertiaCity_Ch1_Bar1
;Bar 27
	callchannel Music_AspertiaCity_Ch1_Bar2
	loopchannel 0, Music_AspertiaCity_Ch1

Music_AspertiaCity_Ch1_Bar1:
	octave 2
	note E_, 1;
	note B_, 1
	octave 3
	note E_, 1
	note F#, 2
	note E_, 1
	octave 2
	note B_, 1
	note F#, 1
	note E_, 1
	note B_, 1
	octave 3
	note E_, 1
	note F#, 2
	note E_, 1
	octave 2
	note B_, 1
	note F#, 1
	endchannel

Music_AspertiaCity_Ch1_Bar2:
	note E_, 1;
	note B_, 1
	octave 3
	note E_, 1
	note F#, 2
	note E_, 1
	octave 2
	note B_, 1
	note F#, 1
	note E_, 1
	note B_, 1
	octave 3
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note G#, 1
	note F#, 1
	note E_, 1
	note F#, 1
	endchannel

; ============================================================================================================

Music_AspertiaCity_Ch2:
	dutycycle $1
	notetype 12, $c7
	vibrato $12, $14
;Bar 1
	note __, 16
;Bar 2
	note __, 12
	octave 3
	note B_, 4
;Bar 3
	octave 4
	note F#, 2
	note E_, 1
	octave 3
	note B_, 3
	octave 4
	note E_, 1
	note F#, 3
	note E_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note D#, 1
	note E_, 1
;Bar 4
	note F#, 3
	note __, 2
	note E_, 1
	note F#, 1
	note G#, 5
	note __, 4
;Bar 5
	note F#, 2
	note E_, 1
	octave 3
	note B_, 3
	octave 4
	note E_, 1
	note F#, 3
	note E_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note E_, 1
	note D_, 7
;Bar 6
	note C#, 1
	octave 3
	note B_, 3
	note __, 2
	note G#, 4
;Bar 7
	octave 5
	intensity $5d
	note C#, 3
	intensity $c7
	octave 4
	note B_, 1
	note B_, 1
	note A_, 1
	note __, 1
	note A_, 5
	note __, 2
	note E_, 1
	note E_, 1
;Bar 8
	octave 5
	note C_, 2
	octave 4
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note A_, 1
	note A_, 5
	note __, 2
	note G#, 1
	note A_, 1
;Bar 9
	intensity $c8
	note B_, 14
	intensity $c7
	note B_, 10
;Bar 10
	note __, 14
;Bar 11
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note F#, 2
	note E_, 1
	note F#, 1
	note __, 1
	note F#, 1
	note G#, 1
	note __, 1
;Bar 12
	octave 3
	note B_, 3
	note A_, 1
	note B_, 3
	note __, 13
;Bar 13
	note __, 1
	notetype 3, $c7
	note G_, 1
	note G#, 3
	notetype 12, $c7
	note B_, 1
	octave 4
	note E_, 1
	note F#, 2
	note E_, 1
	note F#, 2
	note F#, 1
	notetype 6, $c7
	note G#, 3
	note A#, 1
	notetype 12, $c7
;Bar 14
	note B_, 3
	note A_, 1
	note B_, 3
	note __, 8
	note B_, 1
;Bar 15
	octave 5
	note C#, 3
	octave 4
	note B_, 1
	note B_, 1
	note A_, 1
	note __, 1
	note A_, 5
	note __, 2
	note E_, 1
	note E_, 1
;Bar 16
	octave 5
	note C_, 2
	octave 4
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note A_, 1
	note A_, 5
	note __, 2
	note G#, 1
	note A_, 1
;Bar 17
	intensity $c8
	note B_, 6
	intensity $c7
	note B_, 10
;Bar 18
	note D_, 4
	note C#, 4
	note E_, 4
	note F#, 4
;Bar 19
	note E_, 5
	note __, 1
	note E_, 1
	note E_, 1
	note G_, 2
	note A_, 1
	note F#, 2
	note E_, 2
	note __, 1
;Bar 20
	note D_, 4
	note A_, 4
	note G#, 2
	note F#, 1
	note G#, 1
	note __, 1
	note A_, 1
	note B_, 1
	note __, 1
;Bar 21
	octave 3
	note G_, 5
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note C_, 2
	note D_, 1
	octave 3
	note B_, 2
	note A_, 2
	note __, 1
;Bar 22
	note B_, 4
	octave 4
	note F#, 4
	note F_, 2
	note E_, 1
	note F_, 1
	note __, 1
	note E_, 1
	note D_, 1
	note __, 1
;Bar 23
	note C_, 5
	note __, 1
	note E_, 1
	note E_, 1
	note D#, 1
	note __, 1
	note D#, 1
	note E_, 2
	note __, 1
	note F#, 2
;Bar 24
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 1
	note G_, 2
	note A_, 1
	note __, 1
	note B_, 2
	octave 5
	note E_, 6
;Bar 25
	note __, 1
	octave 4
	note G_, 1
	note G_, 1
	note F#, 1
	note __, 1
	note G_, 1
	note A_, 4
	note F#, 1
;Bar 26
	intensity $c8
	note G#, 6
	intensity $c7
	note G#, 10
;Bar 27
	note __, 16
	loopchannel 0, Music_AspertiaCity_Ch2

; ============================================================================================================

Music_AspertiaCity_Ch3:
	notetype 12, $16
	stereopanning $f
;Bar 1
	octave 2
	note E_, 12
	note __, 2
	octave 1
	note B_, 1
	note __, 1
;Bar 2
	octave 2
	note E_, 12
	note __, 4
;Bar 3
	note E_, 12
	note __, 2
	octave 1
	note B_, 1
	note __, 1
;Bar 4
	octave 2
	note E_, 12
	note __, 2
	note C#, 2
;Bar 5
	note E_, 12
	note __, 2
	octave 1
	note B_, 2
;Bar 6
	octave 2
	note E_, 12
	note __, 2
	octave 1
	note B_, 2
;Bar 7
	octave 2
	note A_, 7
	octave 3
	note E_, 1
	note C_, 6
	octave 2
	note B_, 2
;Bar 8
	note A_, 4
	octave 3
	note C_, 4
	note D_, 4
	note F#, 3
	note E_, 1
;Bar 9
	octave 2
	note B_, 4
	octave 3
	note E_, 4
	note C#, 4
	octave 2
	note B_, 4
;Bar 10
	note A_, 4
	note F#, 4
	note B_, 4
	note B_, 4
;Bar 11
	note E_, 1
	note __, 5
	note E_, 1
	note E_, 1
	note __, 2
	note D#, 2
	note E_, 1
	note __, 1
	octave 1
	note B_, 2
;Bar 12
	octave 2
	note E_, 1
	note __, 5
	note E_, 1
	note E_, 1
	note __, 4
	note D#, 4
;Bar 13
	note E_, 1
	note __, 5
	note E_, 1
	note E_, 1
	note __, 2
	note D#, 2
	note E_, 1
	note __, 1
	octave 1
	note B_, 2
;Bar 14
	octave 2
	note E_, 1
	note __, 5
	note E_, 1
	note E_, 1
	note G#, 1
	note D_, 1
	note __, 1
	octave 1
	note B_, 3
	note G#, 2
;Bar 15
	octave 2
	note A_, 1
	note A_, 1
	note __, 4
	note A_, 1
	note A_, 1
	note __, 2
	note G#, 2
	note A_, 1
	note __, 1
	note E_, 2
;Bar 16
	note A_, 1
	note A_, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note D_, 1
	note __, 2
	note C#, 2
	note D_, 1
	note __, 1
	note F#, 2
;Bar 17
	note G_, 1
	note __, 5
	note G_, 1
	note G_, 1
	note __, 2
	note G_, 2
	note G_, 1
	note G_, 1
	note E_, 2
;Bar 18
	note A_, 1
	note __, 5
	note G#, 1
	note A_, 1
	note __, 2
	note B_, 2
	note A_, 1
	note A_, 1
	note F#, 2
;Bar 19
	note C_, 1
	note C_, 1
	note __, 4
	note C_, 1
	note C_, 1
	note __, 2
	note C_, 1
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note D_, 1
	octave 1
	note A_, 2
;Bar 20
	note B_, 1
	note B_, 1
	note __, 4
	octave 2
	note B_, 1
	note B_, 1
	note __, 2
	note E_, 2
	note E_, 1
	note E_, 1
	note D_, 2
;Bar 21
	note A_, 1
	note A_, 1
	note C_, 2
	note C_, 1
	note __, 1
	note A_, 1
	note A_, 1
	note __, 2
	note A_, 2
	note A_, 1
	note D_, 1
	note __, 1
	note C_, 1
;Bar 22
	note G_, 1
	note G_, 1
	note __, 4
	note G_, 1
	note G_, 1
	note __, 2
	note G#, 2
	note G#, 1
	note E_, 1
	note __, 1
	note C_, 1
;Bar 23
	octave 3
	note C_, 1
	note C_, 1
	octave 2
	note C_, 2
	note C_, 1
	note __, 1
	octave 3
	note C_, 1
	note C_, 1
	note __, 2
	octave 2
	note B_, 2
	note B_, 1
	note B_, 1
	octave 1
	note B_, 2
;Bar 24
	octave 2
	note E_, 4
	note D#, 4
	note D_, 2
	note C#, 2
	note C_, 2
	octave 1
	note B_, 2
;Bar 25
	octave 2
	note A_, 1
	note A_, 1
	note D_, 2
	note D_, 1
	note __, 1
	note A_, 1
	note A_, 1
	note __, 2
	note D_, 2
	octave 3
	note C_, 1
	octave 2
	note D_, 1
	note __, 1
	note A_, 1
;Bar 26
Music_AspertiaCity_Ch3_Bar26:
	note E_, 1
	note E_, 1
	note __, 4
	note E_, 1
	note E_, 1
	note __, 2
	note E_, 2
	note E_, 1
	octave 1
	note B_, 1
	note __, 1
	note B_, 1
	loopchannel 2, Music_AspertiaCity_Ch3_Bar26
	loopchannel 0, Music_AspertiaCity_Ch3

; ============================================================================================================

Music_AspertiaCity_Ch4:
	togglenoise 3
	notetype 12
;Bar 1
	note __, 16
Music_AspertiaCity_Ch4_loop:
	notetype 12
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 8
;Bar 10
	notetype 6
	note C#, 1
	note C_, 1
	note F#, 4
	note F#, 2
	note C_, 2
	note C_, 2
	note F#, 4
;Bar 11
	note A#, 4
	note F#, 4
	note C_, 4
	note A#, 2
	note A#, 2
	note C#, 4
	note F#, 4
	note C_, 8
;Bar 12
	note A#, 2
	note C#, 2
	note F#, 2
	note A#, 2
	note C_, 4
	note A#, 2
	note A#, 2
	note C#, 4
	note F#, 4
	note C_, 6
	note C_, 2
;Bar 13
	note A#, 4
	note F#, 4
	note C_, 4
	note A#, 2
	note A#, 2
	note C#, 4
	note F#, 4
	note C_, 4
	note C#, 4
;Bar 14
	note A#, 4
	note F#, 4
	note C_, 4
	note A#, 2
	note A#, 2
	note C_, 2
	note A#, 2
	note F#, 2
	note A#, 2
	note C_, 2
	note C_, 2
	note F#, 4
;Bar 15
	callchannel Music_AspertiaCity_Ch4_Type2
	note A#, 2
	note C#, 4
	note F#, 4
	note C_, 4
	note A#, 4
;Bar 16
	note A#, 2
	note A#, 2
	callchannel Music_AspertiaCity_Ch4_Type1
;Bar 17
	note A#, 4
	note F#, 4
	note C_, 4
	note A#, 2
	note A#, 2
	note C#, 2
	note C#, 2
	note F#, 4
	note C_, 2
	note A#, 4
	note A#, 2
;Bar 18
	note A#, 4
	callchannel Music_AspertiaCity_Ch4_Type1
;Bar 19
	callchannel Music_AspertiaCity_Ch4_Type2
	note C_, 2
	note C#, 4
	note F#, 4
	note C_, 2
	note C_, 2
	note C#, 4
;Bar 20
	callchannel Music_AspertiaCity_Ch4_Type2
	note A#, 2
	note C#, 4
	note F#, 4
	note A#, 2
	note A#, 2
	note C#, 2
	note C_, 2
;Bar 21
	note A#, 2
	note C_, 2
	note F#, 4
	note C_, 4
	note A#, 2
	note C_, 2
	note C#, 4
	note F#, 4
	note C_, 2
	note C_, 2
	note F#, 4
;Bar 22
	callchannel Music_AspertiaCity_Ch4_Type2
	note A#, 2
	note C#, 2
	note C#, 2
	note F#, 4
	note C_, 4
	note A#, 2
	note C_, 2
;Bar 23
	callchannel Music_AspertiaCity_Ch4_Type2
	note C_, 2
	note C#, 2
	note C#, 2
	note F#, 4
	note C_, 2
	note C#, 2
	note C#, 2
	note C_, 2
;Bar 24
	note A#, 2
	note A#, 2
	note F#, 4
	note C_, 2
	note C_, 2
	note A#, 2
	note C#, 2
	note C_, 2
	note A#, 2
	note F#, 2
	note C_, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note A#, 2
;Bar 25
	callchannel Music_AspertiaCity_Ch4_Type2
	note A#, 2
	note C#, 2
	note C#, 2
	note F#, 4
	note C_, 2
	note C#, 2
	note F#, 2
	note A#, 2
;Bar 26
	callchannel Music_AspertiaCity_Ch4_Type2
	note C_, 2
	note C#, 4
	note F#, 4
	note C_, 4
	note C#, 2
	note A#, 2
;Bar 27
	note A#, 2
	note A#, 10
	note A#, 2
	note A#, 6
	note A#, 4
	note A#, 2
	note A#, 6
;Bar 28
	note A#, 1
	note __, 15
	loopchannel 0, Music_AspertiaCity_Ch4_loop

Music_AspertiaCity_Ch4_Type1:
	note F#, 4;
	note C_, 4
	note A#, 2
	note A#, 2
	note C#, 2
	note C#, 2
	note F#, 4
	note C_, 8
	endchannel

Music_AspertiaCity_Ch4_Type2:
	note A#, 2;
	note A#, 2
	note F#, 4
	note C_, 4
	note A#, 2
	endchannel