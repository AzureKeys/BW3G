;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BWEnding:
	musicheader 4, 1, Music_BWEnding_Ch1
	musicheader 1, 2, Music_BWEnding_Ch2
	musicheader 1, 3, Music_BWEnding_Ch3
	musicheader 1, 4, Music_BWEnding_Ch4

Music_BWEnding_Ch1:
	volume $77
	dutycycle $3
	notetype 8, $98
	stereopanning $f
	tempo 120
;Bar 1
	note __, 12
	octave 3
	note F_, 12
;Bar 2
	note A#, 12
	note G#, 12
;Bar 3
	note F#, 12
	notetype 16, $98
	note F_, 9
	notetype 8, $98
;Bar 4
	note A#, 6
	note G#, 12
;Bar 5
	octave 4
	note C_, 12
	octave 3
	note A#, 12
;Bar 6
	octave 4
	note C#, 12
	note C_, 12
;Bar 7
	note D#, 12
	note C#, 12
;Bar 8
	note F_, 12
	note D#, 12
;Bar 9
	intensity $a7
	note C#, 2
	note C_, 2
	note C#, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	note A#, 2
	note C#, 1
	note __, 5
	note C#, 1
	note __, 5
;Bar 10
	note C#, 1
	note __, 5
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C_, 1
	note __, 5
	note C_, 1
	note __, 5
;Bar 11
	note C_, 1
	note __, 5
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note A#, 1
	note __, 5
	note A#, 1
	note __, 5
;Bar 12
	note A#, 1
	note __, 5
	note A#, 1
	note __, 5
	note G#, 1
	note __, 5
	octave 4
	note C_, 2
	note C#, 2
	note D#, 2
;Bar 13
	note F_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	octave 3
	note G#, 2
	note A#, 1
	note __, 5
	note A#, 1
	note __, 5
;Bar 14
	note A#, 1
	note __, 5
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note G#, 1
	note __, 5
	note G#, 1
	note __, 5
;Bar 15
	note G#, 1
	note __, 5
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note A#, 1
	note __, 5
	note A#, 1
	note __, 5
;Bar 16
	note A#, 1
	note __, 5
	note A#, 1
	note __, 5
	octave 4
	note C_, 1
	note __, 5
	note C_, 2
	note C#, 2
	note D#, 2
;Bar 17
	note F_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note __, 2
	note D#, 6
	note D#, 2
	note F_, 2
	note D#, 2
;Bar 18
	note C#, 6
	octave 3
	note A#, 5
	note __, 1
	note B_, 5
	note __, 1
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
;Bar 19
	note A#, 6
	note F#, 6
	note G#, 5
	note __, 1
	note G#, 2
	note A#, 2
	note G#, 2
;Bar 20
	note F#, 6
	note A#, 5
	note __, 1
	note A_, 6
	note F_, 5
	note __, 1
;Bar 21
	note A#, 5
	note __, 1
	octave 4
	note D_, 5
	note __, 1
	note E_, 5
	note __, 1
	note E_, 2
	note D_, 2
	note C_, 2
;Bar 22
	octave 3
	note B_, 5
	note __, 1
	octave 4
	note D_, 6
	note C_, 5
	note __, 1
	note C_, 2
	note D_, 2
	note C_, 2
;Bar 23
	octave 3
	note B_, 6
	note G_, 6
	note A_, 5
	note __, 1
	note A_, 2
	note B_, 2
	note A_, 2
;Bar 24
	note G_, 6
	note B_, 6
	note A#, 6
	octave 4
	note C#, 6
;Bar 25
	octave 3
	note B_, 6
	octave 4
	note D#, 6
	note E_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note E_, 2
	octave 3
	note G_, 2
;Bar 26
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note E_, 2
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 2
;Bar 27
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
;Bar 28
	octave 4
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note A_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	octave 3
	note B_, 2
	octave 4
	note G_, 2
	octave 3
	note B_, 2
	octave 4
	note F#, 2
;Bar 29
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	stereopanning $f0
	notetype 12, $98
	note B_, 16
;Bar 30
	octave 4
	note C#, 8
