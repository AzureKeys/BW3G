;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookRoughneck:
	musicheader 4, 1, Music_LookRoughneck_Ch1
	musicheader 1, 2, Music_LookRoughneck_Ch2
	musicheader 1, 3, Music_LookRoughneck_Ch3
	musicheader 1, 4, Music_LookRoughneck_Ch4

Music_LookRoughneck_Ch1:
	volume $77
	dutycycle $2
	notetype 8, $a7
	tempo 233
;Bar 1
	note __, 2
	octave 2
	intensity $97
	note A#, 1
	octave 3
	note C#, 1
	note __, 2
	note C#, 1
	note F#, 3
	note __, 2
Music_LookRoughneck_Ch1_loop:
	note __, 3
	note G#, 1
	note __, 2
	intensity $87
	note A_, 1
	note __, 1
	intensity $97
	note A#, 1
	note __, 5
;Bar 2
	note C#, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note F#, 1
	note __, 1
	note F#, 2
	note __, 5
	notetype 4, $87
	note G#, 2
	note __, 3
	note G#, 1
	notetype 8, $97
	note A_, 1
	note __, 1
	note A#, 1
	note __, 8
;Bar 3
	note C#, 1
	note F#, 1
	note __, 1
	intensity $87
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
	intensity $97
	note D#, 2
	note __, 3
	intensity $87
	note C#, 1
	intensity $97
	note F#, 1
	note __, 1
	note C#, 1
	note __, 6
;Bar 4
	note A#, 1
	note __, 2
	note A_, 1
	note __, 1
	note G#, 1
	note __, 2
	note F#, 3
	intensity $77
	note D#, 1
	note __, 3
	note __, 14
;Bar 5
	intensity $87
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D#, 2
	note D#, 1
	note __, 12
;Bar 6
	note F#, 1
	note __, 4
	note C#, 1
	note __, 5
	note F#, 1
	note __, 3
	notetype 4, $97
	note F#, 2
	note __, 4
	octave 4
	intensity $a7
	note C#, 3
	note D_, 1
	notetype 8, $97
	note D#, 1
;Bar 7
	note __, 3
	octave 3
	intensity $87
	note F#, 2
	note __, 3
	note C#, 1
	note __, 3
	note F#, 2
	note F#, 1
	note __, 6
	note F#, 3
;Bar 8
	note __, 2
	note F#, 1
	note __, 5
	note C#, 1
	note __, 15
;Bar 9
	note __, 12
	loopchannel 0, Music_LookRoughneck_Ch1_loop

; ============================================================================================================

Music_LookRoughneck_Ch2:
	dutycycle $1
	notetype 8, $a7
;Bar 1
	octave 1
	intensity $e7
	note A#, 1
	note __, 2
	intensity $d7
	note A#, 1
	note __, 2
	intensity $e7
	note A#, 1
	note __, 1
	intensity $d7
	note A#, 4
Music_LookRoughneck_Ch2_loop:
	octave 2
	intensity $e7
	note D#, 1
	note __, 11
;Bar 2
	note __, 6
	octave 1
	note G#, 1
	note __, 1
	intensity $d7
	note A_, 1
	note __, 1
	intensity $c7
	note A#, 1
	note __, 1
	octave 2
	intensity $e7
	note D#, 1
	note __, 2
	intensity $d7
	note D#, 1
	note __, 16
;Bar 3
	octave 1
	intensity $e7
	note A#, 1
	note __, 1
	intensity $d7
	note A#, 1
	note __, 1
	octave 2
	intensity $e7
	note D#, 1
	note __, 2
	intensity $d7
	note D#, 1
	note __, 4
	octave 1
	intensity $e7
	note A#, 1
	note __, 11
;Bar 4
	intensity $d7
	note A#, 1
	note __, 3
	octave 2
	intensity $e7
	note D#, 1
	note __, 1
	octave 1
	intensity $d7
	note D#, 1
	note __, 11
;Bar 5
	intensity $e7
	note A#, 4
	octave 2
	note C#, 2
	octave 1
	intensity $d7
	note A#, 1
	note __, 1
	octave 2
	note C#, 1
	intensity $c7
	note D_, 1
	intensity $e7
	note D#, 2
	intensity $c7
	note D#, 1
	note __, 9
;Bar 6
	note __, 8
	octave 1
	intensity $e7
	note A#, 2
	intensity $d7
	note A#, 2
	octave 2
	intensity $e7
	note D#, 2
	intensity $d7
	note D#, 1
	note __, 9
;Bar 7
	note __, 8
	octave 1
	intensity $e7
	note A#, 2
	intensity $d7
	note A#, 2
	octave 2
	intensity $e7
	note D#, 2
	intensity $d7
	note D#, 1
	note __, 6
	intensity $e7
	note D#, 1
	note __, 10
;Bar 8
	octave 1
	note A#, 2
	intensity $d7
	note A#, 2
	octave 2
	intensity $e7
	note D#, 12
