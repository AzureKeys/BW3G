;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookPlasma:
	musicheader 4, 1, Music_LookPlasma_Ch1
	musicheader 1, 2, Music_LookPlasma_Ch2
	musicheader 1, 3, Music_LookPlasma_Ch3
	musicheader 1, 4, Music_LookPlasma_Ch4

Music_LookPlasma_Ch1:
	volume $77
	dutycycle $2
	notetype 8, $a7
	tempo 105
;Bar 1
	note __, 2
	octave 2 
	note F#, 1
	note __, 3
	octave 3
	note E_, 1
	note __, 3
	note D#, 1
	note __, 3
	octave 2
	note B_, 1
	note __, 3
	octave 3
	note A_, 1
	note __, 3
	note G#, 1
	note __, 3
;Bar 2
	note F#, 1
	note __, 3
	octave 4
	intensity $87
	note E_, 1
	note __, 3
	intensity $77
	note D#, 1
	note __, 3
	octave 3
	intensity $97
	note B_, 1
	note __, 3
	octave 4
	intensity $77
	note A_, 1
	note __, 3
	intensity $57
	note G#, 4
Music_LookPlasma_Ch1_loop:
;Bar 3
	intensity $a7
	note E_, 3
	note __, 1
	note E_, 1
	note __, 11
	note E_, 2
	note __, 6
;Bar 4
	note E_, 3
	note __, 1
	note E_, 1
	note __, 11
	note F_, 6
;Bar 5
	intensity $97
	note D_, 1
	note D#, 1
	intensity $a7
	note E_, 3
	note __, 1
	note E_, 1
	note __, 11
	note E_, 2
	note __, 6
;Bar 6
	note E_, 3
	note __, 1
	note E_, 1
	note __, 11
	note F_, 6
;Bar 7
	intensity $97
	note G_, 1
	note __, 1
	intensity $a7
	note E_, 3
	note __, 1
	note E_, 1
	note __, 11
	note E_, 2
	note __, 8
;Bar 8
	octave 3
	note B_, 1
	note __, 3
	note B_, 1
	note __, 3
	note B_, 1
	note __, 1
	note B_, 1
	note __, 3
	intensity $b7
	note A#, 8
;Bar 9
	octave 2
	intensity $97
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 1
	intensity $97
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 1
	intensity $97
	note B_, 1
	note __, 3
	note B_, 1
	note __, 3
	note B_, 1
	note __, 3
;Bar 10
	note B_, 1
	note __, 3
	octave 3
	note D_, 1
	note __, 3
	note D_, 1
	note __, 3
	note C_, 1
	note __, 3
	octave 2
	note A_, 1
	note __, 3
	octave 3
	note C_, 1
	note __, 3
;Bar 11
	octave 2
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 1
	intensity $97
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 1
	intensity $97
	note B_, 1
	note __, 3
	note B_, 1
	note __, 3
	note B_, 1
	note __, 3
;Bar 12
	note B_, 1
	note __, 3
	octave 3
	note D_, 1
	note __, 3
	note D_, 1
	note __, 3
	note C_, 1
	note __, 3
	note G_, 1
	note __, 3
	note F#, 1
	note __, 3
;Bar 13
	note D#, 1
	note __, 3
	intensity $57
	note D#, 1
	note __, 1
	intensity $97
	note D#, 1
	note __, 3
	intensity $57
	note D#, 1
	note __, 1
	intensity $97
	note D#, 1
	note __, 3
	note D#, 1
	note __, 3
	note D#, 1
	note __, 3
;Bar 14
	note D#, 1
	note __, 3
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
	note E_, 1
	note __, 3
	note C#, 1
	note __, 3
	note E_, 1
	note __, 3
;Bar 15
	note D#, 1
	note __, 3
	intensity $57
	note D#, 1
	note __, 1
	intensity $97
	note D#, 1
	note __, 3
	intensity $57
	note D#, 1
	note __, 1
	intensity $97
	note D#, 1
	note __, 3
	note D#, 1
	note __, 3
	note D#, 1
	note __, 3
;Bar 16
	note D#, 1
	note __, 3
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
	note E_, 1
	note __, 3
	octave 4
	note C_, 1
	note __, 3
	octave 3
	note B_, 1
	note __, 3
;Bar 17
	note F#, 1
	note __, 3
	octave 4
	note E_, 1
	note __, 3
	note D#, 1
	note __, 3
	octave 3
	note B_, 1
	note __, 3
	octave 4
	note A_, 1
	note __, 3
	note G#, 1
	note __, 3
;Bar 18
	intensity $77
	note F#, 1
	note __, 3
	octave 5
	note E_, 1
	note __, 3
	intensity $67
	note D#, 1
	note __, 3
	octave 4
	intensity $77
	note B_, 1
	note __, 3
	intensity $67
	octave 5
	note A_, 1
	note __, 3
	note G#, 4
	octave 4
	loopchannel 0, Music_LookPlasma_Ch1_loop

; ============================================================================================================