;Bar 31
	octave 3
	note A_, 8
	note B_, 16
;Bar 32
	note A_, 8
;Bar 33
	note F#, 8
	note G_, 16
;Bar 34
	note A_, 8
;Bar 35
	octave 4
	note C#, 8
	octave 3
	note B_, 16
;Bar 36
	note A_, 8
;Bar 37
	note F#, 8
	stereopanning $f
	note E_, 8
;Bar 38
	note F#, 8
	note G_, 8
;Bar 39
	note D_, 4
	note F#, 4
	note E_, 8
;Bar 40
	note F#, 8
	note G_, 8
;Bar 41
	note D_, 4
	note G_, 4
	note G_, 8
;Bar 42
	note E_, 8
	note F#, 8
;Bar 43
	note A_, 4
	note F#, 4
	note G_, 8
;Bar 44
	note C_, 8
	note D_, 8
;Bar 45
	note D#, 8
	note E_, 8
;Bar 46
	note F#, 8
	note G_, 8
;Bar 47
	note D_, 4
	note F#, 4
	note E_, 8
;Bar 48
	note F#, 8
	note G_, 8
;Bar 49
	note D_, 4
	note G_, 4
	note G_, 8
;Bar 50
	note E_, 8
	note F#, 8
;Bar 51
	note A_, 4
	note F#, 4
	note G_, 8
;Bar 52
	note C_, 8
	note D_, 8
;Bar 53
	octave 2
	note A_, 8
	notetype 8, $a7
	octave 3
	note B_, 1
	note __, 3
	note B_, 1
	note __, 1
	note B_, 1
	note __, 3
	note B_, 1
	note __, 1
;Bar 54
	note B_, 1
	note __, 3
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 16
	note __, 7
;Bar 55
	notetype 12, $98
	note E_, 16
;Bar 56
	note G_, 8
;Bar 57
	note A_, 8
	note B_, 16
;Bar 58
	note D_, 8
;Bar 59
	note F#, 8
	note G_, 16
;Bar 60
	note E_, 8
;Bar 61
	note G_, 8
	note A_, 16
;Bar 62
	note F#, 16
;Bar 63
	note A_, 16
;Bar 64
	note A_, 16
;Bar 65
	intensity $98
	note G_, 16
	intensity $97
	note G_, 16
;Bar 67
	intensity $98
	note A_, 16
;Bar 68
	note E_, 8
;Bar 69
	note G_, 8
	note F#, 16
;Bar 70
	note E_, 8
;Bar 71
	note D_, 8
	dutycycle $0
	notetype 8, $e7
	callchannel Music_BWEnding_Ch1_2_Trombone
	intensity $c7
	octave 2
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note B_, 12
;Bar 80
	note G_, 2
	note A_, 2
	octave 3
	note D_, 2
	note C#, 12
;Bar 81
	octave 2
	note B_, 6
	note A_, 6
	note B_, 2
	note __, 2
	note G_, 1
	note __, 1
	note A_, 12
;Bar 82
	note G_, 2
	note F#, 2
	note D_, 2
	note E_, 12
;Bar 83
	note D_, 6
	note F#, 6
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note B_, 12
;Bar 84
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	note C#, 11
	note __, 1
;Bar 85
	octave 2
	note B_, 6
	note A_, 6
	note B_, 2
	note __, 2
	note G_, 1
	note __, 1
	note A_, 12
;Bar 86
	note G_, 2
	octave 3
	note D_, 2
	note F#, 2
	note E_, 12
;Bar 87
	note D_, 6
	note F#, 6
	note __, 6
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	note E_, 2
;Bar 88
	note A_, 2
	note F#, 2
	note D_, 2
	note E_, 2
	note E_, 1
	note __, 9
	note D_, 1
	note __, 1
	notetype 16, $c8
	note D_, 15
	intensity $c7
	note D_, 15
	note __, 1
	endchannel

Music_BWEnding_Ch1_2_Trombone:
	octave 2
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note B_, 12
;Bar 30
	note G_, 2
	note A_, 2
	octave 3
	note D_, 2
	note C#, 12
