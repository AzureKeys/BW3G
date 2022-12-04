;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookGentleman:
	musicheader 3, 1, Music_LookGentleman_Ch1
	musicheader 1, 2, Music_LookGentleman_Ch2
	musicheader 1, 3, Music_LookGentleman_Ch3

Music_LookGentleman_Ch1:
	volume $77
	dutycycle $2
	notetype 6, $a7
	tempo 254
;Bar 1
	octave 4
	intensity $c7
	note C#, 2
	intensity $67
	note C#, 2
	octave 3
	intensity $a7
	note G#, 2
	intensity $57
	note G#, 2
	octave 4
	intensity $c7
	note C#, 4
	intensity $67
	note C#, 2
	intensity $b7
	note C_, 1
	intensity $67
	note C_, 1
	octave 3
	intensity $c7
	note A#, 1
	intensity $77
	note A#, 1
	intensity $b7
	note G#, 1
	intensity $67
	note G#, 1
	intensity $b7
	note F#, 1
	intensity $67
	note F#, 1
	intensity $a7
	note F_, 1
	intensity $57
	note F_, 1
	intensity $b7
	note G#, 8
Music_LookGentleman_Ch1_loop:
;Bar 2
	note F#, 1
	intensity $67
	note F#, 1
	intensity $b7
	note F_, 1
	intensity $67
	note F_, 1
	intensity $a7
	note D#, 1
	intensity $57
	note D#, 1
	intensity $b7
	note A#, 1
	intensity $57
	note A#, 1
	intensity $b7
	note G#, 6
	intensity $87
	note G#, 2
	intensity $c7
	note G#, 1
	intensity $77
	note G#, 1
	intensity $b7
	note F#, 1
	intensity $67
	note F#, 1
	intensity $b7
	note F_, 1
	intensity $57
	note F_, 1
	octave 4
	intensity $b7
	note D#, 1
	intensity $67
	note D#, 1
	intensity $b7
	note C#, 6
	intensity $87
	note C#, 2
;Bar 3
	octave 3
	intensity $c7
	note A#, 1
	intensity $77
	note A#, 1
	intensity $b7
	note F#, 1
	intensity $77
	note F#, 1
	intensity $b7
	note G#, 1
	intensity $67
	note G#, 1
	intensity $b7
	note A#, 1
	intensity $67
	note A#, 1
	octave 4
	intensity $b7
	note C_, 1
	intensity $77
	note C_, 1
	octave 3
	intensity $b7
	note G#, 1
	intensity $67
	note G#, 1
	intensity $b7
	note A#, 1
	intensity $67
	note A#, 1
	octave 4
	intensity $a7
	note C_, 1
	intensity $67
	note C_, 1
	intensity $c7
	note C#, 4
	intensity $77
	note C_, 2
	intensity $b7
	note C_, 2
	octave 3
	intensity $c7
	note A#, 4
	intensity $87
	note A#, 2
	intensity $b7
	note G#, 2
;Bar 4
	intensity $c7
	note F#, 1
	intensity $77
	note F#, 1
	intensity $b7
	note F_, 1
	intensity $77
	note F_, 1
	intensity $b7
	note F#, 1
	intensity $77
	note F#, 1
	intensity $b7
	note A#, 1
	intensity $67
	note A#, 1
	intensity $c7
	note G#, 1
	intensity $77
	note G#, 1
	intensity $b7
	note D#, 1
	intensity $67
	note D#, 1
	intensity $b7
	note G#, 1
	intensity $77
	note G#, 1
	octave 4
	intensity $b7
	note C_, 1
	intensity $67
	note C_, 1
	intensity $c7
	note C#, 1
	intensity $77
	note C#, 1
	intensity $b7
	note C_, 1
	intensity $77
	note C_, 1
	octave 3
	intensity $b7
	note A#, 1
	intensity $77
	note A#, 1
	octave 4
	intensity $b7
	note C_, 1
	intensity $67
	note C_, 1
	intensity $c7
	note C#, 6
	intensity $67
	note C#, 2
