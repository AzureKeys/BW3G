;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookPsychic:
	musicheader 4, 1, Music_LookPsychic_Ch1
	musicheader 1, 2, Music_LookPsychic_Ch2
	musicheader 1, 3, Music_LookPsychic_Ch3
	musicheader 1, 4, Music_LookPsychic_Ch4

Music_LookPsychic_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 76
Music_LookPsychic_Ch1_Loop:
;Bar 1
	octave 3
	note C_, 8
	note __, 8
;Bar 2
	octave 2
	note C_, 8
	note __, 8
;Bar 3
	octave 1
	intensity $d7
	note B_, 8
	note __, 8
;Bar 4
	octave 2
	intensity $c7
	note C_, 8
	note __, 8
;Bar 5
	intensity $87
	note B_, 4
	note __, 8
	octave 3
	note D_, 4
;Bar 6
	note __, 16
;Bar 7
	octave 2
	note G#, 4
	note __, 8
	octave 3
	note D#, 4
;Bar 8
	note __, 8
	octave 2
	note C#, 4
	note __, 12
;Bar 9
	note E_, 4
	note __, 12
;Bar 10
	octave 1
	note A#, 4
	note __, 8
;Bar 11
	octave 2
	note F_, 4
	note __, 8
;Bar 12
	note __, 16
;Bar 13
	note __, 16
;Bar 14
	note __, 16
;Bar 15
	note __, 16
;Bar 16
	note __, 16
;Bar 17
	note __, 16
;Bar 18
	note __, 16
;Bar 19
	octave 3
	intensity $a7
	note C#, 8
	loopchannel 0, Music_LookPsychic_Ch1_Loop

; ============================================================================================================

Music_LookPsychic_Ch2:
	dutycycle $1
	notetype 12, $a7
Music_LookPsychic_Ch2_Loop:
;Bar 1
	intensity $97
	note __, 8
	octave 2
	intensity $a7
	note F_, 16
;Bar 2
	note F_, 16
;Bar 3
	note F_, 1
	octave 3
	intensity $97
	note C_, 1
	octave 2
	intensity $a7
	note B_, 1
	intensity $97
	note A#, 1
	intensity $a7
	note G_, 1
	octave 3
	note D#, 1
	note A#, 1
	intensity $97
	note F#, 1
;Bar 4
	intensity $a7
	note D_, 1
	octave 2
	note B_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note G#, 1
	note C_, 1
	note D#, 3
	note __, 1
	note D#, 4
;Bar 5
	octave 3
	note D#, 8
	note D_, 8
;Bar 6
	note G#, 8
	note G_, 8
;Bar 7
	note C#, 8
	note F#, 8
;Bar 8
	note F_, 8
	octave 2
	note B_, 8
;Bar 9
	octave 3
	note F_, 8
	note E_, 8
;Bar 10
	octave 2
	note F_, 4
	note __, 4
	note F_, 4
	note __, 12
;Bar 11
	note F_, 4
	note F_, 4
;Bar 12
	note F_, 4
	note __, 12
;Bar 13
	note F_, 2
	note __, 6
	note F_, 8
;Bar 14
	note E_, 8
	note B_, 8
;Bar 15
	note G_, 8
	octave 3
	note F#, 8
;Bar 16
	note C#, 8
	octave 2
	note G#, 8
;Bar 17
	note E_, 8
	note C#, 8
;Bar 18
	note C_, 16
;Bar 19
	octave 1
	note B_, 8
	loopchannel 0, Music_LookPsychic_Ch2_Loop

; ============================================================================================================

Music_LookPsychic_Ch3:
	notetype 12, $13
Music_LookPsychic_Ch3_Loop:
;Bar 1
	note __, 16
;Bar 2
	octave 5
	intensity $13
	note F_, 16
;Bar 3
	note F_, 8
	octave 6
	note D#, 16
;Bar 4
	note D#, 12
;Bar 5
	note E_, 4
	octave 5
	note B_, 16
;Bar 6
	note B_, 8
;Bar 7
	note A#, 16
;Bar 8
	note A#, 8
	note A_, 16
;Bar 9
	note A_, 8
;Bar 10
	note G#, 4
	note __, 4
	note G#, 4
	note __, 12
;Bar 11
	note G#, 2
	note __, 2
	intensity $23
	note G#, 2
	note __, 2
;Bar 12
	intensity $13
	note G#, 4
	note __, 12
;Bar 13
	note G#, 2
	note __, 6
	note G#, 8
;Bar 14
	note G_, 16
;Bar 15
	note G_, 16
;Bar 16
	note G_, 16
;Bar 17
	note G_, 16
;Bar 18
	note __, 16
;Bar 19
	note __, 8
	loopchannel 0, Music_LookPsychic_Ch3_Loop

; ============================================================================================================

Music_LookPsychic_Ch4:
	notetype 12
	togglenoise 1
;Bar 1
Music_LookPsychic_Ch4_Loop:
	note __, 8
	note C_, 4
	note C_, 4
;Bar 2
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
;Bar 3
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
;Bar 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
;Bar 5
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
;Bar 6
	note C_, 4
	note C_, 4
	noisesampleset 3
	note A#, 2
	note A#, 2
	note B_, 2
	note A#, 2
;Bar 7
	note A#, 2
	note B_, 2
	note A#, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note A#, 2
	note B_, 2
;Bar 8
	note A#, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note B_, 2
	note A#, 2
	note A#, 2
;Bar 9
	note B_, 2
	note A#, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note A#, 2
	note B_, 2
	note A#, 2
;Bar 10
	note B_, 4
	note A#, 4
	note B_, 4
	note A#, 4
;Bar 11
	note __, 8
	note A#, 4
	note A#, 4
;Bar 12
	note A#, 4
	note __, 12
;Bar 13
	note A#, 8
	note A#, 8
;Bar 14
	note A#, 8
	note __, 8
;Bar 15
	note __, 16
;Bar 16
	note __, 16
;Bar 17
	note __, 16
;Bar 18
	note __, 16
;Bar 19
	note __, 8
	noisesampleset 1
	loopchannel 0, Music_LookPsychic_Ch4_Loop

; ============================================================================================================

