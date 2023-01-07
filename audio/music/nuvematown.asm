;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_NuvemaTown:
	musicheader 3, 1, Music_NuvemaTown_Ch1
	musicheader 1, 2, Music_NuvemaTown_Ch2
	musicheader 1, 3, Music_NuvemaTown_Ch3

Music_NuvemaTown_Ch1:
	volume $77
	stereopanning $f
	dutycycle $3
	tone $0001
	notetype 6, $97
	tempo 219
;Bar 1
	callchannel Music_NuvemaTown_Ch1_Bar1
;Bar 2
	callchannel Music_NuvemaTown_Ch1_Bar2
;Bar 3
	callchannel Music_NuvemaTown_Ch1_Bar3
;Bar 4
	callchannel Music_NuvemaTown_Ch1_Bar4
;Bar 5
Music_NuvemaTown_Ch1_loop:
	callchannel Music_NuvemaTown_Ch1_Bar1
;Bar 6
	callchannel Music_NuvemaTown_Ch1_Bar2
;Bar 7
	callchannel Music_NuvemaTown_Ch1_Bar3
;Bar 8
	callchannel Music_NuvemaTown_Ch1_Bar4
;Bar 9
	notetype 4, $97
	note D_, 1
	note A_, 1
	octave 3
	note D_, 1
	notetype 6, $97
	note F#, 2
	octave 2
	note A_, 4
	octave 3
	note D_, 4
	note F#, 4
	octave 2
	note A_, 4
	octave 3
	note F#, 4
;Bar 10
	octave 2
	notetype 3, $77
	note G_, 1
	octave 3
	note C#, 1
	notetype 6, $97
	note E_, 3
	octave 2
	note G_, 4
	note B_, 5
	notetype 3, $77
	note A#, 1
	octave 3
	intensity $97
	note C#, 5
	notetype 6, $97
	octave 2
	note F#, 4
	octave 3
	note E_, 4
;Bar 11
	octave 2
	notetype 3, $77
	note F#, 1
	note B_, 1
	notetype 6, $97
	octave 3
	note D_, 3
	octave 2
	note F#, 4
	note A_, 4
	note B_, 4
	octave 3
	note C#, 4
	note D_, 4
;Bar 12
	note E_, 4
	octave 2
	note A_, 4
	octave 3
	note D_, 4
	note F#, 12
;Bar 13
	octave 2
	notetype 4, $77
	note G_, 1
	note B_, 1
	octave 3
	note D_, 1
	notetype 6, $97
	note G_, 2
	octave 2
	note D_, 4
	note G_, 4
	note A_, 4
	note B_, 4
	octave 3
	note D_, 4
;Bar 14
	note E_, 4
	octave 2
	note E_, 4
	note G_, 4
	octave 3
	note C#, 12
;Bar 15
	note F#, 4
	octave 2
	note D_, 4
	note F#, 4
	note A_, 4
	octave 3
	note D_, 4
	note A_, 4
;Bar 16
	note D_, 4
	octave 2
	note A_, 4
	octave 3
	note E_, 4
	note D_, 12
;Bar 17
	octave 2
	notetype 3, $77
	note G_, 1
	note B_, 1
	notetype 6, $97
	octave 3
	note E_, 3
	octave 2
	note E_, 4
	note G_, 4
	note B_, 4
	octave 3
	note D_, 4
	note E_, 4
;Bar 18
	note F#, 12
	note E_, 12
;Bar 19
	octave 2
	notetype 3, $77
	note A_, 1
	octave 3
	note D_, 1
	notetype 6, $97
	note F#, 3
	octave 2
	note F#, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G_, 4
;Bar 20
	note A_, 16
	note A_, 8
;Bar 21
	callchannel Music_NuvemaTown_Ch1_Bar1
;Bar 22
	octave 2
	notetype 12, $97
	note A#, 12
	notetype 6, $97
;Bar 23
	callchannel Music_NuvemaTown_Ch1_Bar3
;Bar 24
	callchannel Music_NuvemaTown_Ch1_Bar2
	loopchannel 0, Music_NuvemaTown_Ch1_loop

Music_NuvemaTown_Ch1_Bar1:
;Bar 1
	octave 2
	note D_, 4
	note A_, 4
	octave 3
	note D_, 4
	note F#, 12
	endchannel

Music_NuvemaTown_Ch1_Bar2:
	octave 2
	notetype 3, $77
	note G_, 1
	note A#, 1
	notetype 6, $97
	octave 3
	note E_, 11
	note D_, 12
	endchannel

Music_NuvemaTown_Ch1_Bar3:
	octave 2
	note D_, 4
	note A_, 4
	octave 3
	note D_, 4
	note E_, 4
	note D_, 4
	note A_, 4
	endchannel

