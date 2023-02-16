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
	tempo 129
;Bar 1
	octave 3
	intensity $c7
	note A_, 1
	intensity $b7
	note A_, 1
	note __, 1
	intensity $c7
	note B_, 1
	intensity $b7
	note B_, 1 ; WARNING: Auto-Sync says: Rounded down!
	note __, 1
	octave 4
	intensity $c7
	note C_, 1 ; WARNING: Auto-Sync says: Rounded down!
	intensity $b7
	note C_, 1 ; WARNING: Auto-Sync says: Rounded up!
	note __, 2
	intensity $c7
	note C#, 2
	note __, 4 ; WARNING: Auto-Sync says: Rounded down!
;Bar 2
	octave 3
	note A_, 6 ; WARNING: Auto-Sync says: Rounded down!
	note __, 4 ; WARNING: Auto-Sync says: Rounded down!
	note F_, 4 ; WARNING: Auto-Sync says: Rounded up!
	intensity $b7
	note G_, 2
Music_InferEncounter_Ch1_loop:
;Bar 3
	intensity $c7
	note A_, 4
	note __, 2
	octave 4
	note D_, 4
	note E_, 4
	note D_, 2 ; WARNING: Auto-Sync says: Rounded up!
;Bar 4
	note C_, 5
	note __, 5
	octave 3
	note A#, 4
	octave 4
	note C_, 2
;Bar 5
	note D_, 11
	note __, 5
;Bar 6
	intensity $d7
	note E_, 5
	note __, 5
	intensity $c7
	note C#, 4
	intensity $b7
	note D_, 2
;Bar 7
	intensity $c7
	note E_, 4
	note __, 2
	intensity $d7
	note A#, 4
	note A_, 4
	intensity $c7
	note G_, 2
;Bar 8
	intensity $d7
	note F_, 5
	note __, 3
	intensity $c7
	note E_, 3
	note F_, 3
	octave 3
	note A_, 14
;Bar 9
	note __, 4
;Bar 10
	note A_, 5
	note __, 5
	note F#, 4
	intensity $b7
	note G_, 2
;Bar 11
	intensity $c7
	note A_, 4
	note __, 2
	octave 4
	note C_, 4
	note D#, 4
	note D_, 2
;Bar 12
	note C_, 7
	note __, 3
	octave 3
	note A#, 4
	octave 4
	note C_, 2
;Bar 13
	note D_, 4
	note __, 2
	note E_, 4
	intensity $d7
	note F_, 4
	note G_, 2
;Bar 14
	note A_, 1
	note A_, 1
	note __, 2
	intensity $c7
	note D_, 2
	note E_, 4
	note F_, 4
	note __, 2
;Bar 15
	intensity $d7
	note E_, 1
	intensity $c7
	note E_, 1
	note __, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 4
	note D_, 4
	intensity $d7
	note F_, 2
;Bar 16
	intensity $c7
	note E_, 8
	note __, 8
;Bar 17
	note D_, 16
;Bar 18
	note D_, 10
	note __, 6
;Bar 19
	octave 3
	note A_, 1
	intensity $b7
	note A_, 1
	note __, 1
	intensity $c7
	note B_, 1
	intensity $b7
	note B_, 1
	note __, 1
	octave 4
	intensity $c7
	note C_, 1
	note C_, 1
	note __, 2
	intensity $d7
	note C#, 5
	note __, 1
;Bar 20
	octave 3
	intensity $c7
	note A_, 6
	note __, 4
	note F_, 4
	intensity $b7
	note G_, 2
	loopchannel 0, Music_InferEncounter_Ch1_loop

; ============================================================================================================

Music_InferEncounter_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	intensity $c7
	note A_, 1
	note A_, 1
	note __, 1
	note G#, 1
	note G#, 1
	note __, 1
	note G_, 1
	note G_, 2
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note A_, 1
	note __, 1
	note A_, 1
;Bar 2
	note __, 4
	octave 2
	note A_, 1
	note __, 2
	note D_, 2
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 2
Music_InferEncounter_Ch2_loop:
;Bar 3
	note D_, 2
	note __, 2
	note A_, 1
	note __, 2
	note D_, 2
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 1
	note A_, 1
;Bar 4
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note G_, 2
	note __, 2
	octave 2
	note D_, 1
	note __, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note G_, 2
	note __, 1
	note G_, 2
	octave 2
	note D_, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note G_, 2
;Bar 5
	note G_, 2
	note __, 2
	octave 2
	note D_, 1
	note __, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note G_, 2
	note __, 1
	note G_, 2
	octave 2
	note D_, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note G_, 1
	octave 2
	note D_, 1