;Bar 31
	octave 2
	note B_, 6
	note A_, 6
	note G_, 2
	note __, 2
	note D_, 1
	note __, 1
	note E_, 12
;Bar 32
	note D_, 2
	note F#, 2
	note D_, 2
	note E_, 12
;Bar 33
	note D_, 12
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note B_, 12
;Bar 34
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	note C#, 12
;Bar 35
	octave 2
	note B_, 6
	note A_, 6
	note B_, 2
	note __, 2
	note G_, 1
	note __, 1
	note A_, 12
;Bar 36
	note G_, 2
	octave 3
	note D_, 2
	note F#, 2
	note E_, 12
;Bar 37
	note D_, 12
	endchannel

; ============================================================================================================

Music_BWEnding_Ch2:
	dutycycle $1
	notetype 8, $c7
	stereopanning $f0
;Bar 1
	note __, 12
	pitchoffset 1, C_
	callchannel Music_BWEnding_Ch2_Intro
	pitchoffset 0, C_
	callchannel Music_BWEnding_Ch2_Intro
	octave 3
	note A#, 12
;Bar 10
	note F_, 6
	note A#, 6
	note G#, 12
;Bar 11
	note D#, 6
	note F#, 2
	note F_, 2
	note D#, 2
	note F_, 12
;Bar 12
	note C#, 6
	note D#, 2
	note C#, 2
	note C_, 2
	octave 2
	note G#, 16
	note __, 8
;Bar 13
	octave 3
	note A#, 12
;Bar 14
	note F_, 6
	note A#, 6
	note G#, 12
;Bar 15
	note F_, 6
	octave 4
	note C#, 2
	note C_, 2
	octave 3
	note G#, 2
	note A#, 12
;Bar 16
	octave 4
	note C#, 6
	note C_, 2
	note C#, 2
	note D#, 2
	note F_, 8
	note F#, 2
	note F_, 2
;Bar 17
	note D#, 8
	note D#, 2
	note F_, 2
	note F#, 8
	note F_, 2
	note D#, 2
;Bar 18
	note F_, 6
	note C#, 6
	note D#, 8
	note F_, 2
	note F#, 2
;Bar 19
	note C#, 6
	octave 3
	note F#, 6
	note B_, 8
	octave 4
	note C#, 2
	note D#, 2
;Bar 20
	octave 3
	note A#, 6
	note F#, 6
	notetype 4, $a1
Music_BWEnding_Ch2_Bar20:
	note F_, 1
	note F#, 1
	loopchannel 12, Music_BWEnding_Ch2_Bar20
;Bar 21
	notetype 8, $c7
	note A#, 6
	octave 4
	note D_, 6
	note G_, 8
	note F#, 2
	note E_, 2
;Bar 22
	note F#, 6
	note D_, 6
	note E_, 8
	note F#, 2
	note G_, 2
;Bar 23
	note D_, 6
	octave 3
	note G_, 6
	octave 4
	note C_, 8
	note D_, 2
	note E_, 2
;Bar 24
	octave 3
	note B_, 6
	octave 4
	note E_, 6
	note G_, 12
;Bar 25
	note F#, 12
	note F#, 12
;Bar 26
	notetype 16, $c8
	note E_, 6
	note E_, 9
	notetype 8, $c7
;Bar 27
	note F#, 2
	note E_, 2
	note D_, 2
	notetype 16, $c8
	note E_, 15
	intensity $c7
	note E_, 9
;Bar 28
;Bar 29
	notetype 8, $e7
	dutycycle $0
	stereopanning $f
	callchannel Music_BWEnding_Ch1_2_Trombone
	dutycycle $1
	intensity $c7
	stereopanning $f0
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 38
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note G_, 2
	note F#, 2
	note E_, 2
;Bar 39
	note D_, 6
	octave 2
	note B_, 6
	octave 3
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 40
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note F#, 2
	note G_, 2
	note A_, 2
;Bar 41
	note B_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 42
	note E_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 43
	note F#, 6
	note D_, 6
	note E_, 8
	note F#, 2
	note G_, 2
;Bar 44
	note D_, 6
	note A_, 6
	note G_, 12
