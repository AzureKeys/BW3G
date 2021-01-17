;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_JohtoGymBattle:
	musicheader 4, 1, Music_GymLeaderUnova_Ch1
	musicheader 1, 2, Music_GymLeaderUnova_Ch2
	musicheader 1, 3, Music_GymLeaderUnova_Ch3
	musicheader 1, 4, Music_GymLeaderUnova_Ch4

Music_GymLeaderUnova_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 108
;Bar 1
	octave 3
Music_GymLeaderUnova_Ch1_Intro:
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G#, 4
	note A#, 2
	note G#, 4
	loopchannel 3, Music_GymLeaderUnova_Ch1_Intro
;Bar 4
	dutycycle $1
	octave 4
	note E_, 1
	note __, 1
	octave 4
	note G_, 10
	octave 4
	notetype 6, $a7
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	notetype 12, $a7
	octave 3
	note A#, 1
	note B_, 1
;Bar 5
	dutycycle $2
	note G_, 6
	octave 4
	note C_, 6
	note G_, 4
;Bar 6
	note F_, 2
	note E_, 6
	note D_, 2
	note C_, 6
;Bar 7
	note C_, 1
	note C#, 1
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 12
;Bar 8
	dutycycle $3
	octave 4
	note G_, 1
	note G#, 1
	note G_, 1
	note F_, 1
	note G_, 12
;Bar 9
	dutycycle $0
	intensity $95
	octave 1
	stereopanning $f0
	note A#, 2
	octave 3
	note E_, 1
	note F_, 1
	octave 1
	note A#, 2
	stereopanning $ff
	octave 3
	note F#, 2
	octave 1
	note A#, 2
	stereopanning $f
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note D#, 2
;Bar 10
	octave 1;
	note A#, 2
	octave 3
	stereopanning $ff
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note F#, 2
	octave 1
	note A#, 2
	octave 3
	stereopanning $f0
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note A#, 2
;Bar 11
	stereopanning $ff
	octave 1;
	note A#, 2
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	stereopanning $f
	octave 3
	note F#, 2
	octave 1
	note A#, 2
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note D#, 2
;Bar 12
	stereopanning $ff
	dutycycle $2
	intensity $a7
	octave 2
	note A#, 1
	note B_, 1
	note A#, 1
	note G#, 1
	note A#, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D_, 1
	note __, 1
	note F_, 1
	note __, 1
;Bar 13
Music_GymLeaderUnova_Ch1_loop:
	dutycycle $1
	octave 2
	note G_, 6
	octave 3
	note E_, 6
	note E_, 2
	note F_, 2
;Bar 14
	note G_, 4
	note A_, 2
	note G_, 2
	note F_, 4
	note E_, 4
;Bar 15
	note F_, 6
	note D_, 6
	note D_, 2
	note D#, 2
;Bar 16
	note F_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note D_, 4
	note F_, 4
;Bar 17
	note A_, 6
	note E_, 6
	note A_, 4
;Bar 18
	octave 4
	note C#, 16
;Bar 19
	octave 3
	note A#, 2
	note A#, 4
	note F_, 2
	note F_, 4
	note A#, 2
	note A#, 2
;Bar 20
	dutycycle $0
	intensity $77
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	note __, 1
	notetype $8, $77
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note F_, 3
	note D_, 1
	note F_, 1
	note D_, 1
	notetype 12, $77
	octave 4
	note A#, 2
	note __, 2
	octave 5
	notetype 3, $77
	note D#, 1
	note D_, 7
	notetype 12, $a7
;Bar 21
	dutycycle $1
	octave 3
	note G_, 2
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	note E_, 4
	note __, 2
	note E_, 2
	note F_, 2
;Bar 22
	note G_, 2
	note __, 2
	note A_, 2
	note G_, 2
	octave 5
	dutycycle $0
	intensity $77
	note D_, 2
	note F_, 2
	note G_, 2
	octave 6
	note C_, 2
;Bar 23
	intensity $a7
	dutycycle $1
	octave 3
	note F_, 2
	note E_, 1
	note __, 1
	note F_, 1
	note __, 1
	note D_, 3
	note __, 3
	note D_, 2
	note D#, 2
;Bar 24
	note F_, 2
	note __, 2
	note G_, 2
	note F_, 2
	octave 5
	intensity $77
	dutycycle $0
	note D_, 2
	note F_, 2
	note G_, 2
	note A#, 2
;Bar 25
	intensity $a7
	dutycycle $1
	octave 3
	note A_, 6
	note E_, 6
	note A_, 4
;Bar 26
	octave 4
	intensity $78
	note C#, 16
;Bar 27
	note C#, 2
	intensity $48
	note C#, 2
	note __, 2
	octave 3
	intensity $78
	note A_, 2
	intensity $48
	note A_, 2
	note __, 2
	octave 4
	intensity $78
	note C#, 2
	intensity $48
	note C#, 2
;Bar 28
	tone $0001
	dutycycle $0
	intensity $87
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note C#, 2
	note A_, 2
	note E_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
;Bar 29
	intensity $81
	callchannel Music_GymLeaderUnova_Ch1_Bar29
;Bar 30
	stereopanning $f0
	note A_, 1
	note A_, 1
	note A_, 2
	stereopanning $f
	note A#, 1
	note A#, 1
	note A#, 2
	octave 5
	stereopanning $f0
	note C_, 1
	note C_, 1
	note C_, 2
	octave 4
	stereopanning $f
	note A_, 1
	note A_, 1
	note A_, 2
