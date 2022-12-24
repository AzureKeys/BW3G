;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookLass:
	musicheader 3, 1, Music_LookLass_Ch1
	musicheader 1, 2, Music_LookLass_Ch2
	musicheader 1, 3, Music_LookLass_Ch3

Music_LookLass_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $77
	tempo 111
;Bar 1
Music_LookLass_Ch1_loop:
	note __, 2
	octave 3
	note F_, 2 ; WARNING: Auto-Sync says: Rounded up!
	octave 4
	note F_, 6
	note __, 2
	note D#, 2
	note __, 2 ; WARNING: Auto-Sync says: Rounded up!
;Bar 2
	note D_, 1
	note __, 1
	note D_, 1
	note __, 2
	note C#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4
	octave 3
	note G_, 2
	octave 4
	note G#, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 3
	note D#, 1
	note __, 1
	note D#, 1
	note __, 3
	note F_, 4
	notetype 6, $77
	octave 3
	note B_, 1
	octave 4
	note C_, 3
	notetype 12, $97
	note G_, 2
	note __, 2
;Bar 4
	octave 3
	note F_, 1
	note __, 1
	note C_, 2
	octave 4
	note D#, 2
	note __, 2
	notetype 6, $77
	octave 3
	note B_, 1
	octave 4
	note C_, 3
	notetype 12, $97
	octave 3
	note C_, 2
	octave 4
	note F_, 2
	octave 3
	note A_, 2
;Bar 5
	octave 4
	note C_, 1
	note __, 1
	octave 3
	note A#, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 4
	note F_, 4
	octave 3
	note A#, 1
	note __, 1
	octave 4
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 6
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note D#, 1
	notetype 6, $97
	note E_, 1
	note F_, 9
	notetype 12, $97
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
;Bar 7
	octave 4
	note F_, 2
	note D#, 2
	note D_, 1
	note __, 1
	note D#, 3
	note __, 1
	note D#, 3
	note __, 1
	octave 3
	note A#, 1
	note __, 1
;Bar 8
	note F_, 1
	note __, 1
	note F_, 1
	note __, 3
	octave 4
	note D_, 2
	note __, 2
	note D#, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 1
	note __, 1
;Bar 9
	notetype 6, $97
	octave 5
	note D_, 1
	note __, 3
	note D_, 1
	note __, 3
	octave 4
	notetype 12, $97
	note E_, 1
	note __, 1
	note F_, 4
	octave 3
	note F_, 1
	notetype 6, $77
	note __, 3
	octave 4
	note D_, 1
	notetype 12, $77
	note __, 1
	note F_, 1
	note __, 1
;Bar 10
	octave 5
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
	octave 4
	note B_, 1
	note __, 1
	note B_, 1
	note __, 2
	note G#, 1
	octave 5
	note C_, 1
	note __, 3
;Bar 11
	octave 4
	note F_, 1
	note __, 1
	octave 3
	note A_, 2
	octave 5
	note F_, 4
	octave 3
	note F_, 1
	note __, 1
	octave 4
	note D#, 2
	note __, 2
	loopchannel 0, Music_LookLass_Ch1_loop

; ============================================================================================================

Music_LookLass_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
Music_LookLass_Ch2_loop:
	intensity $b7
	note __, 2
	octave 1
	intensity $f7
	note F_, 1
	note __, 1
	octave 2
	note F_, 5
	note __, 1
	octave 1
	note F_, 1
	note __, 1
	octave 2
	note F_, 1
	note __, 1
	octave 1
	intensity $e7
	note F_, 1
	note __, 1
;Bar 2
	intensity $f7
	note A#, 1
	note __, 1
	intensity $e7
	note A#, 1
	note __, 7
	intensity $f7
	note G_, 1
	note __, 1
	octave 2
	note F_, 2
	note __, 2
;Bar 3
	note C_, 1
	note __, 1
	intensity $e7
	note C_, 1
	note __, 7
	octave 1
	intensity $f7
	note C_, 1
	note __, 1
	octave 2
	note C_, 2
	note __, 2