;Bar 45
	note F#, 6
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	notetype 4, $c7
	note C_, 1
	note D_, 1
	notetype 8, $c7
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 46
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note G_, 2
	note F#, 2
	note E_, 2
;Bar 47
	note D_, 6
	octave 3
	note B_, 6
	octave 4
	note E_, 6
	note E_, 2
	note D_, 2
	note E_, 2
;Bar 48
	note F#, 6
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 6
	note F#, 2
	note G_, 2
	note A_, 2
;Bar 49
	note B_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 50
	note E_, 12
	note B_, 8
	note A_, 2
	note B_, 2
;Bar 51
	note F#, 6
	note D_, 6
	note E_, 8
	note F#, 2
	note G_, 2
;Bar 52
	note D_, 6
	note A_, 6
	note F#, 6
	note B_, 6
;Bar 53
	note F#, 6
	note D_, 6
	notetype 16, $c7
	note E_, 9
	notetype 8, $c7
;Bar 54
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note __, 4
	octave 3
	note B_, 6
;Bar 55
	octave 4
	note E_, 6
	note B_, 6
	note B_, 12
;Bar 56
	note A_, 12
	note G_, 12
;Bar 57
	note A_, 12
	notetype 16, $c7
	note B_, 12
	note __, 3
	notetype 8, $c7
;Bar 58
	octave 3
	note B_, 6
;Bar 59
	octave 4
	note E_, 6
	note B_, 6
	note B_, 12
;Bar 60
	note A_, 12
	note G_, 12
;Bar 61
	octave 5
	note D_, 8
	note C#, 2
	note C_, 2
	octave 4
	notetype 16, $c7
	note B_, 12
	note __, 3
	notetype 8, $c7
;Bar 62
	note F#, 6
;Bar 63
	note B_, 6
	octave 5
	note C#, 6
	note D_, 12
;Bar 64
	note E_, 12
	note C#, 12
;Bar 65
	octave 4
	note A_, 6
	note B_, 6
	octave 5
	notetype 16, $c7
	note C_, 10
	notetype 8, $c7
;Bar 66
	octave 4
	note B_, 2
	note A_, 2
	note G_, 12
;Bar 67
	note D_, 12
	notetype 16, $c7
	note A_, 12
	notetype 8, $c7
;Bar 68
	note E_, 12
;Bar 69
	note B_, 12
	notetype 16, $c7
	note F#, 12
	notetype 8, $c7
;Bar 70
	note E_, 12
;Bar 71
	note D_, 12
	notetype 16, $c7
	note E_, 12
	notetype 8, $97
;Bar 72
	octave 3
	note A_, 1
	note __, 5
	note A_, 1
	note __, 5
;Bar 73
Music_BWEnding_Ch2_Bar73_74:
	note A_, 1
	note __, 5
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note B_, 1
	note __, 5
	note B_, 1
	note __, 5
;Bar 74
	note B_, 1
	note __, 5
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note A_, 1
	note __, 5
	note A_, 1
	note __, 5
	loopchannel 3, Music_BWEnding_Ch2_Bar73_74
;Bar 79
	note A_, 1
	note __, 5
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	callchannel Music_BWEnding_Ch2_Type1
;Bar 80
	callchannel Music_BWEnding_Ch2_Type1
	pitchoffset 1, C_
	callchannel Music_BWEnding_Ch2_Type2
	pitchoffset 0, C_
;Bar 81
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F#, 2
	callchannel Music_BWEnding_Ch2_Type1
;Bar 82
	callchannel Music_BWEnding_Ch2_Type1
	pitchoffset 1, C_
	callchannel Music_BWEnding_Ch2_Type2
	pitchoffset 0, C_
;Bar 83
	octave 4
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	callchannel Music_BWEnding_Ch2_Type1
;Bar 84
	callchannel Music_BWEnding_Ch2_Type1
	callchannel Music_BWEnding_Ch2_Type2
;Bar 85
	octave 5
	note D_, 2
	octave 4
	note B_, 2
	note G_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note F#, 2
	callchannel Music_BWEnding_Ch2_Type1
;Bar 86
	callchannel Music_BWEnding_Ch2_Type1
	callchannel Music_BWEnding_Ch2_Type2
