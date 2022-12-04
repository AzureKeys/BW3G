;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookLady:
	musicheader 4, 1, Music_LookLady_Ch1
	musicheader 1, 2, Music_LookLady_Ch2
	musicheader 1, 3, Music_LookLady_Ch3
	musicheader 1, 4, Music_LookLady_Ch4

Music_LookLady_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 212
;Bar 1
	octave 4
	intensity $d7
	note A_, 1
	octave 5
	intensity $e7
	note A_, 12
	notetype 6, $c7
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 4
	intensity $b7
	note B_, 1
;Bar 2
	intensity $97
	note A_, 1
	intensity $87
	note G_, 1
Music_LookLady_Ch1_loop:
	notetype 12, $e7
	octave 1
	note E_, 1
	note __, 1
	intensity $d7
	note E_, 2
	intensity $c7
	note B_, 1
	octave 2
	intensity $e7
	note D_, 2
	octave 1
	note A_, 1
	note __, 1
	intensity $b7
	note A_, 1
	note __, 1
	intensity $c7
	note A_, 1
	octave 2
	intensity $e7
	note C#, 2
	note E_, 2
;Bar 3
	octave 1
	note F#, 1
	note __, 1
	intensity $d7
	note F#, 2
	octave 2
	intensity $c7
	note C#, 1
	intensity $e7
	note E_, 2
	notetype 6, $e7
	octave 1
	note B_, 2
	note __, 2
	intensity $b7
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	intensity $c7
	note B_, 1
	note __, 1
	octave 2
	intensity $e7
	note D#, 2
	note F#, 6
;Bar 4
	octave 1
	note E_, 2
	intensity $b7
	note E_, 1
	note __, 1
	intensity $d7
	note E_, 1
	note __, 1
	notetype 12, $b7
	note E_, 1
	intensity $c7
	note B_, 1
	octave 2
	intensity $e7
	note D_, 2
	octave 1
	note A_, 1
	note __, 1
	intensity $b7
	note A_, 1
	note __, 1
	intensity $c7
	note A_, 1
	octave 2
	intensity $e7
	note C#, 1
	note E_, 3
;Bar 5
	octave 1
	note F#, 1
	note __, 1
	intensity $d7
	note F#, 2
	octave 2
	intensity $c7
	note C#, 1
	intensity $e7
	note E_, 2
	octave 1
	note B_, 1
	note __, 1
	notetype 6, $b7
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	intensity $c7
	note B_, 1
	note __, 1
	octave 2
	intensity $e7
	note D#, 2
	octave 1
	note A_, 2
	note __, 2
;Bar 6
	note F#, 2
	loopchannel 0, Music_LookLady_Ch1_loop

; ============================================================================================================

Music_LookLady_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	octave 3
	intensity $c7
	note A_, 1
	octave 4
	intensity $d7
	note A_, 3
	note G_, 1
	intensity $b7
	note F_, 1
	intensity $a7
	note E_, 1
	intensity $97
	note D_, 1
	octave 3
	notetype 6, $97
	note A#, 2
	octave 4
	intensity $c7
	note D_, 1
	note __, 1
	intensity $b7
	note D_, 2
	note __, 2
	intensity $d7
	note D_, 2
	note __, 2
	intensity $c7
	note E_, 6
Music_LookLady_Ch2_loop:
;Bar 2
	notetype 6, $a7
	note D_, 4
	intensity $c7
	note C#, 1
	note C_, 1
	octave 3
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	octave 4
	note E_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	intensity $97
	note B_, 2
	octave 4
	note C#, 14
;Bar 3
	intensity $a7
	note E_, 4
	intensity $b7
	note D#, 1
	note D_, 1
	intensity $c7
	note C#, 2
	note __, 2
	note C#, 1
	note D_, 1
	note F#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	notetype 12, $c7
	note C#, 1
	intensity $b7
	note D#, 1
	note __, 1
	intensity $c7
	note E_, 1
	intensity $b7
	note D#, 4
;Bar 4
	note __, 1
	intensity $c7
	note F#, 1
	intensity $b7
	note G_, 1
	intensity $97
	note A_, 1
	note __, 1
	intensity $c7
	note A_, 1
	intensity $b7
	note G_, 1
	note F#, 1
	intensity $a7
	note D#, 1
	note E_, 7
;Bar 5
	note __, 1
	intensity $c7
	note C#, 1
	intensity $b7
	note D_, 1
	note E_, 1
	note __, 1
	intensity $c7
	note E_, 1
	intensity $b7
	note C#, 1
	octave 3
	note B_, 3
	octave 4
	note C#, 1
	note D#, 3
	note E_, 1
;Bar 6
	intensity $a7
	note F#, 1
	loopchannel 0, Music_LookLady_Ch2_loop

; ============================================================================================================

Music_LookLady_Ch3:
	notetype 6, $10
;Bar 1
	intensity $20
	note __, 2
	octave 5
	note A_, 4
	note __, 2
	note G_, 2
	note __, 4
	note G_, 4
	note D_, 4
	note __, 2
	note D_, 1
	note __, 3
	note E_, 6
Music_LookLady_Ch3_loop:
;Bar 2
	note F#, 8
	note __, 2
	note F#, 4
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
	note F_, 6
;Bar 3
	note E_, 8
	note __, 2
	note E_, 4
	note G#, 1
	note __, 3
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G_, 5
;Bar 4
	note __, 1
	note F#, 8
	note __, 2
	note F#, 4
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
	note F_, 6
;Bar 5
	note E_, 8
	note __, 2
	note E_, 4
	note G#, 1
	note __, 3
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 3
	note G_, 6
	loopchannel 0, Music_LookLady_Ch3_loop

; ============================================================================================================

Music_LookLady_Ch4:
	togglenoise 1 ; WARNING: this might sound bad.
	notetype 12
;Bar 1
	note __, 1
	note C_, 1
	note E_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note E_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note E_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note E_, 1
	note C_, 1
Music_LookLady_Ch4_loop:
;Bar 2
	note C_, 1
	note C_, 1
	note E_, 1
	note C_, 1
	loopchannel 15, Music_LookLady_Ch4_loop
;Bar 5
	note E_, 1
	note C_, 1
	note E_, 1
	note C_, 1
	loopchannel 0, Music_LookLady_Ch4_loop

; ============================================================================================================

