;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookPokefan:
	musicheader 4, 1, Music_LookPokefan_Ch1
	musicheader 1, 2, Music_LookPokefan_Ch2
	musicheader 1, 3, Music_LookPokefan_Ch3
	musicheader 1, 4, Music_LookPokefan_Ch4

Music_LookPokefan_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 141
;Bar 1
	note __, 8
Music_LookPokefan_Ch1_loop:
	note __, 2
	octave 4
	intensity $b7
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	intensity $c7
	note F_, 4
;Bar 2
	note E_, 2
	intensity $b7
	note D_, 1
	notetype 6, $87
	note D#, 1
	intensity $c7
	note E_, 4
	note __, 5
	octave 3
	intensity $b7
	note G_, 2
	note __, 2
	note A_, 2
	note __, 2
	intensity $a7
	note A_, 1
	intensity $c7
	note A#, 7
;Bar 3
	notetype 12, $c7
	note A_, 2
	intensity $b7
	note G_, 1
	intensity $c7
	note A_, 3
	note G_, 1
	note __, 1
	note D_, 1
	intensity $b7
	note D_, 1
	intensity $c7
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
;Bar 4
	note D_, 1
	intensity $b7
	note E_, 1
	note __, 1
	intensity $c7
	note G_, 2
	note A_, 1
	note G_, 1
	intensity $b7
	note A_, 1
	intensity $c7
	note B_, 2
	note __, 2
	intensity $b7
	note G_, 2
	note __, 2
;Bar 5
	notetype 6, $c7
	note G#, 1
	note A_, 3
	intensity $b7
	note G_, 6
	note __, 2
	intensity $c7
	note G_, 10
	notetype 3, $87
	note F_, 1
	note E_, 1
	intensity $77
	note D_, 1
	intensity $67
	note C_, 1
	octave 2
	note B_, 1
	intensity $57
	note A_, 1
	note G_, 1
	note __, 13
;Bar 6
	octave 4
	notetype 6, $c7
	note E_, 4
	note C#, 1
	note D_, 4
	note __, 1
	note D_, 2
	intensity $b7
	note D#, 2
	note E_, 2
	intensity $c7
	note D_, 2
	note D_, 2
	note __, 2
	octave 3
	note G_, 4
	note __, 6
;Bar 7
	octave 4
	note E_, 1
	note F_, 3
	note E_, 2
	intensity $b7
	note D_, 2
	intensity $c7
	note E_, 2
	intensity $b7
	note D_, 2
	note D#, 2
	note E_, 2
	intensity $c7
	note D_, 2
	intensity $b7
	note D_, 2
	note __, 2
	octave 3
	intensity $c7
	note G_, 4
	note __, 6
;Bar 8
	octave 4
	note G_, 2
	intensity $b7
	note D_, 2
	note E_, 2
	intensity $c7
	note D_, 4
	intensity $b7
	note D_, 2
	notetype 3, $c7
	note D#, 1
	intensity $b7
	note E_, 3
	notetype 12, $c7
	note G_, 1
	octave 3
	note G_, 1
	intensity $b7
	note G_, 1
	note __, 1
	octave 4
	intensity $c7
	note D_, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	intensity $67
	note D_, 1
	octave 3
	note G_, 1
;Bar 9
	note __, 1
	octave 4
	intensity $47
	note D_, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	intensity $27
	note D_, 1
	octave 3
	note G_, 1
	note __, 2
	loopchannel 0, Music_LookPokefan_Ch1_loop

; ============================================================================================================

Music_LookPokefan_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	octave 1
	intensity $e7
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note G_, 1
	note __, 1
	note G_, 1
Music_LookPokefan_Ch2_loop:
	octave 2
	note G_, 1
	note G_, 1
	note __, 4
	octave 1
	note G_, 1
	note G_, 1
;Bar 2
	note __, 1
	note B_, 1
	note __, 1
	note G_, 1
	octave 2
	note G_, 1
	note G_, 2
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note C_, 1
	note __, 4
	note F_, 1
	note F_, 1
;Bar 3
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note C_, 1
	note F_, 1
	note F_, 2
	note C_, 1
	note G_, 1
	note G_, 1
	note __, 4
	octave 1
	note G_, 1
	note G_, 1
;Bar 4
	note __, 1
	note B_, 1
	note __, 1
	note G_, 1
	octave 2
	note G_, 1
	note G_, 2
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note C_, 1
	note __, 2
	note C_, 1
	note C_, 1
	note __, 2
;Bar 5
	note F_, 1
	note F_, 1
	note __, 2
	note F_, 1
	note F_, 1
	note __, 2
	octave 1
	note G_, 3
	octave 2
	note G_, 2
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	intensity $d7
	note D_, 1
;Bar 6
	intensity $e7
	note G_, 1
	note G_, 1
	octave 1
	note G_, 2
	octave 2
	note D_, 1
	octave 1
	note G_, 2
	octave 2
	note G_, 1
	note C_, 3
	octave 3
	note C_, 2
	octave 2
	note E_, 1
	note F_, 1
	note G_, 1
;Bar 7
	note F_, 1
	note F_, 1
	octave 1
	note F_, 2
	octave 2
	note C_, 1
	octave 1
	note F_, 2
	octave 2
	note F_, 1
	octave 1
	note G_, 3
	octave 2
	note G_, 2
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	intensity $d7
	note D_, 1
