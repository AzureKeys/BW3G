;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_InferEncounter:
	musicheader 4, 1, Music_InferEncounter_Ch1
	musicheader 1, 2, Music_InferEncounter_Ch2
	musicheader 1, 3, Music_InferEncounter_Ch3
	musicheader 1, 4, Music_InferEncounter_Ch4

Music_InferEncounter_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 136
;Bar 1
	octave 4
	intensity $c7
	note G#, 1
	note G_, 1
	note D#, 1
	note C_, 1
Music_InferEncounter_Ch1_loop:
	octave 3
	note B_, 10
	note __, 4
;Bar 2
	intensity $b7
	note A#, 1
	note B_, 1
	octave 4
	note C_, 4
	note __, 2
	octave 3
	note B_, 1
	octave 4
	intensity $a7
	note C_, 1
	intensity $c7
	note E_, 2
	intensity $b7
	note D#, 2
;Bar 3
	intensity $c7
	note G_, 2
	intensity $b7
	note F#, 2
	intensity $c7
	note A#, 10
	note __, 4
;Bar 4
	note B_, 1
	note __, 1
	note G#, 4
	note __, 2
	note A_, 1
	note __, 1
	note F#, 2
	note F_, 1
	note __, 1
;Bar 5
	note A_, 2
	note G_, 1
	note __, 1
	note G#, 10
	note __, 2
;Bar 6
	note A_, 1
	note G#, 1
	note E_, 1
	note C_, 1
	intensity $d7
	note D#, 10
	note __, 4
;Bar 7
	intensity $c7
	note E_, 1
	note __, 1
	note G_, 4
	note __, 2
	note F#, 1
	note __, 1
	intensity $d7
	note A_, 2
	intensity $c7
	note G#, 1
	note __, 1
;Bar 8
	octave 5
	intensity $d7
	note C_, 2
	octave 4
	intensity $c7
	note A#, 1
	note __, 1
	note B_, 11
	note __, 7
;Bar 9
	octave 5
	intensity $d7
	note C_, 1
	intensity $c7
	note C_, 1
	intensity $b7
	note C_, 1
	note __, 3
	intensity $c7
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
;Bar 10
	note C_, 1
	note __, 3
	octave 4
	note A#, 1
	note A#, 1
	intensity $d7
	note A#, 1
	note __, 3
	intensity $c7
	note A#, 1
	note __, 1
	note A#, 1
	note __, 3
;Bar 11
	note A#, 1
	note __, 3
	octave 5
	note C_, 1
	note C_, 1
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
;Bar 12
	note C_, 1
	note __, 1
	intensity $d7
	note D#, 1
	note __, 1
	octave 4
	notetype $6, $c7
	note C_, 1
	note __, 3
	intensity $b7
	note C_, 1
	note __, 3
	octave 5
	intensity $c7
	note D#, 2
	note __, 2
	octave 4
	note C_, 1
	note __, 3
	intensity $b7
	note C_, 1
	note __, 3
;Bar 13
	octave 5
	intensity $d7
	note D#, 2
	note __, 2
	octave 4
	intensity $c7
	note C_, 1
	note __, 3
	intensity $b7
	note C_, 1
	note __, 3
	octave 5
	intensity $c7
	note D#, 2
	note __, 2
	octave 4
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
	notetype $c, $c7
	octave 5
	note E_, 1
	note __, 3
;Bar 14
	octave 4
	note G#, 1
	note G_, 1
	note D#, 1
	note C_, 1
	loopchannel 0, Music_InferEncounter_Ch1_loop

; ============================================================================================================

Music_InferEncounter_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	note __, 4
Music_InferEncounter_Ch2_loop:
	octave 3
	intensity $97
	note C_, 1
	note D#, 1
	intensity $a7
	note F#, 1
	intensity $97
	note A_, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	intensity $a7
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note C_, 1
	octave 2
	intensity $97
	note A_, 1
	octave 3
	intensity $a7
	note D#, 1
	note C_, 1
;Bar 2
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note A_, 1
	intensity $97
	note F#, 1
	note C_, 1
	note D#, 1
	intensity $a7
	note F#, 1
	intensity $97
	note A_, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	intensity $a7
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note C_, 1
	intensity $97
	note D#, 1
	intensity $a7
	note F#, 1
	note D#, 1