Music_LookPlasma_Ch2:
	dutycycle $1
	notetype 8, $a7
;Bar 1
	intensity $67
	note __, 2
	octave 1
	intensity $97
	note B_, 16
	note B_, 8
;Bar 2
	note __, 16
	note __, 8
Music_LookPlasma_Ch2_loop:
;Bar 3
	notetype 4, $b7
	note E_, 8
	intensity $97
	note E_, 1
	note __, 3
	octave 2
	intensity $87
	note E_, 1
	note __, 3
	octave 3
	note D_, 1
	note __, 3
	octave 2
	note E_, 1
	note __, 3
	note C#, 4
	octave 3
	note E_, 1
	note __, 7
	note E_, 8
;Bar 4
	note __, 4
	octave 2
	note C_, 8
	octave 3
	note E_, 1
	note __, 3
	octave 2
	note E_, 1
	note __, 3
	octave 3
	note E_, 8
	octave 2
	intensity $a7
	note E_, 4
	note G_, 4
	note A#, 12
;Bar 5
	intensity $87
	note A#, 1
	note __, 3
	octave 1
	intensity $b7
	note E_, 8
	intensity $97
	note E_, 1
	note __, 3
	octave 2
	intensity $87
	note E_, 1
	note __, 3
	octave 3
	note D_, 1
	note __, 3
	octave 2
	note E_, 1
	note __, 3
	note C#, 4
	octave 3
	note E_, 1
	note __, 7
	note E_, 8
;Bar 6
	note __, 4
	octave 2
	note C_, 8
	octave 3
	note E_, 1
	note __, 3
	octave 2
	note E_, 1
	note __, 3
	octave 3
	note E_, 8
	octave 2
	intensity $a7
	note E_, 4
	note G_, 4
	note A#, 12
;Bar 7
	intensity $87
	note A#, 1
	note __, 3
	octave 1
	intensity $b7
	note E_, 8
	octave 2
	note E_, 2
	note __, 2
	intensity $87
	note E_, 1
	note __, 3
	octave 3
	note D_, 1
	note __, 3
	octave 2
	note E_, 1
	note __, 3
	note C#, 4
	octave 3
	note E_, 1
	note __, 7
	note E_, 8
;Bar 8
	note __, 4
	octave 1
	note B_, 4
	octave 2
	note B_, 2
	note __, 6
	note B_, 1
	note __, 7
	octave 1
	note B_, 1
	note __, 3
	octave 2
	intensity $97
	note B_, 2
	note __, 2
	intensity $87
	note F_, 4
	octave 1
	intensity $b7
	note A#, 14
;Bar 9
	note __, 16
	note __, 16
	note __, 16
;Bar 10
	note __, 16
	note __, 16
	note __, 16
;Bar 11
	note __, 16
	note __, 16
	note __, 16
;Bar 12
	note __, 16
	note __, 16
	note __, 6
	octave 2
	intensity $87
	note F#, 12
;Bar 13
	octave 1
	note B_, 2
	note __, 2
	intensity $57
	note B_, 1
	note __, 3
	intensity $77
	note B_, 1
	note __, 3
	octave 2
	intensity $67
	note B_, 1
	note __, 3
	octave 1
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 3
	intensity $67
	note B_, 1
	note __, 3
	octave 2
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note F#, 1
	note __, 3
	intensity $67
	note B_, 8
;Bar 14
	intensity $57
	note F#, 1
	note __, 3
	octave 1
	intensity $87
	note B_, 2
	note __, 2
	intensity $57
	note B_, 1
	note __, 3
	intensity $77
	note B_, 1
	note __, 3
	intensity $a7
	note B_, 1
	note __, 3
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 3
	intensity $67
	note B_, 1
	note __, 3
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 3
	intensity $87
	note B_, 4
	intensity $57
	note B_, 1
	note __, 3
;Bar 15
	intensity $77
	note B_, 1
	note __, 3
	intensity $87
	note B_, 2
	note __, 2
	intensity $57
	note B_, 1
	note __, 3
	intensity $77
	note B_, 1
	note __, 3
	octave 2
	intensity $67
	note B_, 1
	note __, 3
	octave 1
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 3
	intensity $67
	note B_, 1
	note __, 3
	octave 2
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note F#, 1
	note __, 3
	intensity $67
	note B_, 8
;Bar 16
	intensity $57
	note F#, 1
	note __, 3
	octave 1
	intensity $87
	note B_, 2
	note __, 2
	octave 2
	intensity $97
	note A_, 8
	octave 1
	intensity $a7
	note B_, 1
	note __, 3
	octave 2
	intensity $97
	note F_, 8
	octave 1
	intensity $a7
	note B_, 1
	note __, 3
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 3
	intensity $87
	note B_, 4
	intensity $57
	note B_, 1
	note __, 3
