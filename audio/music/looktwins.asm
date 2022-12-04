;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookTwins:
	musicheader 3, 1, Music_LookTwins_Ch1
	musicheader 1, 2, Music_LookTwins_Ch2
	musicheader 1, 3, Music_LookTwins_Ch3

Music_LookTwins_Ch1:
	volume $77
	dutycycle $2
	notetype 6, $a7
	tempo 119
;Bar 1
	octave 4
	intensity $b7
	note A_, 2
	note __, 2
	octave 5
	note C#, 1
	note D_, 1
	note __, 2
	notetype 12, $b7
	octave 4
	note D_, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note E_, 1
	note F_, 1
	note F#, 1
Music_LookTwins_Ch1_loop:
;Bar 2
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note B_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F#, 1
	note __, 1
;Bar 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	note B_, 1
	note __, 3
	note G_, 1
	note __, 3
	note D_, 1
	note __, 1
;Bar 4
	octave 5
	note C_, 1
	note __, 1
	octave 4
	note B_, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 1
	note __, 3
	note B_, 1
	note __, 1
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 5
	note E_, 1
	note __, 1
	note G_, 1
	note __, 13
;Bar 6
	note B_, 1
	note __, 1
	octave 5
	note C_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 4
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note B_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 7
	note C_, 1
	note __, 1
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	note A_, 1
	note __, 1
;Bar 8
	note G_, 1
	note __, 1
	note D_, 1
	note __, 3
	octave 3
	note B_, 1
	note __, 1
	note G_, 1
	note __, 3
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 3
;Bar 9
	note D_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 3
	octave 4
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note __, 1
	loopchannel 0, Music_LookTwins_Ch1_loop

; ============================================================================================================

Music_LookTwins_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	note __, 16
Music_LookTwins_Ch2_loop:
;Bar 2
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note D_, 1
	note __, 3
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 3
	note D_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
;Bar 3
	note G_, 1
	note __, 1
	note G_, 1
	note __, 3
	octave 2
	note C_, 1
	note __, 5
	note D_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
;Bar 4
	note G_, 1
	note __, 1
	octave 2
	note D_, 1
	note __, 3
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 3
	note D_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
;Bar 5
	note G_, 1
	note __, 1
	note G_, 1
	note __, 3
	octave 2
	note C_, 1
	note __, 5
	note D_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
;Bar 6
	note E_, 1
	note __, 1
	note E_, 1
	note __, 3
	octave 2
	note E_, 1
	note __, 3
	octave 1
	note B_, 1
	note __, 1
	octave 2
	note E_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
;Bar 7
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 3
	note D_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
;Bar 8
	note G_, 1
	note __, 1
	octave 2
	note D_, 1
	note __, 3
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 3
	note D_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
;Bar 9
	octave 2
	note G_, 1
	note __, 1
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note D_, 1
	note __, 1
	octave 1
	note G_, 1
	note __, 3
	octave 2
	note C_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 1
	note D_, 1
	note __, 1
	loopchannel 0, Music_LookTwins_Ch2_loop

; ============================================================================================================

Music_LookTwins_Ch3:
	notetype 12, $10
;Bar 1
	note __, 16
Music_LookTwins_Ch3_loop:
;Bar 2
	intensity $10
	note __, 4
	octave 4
	note G_, 2
	note __, 4
	note G_, 2
	note __, 4
;Bar 3
	note B_, 2
	note B_, 2
	note __, 2
	note G_, 2
	note __, 2
	note G_, 2
	note A_, 2
	note __, 6
;Bar 4
	note G_, 2
	note __, 4
	note G_, 2
	note __, 4
;Bar 5
	note B_, 2
	note B_, 2
	note __, 2
	note G_, 2
	note __, 2
	note G_, 2
	note A_, 2
	note __, 6
;Bar 6
	note G_, 2
	note __, 2
	note F#, 2
	note G_, 2
	note __, 4
;Bar 7
	note E_, 2
	note E_, 2
	note __, 2
	note G_, 2
	note __, 2
	note G_, 2
	note A_, 2
	note __, 6
;Bar 8
	note G_, 2
	note __, 4
	note G_, 2
	note __, 2
	note G_, 2
;Bar 9
	note __, 2
	note D_, 2
	note __, 2
	note G_, 2
	note __, 2
	note E_, 2
	note F#, 2
	note __, 2
	loopchannel 0, Music_LookTwins_Ch3_loop

; ============================================================================================================

