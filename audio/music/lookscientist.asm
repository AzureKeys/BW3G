;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookScientist:
	musicheader 3, 1, Music_LookScientist_Ch1
	musicheader 1, 2, Music_LookScientist_Ch2
	musicheader 1, 3, Music_LookScientist_Ch3

Music_LookScientist_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 156
;Bar 1
	octave 4
	intensity $c7
	note D#, 6
	intensity $b7
	note D_, 2
	note C_, 2
	octave 3
	note G_, 2
	intensity $c7
	note A#, 6
;Bar 2
	intensity $b7
	note A_, 2
	note E_, 2
	note F_, 2
	intensity $c7
	note G#, 2
	intensity $b7
	note G_, 2
	note D#, 2
	note E_, 2
;Bar 3
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note D_, 2
	note D#, 2
	note G#, 2
	note G_, 2
	octave 4
	note D_, 2
	note C#, 2
;Bar 4
	intensity $c7
	note E_, 6
	intensity $b7
	note D#, 2
	note D_, 2
	octave 3
	note A_, 2
	note A#, 11
;Bar 5
	note __, 3
	notetype 6, $c7
	note B_, 1
	note __, 1
	intensity $67
	note B_, 1
	note __, 1
	octave 4
	intensity $b7
	note B_, 1
	note __, 1
	intensity $57
	note B_, 1
	note __, 1
	octave 3
	intensity $b7
	note B_, 1
	note __, 1
	intensity $67
	note B_, 1
	note __, 1
;Bar 6
	note __, 16
	note __, 16
	loopchannel 0, Music_LookScientist_Ch1

; ============================================================================================================

Music_LookScientist_Ch2:
	dutycycle $1
	notetype 8, $a7
;Bar 1
	octave 2
	note C_, 2
	note __, 1
	intensity $47
	note C_, 2
	note __, 1
	octave 3
	notetype 12, $97
	note G_, 1
	note __, 1
	intensity $47
	note G_, 1
	note __, 1
	intensity $97
	note G_, 1
	note __, 1
	intensity $47
	note G_, 1
	note __, 1
	octave 1
	notetype 8, $97
	note G_, 2
	note __, 1
	intensity $47
	note G_, 2
	note __, 1
;Bar 2
	octave 3
	notetype 12, $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
	intensity $97
	note G#, 1
	note __, 1
	intensity $47
	note G#, 1
	note __, 1
	octave 2
	notetype 8, $97
	note C_, 2
	note __, 1
	intensity $37
	note C_, 2
	note __, 1
	octave 3
	notetype 12, $97
	note G_, 1
	note __, 1
	intensity $47
	note G_, 1
	note __, 1
;Bar 3
	intensity $97
	note G_, 1
	note __, 1
	intensity $47
	note G_, 1
	note __, 1
	octave 1
	notetype 8, $97
	note G_, 2
	note __, 1
	intensity $37
	note G_, 2
	note __, 1
	octave 3
	notetype 12, $97
	note G_, 1
	note __, 1
	intensity $47
	note G_, 1
	note __, 1
	intensity $97
	note G_, 1
	note __, 1
	intensity $47
	note G_, 1
	note __, 1
;Bar 4
	octave 1
	notetype 8, $a7
	note B_, 2
	note __, 1
	intensity $47
	note B_, 2
	note __, 1
	octave 3
	notetype 12, $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
	intensity $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
	octave 1
	notetype 8, $97
	note F#, 2
	note __, 1
	intensity $47
	note F#, 2
	note __, 1
;Bar 5
	octave 3
	notetype 12, $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
	intensity $97
	note G#, 1
	note __, 1
	intensity $47
	note G#, 1
	note __, 1
	octave 1
	notetype 8, $97
	note B_, 2
	note __, 1
	intensity $37
	note B_, 2
	note __, 1
	octave 3
	notetype 12, $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
;Bar 6
	intensity $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
	octave 1
	notetype 8, $97
	note F#, 2
	note __, 1
	intensity $37
	note F#, 2
	note __, 1
	octave 3
	notetype 12, $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
	intensity $97
	note F#, 1
	note __, 1
	intensity $47
	note F#, 1
	note __, 1
	loopchannel 0, Music_LookScientist_Ch2

; ============================================================================================================

Music_LookScientist_Ch3:
	notetype 12, $13
;Bar 1
	octave 5
	intensity $23
	note D#, 8
	note G_, 4
	note F#, 8
;Bar 2
	note D_, 4
	note F_, 6
	note D#, 2
;Bar 3
	note C_, 4
	octave 4
	note B_, 8
	octave 5
	note D_, 4
;Bar 4
	note C#, 8
	note E_, 4
	octave 4
	note A#, 12
;Bar 5
	note B_, 12
;Bar 6
	octave 5
	note C#, 7
	note __, 5
	loopchannel 0, Music_LookScientist_Ch3

; ============================================================================================================