;Bar 5
	intensity $c7
	note C#, 2
	intensity $67
	note C#, 2
	octave 3
	intensity $a7
	note G#, 2
	intensity $57
	note G#, 2
	octave 4
	intensity $c7
	note C#, 4
	intensity $67
	note C#, 2
	intensity $b7
	note C_, 1
	intensity $67
	note C_, 1
	octave 3
	intensity $c7
	note A#, 1
	intensity $77
	note A#, 1
	intensity $b7
	note G#, 1
	intensity $67
	note G#, 1
	intensity $b7
	note F#, 1
	intensity $67
	note F#, 1
	intensity $a7
	note F_, 1
	intensity $57
	note F_, 1
	intensity $b7
	note G#, 8
	loopchannel 0, Music_LookGentleman_Ch1_loop

; ============================================================================================================

Music_LookGentleman_Ch2:
	dutycycle $1
	notetype 6, $a7
;Bar 1
	octave 2
	note F_, 1
	intensity $67
	note F_, 2
	note __, 1
	intensity $a7
	note D#, 1
	intensity $67
	note D#, 2
	note __, 1
	intensity $a7
	note F_, 4
	intensity $67
	note F_, 2
	octave 3
	intensity $a7
	note C_, 1
	intensity $67
	note C_, 1
	octave 2
	intensity $a7
	note A#, 1
	intensity $67
	note A#, 1
	intensity $a7
	note G#, 1
	intensity $67
	note G#, 1
	intensity $a7
	note F#, 1
	intensity $67
	note F#, 1
	intensity $a7
	note F_, 1
	intensity $67
	note F_, 1
	intensity $a7
	note C#, 4
	note F_, 4
Music_LookGentleman_Ch2_loop:
;Bar 2
	octave 1
	note D#, 2
	note F#, 2
	octave 2
	note C#, 2
	octave 1
	note F#, 2
	note G#, 2
	note F#, 2
	octave 2
	note C_, 2
	octave 1
	note F#, 2
	note F_, 2
	octave 2
	note C_, 2
	note D#, 2
	note C_, 2
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note C#, 2
	octave 1
	note A#, 2
;Bar 3
	octave 2
	note F#, 1
	intensity $67
	note F#, 1
	octave 1
	intensity $a7
	note F#, 1
	intensity $67
	note F#, 1
	octave 2
	intensity $a7
	note F#, 1
	intensity $67
	note F#, 1
	octave 1
	intensity $a7
	note F#, 1
	intensity $67
	note F#, 1
	octave 2
	intensity $a7
	note F#, 1
	intensity $67
	note F#, 1
	octave 1
	intensity $a7
	note G#, 1
	intensity $67
	note G#, 1
	octave 2
	intensity $a7
	note F#, 1
	intensity $67
	note F#, 1
	octave 1
	intensity $a7
	note G#, 1
	intensity $67
	note G#, 1
	intensity $a7
	note C#, 1
	intensity $67
	note C#, 1
	intensity $a7
	note G#, 1
	intensity $67
	note G#, 1
	octave 2
	intensity $a7
	note G#, 2
	octave 1
	note G#, 2
	note A#, 1
	intensity $67
	note A#, 1
	intensity $a7
	note F_, 1
	intensity $67
	note F_, 1
	octave 2
	intensity $a7
	note F_, 2
	octave 1
	note F_, 2
;Bar 4
	octave 2
	note C#, 1
	intensity $67
	note C#, 1
	octave 1
	intensity $a7
	note C#, 1
	intensity $67
	note C#, 1
	octave 2
	intensity $a7
	note C#, 1
	intensity $67
	note C#, 1
	octave 1
	intensity $a7
	note C#, 1
	intensity $67
	note C#, 1
	octave 2
	intensity $a7
	note D#, 1
	intensity $67
	note D#, 1
	octave 1
	intensity $a7
	note D#, 1
	intensity $67
	note D#, 1
	octave 2
	intensity $a7
	note D#, 1
	intensity $67
	note D#, 1
	octave 1
	intensity $a7
	note D#, 1
	intensity $67
	note D#, 1
	octave 2
	intensity $a7
	note C#, 1
	intensity $67
	note C#, 1
	intensity $a7
	note C_, 1
	intensity $67
	note C_, 1
	octave 1
	intensity $a7
	note A#, 1
	intensity $67
	note A#, 1
	octave 2
	intensity $a7
	note C_, 1
	intensity $67
	note C_, 1
	intensity $a7
	note C#, 6
	note __, 2
