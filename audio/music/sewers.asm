;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_CasteliaSewers:
	musicheader 4, 1, Music_CasteliaSewers_Ch1
	musicheader 1, 2, Music_CasteliaSewers_Ch2
	musicheader 1, 3, Music_CasteliaSewers_Ch3
	musicheader 1, 4, Music_CasteliaSewers_Ch4

Music_CasteliaSewers_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $87
	tone $0001
	stereopanning $ff
	tempo 124
;Bar 1
	callchannel Music_CasteliaSewers_Ch1_Type1
	callchannel Music_CasteliaSewers_Ch1_Type2
	callchannel Music_CasteliaSewers_Ch1_Type3
	callchannel Music_CasteliaSewers_Ch1_Type4
;Bar 4
	callchannel Music_CasteliaSewers_Ch1_Type1
	callchannel Music_CasteliaSewers_Ch1_Type2
	callchannel Music_CasteliaSewers_Ch1_Type3
	callchannel Music_CasteliaSewers_Ch1_Type4
;Bar 7
	callchannel Music_CasteliaSewers_Ch1_Type5
	callchannel Music_CasteliaSewers_Ch1_Type6
	callchannel Music_CasteliaSewers_Ch1_Type7
	callchannel Music_CasteliaSewers_Ch1_Type2
;Bar 10
	callchannel Music_CasteliaSewers_Ch1_Type5
	callchannel Music_CasteliaSewers_Ch1_Type6
	callchannel Music_CasteliaSewers_Ch1_Type7
	callchannel Music_CasteliaSewers_Ch1_Type2
;Bar 13
	stereopanning $f0
	intensity $a7
	pitchoffset 1, C_
	callchannel Music_CasteliaSewers_Ch1_2_Bar13_15
	pitchoffset 0, C_
;Bar 16
	octave 4
	dutycycle $3
	note G#, 1
	note __, 1
	octave 3
	note G#, 1
	note __, 3
	octave 4
	note D#, 4
	octave 3
	note G#, 2
	octave 4
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
;Bar 17
	octave 4
	note D_, 4
	octave 3
	note D_, 2
	note G_, 2
	octave 4
	stereopanning $ff
	intensity $a7
	note C#, 16
	note __, 8
;Bar 19
	note C_, 16
	note __, 8
;Bar 20
	note D#, 16
	note __, 8
;Bar 22
	note F_, 12
	note F#, 12
	loopchannel 0, Music_CasteliaSewers_Ch1

Music_CasteliaSewers_Ch1_Type1:
	octave 1;
	dutycycle $3
	note D_, 2
	dutycycle $2
	octave 3
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	endchannel

Music_CasteliaSewers_Ch1_Type2:
	dutycycle $3
	octave 1;
	note C#, 2
	octave 3
	dutycycle $2
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	endchannel

Music_CasteliaSewers_Ch1_Type3:
	dutycycle $3
	octave 1;
	note F_, 2
	octave 3
	dutycycle $2
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	endchannel

Music_CasteliaSewers_Ch1_Type4:
	dutycycle $3
	octave 1;
	note E_, 2
	octave 3
	dutycycle $2
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	endchannel

Music_CasteliaSewers_Ch1_Type5:
	dutycycle $3
	octave 1;
	note B_, 2
	octave 2
	dutycycle $2
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	endchannel

Music_CasteliaSewers_Ch1_Type6:
	dutycycle $3
	octave 1;
	note A#, 2
	octave 2
	dutycycle $2
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	endchannel

Music_CasteliaSewers_Ch1_Type7:
	dutycycle $3
	octave 1;
	note D_, 2
	octave 3
	dutycycle $2
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	endchannel

Music_CasteliaSewers_Ch1_2_Bar13_15:
	octave 4
	note F#, 1;
	note __, 1
	note E_, 1
	note __, 1
	note F#, 1
	note __, 1
	note G_, 1
	note __, 3
	note A#, 1
	note __, 1
	note A_, 1
	note __, 3
;Bar 14
	octave 5
	note D_, 1
	note __, 1
	note C#, 1
	note __, 1
	octave 4
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C#, 2
	note D_, 1
	note __, 3
	octave 3
	note B_, 1
	note __, 1
;Bar 15
	octave 4
	note C#, 1
	note __, 1
	note E_, 1
	note __, 1
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	note A#, 4
	octave 5
	note C_, 2
	endchannel

; ============================================================================================================

Music_CasteliaSewers_Ch2:
	dutycycle $2
	notetype 12, $b6
	;vibrato $12, $16
	stereopanning $f
;Bar 1
	octave 5
	note D_, 8
	note A_, 4
	note G#, 8
;Bar 2
	octave 6
	note D_, 4
	note C#, 8
;Bar 3
	octave 5
	note G_, 4
	note G#, 8
	note C#, 4
;Bar 4
	note D_, 8
	octave 4
	note G_, 4
	note G#, 8
;Bar 5
	octave 5
	note D_, 4
	note C#, 16
;Bar 6
	note __, 8
;Bar 7
	octave 4
	note B_, 8
	octave 5
	note F#, 4
	note F_, 8
;Bar 8
	note B_, 4
	note A#, 8
;Bar 9
	note E_, 4
	note F_, 8
	octave 4
	note A#, 4
;Bar 10
	note B_, 8
	note E_, 4
	note F_, 8
;Bar 11
	note B_, 4
	note A#, 12
;Bar 12
	note B_, 12
;Bar 13
	dutycycle $1
	intensity $c7
	callchannel Music_CasteliaSewers_Ch1_2_Bar13_15