;Bar 87
	octave 5
	note D_, 2
	note C#, 2
	note D_, 2
	note D_, 2
	note F#, 2
	note A_, 2
	note __, 6
	note E_, 2
	octave 4
	note B_, 2
	note E_, 2
;Bar 88
	note A_, 2
	note F#, 2
	note D_, 2
	note E_, 2
	note E_, 2
	note __, 8
	octave 3
	note F#, 1
	note __, 1
	notetype 16, $c8
	note F#, 15
	intensity $c7
	note F#, 15
	note __, 1
	endchannel

Music_BWEnding_Ch2_Type1:
	note E_, 2;
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	endchannel

Music_BWEnding_Ch2_Type2:
	octave 4
	note E_, 2;
	note G_, 2
	note B_, 2
	octave 5
	note E_, 2
	octave 4
	note B_, 2
	note G_, 2
	endchannel

Music_BWEnding_Ch2_Intro:
	octave 4
	note A#, 2
	note __, 4
	note A#, 2
	note __, 4
;Bar 6
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
	octave 4
	note A#, 2
	note __, 4
	note A#, 2
	note __, 4
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
;Bar 7
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note C_, 2
	octave 4
	note G#, 2
	note A#, 2
	note __, 4
	note A#, 2
	note __, 4
;Bar 8
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
	octave 4
	note A#, 2
	note __, 4
	note A#, 2
	note __, 4
	note A#, 2
	octave 5
	note C#, 2
	note F_, 2
;Bar 9
	note A#, 2
	note F#, 2
	note C_, 2
	note C#, 2
	note D#, 2
	note C#, 2
	endchannel

; ============================================================================================================

Music_BWEnding_Ch3:
	notetype 8, $16
;Bar 1
	note __, 12
	octave 1
	note A#, 4
	note G#, 1
	note __, 1
	octave 2
	note F_, 4
	note D#, 1
	note __, 1
;Bar 2
	octave 1
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 3
	callchannel Music_BWEnding_Ch3_Bar3
;Bar 4
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 5
	callchannel Music_BWEnding_Ch3_Bar5
;Bar 6
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 7
	callchannel Music_BWEnding_Ch3_Bar3
;Bar 8
	octave 1
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 9
	note C#, 2
	note C_, 2
	note C#, 2
	note F_, 6
	octave 1
	note A#, 4
	note G#, 1
	note __, 1
	octave 2
	note F_, 4
	note D#, 1
	note __, 1
;Bar 10
	octave 1
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 11
	callchannel Music_BWEnding_Ch3_Bar3
;Bar 12
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 13
	callchannel Music_BWEnding_Ch3_Bar5
;Bar 14
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 15
	callchannel Music_BWEnding_Ch3_Bar3
;Bar 16
	octave 1
	callchannel Music_BWEnding_Ch3_Bar2
;Bar 17
	note C#, 2
	note C_, 2
	note C#, 2
	note F_, 6
	note D#, 4
	note C#, 1
	note __, 1
	note F#, 4
	note D#, 1
	note __, 1
;Bar 18
	octave 1
	note A#, 4
	note G#, 1
	note __, 1
	octave 2
	note F_, 4
	note D#, 1
	note __, 1
	octave 1
	note B_, 4
	note F#, 1
	note __, 1
	note B_, 2
	note A#, 2
	note G#, 2
;Bar 19
	note F#, 6
	octave 2
	note C#, 6
	octave 1
	note G#, 4
	note F#, 1
	note __, 1
	octave 2
	note D#, 4
	octave 1
	note B_, 1
	note __, 1
;Bar 20
	octave 2
	note F#, 4
	note C#, 1
	note __, 1
	octave 1
	note A#, 4
	octave 2
	note C#, 1
	note __, 1
	note F_, 4
	note C_, 1
	note __, 1
	note F_, 2
	note C_, 2
	note F_, 2
;Bar 21
	octave 1
	note A#, 6
	octave 2
	note D_, 6
	note E_, 4
	note D_, 1
	note __, 1
	note G_, 4
	note E_, 1
	note __, 1