Music_NuvemaTown_Ch1_Bar4:
	octave 2
	notetype 3, $77
	note E_, 1 
	note G_, 1
	notetype 6, $97
	note A#, 11
	note A#, 12
	endchannel

; ============================================================================================================

Music_NuvemaTown_Ch2:
	stereopanning $f0
	dutycycle $1
	notetype 6, $d7
	vibrato $08, $22
;Bar 1
	octave 3
	note E_, 1
	note F#, 16
	note __, 7
;Bar 2
	intensity $d7
	note F#, 1
	note G_, 11
	note G#, 1
	note A_, 9
	note G#, 1
	note G_, 1
;Bar 3
	notetype 12, $d7
	note F#, 12
;Bar 4
	notetype 6, $d7
	note D_, 1
	note E_, 11
	note D_, 12
;Bar 5
Music_NuvemaTown_Ch2_loop:
	dutycycle $2
	vibrato $08, $16
	octave 4
	notetype 12, $d7
	note A_, 9
	notetype 6, $d7
	note __, 1
	note G_, 1
	note F#, 4
;Bar 6
	note G_, 16
	note F#, 4
	note E_, 4
;Bar 7
	notetype 12, $d7
	note D_, 10
	notetype 6, $d7
	note F#, 4
;Bar 8
	note E_, 12
	note D_, 12
;Bar 9
	note A_, 16
	note G_, 4
	note F#, 4
;Bar 10
	note G_, 16
	note F#, 4
	note E_, 4
;Bar 11
	notetype 12, $d7
	note D_, 12
	note __, 12
;Bar 13
	note B_, 10
	octave 5
	note D_, 2
;Bar 14
	note C#, 6
	octave 4
	note B_, 6
;Bar 15
	note A_, 10
	notetype 8, $d7
	note F#, 1
	note A_, 1
	note F#, 1
;Bar 16
	notetype 6, $d7
	note D_, 16
	note E_, 4
	note F#, 4
;Bar 17
	note G_, 16
	note F#, 4
	note E_, 4
;Bar 18
	note D_, 12
	note C#, 12
;Bar 19
	notetype 12, $d7
	note D_, 12
	note __, 6
	notetype 6, $d7
;Bar 20
	dutycycle $1
	vibrato $08, $24
	octave 3
	note E_, 10
	note D_, 1
	note E_, 1
;Bar 21
	notetype 12, $d7
	note F#, 12
	notetype 6, $d7
;Bar 22
	note D#, 1
	note E_, 11
	note D_, 12
;Bar 23
	note E_, 1
	note F#, 16
	note __, 7
;Bar 24
	intensity $d7
	note F#, 1
	note G_, 11
	note A_, 12
	;note G#, 1
	;note G_, 1
	loopchannel 0, Music_NuvemaTown_Ch2_loop

; ============================================================================================================

Music_NuvemaTown_Ch3:
	notetype 12, $11
	callchannel Music_NuvemaTown_Ch3_Bar1_2
;Bar 3
	callchannel Music_NuvemaTown_Ch3_Bar1_2
;Bar 5
Music_NuvemaTown_Ch3_loop:
	note D_, 10
	note D_, 2
;Bar 6
	note G_, 6
	note A_, 4
	octave 1
	note A_, 2
;Bar 7
	callchannel Music_NuvemaTown_Ch3_Bar1_2
;Bar 9
	note D_, 10
	note D_, 2
;Bar 10
	note C#, 6
	note F#, 4
	octave 1
	note F#, 2
;Bar 11
	note B_, 8
	note F#, 2
	note B_, 2
;Bar 12
	note A_, 6
	octave 2
	note A_, 2
	note F#, 2
	note D_, 2
;Bar 13
	note G_, 10
	note G_, 2
;Bar 14
	note G_, 8
	octave 3
	note C#, 2
	octave 2
	note B_, 2
;Bar 15
	note F#, 8
	note A_, 2
	octave 3
	note C#, 2
;Bar 16
	octave 2
	note B_, 8
	note F#, 2
	octave 1
	note B_, 2
;Bar 17
	octave 2
	note E_, 6
	note E_, 2
	note F#, 2
	note G_, 2
;Bar 18
	note A_, 6
	octave 1
	note A_, 6
;Bar 19
	octave 2
	note D_, 12
;Bar 20
	note D_, 6
	note A_, 6
;Bar 21
	callchannel Music_NuvemaTown_Ch3_Bar1_2
;Bar 23
	note D_, 10
	note D_, 2
;Bar 24
	note G_, 6
	note C_, 6
	loopchannel 0, Music_NuvemaTown_Ch3_loop

Music_NuvemaTown_Ch3_Bar1_2:
;Bar 1
	octave 2
	note D_, 10
	note D_, 2
;Bar 2
	note G_, 6
	note A_, 6
	endchannel

; ============================================================================================================