;Bar 4
	octave 1
	note F_, 1
	note __, 1
	intensity $e7
	note F_, 1
	note __, 3
	note F_, 1
	note __, 1
	intensity $f7
	note A_, 1
	note __, 1
	intensity $e7
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
;Bar 5
	intensity $f7
	note A#, 1
	note __, 1
	intensity $e7
	note A#, 1
	note __, 3
	intensity $f7
	note A#, 4
	intensity $e7
	note A#, 1
	note __, 1
	intensity $f7
	note D_, 1
	note __, 1
	intensity $e7
	note F_, 1
	note __, 1
;Bar 6
	intensity $f7
	note B_, 4
	note __, 2
	intensity $e7
	note B_, 2
	intensity $f7
	note G_, 4
	note __, 2
	intensity $e7
	note G_, 2
;Bar 7
	octave 2
	intensity $f7
	note C_, 4
	note __, 2
	intensity $e7
	note C_, 2
	octave 1
	intensity $f7
	note D#, 4
	note __, 2
	intensity $e7
	note D#, 2
;Bar 8
	intensity $f7
	note F_, 1
	note __, 1
	intensity $e7
	note F_, 1
	note __, 13
;Bar 9
	intensity $f7
	note F_, 1
	note __, 1
	intensity $e7
	note F_, 1
	note __, 13
;Bar 10
	octave 2
	intensity $f7
	note C_, 1
	note __, 3
	intensity $e7
	note C_, 1
	note __, 3
	octave 1
	intensity $f7
	note B_, 1
	note __, 1
	intensity $e7
	note B_, 1
	note __, 3
	octave 2
	note C_, 1
	note __, 3
;Bar 11
	octave 1
	intensity $f7
	note F_, 1
	note __, 1
	octave 2
	note F_, 4
	note __, 2
	octave 1
	note F_, 1
	note __, 1
	octave 2
	note F_, 1
	note __, 1
	octave 1
	intensity $e7
	note F_, 1
	note __, 1
	loopchannel 0, Music_LookLass_Ch2_loop

; ============================================================================================================

Music_LookLass_Ch3:
	notetype 12, $13
;Bar 1
Music_LookLass_Ch3_loop:
	octave 5
	note F_, 1
	note __, 1
	octave 3
	note F_, 1
	note __, 1
	octave 4
	note F_, 1
	note __, 1
	octave 3
	note F_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A_, 1
	note __, 1
	notetype 6, $13
	note F_, 1
	note __, 3
	notetype 12, $13
	octave 5
;Bar 2
	note C_, 1
	note __, 1
	octave 4
	note A#, 1
	note __, 1
	note A_, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 5
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 4
;Bar 3
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 4
	note B_, 1
	note __, 1
	octave 5
	note C_, 1
	note __, 1
	octave 4
;Bar 4
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 1
	note __, 1
	note A_, 1
	note __, 1
	note G#, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 5
;Bar 5
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 5
;Bar 6
	note F_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G#, 1
	note __, 1
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 4
	note G#, 1
	note __, 1
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 5
;Bar 7
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note F_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 4
	note F#, 1
	note __, 1
	note F_, 1
	note __, 1
	note D#, 1
	note __, 1
;Bar 8
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 5
	note C_, 1
	note __, 1
	octave 4
	note A#, 1
	note __, 1
	octave 5
;Bar 9
	note D#, 1
	note __, 1
	note D_, 1
	note __, 1
	note C#, 1
	note __, 1
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
;Bar 10
	note F_, 1
	note __, 3
	note F_, 1
	note __, 3
	note E_, 1
	note __, 1
	note E_, 1
	note __, 3
	note F_, 1
	note __, 3
;Bar 11
	octave 4
	note F_, 1
	note __, 1
	octave 5
	note F_, 4
	note __, 2
	octave 4
	note F_, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	loopchannel 0, Music_LookLass_Ch3_loop

; ============================================================================================================