;Bar 6
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 2
	note __, 2
	octave 2
	note E_, 1
	note __, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 2
	note __, 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 2
;Bar 7
	note A_, 2
	note __, 2
	octave 2
	note E_, 1
	note __, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 2
	note __, 1
	note A_, 2
	octave 2
	note E_, 2
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 1
	octave 2
	note E_, 1
;Bar 8
	note D_, 2
	note __, 2
	note A_, 1
	note __, 2
	note D_, 2
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 2
;Bar 9
	note A_, 1
	note A_, 1
	note __, 4
	note A_, 1
	note A_, 1
	note __, 4
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 1
	note A_, 1
	octave 2
	note A_, 1
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 1
;Bar 10
	octave 2
	note D_, 2
	note __, 2
	note A_, 1
	note __, 2
	note D_, 2
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 2
;Bar 11
	note F#, 2
	note __, 2
	octave 3
	note D_, 1
	note __, 2
	octave 2
	note F#, 2
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 1
	note A_, 1
;Bar 12
	note G_, 2
	note __, 1
	note G_, 1
	octave 3
	note D_, 1
	note D_, 1
	note __, 1
	octave 2
	note G_, 2
	note __, 1
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
;Bar 13
	note G#, 2
	note __, 1
	note E_, 1
	octave 3
	note D_, 1
	note D_, 1
	note __, 1
	octave 2
	note E_, 2
	note __, 1
	note G#, 2
	octave 3
	note D_, 2
	octave 2
	note G#, 2
;Bar 14
	note A_, 1
	note A_, 1
	note __, 4
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 1
	note A_, 1
	note __, 2
	octave 2
	note A_, 1
	note A_, 1
	note __, 4
;Bar 15
	note G#, 1
	note G#, 1
	note __, 4
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A_, 1
	note A_, 1
	note __, 2
	octave 2
	note A_, 1
	note A_, 1
	note __, 4
;Bar 16
	note D_, 2
	note __, 1
	note D_, 1
	note A_, 1
	note A_, 1
	note __, 1
	note D_, 2
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 2
;Bar 17
	note C_, 2
	note __, 1
	note C_, 1
	note A_, 1
	note A_, 1
	note __, 1
	note C_, 2
	note __, 1
	note C_, 2
	note A_, 2
	note C_, 2
;Bar 18
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A#, 2
	note __, 1
	note A#, 1
	octave 2
	note A_, 1
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A#, 2
	note __, 3
	note A#, 2
	octave 2
	note A_, 1
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A#, 1
	octave 2
	note C_, 1
	octave 1 ;WARNING: octave 1 isn't supported, won't work correctly
	note A#, 1
;Bar 19
	note A_, 1
	note A_, 1
	note __, 1
	note G#, 1
	note G#, 1
	note __, 1
	note G_, 1
	note G_, 2
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note A_, 1
	note __, 1
	note A_, 1
;Bar 20
	octave 2
	note D_, 2
	note __, 2
	note A_, 1
	note __, 2
	note D_, 2
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 2
	loopchannel 0, Music_InferEncounter_Ch2_loop

; ============================================================================================================

Music_InferEncounter_Ch3:
	notetype 12, $1b
;Bar 1
	octave 4
	intensity $2b
	note E_, 1
	note E_, 1
	note __, 1
	note F#, 1
	note F#, 1
	note __, 1
	note G_, 1
	note G_, 1
	note __, 2
	note G_, 5
	note __, 5
;Bar 2
	note D_, 6
	note E_, 4
	note F_, 2
Music_InferEncounter_Ch3_loop:
;Bar 3
	octave 3
	note A_, 8
	note __, 2
	note G#, 4
	note A_, 2
;Bar 4
	note A#, 8
	note __, 2
	octave 4
	note C_, 4
	note D_, 2
;Bar 5
	note F#, 8
	note __, 2
	note F_, 4
	note D_, 2
;Bar 6
	note C#, 8
	note __, 2
	octave 3
	note A_, 4
	octave 4
	note D_, 2
;Bar 7
	note C#, 6
	note E_, 4
	octave 3
	note A#, 4
	note A_, 2
;Bar 8
	octave 4
	note D_, 6
	note __, 2
	note E_, 3
	note F_, 3
	note D_, 2
;Bar 9
	note C#, 1
	note C#, 1
	note __, 4
	note C#, 1
	note C#, 1
	note __, 4
	octave 3
	note A_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