;Bar 22
	octave 1
	note B_, 4
	note A_, 1
	note __, 1
	octave 2
	note F#, 4
	note E_, 1
	note __, 1
	note C_, 4
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 2
	octave 1
	note B_, 2
	note A_, 2
;Bar 23
	note G_, 6
	octave 2
	note D_, 6
	octave 1
	note A_, 4
	note G_, 1
	note __, 1
	octave 2
	note E_, 4
	note D_, 1
	note __, 1
;Bar 24
	note G_, 4
	note F#, 1
	note __, 1
	octave 1
	note B_, 4
	octave 2
	note D_, 1
	note __, 1
	note F#, 4
	note C#, 1
	note __, 1
	note F#, 2
	note C#, 2
	note F#, 2
;Bar 25
	octave 1
	note B_, 6
	octave 2
	note D#, 6
	note C_, 4
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 2
	octave 1
	note G_, 2
	octave 2
	note C_, 2
;Bar 26
	note C_, 4
	note E_, 1
	note __, 1
	octave 1
	note G_, 4
	octave 2
	note C_, 1
	note __, 1
	note D_, 4
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note D_, 2
;Bar 27
	note D_, 4
	note F#, 1
	note __, 1
	octave 1
	note A_, 4
	octave 2
	note D_, 1
	note __, 1
	note E_, 4
	octave 1
	note B_, 1
	note __, 1
	note E_, 4
	note B_, 1
	note __, 1
;Bar 28
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	note __, 1
	note E_, 4
	note B_, 1
	note __, 1
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	note __, 1
	note E_, 4
	note B_, 1
	note __, 1
;Bar 29
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	note __, 1
	note E_, 4
	note B_, 1
	note __, 1
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	note __, 1
	note E_, 2
	note B_, 2
	octave 2
	note E_, 2
;Bar 30
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 31
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 32
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 33
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 34
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 35
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 36
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 37
	octave 1
	note E_, 6
	note B_, 6
	octave 2
	note C_, 6
	note __, 6
;Bar 38
	note D_, 6
	note __, 6
	note E_, 6
	note __, 6
;Bar 39
	octave 1
	note B_, 6
	note __, 6
	octave 2
	note C_, 6
	note __, 6
;Bar 40
	note D_, 6
	note __, 6
	note E_, 6
	note __, 6
;Bar 41
	note G_, 6
	note __, 6
	octave 1
	note A_, 8
	note __, 16
;Bar 42
	note B_, 8
	note __, 16
;Bar 43
	octave 2
	note C_, 8
	note __, 16
;Bar 44
	note D_, 6
	note __, 6
;Bar 45
	octave 1
	note B_, 6
	note __, 6
	octave 2
	note C_, 6
	note __, 6
;Bar 46
	note D_, 6
	note __, 6
	note E_, 6
	note __, 6
;Bar 47
	octave 1
	note B_, 6
	note __, 6
	octave 2
	note C_, 6
	note __, 6
;Bar 48
	note D_, 6
	note __, 6
	note E_, 12
;Bar 49
	note G_, 5
	note __, 7
	octave 1
	note A_, 8
	note __, 16
;Bar 50
	note B_, 8
	note __, 16
;Bar 51
	octave 2
	note C_, 7
	note __, 16
	note __, 1
;Bar 52
	note D_, 5
	note __, 7
;Bar 53
	octave 1
	note B_, 8
	note __, 4
	octave 2
	note E_, 1
	note __, 5
	note E_, 1
	note __, 5
;Bar 54
	note E_, 1
	note __, 5
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 1
	note __, 16
	note __, 7
;Bar 55
	notetype 12, $16
	octave 2
	note C_, 16
	note C_, 16
;Bar 57
	note G_, 16
	note G_, 16
;Bar 59
	note C_, 16
	note C_, 16
;Bar 61
	note G_, 16
	note G_, 16
;Bar 63
	note B_, 16
;Bar 64
	note F#, 16
;Bar 65
	note A_, 16
;Bar 66
	note E_, 12
;Bar 67
	note D_, 4
	note C_, 16
	note C_, 16