;Bar 16
	note C#, 1
	note __, 1
	octave 4
	note C#, 1
	note __, 3
	note G#, 4
	note C#, 2
	octave 5
	note C_, 1
	note __, 1
	octave 4
	note C_, 1
	note __, 1
;Bar 17
	note G_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note __, 4
	intensity $a5
	dutycycle $2
	note A#, 2
	octave 5
	note C#, 2
;Bar 18
	note D#, 2
	octave 4
	note F#, 2
	note G#, 2
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note C#, 2
	note G#, 2
	note C#, 2
;Bar 19
	note __, 2
	note F_, 2
	octave 5
	note C_, 2
	note D_, 2
	octave 4
	note F_, 2
	note C_, 2
	note D_, 2
	note F_, 2
;Bar 20
	note G_, 2
	note G#, 2
	note A_, 2
	note F_, 2
	note __, 1
	octave 3
	note G#, 1
	note G_, 1
	note G#, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note F_, 1
;Bar 21
	note D#, 1
	note F#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note A#, 1
	note G#, 1
	note F_, 1
	note E_, 1
	note C#, 1
	note D#, 1
	note G#, 1
	octave 5
	note C_, 1
	note C#, 1
	note C_, 1
	octave 4
	note D#, 1
;Bar 22
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note G_, 1
;Bar 23
	note F#, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 1
	note C#, 1
	loopchannel 0, Music_CasteliaSewers_Ch2

; ============================================================================================================

Music_CasteliaSewers_Ch3:
	notetype 12, $14
	stereopanning $f0
;Bar 1
	callchannel Music_CasteliaSewers_Ch3_Type1
;Bar 4
	callchannel Music_CasteliaSewers_Ch3_Type1
;Bar 7
	callchannel Music_CasteliaSewers_Ch3_Type2
;Bar 10
	callchannel Music_CasteliaSewers_Ch3_Type2
;Bar 13
	stereopanning $ff
	intensity $1F
	octave 2
	note F#, 1
	note __, 1
	note F#, 4
	note F_, 1
	note __, 3
	note F#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G_, 4
;Bar 14
	note A#, 1
	note __, 3
	note F_, 4
	note F#, 4
	note F_, 1
	note __, 3
;Bar 15
	note F#, 2
	note G#, 1
	note __, 1
	note G_, 4
	note A#, 1
	note __, 3
	octave 3
	note C_, 2
;Bar 16
	note C#, 1
	note __, 1
	note C#, 1
	note __, 3
	note C#, 4
	octave 2
	note B_, 2
	octave 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
;Bar 17
	note C_, 4
	octave 2
	note F_, 4
	note F#, 2
	octave 1
	note A#, 2
	note B_, 2
	octave 2
	note C_, 2
;Bar 18
	note C#, 2
	octave 1
	note C#, 2
	note F#, 2
	note A#, 2
	note B_, 2
	note D#, 2
	note E_, 2
	note F_, 2
;Bar 19
	octave 2
	note F_, 2
	octave 1
	note A_, 2
	note A#, 2
	note B_, 2
	octave 2
	note C_, 2
	octave 1
	note C_, 2
	note F_, 2
	note A_, 2
;Bar 20
	note A#, 2
	octave 2
	note D_, 2
	note D#, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note C#, 2
	note D_, 2
;Bar 21
	note D#, 2
	note A#, 2
	note G#, 2
	note F_, 2
	note C#, 2
	note F_, 2
	note F#, 2
	note G_, 2
;Bar 22
	note A#, 16
	intensity $25
	note A#, 8
	loopchannel 0, Music_CasteliaSewers_Ch3

Music_CasteliaSewers_Ch3_Type1:
	intensity $14;
	octave 2
	note D_, 2
	intensity $1E
	octave 3
	note D_, 2
	note G_, 2
	octave 4
	note D_, 2
	note G_, 2
	note D_, 2
	intensity $14
	octave 2
	note C#, 2
	intensity $1E
	octave 3
	note C#, 2
;Bar 5
	note F#, 2;
	octave 4
	note C#, 2
	note F#, 2
	note C#, 2
	intensity $14
	octave 2
	note F_, 2
	intensity $1E
	octave 3
	note F_, 2
	note A#, 2
	octave 4
	note F_, 2
;Bar 6
	note A#, 2;
	note F_, 2
	intensity $14
	octave 2
	note E_, 2
	intensity $1E
	octave 3
	note E_, 2
	note A_, 2
	octave 4
	note E_, 2
	note A_, 2
	note E_, 2
	endchannel

Music_CasteliaSewers_Ch3_Type2:
	intensity $14;
	octave 1
	note B_, 2
	intensity $1E
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	intensity $14
	octave 1
	note A#, 2
	intensity $1E
	octave 2
	note A#, 2
;Bar 8
	octave 3
	note D#, 2
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	intensity $14
	octave 2
	note D_, 2
	intensity $1E
	octave 3
	note D_, 2
	note G_, 2
	octave 4
	note D_, 2
;Bar 9
	note G_, 2
	note D_, 2
	intensity $14
	octave 2
	note C#, 2
	intensity $1E
	octave 3
	note C#, 2
	note F#, 2
	octave 4
	note C#, 2
	note F#, 2
	note C#, 2
	endchannel

; ============================================================================================================

Music_CasteliaSewers_Ch4:
	togglenoise 5
	notetype 12
;Bar 1
Music_CasteliaSewers_Ch4_loop:
	note A#, 2
	note D_, 2
	note E_, 2
	note A#, 1
	note D_, 1
	note E_, 1
	note A#, 1
	note D_, 1
	note E_, 1
	loopchannel 0, Music_CasteliaSewers_Ch4_loop

; ============================================================================================================