;Bar 31
Music_GymLeaderUnova_Ch1_Bar31:
	stereopanning $f0
	note E_, 1
	note E_, 1
	note E_, 2

	stereopanning $f
	note E_, 1
	note E_, 1
	note E_, 2
	loopchannel 2, Music_GymLeaderUnova_Ch1_Bar31

	stereopanning $f0
	note E_, 1
	note E_, 1
	note E_, 2
	stereopanning $f
	note F_, 1
	note F_, 1
	note F_, 2
	stereopanning $f0
	note G_, 1
	note G_, 1
	note G_, 2
	stereopanning $f
	note A_, 1
	note A_, 1
	note A_, 2
;Bar 33
	callchannel Music_GymLeaderUnova_Ch1_Bar29
;Bar 34
	callchannel Music_GymLeaderUnova_Ch1_Bar29
;Bar 35
Music_GymLeaderUnova_Ch1_Bar35:
	stereopanning $f0
	note G_, 1
	note G_, 1
	note G_, 2
	stereopanning $f
	note G_, 1
	note G_, 1
	note G_, 2
	loopchannel 2, Music_GymLeaderUnova_Ch1_Bar35
;Bar 36
	octave 5
Music_GymLeaderUnova_Ch1_Bar36:
	stereopanning $f0
	note C_, 1
	note C_, 1
	note C_, 2
	stereopanning $f
	note C_, 1
	note C_, 1
	note C_, 2
	loopchannel 4, Music_GymLeaderUnova_Ch1_Bar36
;Bar 38
	intensity $87
	stereopanning $ff
	tone $0000
	dutycycle $1
	note E_, 16
;Bar 39
	callchannel Music_GymLeaderUnova_Ch1_Bar39
	octave 3
	note G_, 3
	note __, 1
;Bar 40
	callchannel Music_GymLeaderUnova_Ch1_Bar39
	octave 3
	note F_, 3
	note __, 1
;Bar 41
	callchannel Music_GymLeaderUnova_Ch1_Bar39
	octave 3
	note A#, 3
	note __, 1
;Bar 42
	note A_, 3
	note __, 1
	note G_, 3
	note __, 1
	note F_, 2
	note E_, 6
;Bar 43
	dutycycle $2
	intensity $78
	octave 3
	note F_, 6
	note A#, 6
	octave 4
	note F_, 4
;Bar 44
	note D#, 1
	note __, 1
	note D_, 1
	note D_, 5
	note C_, 1
	note __, 1
	octave 3
	note A#, 1
	note A#, 5
;Bar 45
	callchannel Music_GymLeaderUnova_Ch1_Bar46
; ;Bar 43
; 	callchannel Music_GymLeaderUnova_Ch1_Bar43
; 	note __, 4
; 	octave 6
; 	intensity $a5
; 	note D_, 1
; 	intensity $75
; 	note D_, 1
; 	note __, 2
; ;Bar 44
; 	octave 2
; 	intensity $a5
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note B_, 1
; 	note A#, 2
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note __, 1
; 	note A#, 1
; 	note B_, 1
; 	note A#, 2
; ;Bar 45
; 	callchannel Music_GymLeaderUnova_Ch1_Bar43
; 	note __, 2
; 	octave 6
; 	intensity $a5
; 	note C_, 1
; 	intensity $75
; 	note C_, 1
; 	intensity $a5
; 	note D_, 1
; 	intensity $75
; 	note D_, 1
; 	note __, 16
; 	note __, 2
;Bar 46
	dutycycle $1
	pitchoffset 1, C_
	callchannel Music_GymLeaderUnova_Ch2_Bar46
	pitchoffset 0, C_
;Bar 47
	octave 3
	intensity $87
	callchannel Music_GymLeaderUnova_Ch2_Intro
	callchannel Music_GymLeaderUnova_Ch1_Type1
;Bar 48
	callchannel Music_GymLeaderUnova_Ch1_Bar48
;Bar 49
	callchannel Music_GymLeaderUnova_Ch2_Intro
	callchannel Music_GymLeaderUnova_Ch1_Type1
;Bar 50
	callchannel Music_GymLeaderUnova_Ch1_Bar48
;Bar 51
	octave 2
	callchannel Music_GymLeaderUnova_Ch1_Type2
	note B_, 4
	callchannel Music_GymLeaderUnova_Ch1_Type2
;Bar 52
	callchannel Music_GymLeaderUnova_Ch1_Type3
	note B_, 1
	note __, 1
	note A#, 1
	note __, 1
;Bar 53
	octave 3
	callchannel Music_GymLeaderUnova_Ch2_Intro
	callchannel Music_GymLeaderUnova_Ch1_Type1
;Bar 54
	callchannel Music_GymLeaderUnova_Ch1_Bar48
;Bar 55
	octave 2
	callchannel Music_GymLeaderUnova_Ch1_Type2
	octave 3
	note D_, 4
	octave 2
	callchannel Music_GymLeaderUnova_Ch1_Type2
;Bar 56
	callchannel Music_GymLeaderUnova_Ch1_Type3
	octave 3
	note C_, 1
	note __, 1
	octave 2
	note A#, 1
	note __, 1