;Bar 5
	note F_, 1
	intensity $67
	note F_, 2
	note __, 1
	intensity $a7
	note D#, 1
	intensity $67
	note D#, 2
	note __, 1
	intensity $a7
	note F_, 4
	intensity $67
	note F_, 2
	octave 3
	intensity $a7
	note C_, 1
	intensity $67
	note C_, 1
	octave 2
	intensity $a7
	note A#, 1
	intensity $67
	note A#, 1
	intensity $a7
	note G#, 1
	intensity $67
	note G#, 1
	intensity $a7
	note F#, 1
	intensity $67
	note F#, 1
	intensity $a7
	note F_, 1
	intensity $67
	note F_, 1
	intensity $a7
	note C#, 4
	note F_, 4
	loopchannel 0, Music_LookGentleman_Ch2_loop

; ============================================================================================================

Music_LookGentleman_Ch3:
	notetype 6, $1b
;Bar 1
	intensity $2b
	note __, 10
	octave 5
	note G#, 1
	note G#, 1
	octave 6
	note C#, 2
	note C_, 1
	note C_, 1
	octave 5
	note A#, 1
	note A#, 1
	note G#, 1
	note G#, 1
	note F#, 1
	note F#, 1
	note F_, 1
	note F_, 1
	note G#, 2
	note F#, 1
	note F_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note F_, 1
Music_LookGentleman_Ch3_loop:
;Bar 2
	note F#, 1
	note F#, 2
	note __, 1
	octave 6
	note C#, 1
	note C#, 2
	note __, 1
	note C_, 1
	note C#, 1
	note C_, 1
	note C#, 1
	notetype 4, $1b
	note C_, 1
	note C#, 1
	note C_, 1
	octave 5
	note A#, 3
	notetype 6, $1b
	note G#, 1
	note G#, 2
	note __, 1
	octave 6
	note C_, 1
	note C_, 2
	note __, 1
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	notetype 4, $1b
	note A#, 1
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note G#, 3
;Bar 3
	notetype 6, $1b
	note F#, 5
	note F#, 1
	octave 6
	note C#, 1
	note C#, 1
	note C_, 5
	note C_, 1
	note D#, 1
	note D#, 1
	note F_, 1
	note F_, 1
	octave 5
	note G#, 1
	note G#, 1
	octave 6
	notetype 4, $1b
	note F_, 1
	note F#, 1
	note F_, 1
	notetype 6, $1b
	note D#, 1
	note D#, 1
	note C#, 1
	note C#, 1
	octave 5
	note F_, 1
	note F_, 1
	octave 6
	notetype 4, $1b
	note C#, 1
	note D#, 1
	note C#, 1
	notetype 6, $1b
	note C_, 1
	note C_, 1
;Bar 4
	octave 5
	note A#, 1
	note A#, 1
	note __, 2
	octave 6
	note F#, 1
	note F#, 1
	note __, 2
	octave 5
	note D#, 1
	note D#, 1
	note __, 2
	octave 6
	note C_, 1
	note C_, 1
	note __, 2
	note C#, 1
	note C#, 1
	note C_, 1
	note C_, 1
	octave 5
	note A#, 1
	note A#, 1
	octave 6
	note C_, 1
	note C_, 1
	note C#, 2
	octave 5
	note D#, 1
	note F_, 1
	note F#, 1
	note G#, 1
	note A#, 1
	octave 6
	note C_, 1
;Bar 5
	note C#, 4
	note __, 1
	note C#, 1
	note __, 4
	octave 5
	note G#, 1
	note G#, 1
	octave 6
	note C#, 2
	note C_, 1
	note C_, 1
	octave 5
	note A#, 1
	note A#, 1
	note G#, 1
	note G#, 1
	note F#, 1
	note F#, 1
	note F_, 1
	note F_, 1
	note G#, 2
	note F#, 1
	note F_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note F_, 1
	loopchannel 0, Music_LookGentleman_Ch3_loop

; ============================================================================================================