;Bar 9
	note D#, 3
	note __, 9
	loopchannel 0, Music_LookRoughneck_Ch2_loop

; ============================================================================================================

Music_LookRoughneck_Ch3:
	notetype 8, $1b
;Bar 1
	octave 4
	note C#, 1
	note __, 2
	note C#, 1
	note __, 2
	note C#, 2
	note F#, 4
Music_LookRoughneck_Ch3_loop:
	note F#, 1
	note __, 4
	note D#, 1
	note __, 14
;Bar 2
	note D#, 1
	note __, 3
	note F#, 1
	note __, 2
	intensity $2b
	note F#, 1
	note __, 1
	intensity $1b
	note D#, 1
	note __, 12
;Bar 3
	note D#, 1
	note __, 7
	note D#, 1
	note __, 5
	note D#, 1
	note __, 6
;Bar 4
	note F#, 1
	note __, 13
	octave 3
	note A#, 1
	octave 4
	note C#, 2
	note D#, 1
	note __, 2
	notetype 4, $2b
	note A#, 5
;Bar 5
	octave 5
	note C_, 1
	intensity $1b
	note C#, 2
	octave 4
	note A#, 10
	note G#, 4
	intensity $2b
	note A_, 1
	intensity $1b
	note A#, 3
	note F#, 6
	note __, 5
	octave 5
	intensity $2b
	note C_, 1
	intensity $1b
	note C#, 4
	octave 4
	note A#, 2
	note __, 3
	octave 5
	note D_, 1
	note D#, 2
;Bar 6
	note __, 4
	note F#, 2
	note D#, 2
	note __, 4
	note C#, 2
	octave 4
	note A#, 2
	note A_, 2
	note G#, 4
	note F#, 2
	note __, 3
	octave 5
	note D_, 1
	note D#, 2
	note __, 6
	note D#, 2
	note __, 13
;Bar 7
	note A_, 1
	note A#, 8
	octave 6
	note C#, 6
	octave 5
	note A#, 2
	note A_, 2
	note G#, 2
	note F#, 4
	note F#, 2
	note __, 5
	note F_, 1
	note F#, 4
	note F#, 2
	note __, 6
;Bar 8
	note A#, 4
	note A_, 4
	note G_, 1
	note G#, 3
	note F#, 4
	note C_, 1
	note C#, 3
	note D_, 4
	notetype 12, $1b
	note D#, 12
	notetype 8, $1b
	octave 4
	note __, 6
	loopchannel 0, Music_LookRoughneck_Ch3_loop

; ============================================================================================================

Music_LookRoughneck_Ch4:
	togglenoise 3 ; WARNING: this might sound bad.
	notetype 8
;Bar 1
	note A#, 3
	note A#, 1
	note E_, 1
	note E_, 1
	note A#, 6
Music_LookRoughneck_Ch4_loop:
	note B_, 3
	note A#, 3
	note E_, 5
	note A#, 3
;Bar 2
	note A#, 1
	note D_, 1
	note D_, 1
	note A#, 1
	note E_, 2
	note A#, 2
	note A#, 2
	note B_, 3
	note A#, 3
	note E_, 9
;Bar 3
	note D_, 1
	note D_, 1
	note A#, 1
	note E_, 2
	note E_, 2
	note A#, 2
	note B_, 3
	note A#, 3
	note E_, 2
	note E_, 2
	note E_, 2
;Bar 4
	note E_, 2
	note A#, 1
	note E_, 3
	note A#, 2
	note A#, 1
	note E_, 3
	note B_, 3
	note A#, 3
	note E_, 5
	note A#, 3
;Bar 5
	note A#, 1
	note D_, 1
	note D_, 1
	note A#, 1
	note E_, 2
	note A#, 2
	note A#, 2
	note B_, 3
	note A#, 3
	note E_, 5
	note A#, 3
;Bar 6
	note A#, 1
	note D_, 1
	note D_, 1
	note A#, 1
	note E_, 2
	note A#, 2
	note A#, 2
	note B_, 2
	note E_, 1
	note A#, 3
	note E_, 9
;Bar 7
	note D_, 1
	note D_, 1
	note A#, 1
	note E_, 2
	note E_, 2
	note A#, 2
	note B_, 1
	note E_, 1
	note E_, 1
	note A#, 1
	note E_, 1
	note E_, 1
	note E_, 5
	note A#, 3
;Bar 8
	note A#, 1
	note D_, 1
	note D_, 1
	note A#, 1
	note E_, 2
	note A#, 2
	note A#, 2
	note B_, 12
;Bar 9
	note E_, 3
	note E_, 3
	note E_, 1
	note E_, 1
	note A#, 1
	note E_, 1
	note A#, 1
	note E_, 1
	loopchannel 0, Music_LookRoughneck_Ch4_loop

; ============================================================================================================