;Bar 57
	octave 3
	callchannel Music_GymLeaderUnova_Ch1_Type1
	note E_, 4
	callchannel Music_GymLeaderUnova_Ch1_Type1
;Bar 58
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F#, 1
	note __, 1
	note G_, 4
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 4
	note C_, 1
	note __, 1
;Bar 59
	intensity $88
	vibrato 0, $22
	dutycycle $3
	note C#, 12
	intensity $87
	note C#, 1
	note __, 3
;Bar 60
	note D#, 1
	note __, 1
	note C#, 1
	note __, 3
	octave 3
	note C#, 10
;Bar 61
	octave 4
	intensity $88
	note C_, 12
	intensity $87
	note C_, 1
	note __, 3
;Bar 62
	note D_, 1
	note __, 1
	note C_, 1
	note __, 3
	octave 3
	note C_, 10
;Bar 63
	octave 2
	vibrato 0, 0
Music_GymLeaderUnova_Ch1_Timpani:
	note G_, 4
	note __, 2
	note G_, 4
	note __, 2
	note G_, 4
	note __, 2
	note G_, 4
	note __, 2
	note C_, 4
	note C_, 4
	loopchannel 2, Music_GymLeaderUnova_Ch1_Timpani
	loopchannel 0, Music_GymLeaderUnova_Ch1_loop

Music_GymLeaderUnova_Ch1_Bar29:
	stereopanning $f0
	note F_, 1
	note F_, 1
	note F_, 2

	stereopanning $f
	note F_, 1
	note F_, 1
	note F_, 2
	loopchannel 2, Music_GymLeaderUnova_Ch1_Bar29
	endchannel

Music_GymLeaderUnova_Ch1_Bar39:
	octave 2;
	note C_, 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 4
	note C_, 3
	note __, 1
	endchannel

Music_GymLeaderUnova_Ch1_Bar43:
	octave 5;
	intensity $a5
	note C_, 1
	intensity $75
	note C_, 1
	octave 6
	intensity $a5
	note C_, 1
	intensity $75
	note C_, 1
	note __, 2
	octave 5
	intensity $a5
	note G_, 1
	intensity $75
	note G_, 1
	endchannel

Music_GymLeaderUnova_Ch1_Type1:
	note C_, 1
	note __, 1
	loopchannel 3, Music_GymLeaderUnova_Ch1_Type1
	endchannel

Music_GymLeaderUnova_Ch1_Type2:
	note A#, 1
	note __, 1
	loopchannel 3, Music_GymLeaderUnova_Ch1_Type2
	endchannel

Music_GymLeaderUnova_Ch1_Type3:
	octave 3;
	note D_, 1
	note __, 1
	octave 2
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 3
	note D_, 4
	octave 2
	note A#, 1
	note __, 1
	endchannel

Music_GymLeaderUnova_Ch1_Bar48:
	note E_, 1;
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note E_, 4
	note C_, 1
	note __, 1
	note C#, 1
	note __, 1
	note C_, 1
	note __, 1
	endchannel

Music_GymLeaderUnova_Ch1_Bar46:
	note A#, 1;
	note B_, 1
	note A#, 1
	note G#, 1
	note A#, 12
	endchannel

; ============================================================================================================

Music_GymLeaderUnova_Ch2:
	dutycycle $0
	notetype 12, $a7
;Bar 1
	octave 4
	callchannel Music_GymLeaderUnova_Ch2_Intro
	note D#, 2
	note C#, 1
	note __, 3
;Bar 2
	callchannel Music_GymLeaderUnova_Ch2_Intro
	note D#, 2
	note C#, 1
	note __, 3
;Bar 3
	callchannel Music_GymLeaderUnova_Ch2_Intro
	note D#, 2
	note F_, 4
;Bar 4
	callchannel Music_GymLeaderUnova_Ch2_Intro
	octave 3
	note A#, 4
	octave 4
	note C#, 2
;Bar 5
	dutycycle $1
	note C_, 6
	note G_, 6
	octave 5
	note C_, 4
;Bar 6
	octave 4
	note A#, 2
	note A_, 6
	note G_, 2
	note F_, 6
;Bar 7
	callchannel Music_GymLeaderUnova_Ch2_Bar7
;Bar 8
	octave 5
	callchannel Music_GymLeaderUnova_Ch2_Bar7
	intensity $a7
;Bar 9
	octave 3
	note A#, 6
	octave 4
	note F_, 6
	note A#, 4
;Bar 10
	note G#, 2
	note G_, 2
	note G_, 4
	note F_, 2
	note D#, 2
	note D#, 4
;Bar 11
	intensity $98
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	intensity $88
	note D_, 12
	intensity $a7
;Bar 12
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	note D_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
;Bar 13
Music_GymLeaderUnova_Ch2_loop:
	vibrato $12, $14
	octave 5
	intensity $98
	dutycycle $2
	note C_, 6
	octave 4
	note G_, 6
	octave 5
	note C_, 2
	note D_, 1
	note D#, 1
;Bar 14
	note E_, 4
	note F_, 2
	note E_, 2
	note D_, 4
	note E_, 2
	note D_, 2
;Bar 15
	octave 4
	note A#, 6
	note F_, 6
	note A#, 2
	octave 5
	note C_, 2
;Bar 16
	note D_, 4
	note D#, 2
	note D_, 2
	octave 4
	note A#, 4
	octave 5
	note D_, 4