;Bar 10
	note D_, 6
	octave 3
	note A_, 4
	octave 4
	note D#, 4
	note D_, 2
;Bar 11
	note C_, 6
	octave 3
	note F#, 4
	octave 4
	note D#, 4
	note D_, 2
;Bar 12
	octave 3
	note A#, 6
	note G_, 4
	octave 4
	note D_, 6
;Bar 13
	octave 3
	note B_, 6
	note G#, 4
	octave 4
	note D_, 4
	note E_, 2
;Bar 14
	note F_, 1
	note F_, 1
	note __, 4
	note D_, 1
	note D_, 1
	note __, 2
	note G_, 1
	note G_, 1
	note G#, 1
	note A_, 1
	octave 3
	note A_, 1
	note A_, 1
;Bar 15
	octave 4
	note E_, 1
	note E_, 1
	note __, 4
	note C#, 1
	note C#, 1
	note __, 2
	note G_, 1
	note G_, 1
	note G#, 1
	note A_, 1
	octave 3
	note A_, 1
	note A_, 1
;Bar 16
	octave 4
	note F_, 1
	note E_, 1
	note __, 1
	note D_, 3
	octave 3
	note A_, 4
	note A_, 2
	octave 4
	note D_, 2
	note E_, 2
;Bar 17
	note F_, 1
	note E_, 1
	note __, 1
	note D_, 3
	octave 3
	note A_, 4
	note A_, 2
	octave 4
	note D_, 2
	note E_, 2
;Bar 18
	note F_, 1
	note E_, 1
	note __, 1
	note D_, 3
	octave 3
	note A_, 4
	note A_, 2
	octave 4
	note D_, 2
	note E_, 2
;Bar 19
	note E_, 1
	note E_, 1
	note __, 1
	note F#, 1
	note F#, 1
	note __, 1
	note G_, 1
	note G_, 1
	note __, 2
	note G_, 5
	note __, 1
;Bar 20
	note D_, 3
	note D_, 5
	note __, 2
	note E_, 4
	note F_, 2
	loopchannel 0, Music_InferEncounter_Ch3_loop

; ============================================================================================================

Music_InferEncounter_Ch4:
	togglenoise 3 ; WARNING: this might sound bad.
	notetype 12
;Bar 1
	note C#, 1
	note C#, 2
	note C#, 1
	note C#, 2
	note C#, 1
	note C#, 3
	note B_, 2
	note F#, 1
	note F#, 1
	note G#, 1
	note G#, 1
;Bar 2
	note C#, 1
	note C#, 1
	note G_, 1
	note G#, 1
	note B_, 6
	note A#, 2
	note D_, 2
	note A#, 2
Music_InferEncounter_Ch4_loop:
;Bar 3
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 1
	note D_, 1
;Bar 4
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 2
;Bar 5
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 1
	note A#, 2
	note D_, 1
;Bar 6
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 2
;Bar 7
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 1
	note A#, 2
	note D_, 1
;Bar 8
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 2
;Bar 9
	note C#, 1
	note C#, 1
	note A#, 4
	note C#, 1
	note C#, 1
	note A#, 2
	note G_, 1
	note G_, 1
	note F#, 1
	note F#, 1
	note G_, 1
	note G#, 1
;Bar 10
	note B_, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 1
	note A#, 2
	note D_, 1
;Bar 11
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 2
;Bar 12
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 1
	note A#, 2
	note D_, 1
;Bar 13
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 2
	note D_, 1
	note D_, 1
	note A#, 2
	note C#, 1
	note C#, 1
	note F#, 1
	note G_, 1
;Bar 14
	note F#, 1
	note F#, 3
	note A#, 2
	note B_, 3
	note F_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note F#, 1
	note G_, 1
	note G#, 1
;Bar 15
	note F#, 1
	note F#, 3
	note A#, 2
	note B_, 3
	note F_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note F#, 1
	note G_, 1
	note G#, 1
;Bar 16
	note B_, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 1
	note A#, 2
	note D_, 1
;Bar 17
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 2
	note D_, 1
	note D_, 1
	note A#, 2
	note D_, 2
	note A#, 2
;Bar 18
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 1
	note A#, 3
;Bar 19
	note C#, 1
	note C#, 2
	note C#, 1
	note C#, 2
	note C#, 1
	note C#, 3
	note B_, 2
	note F#, 1
	note F#, 1
	note G#, 1
	note G#, 1
;Bar 20
	note B_, 3
	note A#, 1
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 2
	loopchannel 0, Music_InferEncounter_Ch4_loop

; ============================================================================================================