;Bar 3
	note A_, 1
	intensity $97
	note F#, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	note C_, 1
	note D#, 1
	intensity $a7
	note F#, 1
	intensity $97
	note A_, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	intensity $a7
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note C_, 1
	octave 2
	intensity $97
	note A_, 1
	octave 3
	intensity $a7
	note D#, 1
	note C_, 1
;Bar 4
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note A_, 1
	intensity $97
	note F#, 1
	note C_, 1
	note D#, 1
	intensity $a7
	note F#, 1
	intensity $97
	note A_, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	intensity $a7
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note C_, 1
	intensity $97
	note D#, 1
	intensity $a7
	note F#, 1
	note D#, 1
;Bar 5
	note A_, 1
	intensity $97
	note F#, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	intensity $a7
	note F_, 1
	intensity $97
	note G#, 1
	intensity $a7
	note B_, 1
	intensity $97
	note G#, 1
	intensity $a7
	note F_, 1
	intensity $97
	note D_, 1
	octave 2
	intensity $a7
	note B_, 1
	intensity $97
	note G#, 1
	octave 3
	intensity $a7
	note D_, 1
	octave 2
	note B_, 1
;Bar 6
	octave 3
	note F_, 1
	intensity $97
	note D_, 1
	intensity $a7
	note G#, 1
	intensity $97
	note F_, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	intensity $a7
	note F_, 1
	intensity $97
	note G#, 1
	intensity $a7
	note B_, 1
	intensity $97
	note G#, 1
	intensity $a7
	note F_, 1
	intensity $97
	note D_, 1
	octave 2
	intensity $a7
	note B_, 1
	octave 3
	intensity $97
	note D_, 1
	intensity $a7
	note F_, 1
	note D_, 1
;Bar 7
	note G#, 1
	intensity $97
	note F_, 1
	intensity $a7
	note B_, 1
	intensity $97
	note G#, 1
	note C_, 1
	note D#, 1
	intensity $a7
	note F#, 1
	intensity $97
	note A_, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	intensity $a7
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note C_, 1
	octave 2
	intensity $97
	note A_, 1
	octave 3
	intensity $a7
	note D#, 1
	note C_, 1
;Bar 8
	note F#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note A_, 1
	intensity $97
	note F#, 1
	note C_, 1
	note D#, 1
	intensity $a7
	note F#, 1
	intensity $97
	note A_, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $97
	note A_, 1
	intensity $a7
	note F#, 1
	intensity $97
	note D#, 1
	intensity $b7
	note C_, 1
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
;Bar 9
	note D#, 1
	note F_, 1
	note G_, 1
	note B_, 1
	note __, 2
	intensity $a7
	note D#, 1
	intensity $97
	note D#, 1
	intensity $a7
	note D#, 1
	note __, 3
	note D#, 1
	note __, 1
	intensity $97
	note D#, 1
	note __, 3
;Bar 10
	intensity $a7
	note D#, 1
	note __, 3
	note F#, 1
	intensity $97
	note F#, 1
	intensity $a7
	note F#, 1
	note __, 3
	note F#, 1
	note __, 1
	intensity $97
	note F#, 1
	note __, 3
;Bar 11
	intensity $a7
	note F#, 1
	note __, 3
	note A#, 1
	note A#, 1
	note A#, 1
	note __, 3
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
;Bar 12
	note C_, 1
	intensity $97
	note D_, 1
	intensity $a7
	note D#, 1
	octave 4
	intensity $97
	note C_, 1
	octave 3
	intensity $a7
	note A_, 1
	note __, 1
	notetype $6, $a7
	octave 2
	note B_, 1
	note __, 3
	intensity $97
	note B_, 1
	note __, 3
	octave 3
	intensity $a7
	note A_, 2
	note __, 2
	octave 2
	note B_, 1
	note __, 3
	intensity $97
	note B_, 1
	note __, 3
;Bar 13
	octave 3
	intensity $a7
	note A_, 2
	note __, 2
	octave 2
	note B_, 1
	note __, 3
	intensity $97
	note B_, 1
	note __, 3
	octave 3
	intensity $a7
	note A_, 2
	note __, 2
	octave 2
	note B_, 1
	note __, 3
	note B_, 1
	note __, 3
	notetype $c, $a7
	octave 3
	note A#, 1
	note __, 3
