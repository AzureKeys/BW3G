;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Placeholder:
	musicheader 3, 1, Music_Placeholder_Ch1
	musicheader 1, 2, Music_Placeholder_Ch2
	musicheader 1, 3, Music_Placeholder_Ch3

Music_Placeholder_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 219
;Bar 1
	octave 2
	intensity $b7
	note D_, 9
	note __, 1
	intensity $a7
	note D_, 2
	intensity $b7
	note G_, 6
;Bar 2
	note A_, 6
	note D_, 9
;Bar 3
	note __, 1
	note D_, 2
	intensity $c7
	note G_, 6
	intensity $b7
	note A_, 6
Music_Placeholder_Ch1_loop:
;Bar 4
	note D_, 8
	note __, 2
	note D_, 2
	note G_, 6
;Bar 5
	;note A_, 4
	octave 1
	note A_, 2
	octave 2
	intensity $c7
	note D_, 9
;Bar 6
	note __, 1
	intensity $b7
	note D_, 2
	intensity $c7
	note G_, 6
	note A_, 6
;Bar 7
	note D_, 9
	note __, 1
	intensity $b7
	note D_, 2
	intensity $c7
	note C#, 6
;Bar 8
	intensity $b7
	note F#, 4
	octave 1
	note F#, 2
	intensity $c7
	note B_, 8
;Bar 9
	intensity $b7
	note F#, 2
	note B_, 2
	intensity $c7
	note A_, 6
	octave 2
	note A_, 2
	intensity $b7
	note F#, 2
	note D_, 2
;Bar 10
	intensity $c7
	note G_, 10
	intensity $a7
	note G_, 1
	note __, 1
	intensity $b7
	note G_, 8
;Bar 11
	octave 3
	note C#, 4
	octave 2
	intensity $c7
	note F#, 8
;Bar 12
	intensity $b7
	note A_, 1
	note __, 1
	octave 3
	intensity $a7
	note C#, 1
	note __, 1
	octave 2
	intensity $c7
	note B_, 8
	note F#, 2
	octave 1
	intensity $b7
	note B_, 2
;Bar 13
	octave 2
	intensity $c7
	note E_, 6
	note E_, 1
	note __, 1
	note F#, 2
	note G_, 2
	note A_, 6
;Bar 14
	octave 1
	note A_, 6
	octave 2
	intensity $b7
	note D_, 11
;Bar 15
	note __, 1
	note D_, 6
	note A_, 6
;Bar 16
	note D_, 9
	note __, 1
	intensity $a7
	note D_, 2
	intensity $b7
	note G_, 6
;Bar 17
	note A_, 6
	note D_, 9
;Bar 18
	note __, 1
	note D_, 2
	intensity $c7
	note G_, 6
	intensity $b7
	note C_, 6
	endchannel

; ============================================================================================================

Music_Placeholder_Ch2:
	dutycycle $1
	notetype 6, $a7
;Bar 1
	octave 3
	intensity $77
	note D_, 1
	note E_, 1
	notetype 12, $87
	note F#, 10
	notetype 6, $77
	note E_, 1
	note F#, 1
	intensity $87
	note G_, 10
;Bar 2
	note G#, 2
	note A_, 9 ; WARNING: Auto-Sync says: Rounded up!
	intensity $77
	note G#, 1
	note G_, 1
	intensity $87
	note F#, 5
	note __, 16
	note __, 3
;Bar 3
	intensity $77
	;note D#, 0 | WARNING: Rounded down to 0
	intensity $87
	note E_, 5
	note __, 7
	intensity $77
	note D_, 4
	note __, 7
	note D_, 1
Music_Placeholder_Ch2_loop:
;Bar 4
	;note E_, 0 | WARNING: Rounded down to 0
	note F#, 16
	note F#, 6
	note __, 1 ; WARNING: Auto-Sync says: Rounded up!
	note D#, 1
	note E_, 16
;Bar 5
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 4
	note F#, 16
	note F#, 3 ; WARNING: Auto-Sync says: Rounded up!
;Bar 6
	;note G_, 0 | WARNING: Rounded down to 0
	note G#, 1
	note A_, 4
	note G_, 11
	note G#, 1
	note A_, 3
	note __, 7
	note G#, 1
	note G_, 1
;Bar 7
	note F#, 5
	note __, 16
	note __, 3
	note E_, 12
;Bar 8
	note C#, 7
	octave 2
	intensity $67
	note B_, 1
	octave 3
	note C#, 4
	intensity $77
	note D_, 5
	note __, 16
	note __, 2