;Bar 17
	note C#, 6
	octave 4
	note A_, 6
	octave 5
	note C#, 4
;Bar 18
	note E_, 16
;Bar 19
	octave 4
	intensity $b8
	note D_, 2
	intensity $88
	note D_, 4
	octave 3
	intensity $b8
	note A#, 2
	intensity $88
	note A#, 4
	octave 4
	intensity $b8
	note D_, 2
	note D_, 2
;Bar 20
	intensity $98
	note F_, 16
;Bar 21
	intensity $b8
	note C_, 2
	octave 3
	note B_, 1
	intensity $88
	note B_, 1
	octave 4
	intensity $b8
	note C_, 1
	intensity $88
	note C_, 1
	octave 3
	intensity $b8
	note G_, 4
	intensity $88
	note G_, 2
	octave 4
	intensity $b8
	note C_, 2
	note D_, 2
;Bar 22
	note E_, 2
	intensity $88
	note E_, 2
	intensity $b8
	note F_, 2
	note E_, 2
	note D_, 2
	intensity $88
	note D_, 2
	intensity $b8
	note E_, 2
	intensity $88
	note E_, 2
;Bar 23
	octave 3
	intensity $b8
	note A#, 2
	note A_, 1
	intensity $88
	note A_, 1
	intensity $b8
	note A#, 1
	intensity $88
	note A#, 1
	intensity $b8
	note F_, 3
	intensity $88
	note F_, 3
	intensity $b8
	note A#, 2
	octave 4
	note C_, 2
;Bar 24
	note D_, 2
	intensity $88
	note D_, 2
	intensity $b8
	note D#, 2
	note D_, 2
	octave 3
	note A#, 2
	intensity $88
	note A#, 2
	intensity $b8
	octave 4
	note D_, 4
;Bar 25
	note C#, 6
	octave 3
	note A_, 6
	octave 4
	note C#, 4
;Bar 26
	intensity $a8
	note E_, 16
;Bar 27
	intensity $b8
	note A_, 2
	intensity $88
	note A_, 4
	intensity $b8
	note E_, 2
	intensity $88
	note E_, 4
	intensity $b8
	note A_, 2
	intensity $88
	note A_, 2
;Bar 28
	octave 5
	intensity $a8
	note C#, 10
	dutycycle $3
	intensity $98
	octave 4
	note G_, 1
	note __, 1
	note A_, 1
	note __, 3
;Bar 29
	note A#, 2
	octave 5
	note C_, 8
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
;Bar 30
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
;Bar 31
	callchannel Music_GymLeaderUnova_Ch2_Bar7
;Bar 32
	note C#, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 6
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note F_, 1
	note __, 1
;Bar 33
	note A#, 2
	octave 5
	note C_, 8
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
;Bar 34
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
	octave 5
	note D_, 2
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note D_, 2
;Bar 35
	note C_, 1
	note D_, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 12
;Bar 36
	vibrato 0, 0
	octave 4
	note C_, 1
	note D_, 1
	note C_, 1
	octave 3
	note A#, 1
	octave 4
	note C_, 12
;Bar 37
	callchannel Music_GymLeaderUnova_Ch2_Bar7
;Bar 38
	octave 5
	intensity $97
	note G_, 16
	dutycycle $2
;Bar 39
	intensity $98
	vibrato 0, 0
	octave 4
	note C_, 6
	note G_, 6
	octave 5
	note C_, 4
;Bar 40
	octave 4
	note A#, 2
	note A_, 6
	note G_, 2
	note F_, 6
;Bar 41
	callchannel Music_GymLeaderUnova_Ch2_Bar7
;Bar 42
	dutycycle $0
	callchannel Music_GymLeaderUnova_Ch2_Bar7
;Bar 43
	dutycycle $2
	intensity $98
	octave 3
	note A#, 6
	octave 4
	note F_, 6
	note A#, 4
;Bar 44
	note G#, 1
	note __, 1
	note G_, 1
	intensity $88
	note G_, 5
	intensity $98
	note F_, 1
	note __, 1
	note D#, 1
	intensity $88
	note D#, 5
;Bar 45
	intensity $98
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	note D_, 12
;Bar 46
	dutycycle $3
	callchannel Music_GymLeaderUnova_Ch2_Bar46
;Bar 47
	dutycycle $0
	note C_, 6
	note D_, 6
	note F_, 4
;Bar 48
	note E_, 2
	note D_, 6
	note C_, 2
	octave 4
	note A#, 6
;Bar 49
	octave 3
	dutycycle $2
	intensity $97
	note A#, 16
;Bar 50
	note G_, 12
	intensity $a7
	octave 5
	note C_, 1
	note G_, 1
	note A#, 1
	note B_, 1
;Bar 51
	octave 4
	dutycycle $3
	intensity $97
	note F_, 16
;Bar 52
	note D_, 8
	note A_, 4
	note F_, 4
;Bar 53
	note E_, 16
;Bar 54
	note G_, 16
;Bar 55
	dutycycle $2
	intensity $98
	note F_, 16
;Bar 56
	note D_, 8
	note A_, 2
	note F_, 2
	note F_, 4
;Bar 57
	note G_, 16
;Bar 58
	note B_, 1
	note __, 1
	octave 5
	note C_, 14
;Bar 59
	dutycycle $0
	octave 4
	intensity $88
	vibrato 0, $22
	note F_, 12
	note F_, 1
	note __, 3