;Bar 17
	note B_, 1
	note __, 3
	intensity $87
	note B_, 2
	note __, 2
	octave 2
	intensity $97
	note F_, 8
	octave 1
	intensity $a7
	note B_, 1
	note __, 3
	intensity $97
	note A#, 8
	intensity $a7
	note B_, 1
	note __, 3
	intensity $77
	note B_, 1
	note __, 3
	intensity $57
	note B_, 1
	note __, 3
	intensity $87
	note B_, 4
	intensity $57
	note B_, 1
	note __, 3
;Bar 18
	note B_, 1
	note __, 3
	intensity $87
	note B_, 2
	note __, 2
	octave 2
	intensity $97
	note E_, 8
	octave 1
	intensity $a7
	note B_, 1
	note __, 3
	intensity $97
	octave 2
	intensity $57
	note B_, 1
	note __, 3
	intensity $97
	note B_, 1
	note __, 3
	octave 1
	intensity $a7
	note B_, 2
	note __, 2
	octave 2
	intensity $77
	note B_, 1
	note __, 3
	octave 1
	intensity $87
	note B_, 4
	octave 2
	note A_, 12
	octave 1
	loopchannel 0, Music_LookPlasma_Ch2_loop

; ============================================================================================================

Music_LookPlasma_Ch3:
	notetype 8, $12
;Bar 1
	intensity $22
	note __, 2
	octave 4
	note B_, 4
	octave 5
	note D#, 2
	note F_, 4
	note D#, 2
	octave 4
	note B_, 4
	octave 5
	note F_, 2
	note D#, 4
;Bar 2
	note F_, 2
	octave 4
	note B_, 9
	note B_, 9
	note __, 6
Music_LookPlasma_Ch3_loop:
;Bar 3
	note E_, 4
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note B_, 4
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note A#, 4
	octave 5
	note D_, 1
	note __, 1
	note E_, 4
;Bar 4
	note D_, 1
	note __, 1
	note D_, 4
	octave 4
	note B_, 1
	note __, 1
	note A#, 4
	note B_, 1
	note __, 5
	note A#, 6
;Bar 5
	note G_, 1
	note __, 1
	note E_, 4
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note B_, 4
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note A#, 4
	octave 5
	note D_, 1
	note __, 1
	note E_, 4
;Bar 6
	note D_, 1
	note __, 1
	note D_, 4
	octave 4
	note B_, 1
	note __, 1
	note A#, 4
	note B_, 1
	note __, 5
	note A#, 6
;Bar 7
	note B_, 1
	note __, 1
	note E_, 4
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note B_, 4
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note A#, 4
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note A_, 4
;Bar 8
	octave 5
	note D_, 1
	note __, 3
	octave 4
	note D#, 1
	note __, 3
	note D#, 1
	note __, 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 3
	note A#, 8
;Bar 9
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
;Bar 10
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 11
	note B_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
;Bar 12
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 13
	note B_, 1
	note __, 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
;Bar 14
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 15
	note B_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 4
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
;Bar 16
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 17
	note B_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 18
	note B_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 5
	note B_, 6
	octave 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 19
	note B_, 1
	note __, 1
	loopchannel 0, Music_LookPlasma_Ch3_loop

; ============================================================================================================

Music_LookPlasma_Ch4:
	togglenoise 3 ; WARNING: this might sound bad.
	notetype 8
;Bar 1
	note B_, 1
	note B_, 1
	note B_, 4
	note __, 16
	note __, 16
;Bar 2
	note __, 12
Music_LookPlasma_Ch4_loop:
;Bar 3
	note G_, 4
	note G_, 2
	note D_, 4
	note B_, 2
	note C#, 4
	note B_, 2
	note C_, 4
;Bar 4
	note B_, 2
	note A#, 4
	note B_, 2
	note G_, 4
	note B_, 2
	note G#, 2
	note B_, 2
	note C#, 6
;Bar 5
	note F#, 2
	note G_, 6
	note D_, 4
	note B_, 2
	note C#, 4
	note B_, 2
	note C_, 4
;Bar 6
	note B_, 2
	note A#, 4
	note B_, 2
	note G_, 4
	note B_, 2
	note G#, 2
	note B_, 2
	note C#, 6
;Bar 7
	note F#, 2
	note G_, 4
	note G_, 2
	note D_, 4
	note B_, 2
	note C#, 4
	note B_, 2
	note C_, 4
;Bar 8
	note B_, 2
	note D_, 2
	note D_, 4
	note D_, 4
	note D_, 2
	note D_, 4
	note B_, 6
;Bar 9
	note F#, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 10
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 11
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 12
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 13
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 14
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 15
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 16
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 17
	note D_, 2
	note C_, 4
	note D_, 2
	note G_, 4
	note D_, 4
	note F#, 4
	note C_, 4
;Bar 18
	note D_, 2
	note G_, 4
	note D_, 2
	note C_, 4
	note D_, 2
	note G_, 2
	note G#, 2
	note F#, 2
	note C_, 2
;Bar 19
	note C#, 2
	loopchannel 0, Music_LookPlasma_Ch4_loop

; ============================================================================================================