;Bar 8
	intensity $e7
	note B_, 1
	note B_, 1
	octave 1
	note B_, 2
	octave 2
	note F#, 1
	octave 1
	note B_, 2
	octave 2
	note B_, 1
	note C_, 3
	octave 3
	note C_, 2
	octave 2
	note E_, 1
	note F_, 1
	note G_, 1
;Bar 9
	note F_, 1
	note F_, 1
	octave 1
	note F_, 2
	octave 2
	note C_, 1
	octave 1
	note F_, 2
	octave 2
	note F_, 1
	loopchannel 0, Music_LookPokefan_Ch2_loop

; ============================================================================================================

Music_LookPokefan_Ch3:
	notetype 12, $11
;Bar 1
	intensity $11
	note __, 8
Music_LookPokefan_Ch3_loop:
	octave 4
	note B_, 1
	intensity $21
	note B_, 1
	note __, 4
	intensity $11
	note B_, 3
;Bar 2
	octave 3
	note A#, 1
	note B_, 1
	octave 4
	note D_, 1
	note F_, 1
	intensity $21
	note F_, 1
	note __, 2
	intensity $11
	note E_, 1
	intensity $21
	note E_, 1
	note __, 4
	intensity $11
	note D#, 3
;Bar 3
	octave 3
	note F_, 1
	note G_, 1
	note A_, 1
	octave 4
	note D#, 1
	intensity $21
	note D#, 1
	note __, 4
	intensity $11
	note F_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note __, 1
	note B_, 2
;Bar 4
	note D_, 1
	note F_, 1
	note __, 1
	note G_, 1
	note G_, 1
	note __, 2
	note B_, 1
	note B_, 1
	note __, 2
	note B_, 1
	note B_, 1
	note __, 2
;Bar 5
	note A_, 1
	intensity $21
	note A_, 1
	note __, 2
	octave 5
	intensity $11
	note C_, 1
	intensity $21
	note C_, 1
	note __, 4
	octave 4
	intensity $11
	note B_, 1
	intensity $21
	note B_, 1
	note __, 1
	intensity $11
	note B_, 1
	note __, 2
;Bar 6
	note G_, 1
	intensity $21
	note G_, 1
	note __, 1
	intensity $11
	note G_, 1
	note __, 6
	note A#, 1
	intensity $21
	note A#, 1
	note __, 1
	intensity $11
	note A#, 1
	note __, 2
;Bar 7
	note A_, 1
	intensity $21
	note A_, 1
	note __, 1
	intensity $11
	note A_, 1
	note __, 6
	note G_, 1
	intensity $21
	note G_, 1
	note __, 1
	intensity $11
	note G_, 1
	note __, 2
;Bar 8
	note A_, 1
	intensity $21
	note A_, 1
	note __, 1
	intensity $11
	note A_, 1
	note __, 6
	note A#, 1
	intensity $21
	note A#, 1
	note __, 1
	intensity $11
	note A#, 1
	note __, 2
;Bar 9
	note A_, 1
	intensity $21
	note A_, 1
	note __, 1
	intensity $11
	note A_, 1
	note __, 4
	loopchannel 0, Music_LookPokefan_Ch3_loop

; ============================================================================================================

Music_LookPokefan_Ch4:
	togglenoise 2 ; WARNING: this might sound bad.
	notetype 12
;Bar 1
	note B_, 2
	note G_, 2
	note B_, 1
	note B_, 2
	note G_, 1
Music_LookPokefan_Ch4_loop:
	note C#, 3
	note G_, 1
	note G_, 1
	note B_, 2
	note G_, 1
;Bar 2
	note G_, 1
	note G_, 1
	note B_, 2
	note D#, 1
	note G_, 2
	note G_, 1
	note C#, 3
	note D#, 1
	note B_, 1
	note G_, 1
	note B_, 1
	note D#, 1
;Bar 3
	note G_, 1
	note G_, 1
	note B_, 2
	note G_, 1
	note B_, 2
	note G_, 1
	note C#, 3
	note G_, 1
	note G_, 1
	note B_, 2
	note G_, 1
;Bar 4
	note G_, 1
	note G_, 1
	note B_, 2
	note D#, 1
	note G_, 2
	note G_, 1
	note C#, 2
	note D#, 2
	note C#, 2
	note D#, 2
;Bar 5
	note C#, 2
	note D#, 2
	note C#, 1
	note D#, 3
	note C#, 3
	note G_, 1
	note G_, 1
	note B_, 2
	note G_, 1
;Bar 6
	note G_, 1
	note G_, 1
	note B_, 2
	note D#, 1
	note G_, 2
	note G_, 1
	note C#, 3
	note D#, 1
	note B_, 1
	note G_, 1
	note B_, 1
	note D#, 1
;Bar 7
	note G_, 1
	note G_, 1
	note B_, 2
	note G_, 1
	note B_, 2
	note G_, 1
	note C#, 3
	note G_, 1
	note G_, 1
	note B_, 2
	note G_, 1
;Bar 8
	note G_, 1
	note G_, 1
	note B_, 2
	note D#, 1
	note G_, 2
	note G_, 1
	note C#, 3
	note D#, 1
	note B_, 1
	note G_, 1
	note B_, 1
	note D#, 1
;Bar 9
	note G_, 1
	note G_, 1
	note B_, 2
	note G_, 1
	note B_, 2
	note G_, 1
	loopchannel 0, Music_LookPokefan_Ch4_loop

; ============================================================================================================