;Bar 60
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 3
	intensity $87
	note F_, 10
;Bar 61
	intensity $88
	octave 4
	note E_, 12
	note E_, 1
	note __, 3
;Bar 62
	note G_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 3
	intensity $87
	note E_, 10
;Bar 63
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	loopchannel 0, Music_GymLeaderUnova_Ch2_loop

Music_GymLeaderUnova_Ch2_Intro:
	note C_, 1;
	note __, 1
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note C#, 4
	endchannel

Music_GymLeaderUnova_Ch2_Bar7:
	intensity $98
	note E_, 1;
	note F_, 1
	note E_, 1
	note D_, 1
	intensity $88
	note E_, 12
	intensity $98
	endchannel

Music_GymLeaderUnova_Ch2_Bar46:
	octave 4
	note D_, 1
	note D#, 1
	note D_, 1
	note C_, 1
	note D_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
	endchannel

; ============================================================================================================

Music_GymLeaderUnova_Ch3:
	notetype 12, $16
;Bar 1
	callchannel Music_GymLeaderUnova_Ch3_Intro
	note A_, 2
	note A#, 1
	note __, 1
	notetype 6, $16
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	notetype 12, $16
;Bar 2
	callchannel Music_GymLeaderUnova_Ch3_Intro
	octave 3
	note A#, 2
	note F_, 1
	note __, 1
	octave 2
	callchannel Music_GymLeaderUnova_Ch3_Type11
;Bar 3
	callchannel Music_GymLeaderUnova_Ch3_Intro
	octave 4
	note C#, 2
	octave 3
	note G_, 1
	note __, 1
	notetype 6, $16
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	notetype 12, $16
;Bar 4
	note C_, 6
	octave 2
	note C_, 2
Music_GymLeaderUnova_Ch3_Bar4:
	note C_, 1
	note A#, 1
	octave 3
	note C_, 1
	octave 2
	note G_, 1
	loopchannel 2, Music_GymLeaderUnova_Ch3_Bar4
;Bar 5
	callchannel Music_GymLeaderUnova_Ch3_Type2
	callchannel Music_GymLeaderUnova_Ch3_Type4
;Bar 6
	callchannel Music_GymLeaderUnova_Ch3_Type2
	callchannel Music_GymLeaderUnova_Ch3_Type3
;Bar 7
	callchannel Music_GymLeaderUnova_Ch3_Type2
	callchannel Music_GymLeaderUnova_Ch3_Type4
;Bar 8
	callchannel Music_GymLeaderUnova_Ch3_Type2
	callchannel Music_GymLeaderUnova_Ch3_Type3
;Bar 9
Music_GymLeaderUnova_Ch3_Bar9_10:
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note F#, 2
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note F#, 2
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
	loopchannel 2, Music_GymLeaderUnova_Ch3_Bar9_10
;Bar 13
Music_GymLeaderUnova_Ch3_loop:
Music_GymLeaderUnova_Ch3_Bar13:
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	loopchannel 3, Music_GymLeaderUnova_Ch3_Bar13
	octave 2
	note G_, 2
	octave 3
	note C_, 2
;Bar 14
	octave 2
	note C_, 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	note F#, 2
	note G_, 2
;Bar 15
	callchannel Music_GymLeaderUnova_Ch3_Type8
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note F_, 2
	note A#, 2
;Bar 16
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note E_, 2
	note F_, 2
;Bar 17
	callchannel Music_GymLeaderUnova_Ch3_Type7
	note E_, 2
	note A_, 2
;Bar 18
	callchannel Music_GymLeaderUnova_Ch3_Type7
	note G_, 2
	note A_, 2
;Bar 19
	callchannel Music_GymLeaderUnova_Ch3_Type8
	note A#, 2
	note F_, 2
	note A#, 2
	callchannel Music_GymLeaderUnova_Ch3_Type5
	;fallthrough
;Bar 20
	note A_, 2
	note A#, 2
;Bar 21
	note C_, 2
	octave 3
	note D_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	octave 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 22
	octave 2
	note C_, 2
	octave 3
	note G_, 2
	octave 2
	note C_, 2
	octave 3
	note F_, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	note D#, 2
	note E_, 2
;Bar 23
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	note F_, 2
	octave 3
	note F_, 1
	note A#, 1
	octave 1
	note A#, 2
	octave 2
	note A#, 2
;Bar 24
	octave 1
	note A#, 2
	octave 3
	note F_, 2
	octave 1
	note A#, 2
	octave 3
	note D#, 2
	octave 1
	note A#, 2
	octave 3
	note F_, 2
	note D_, 2
	note A_, 2
;Bar 25
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note E_, 2
	octave 3
	note E_, 1
	note A_, 1
	octave 1
	note A_, 2
	octave 2
	note A_, 2
;Bar 26
	octave 1
	note A_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 3
	note D_, 2
	octave 1
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	note B_, 2
;Bar 27
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note G#, 2
	note A_, 2
	callchannel Music_GymLeaderUnova_Ch3_Type7
;Bar 28
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	octave 3
	note E_, 2
	note C#, 2
	note E_, 2
	note G_, 2
;Bar 29
	callchannel Music_GymLeaderUnova_Ch3_Type6
;Bar 30
	callchannel Music_GymLeaderUnova_Ch3_Type6