;Bar 9
	note D#, 1
	note E_, 12
	note F#, 9
	note D_, 1
	intensity $67
	note E_, 1
	intensity $77
	note F#, 1
;Bar 10
	note G_, 16
	note G_, 6
	note __, 1
	note G_, 1
	intensity $67
	note G#, 1
	intensity $77
	note A_, 11
;Bar 11
	intensity $87
	note G_, 12
	note F#, 5
	note __, 16
	note __, 3
;Bar 12
	intensity $77
	note D_, 5
	note __, 11
	intensity $87
	note E_, 4
	intensity $77
	note F#, 4
;Bar 13
	intensity $87
	note D_, 1
	note E_, 5
	note __, 10
	intensity $77
	note F#, 4
	note G_, 4
	note A_, 3
	note __, 8
;Bar 14
	;note G#, 0 | WARNING: Rounded down to 0
	intensity $67
	note G_, 1
	intensity $77
	;note F#, 0 | WARNING: Rounded down to 0
	note E_, 12
	note F#, 8
	note __, 16
	note __, 12
;Bar 15
	note E_, 11
	note D_, 1
;Bar 16
	;note E_, 0 | WARNING: Rounded down to 0
	intensity $87
	note F#, 6
	note __, 16
	note __, 1
	intensity $77
	note C#, 1
	;note D_, 0 | WARNING: Rounded down to 0
	intensity $87
	note E_, 11
;Bar 17
	note C#, 1
	note D_, 11
	intensity $77
	note E_, 1
	intensity $87
	note F#, 5
	note __, 16
	note __, 3
;Bar 18
	intensity $77
	;note F#, 0 | WARNING: Rounded down to 0
	intensity $87
	note G_, 5
	note __, 7
	intensity $77
	note A_, 3
	note __, 7
	note G#, 1
	note G_, 1
	endchannel

; ============================================================================================================

Music_Placeholder_Ch3:
	notetype 6, $1b
;Bar 1
	octave 3
	intensity $2b
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	;note A_, 0 | WARNING: Rounded down to 0
	note __, 4
	octave 4
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	note F#, 11
	note __, 2
	note E_, 10 ; WARNING: Auto-Sync says: Rounded up!
;Bar 2
	note __, 1
	note D_, 12
	octave 3
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	;note A_, 0 | WARNING: Rounded down to 0
	note __, 4
	octave 4
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	note E_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 3
	note D_, 3
	note __, 1
	note A_, 5
	note E_, 11
	note D_, 12
;Bar 4
	note __, 2
	octave 5
	intensity $1b
	note A_, 4
	note __, 15
	intensity $2b
	note G_, 1
	note F#, 4
	intensity $1b
	note G_, 4
	note __, 12
;Bar 5
	intensity $2b
	note F#, 4
	note E_, 4
	note D_, 5
	note __, 15
;Bar 6
	note F#, 4
	note E_, 4
	note __, 8
	note D_, 4
	note __, 8
;Bar 7
	note A_, 5
	note __, 11
	note G_, 4
	note F#, 4
	note G_, 16
;Bar 8
	note F#, 4
	note E_, 4
	note D_, 2
	note __, 16
	note __, 16
	note __, 14
;Bar 10
	note B_, 5
	note __, 15
	octave 6
	note D_, 4
	note C#, 4
	note __, 8
;Bar 11
	octave 5
	note B_, 4
	note __, 8
	note A_, 4
	note __, 16
;Bar 12
	note F#, 1
	note A_, 2
	note F#, 1
	note D_, 5
	note __, 11
	note E_, 4
	note F#, 4
;Bar 13
	note G_, 4
	note __, 12
	note F#, 4
	note E_, 4
	note D_, 3
	note __, 9
;Bar 14
	note C#, 3
	note __, 9
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 16
	note __, 6
;Bar 15
	octave 3
	note A_, 16
	note A_, 2
	note __, 6
;Bar 16
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	;note A_, 0 | WARNING: Rounded down to 0
	note __, 4
	octave 4
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	note F#, 11
	note __, 2
	note E_, 11
;Bar 17
	note D_, 12
	octave 3
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	;note A_, 0 | WARNING: Rounded down to 0
	note __, 4
	octave 4
	;note D_, 0 | WARNING: Rounded down to 0
	note __, 4
	note E_, 4
;Bar 18
	note D_, 4
	note A_, 4
	note E_, 12
	note D_, 12
	endchannel

; ============================================================================================================