;Bar 69
	note D_, 16
	note D_, 8
	notetype 8, $16
	octave 1
;Bar 71
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note F#, 2
	note G_, 2
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	note __, 1
	note E_, 2
	note B_, 2
	octave 2
	note E_, 2
;Bar 72
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 73
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 74
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 75
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 76
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 77
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 78
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 79
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 80
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 81
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 82
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 83
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 84
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 85
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 86
	callchannel Music_BWEnding_Ch3_Bar30
;Bar 87
	octave 1
	note E_, 6
	note B_, 6
	note __, 16
	note __, 14
;Bar 88
	note E_, 1
	note __, 1
	notetype 16, $16
	note E_, 15
	intensity $26
	note E_, 7
	intensity $36
	note E_, 4
	note __, 5
	endchannel

Music_BWEnding_Ch3_Bar2:
	note A#, 4;
	note G#, 1
	note __, 1
	octave 2
	note F_, 4
	note D#, 1
	note __, 1
	octave 1
	note A#, 4
	note G#, 1
	note __, 1
	octave 2
	note F_, 4
	note D#, 2
	endchannel

Music_BWEnding_Ch3_Bar3:
	note C#, 2;
	note C_, 2
	note C#, 2
	octave 1
	note B_, 6
	note A#, 4
	note G#, 1
	note __, 1
	octave 2
	note F_, 4
	note D#, 1
	note __, 1
	endchannel

Music_BWEnding_Ch3_Bar5:
	note C#, 2;
	note C_, 2
	note C#, 2
	octave 1
	note B_, 2
	octave 2
	note C_, 2
	note C#, 2
	octave 1
	note A#, 4
	note G#, 2
	octave 2
	note F_, 4
	note D#, 2
	endchannel

Music_BWEnding_Ch3_Bar30:
	octave 1;
	note E_, 6
	note B_, 6
	octave 2
	note E_, 4
	octave 1
	note B_, 1
	note __, 1
	note E_, 2
	note B_, 2
	octave 2
	note E_, 2
	endchannel

; ============================================================================================================

Music_BWEnding_Ch4:
	togglenoise 3
	notetype 8
;Bar 1
    noisesampleset 1
	note D#, 2
    noisesampleset 3
	note D#, 2
	note D#, 2
	note D#, 1
	note D#, 1
	note D#, 2
	note D#, 2
	note F#, 4
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
;Bar 2
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 3
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 4
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 5
	callchannel Music_BWEnding_Ch4_Bar5
;Bar 6
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 7
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 8
	callchannel Music_BWEnding_Ch4_Bar8
;Bar 9
	callchannel Music_BWEnding_Ch4_Bar9
;Bar 10
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 11
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 12
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 13
	callchannel Music_BWEnding_Ch4_Bar5
;Bar 14
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 15
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 16
	callchannel Music_BWEnding_Ch4_Bar8
;Bar 17
	callchannel Music_BWEnding_Ch4_Bar9
;Bar 18
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 19
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 20
	callchannel Music_BWEnding_Ch4_Bar8
;Bar 21
	noisesampleset 1
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note F#, 4
    noisesampleset 3
	note A#, 2
	noisesampleset 1
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
;Bar 22
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 23
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 24
	callchannel Music_BWEnding_Ch4_Bar8
;Bar 25
	note D#, 2
	noisesampleset 1
	note D#, 1
	note D#, 1
	note F#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
;Bar 26
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 27
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 28
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 29
	callchannel Music_BWEnding_Ch4_Bar29
;Bar 30
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 31
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 32
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 33
	callchannel Music_BWEnding_Ch4_Bar29
;Bar 34
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 35
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 36
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 37
	note D#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	noisesampleset 1
	note D#, 2
	note D#, 2
    noisesampleset 3
	note B_, 12
;Bar 38
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
	note __, 4
;Bar 45
	callchannel Music_BWEnding_Ch4_Type1
;Bar 46
	callchannel Music_BWEnding_Ch4_Bar46
;Bar 47
	callchannel Music_BWEnding_Ch4_Bar46
;Bar 48
	callchannel Music_BWEnding_Ch4_Bar46