;Bar 31
	octave 1
	note A_, 2
	octave 2
	note A_, 1
	note A_, 1
	note E_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 3
	note C#, 1
	note C#, 1
	note A_, 2
	note E_, 2
;Bar 32
	octave 1
	note A_, 2
	octave 2
	note A_, 1
	note A_, 1
	octave 3
	note E_, 2
	note D_, 1
	note D_, 1
	note C#, 2
	octave 2
	note B_, 2
	note A_, 2
	note E_, 2
;Bar 33
	callchannel Music_GymLeaderUnova_Ch3_Type6
;Bar 34
	octave 1
	note A#, 2
	octave 2
	callchannel Music_GymLeaderUnova_Ch3_Type11
	callchannel Music_GymLeaderUnova_Ch3_Type8
	callchannel Music_GymLeaderUnova_Ch3_Type11
	octave 1
	note A#, 2
	note B_, 2
;Bar 35
	octave 2
	note C_, 2
	octave 3
	callchannel Music_GymLeaderUnova_Ch3_Type9
	octave 2
	note G_, 2
	octave 3
	note E_, 2
	note C_, 2
	octave 2
	callchannel Music_GymLeaderUnova_Ch3_Type10
	octave 3
	note E_, 2
	note C_, 2
;Bar 36
	octave 2
	note C_, 2
	octave 3
	callchannel Music_GymLeaderUnova_Ch3_Type9
	octave 2
	note G_, 2
	note E_, 2
	note C_, 2
	octave 1
	note B_, 2
	octave 2
	note C_, 2
	octave 3
	note D_, 2
;Bar 37
	note E_, 2
	callchannel Music_GymLeaderUnova_Ch3_Type9
	octave 2
	note B_, 2
	callchannel Music_GymLeaderUnova_Ch3_Type10
	note E_, 2
	note D#, 2
	note E_, 2
	note G_, 2
;Bar 38
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 39
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 40
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 41
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 42
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 43
	callchannel Music_GymLeaderUnova_Ch3_Type5
;Bar 44
	octave 1
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 2
	note G#, 4
	octave 1
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 2
	note A#, 4
;Bar 45
	octave 1
	note A#, 2
	octave 3
	note D_, 2
	octave 1
	note A#, 2
	octave 3
	note C_, 2
	callchannel Music_GymLeaderUnova_Ch3_Type8
	note G#, 2
;Bar 46
	octave 1
	note A#, 2
	octave 2
	note G_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note G#, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
;Bar 47
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 48
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 49
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 50
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 51
	callchannel Music_GymLeaderUnova_Ch3_Type8
	note G#, 2
	octave 1
	note A#, 2
	octave 2
	note G_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
;Bar 52
	callchannel Music_GymLeaderUnova_Ch3_Type8
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
;Bar 53
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 54
	note C_, 2
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note E_, 2
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
;Bar 55
	callchannel Music_GymLeaderUnova_Ch3_Type5
;Bar 56
	callchannel Music_GymLeaderUnova_Ch3_Type5
;Bar 57
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 58
	octave 2
	note C_, 2
	note B_, 2
	octave 3
	note G_, 2
	note E_, 4
	note C_, 2
	note E_, 2
	note C_, 2
;Bar 59
Music_GymLeaderUnova_Ch3_Type1_Bar59:
	octave 2
	note C#, 2
	octave 3
	note C#, 2
	loopchannel 4, Music_GymLeaderUnova_Ch3_Type1_Bar59
;Bar 60
	note D#, 2
	note C#, 2
	octave 2
	note C#, 2
	note F_, 2
	octave 1
	note F_, 2
	octave 2
	note F_, 2
	octave 1
	note F_, 2
	octave 2
	note F_, 2
;Bar 61
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 62
	note D_, 2
	note C_, 2
	octave 2
	note C_, 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	note G_, 2
	octave 3
	note C_, 2
;Bar 63
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 64
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 65
	callchannel Music_GymLeaderUnova_Ch3_Type1
;Bar 66
	callchannel Music_GymLeaderUnova_Ch3_Type1
	loopchannel 0, Music_GymLeaderUnova_Ch3_loop

Music_GymLeaderUnova_Ch3_Type1:
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	loopchannel 4, Music_GymLeaderUnova_Ch3_Type1
	endchannel

Music_GymLeaderUnova_Ch3_Type2:
	octave 2
	note C_, 2;
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C#, 2
	endchannel

Music_GymLeaderUnova_Ch3_Type3:
	octave 2;
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note E_, 2
	endchannel

Music_GymLeaderUnova_Ch3_Type4:
	octave 2;
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	note A#, 2
	endchannel

Music_GymLeaderUnova_Ch3_Type5:
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	loopchannel 4, Music_GymLeaderUnova_Ch3_Type5
	endchannel

Music_GymLeaderUnova_Ch3_Type6:
	octave 1
	note A#, 2
	octave 2
	notetype 6, $16;
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	notetype 12, $16
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	loopchannel 2, Music_GymLeaderUnova_Ch3_Type6
	endchannel

Music_GymLeaderUnova_Ch3_Type7:
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	loopchannel 3, Music_GymLeaderUnova_Ch3_Type7
	endchannel

Music_GymLeaderUnova_Ch3_Type8:
	octave 1;
	note A#, 2
	octave 2
	note A#, 2
	octave 1
	note A#, 2
	octave 2
	endchannel