;Bar 14
	octave 4
	note E_, 4
	loopchannel 0, Music_InferEncounter_Ch2_loop

; ============================================================================================================

Music_InferEncounter_Ch3:
	notetype 12, $13
;Bar 1
	intensity $23
	note __, 4
Music_InferEncounter_Ch3_loop:
	note __, 2
	octave 4
	note F#, 1
	note F#, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
;Bar 2
	note F#, 1
	note __, 3
	note F#, 1
	note F#, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 3
	note A_, 1
	note __, 3
;Bar 3
	note F#, 1
	note __, 3
	note F#, 1
	note F#, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 3
	note F#, 1
	note __, 3
;Bar 4
	note F#, 1
	note __, 3
	note F#, 1
	note F#, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 3
	note A_, 1
	note __, 3
;Bar 5
	note F#, 1
	note __, 3
	note F_, 1
	note F_, 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 3
	note F_, 1
	note __, 3
;Bar 6
	note F_, 1
	note __, 3
	note F_, 1
	note F_, 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 3
	note G#, 1
	note __, 3
;Bar 7
	note F_, 1
	note __, 3
	note F_, 1
	note F_, 1
	note F_, 1
	note __, 1
	note F_, 1
	note __, 3
	note F_, 1
	note __, 3
;Bar 8
	note F_, 1
	note __, 3
	note F#, 1
	note F#, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 3
	note A_, 1
	note __, 3
;Bar 9
	note F#, 1
	note __, 3
	note A_, 1
	note A_, 1
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
	note A_, 1
	note __, 3
;Bar 10
	note A_, 1
	note __, 3
	note A#, 1
	note A#, 1
	note A#, 1
	note __, 3
	note A#, 1
	note __, 1
	note A#, 1
	note __, 3
;Bar 11
	note A#, 1
	note __, 3
	octave 5
	note C_, 1
	note C_, 1
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
;Bar 12
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	notetype $6, $23
	octave 4
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
	octave 5
	note D#, 2
	note __, 2
	octave 4
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
;Bar 13
	octave 5
	note D#, 2
	note __, 2
	octave 4
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
	octave 5
	note D#, 2
	note __, 2
	octave 4
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
	notetype $c, $23
	octave 5
	note E_, 1
	note __, 3
;Bar 14
	note E_, 4
	loopchannel 0, Music_InferEncounter_Ch3_loop

; ============================================================================================================

Music_InferEncounter_Ch4:
	togglenoise 3 ; WARNING: this might sound bad.
	notetype 6
;Bar 1
	note __, 8
Music_InferEncounter_Ch4_loop:
	note B_, 4
	note A#, 2 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 4
	note A#, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 2 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 2
	note A#, 2
	note A#, 2 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 1
	note A#, 4
	note A#, 4
;Bar 3
	note A#, 2 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 4
	note A#, 4
;Bar 4
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 2
	note A#, 2
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
;Bar 5
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note B_, 4
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 4
	note A#, 4
;Bar 6
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 4
	note A#, 4
;Bar 7
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note B_, 4
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 4
	note A#, 4
;Bar 8
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note B_, 4
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 4
	note A#, 4
;Bar 9
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 6
	note A#, 2
	note A#, 2
	note A#, 8
	note A#, 4
	note A#, 8
;Bar 10
	note A#, 8
	note A#, 2
	note A#, 2
	note A#, 8
	note A#, 4
	note A#, 8
;Bar 11
	note A#, 8
	note A#, 2
	note A#, 2
	note A#, 8
	note A#, 4
	note A#, 4
;Bar 12
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note B_, 4
	note A#, 4
	note A#, 4
	note B_, 4
	note A#, 4
	note A#, 4
;Bar 13
	note B_, 4
	note A#, 4
	note A#, 4
	note B_, 4
	note A#, 4
	note A#, 4
	note B_, 8
;Bar 14
	note B_, 2
	note A#, 2
	note A#, 2
	note A#, 2
	loopchannel 0, Music_InferEncounter_Ch4_loop

; ============================================================================================================