;Bar 49
	callchannel Music_BWEnding_Ch4_Type2
	callchannel Music_BWEnding_Ch4_Type1
;Bar 50
	callchannel Music_BWEnding_Ch4_Bar46
;Bar 51
	callchannel Music_BWEnding_Ch4_Bar46
;Bar 52
	callchannel Music_BWEnding_Ch4_Bar46
;Bar 53
	callchannel Music_BWEnding_Ch4_Type2
	note B_, 16
	note __, 2
;Bar 54
	note B_, 6
	note B_, 3
	note __, 16
	note __, 5
;Bar 55
	note B_, 12
;Bar 56
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 4
;Bar 59
	note B_, 12
;Bar 60
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 4
;Bar 63
	note B_, 12
;Bar 64
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 4
;Bar 67
	note B_, 12
;Bar 68
	note __, 16
	note __, 16
	note __, 4
;Bar 69
	note B_, 16
	note __, 8
;Bar 70
	noisesampleset 1
	note F#, 13
;Bar 71
	note D#, 1
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
;Bar 72
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 73
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 74
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 75
	callchannel Music_BWEnding_Ch4_Bar29
;Bar 76
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 77
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 78
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 79
	note D#, 2
	noisesampleset 1
	note F#, 4
	note D#, 1
	note D#, 1
	note D#, 2
	note D#, 2
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
;Bar 80
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 81
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 82
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 83
	callchannel Music_BWEnding_Ch4_Bar29
;Bar 84
	callchannel Music_BWEnding_Ch4_Bar2
;Bar 85
	callchannel Music_BWEnding_Ch4_Bar3
;Bar 86
	note D#, 4
	note D#, 2
	noisesampleset 1
	note C#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 1
	note D#, 1
	note D#, 2
	note D#, 2
    noisesampleset 3
;Bar 87
	noisesampleset 1
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 8
	note D#, 1
	note D#, 1
	note D#, 2
    noisesampleset 3
	note A#, 2
;Bar 88
	note D#, 2
	noisesampleset 1
	note D#, 2
	note D#, 2
	note D#, 2
    noisesampleset 3
	note C#, 5
	noisesampleset 1
	note D#, 1
	note D#, 1
    noisesampleset 3
	note A#, 1
	note A#, 1
	note A#, 1
	noisesampleset 1
	note D#, 2
	noisesampleset 1
	note F#, 14
	endchannel

Music_BWEnding_Ch4_Bar2:
	note D#, 4;
	note D#, 2
	noisesampleset 1
	note C#, 4
    noisesampleset 3
	note D#, 2
	note D#, 4
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
	endchannel

Music_BWEnding_Ch4_Bar3:
	note D#, 2;
	noisesampleset 1
	note D#, 2
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note C#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
	endchannel

Music_BWEnding_Ch4_Bar5:
	note D#, 2;
	noisesampleset 1
	note D#, 2
	note D#, 2
    noisesampleset 3
	note A#, 2
	note A#, 2
	note A#, 2
	noisesampleset 1
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
	endchannel

Music_BWEnding_Ch4_Bar8:
	note D#, 4;
	note D#, 2
	noisesampleset 1
	note C#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
	endchannel

Music_BWEnding_Ch4_Bar9:
	note D#, 2;
	noisesampleset 1
	note D#, 1
	note D#, 1
	note F#, 4
	note D#, 2
	note D#, 2
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
	endchannel

Music_BWEnding_Ch4_Bar29:
	note D#, 2;
	noisesampleset 1
	note D#, 2
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note C#, 4
	note D#, 2
	note F#, 4
    noisesampleset 3
	note D#, 2
	noisesampleset 1
	note D#, 4
    noisesampleset 3
	note D#, 2
	endchannel

Music_BWEnding_Ch4_Bar46:
	note C_, 2;
	note C_, 2
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	endchannel

Music_BWEnding_Ch4_Type1:
	note B_, 4;
	note C_, 2
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	endchannel

Music_BWEnding_Ch4_Type2:
	note C_, 2;
	note C_, 2
	note C_, 2
	note C_, 4
	note C_, 2
	endchannel

; ============================================================================================================