Music_GymLeaderUnova_Ch3_Intro:
	octave 3;
	note C_, 3
	note __, 3
	octave 2
	note C_, 4
	endchannel

Music_GymLeaderUnova_Ch3_Type9:
	notetype 6, $16;
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	notetype 12, $16
	endchannel

Music_GymLeaderUnova_Ch3_Type10:
	notetype 6, $16;
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	notetype 12, $16
	endchannel

Music_GymLeaderUnova_Ch3_Type11:
	notetype 6, $16;
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	notetype 12, $16
	endchannel

; ============================================================================================================

Music_GymLeaderUnova_Ch4:
	togglenoise 3
	notetype 12
;Bar 1
	note B_, 4
	note A#, 2
	note A#, 4
	note F_, 2
	noisesampleset 2
	note A_, 4
	noisesampleset 3
;Bar 2
	note F_, 2
	note A#, 2
	note A#, 2
	note A#, 4
	note C_, 2
	noisesampleset 2
	note A_, 4
	noisesampleset 3
;Bar 3
	note F_, 4
	note A#, 2
	note A#, 4
	noisesampleset 2
	note A_, 2
	noisesampleset 3
	note B_, 4
;Bar 4
	note A#, 2
	note B_, 4
Music_GymLeaderUnova_Ch4_Bar4:
	note A#, 1
	loopchannel 10, Music_GymLeaderUnova_Ch4_Bar4
;Bar 5
	note B_, 4
	callchannel Music_GymLeaderUnova_Ch4_Type2
;Bar 6
	note F_, 2
	stereopanning $f0
	noisesampleset 2
	note A_, 2
	noisesampleset 3
	stereopanning $ff
	callchannel Music_GymLeaderUnova_Ch4_Type2
;Bar 7
	note F_, 2
	stereopanning $f
	noisesampleset 2
	note A_, 2
	noisesampleset 3
	stereopanning $ff
	callchannel Music_GymLeaderUnova_Ch4_Type2
;Bar 8
	note F_, 2
	stereopanning $f0
	noisesampleset 2
	note A_, 2
	noisesampleset 3
	stereopanning $ff
	callchannel Music_GymLeaderUnova_Ch4_Type2
;Bar 9
	note B_, 4
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 2
	note A#, 2
;Bar 10
	note C_, 1
	note C_, 1
	note G#, 2
	note G#, 2
	note F#, 4
	note A#, 1
	note A#, 1
	note A#, 2
	note F#, 2
;Bar 11
	note A#, 2
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 2
;Bar 12
	note A#, 2
	note B_, 4
	note C_, 1
	note C_, 1
	note A#, 2
	note B_, 4
	note C_, 1
	note C_, 1
;Bar 13
Music_GymLeaderUnova_Ch4_loop:
	callchannel Music_GymLeaderUnova_Ch4_Bar13
;Bar 14
	callchannel Music_GymLeaderUnova_Ch4_Bar14
;Bar 15
	callchannel Music_GymLeaderUnova_Ch4_Bar15
;Bar 16
	callchannel Music_GymLeaderUnova_Ch4_Bar16
;Bar 17
	callchannel Music_GymLeaderUnova_Ch4_Bar17
;Bar 18
	note A#, 2
	note C_, 2
	note C#, 2
	note C#, 2
	note A#, 2
	note A#, 2
	noisesampleset 2
	note G#, 2
	noisesampleset 3
	note C#, 1
	note C#, 1
;Bar 19
	note A#, 2
	note C#, 2
	note C#, 2
	note C_, 2
	note A#, 2
	note A#, 2
	note C_, 2
	note C#, 2
;Bar 20
	note A#, 2
	note C#, 1
	note C#, 1
	note C_, 2
	note C#, 2
	note A#, 2
	note A#, 2
	noisesampleset 2
	note G#, 2
	noisesampleset 3
	note C#, 1
	note C#, 1
;Bar 21
	callchannel Music_GymLeaderUnova_Ch4_Bar13
;Bar 22
	callchannel Music_GymLeaderUnova_Ch4_Bar14
;Bar 23
	callchannel Music_GymLeaderUnova_Ch4_Bar15
;Bar 24
	callchannel Music_GymLeaderUnova_Ch4_Bar16
;Bar 25
	callchannel Music_GymLeaderUnova_Ch4_Bar17
;Bar 26
	callchannel Music_GymLeaderUnova_Ch4_Bar14
;Bar 27
	callchannel Music_GymLeaderUnova_Ch4_Bar15
;Bar 28
	note A#, 2
	note C_, 1
	note C#, 1

	note C_, 1
	note C_, 1
	notetype 6
	note C_, 1
	note C_, 1
	notetype 12
	note C_, 1

	note B_, 4

	note F_, 4
;Bar 29
	note B_, 4
	note C_, 1
	note C#, 1
	note C#, 1
	note C#, 1
	note A#, 1
	note C#, 1
	note C#, 1
	note C#, 1
	noisesampleset 2
	note G#, 2
	noisesampleset 3
	note C#, 1
	note C#, 1
;Bar 30
Music_GymLeaderUnova_Ch4_Bar30:
	note A#, 1
	note C#, 1
	note C#, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C#, 1
	note C#, 1
	note A#, 1
	note C#, 1
	note C#, 1
	note C#, 1
	noisesampleset 2
	note G#, 2
	noisesampleset 3
	note C#, 1
	note C#, 1
	loopchannel 7, Music_GymLeaderUnova_Ch4_Bar30
;Bar 37
	note A#, 1
	note C#, 1
	note C#, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C#, 1
	note C#, 1
	note A#, 1
	note C#, 1
	note C#, 1
	note C#, 1
	noisesampleset 2
	note G#, 2
	noisesampleset 3
	note C#, 1
	note C#, 1
;Bar 38
	note B_, 4
	note C_, 4
Music_GymLeaderUnova_Bar38:
	note A#, 4
	note C_, 4
	loopchannel 8, Music_GymLeaderUnova_Bar38
	note A#, 4
	note C_, 2
	note F#, 2
;Bar 43
	callchannel Music_GymLeaderUnova_Ch4_Type1
	note C_, 2
	note C#, 2
;Bar 44
	note A#, 2
	note A#, 2
	stereopanning $f0
	noisesampleset 2
	note A_, 4
	noisesampleset 3
	stereopanning $ff
	note A#, 2
	note A#, 2
	stereopanning $f
	noisesampleset 2
	note A_, 4
	noisesampleset 3
	stereopanning $ff
;Bar 45
	callchannel Music_GymLeaderUnova_Ch4_Type1
	note F#, 2
	note C#, 2
;Bar 46
	callchannel Music_GymLeaderUnova_Ch4_Type1
	note F#, 4
;Bar 47
	callchannel Music_GymLeaderUnova_Ch4_Type2
	callchannel Music_GymLeaderUnova_Ch4_Type2
	note A#, 2
	note A#, 2
	note C_, 4
;Bar 49
Music_GymLeaderUnova_Ch4_Bar49:
	note A#, 4;
	note C_, 4
	note A#, 2
	note A#, 2
	note C_, 4
	loopchannel 7, Music_GymLeaderUnova_Ch4_Bar49
;Bar 56
	note A#, 4
	note C_, 4
	note C_, 2
	note C_, 2
	note A#, 2
	note C_, 2
;Bar 57
	note A#, 4;
	note C_, 4
	note A#, 2
	note A#, 2
	note C_, 4
;Bar 58
	note C_, 2
	note A#, 2
	note A#, 2
	note C_, 2
	note A#, 2
	note C_, 2
	note C_, 2
	note C_, 2
;Bar 59
	callchannel Music_GymLeaderUnova_Ch4_Bar59
;Bar 60
	note G#, 2
	note G#, 2
	note G#, 2
	noisesampleset 2
	note A_, 4
	noisesampleset 3
	note C_, 2
	note B_, 4
;Bar 61
	callchannel Music_GymLeaderUnova_Ch4_Bar59
;Bar 62
	note C_, 2
	note B_, 2
	note B_, 2
	noisesampleset 2
	note A_, 4
	noisesampleset 3
	note A#, 2
	note B_, 4
;Bar 63
	noisesampleset 2
	note A_, 4
	noisesampleset 3
	note C_, 2
	note C#, 2
	note A#, 2
	note A#, 2
	note C_, 2
	note C#, 2
;Bar 64
	callchannel Music_GymLeaderUnova_Ch4_Bar14
;Bar 65
	callchannel Music_GymLeaderUnova_Ch4_Bar17
;Bar 66
	callchannel Music_GymLeaderUnova_Ch4_Bar14
	loopchannel 0, Music_GymLeaderUnova_Ch4_loop

Music_GymLeaderUnova_Ch4_Bar13:
	note B_, 4
	note C_, 2
	note C#, 2
	note A#, 2
	note A#, 2
	note C_, 2
	note C#, 2
	endchannel

Music_GymLeaderUnova_Ch4_Bar14:
	note A#, 2
	note C#, 1
	note C#, 1
	note C_, 2
	note C#, 2
	note A#, 2
	note A#, 2
	noisesampleset 2
	note G#, 2
	noisesampleset 3
	note C#, 1
	note C#, 1
	endchannel

Music_GymLeaderUnova_Ch4_Bar15:
	note A#, 2;
	note C#, 2
	note C_, 2
	note C#, 2
	note A#, 2
	note A#, 2
	note C_, 2
	note C#, 2
	endchannel

Music_GymLeaderUnova_Ch4_Bar16:
	note A#, 2
	note C#, 1
	note C#, 1
	note C_, 2
	note C#, 2
	note A#, 2
	note A#, 2
	noisesampleset 2
	note G#, 4
	noisesampleset 3
	endchannel

Music_GymLeaderUnova_Ch4_Bar17:
	note A#, 2
	note C#, 1
	note C#, 1
	note C_, 2
	note C#, 2
	note A#, 2
	note A#, 2
	note C_, 2
	note C#, 1
	note C#, 1
	endchannel

Music_GymLeaderUnova_Ch4_Bar59:
	note B_, 4;
	note C_, 4
	note A#, 2
	note A#, 2
	note C_, 2
	note C_, 2
	endchannel

Music_GymLeaderUnova_Ch4_Type1:
	note A#, 2;
	note C#, 2
	note C_, 2
	note C#, 2
	note A#, 2
	note C#, 2
	endchannel

Music_GymLeaderUnova_Ch4_Type2:
	note A#, 4
	loopchannel 3, Music_GymLeaderUnova_Ch4_Type2
	endchannel
	