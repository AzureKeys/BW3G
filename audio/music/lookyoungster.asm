;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookYoungster:
	musicheader 3, 1, Music_LookYoungster_Ch1
	musicheader 1, 2, Music_LookYoungster_Ch2
	musicheader 1, 3, Music_LookYoungster_Ch3

Music_LookYoungster_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 119
;Bar 1
	octave 4
	intensity $b7
	note D_, 1
	intensity $a7
	note E_, 1
	intensity $b7
	note D_, 1
	intensity $a7
	note C_, 1
	octave 3
	intensity $b7
	note B_, 1
	octave 4
	intensity $a7
	note C_, 1
	octave 3
	intensity $b7
	note B_, 1
	intensity $a7
	note A_, 1
	note G_, 1
	intensity $97
	note A_, 1
	intensity $a7
	note B_, 1
	octave 4
	intensity $97
	note C_, 1
	intensity $a7
	note D_, 1
	intensity $97
	note E_, 1
	intensity $a7
	note F_, 1
	intensity $97
	note F#, 1
;Bar 2
Music_LookYoungster_Ch1_loop:
	notetype 12, $a7
	intensity $b7
	note G_, 1 ; WARNING: Auto-Sync says: Rounded down!
	note __, 1 ; WARNING: Auto-Sync says: Rounded up!
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	intensity $a7
	note D_, 1
	note __, 1
	intensity $b7
	note E_, 1
	note __, 1
	intensity $a7
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
;Bar 3
	intensity $b7
	note A_, 1
	note __, 1
	intensity $a7
	note B_, 1
	note __, 1
	octave 4
	intensity $b7
	note C_, 1
	note __, 1
	note D_, 1
	note __, 3
	note D_, 1
	note __, 1
	intensity $a7
	note E_, 1
	note __, 1
	intensity $b7
	note F#, 1
	note __, 1
;Bar 4
	note G_, 1
	intensity $a7
	note G_, 1
	intensity $b7
	note G_, 1
	note __, 1
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
	intensity $a7
	note F#, 1
	note __, 1
	intensity $b7
	note G_, 1
	note __, 1
	intensity $a7
	note A_, 1
	note __, 1
	intensity $b7
	note D_, 1
	intensity $a7
	note D_, 1
;Bar 5
	intensity $b7
	note D_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note F#, 1
	note __, 1
	notetype 4, $a7
	octave 3
	note B_, 2
	octave 4
	intensity $97
	note E_, 2
	octave 3
	intensity $a7
	note B_, 2
	notetype 6, $a7
	octave 4
	intensity $97
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	intensity $77
	note E_, 1
	octave 3
	intensity $87
	note B_, 1
	octave 4
	intensity $67
	note E_, 1
	octave 3
	intensity $77
	note B_, 1
	octave 4
	intensity $57
	note E_, 1
	note __, 9
	loopchannel 0, Music_LookYoungster_Ch1_loop

; ============================================================================================================

Music_LookYoungster_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	intensity $57
	note __, 16
;Bar 2
Music_LookYoungster_Ch2_loop:
	octave 3
	intensity $c7
	note B_, 1
	octave 4
	intensity $b7
	note C_, 1
	intensity $c7
	note D_, 1
	intensity $b7
	note C_, 1
	octave 3
	intensity $c7
	note B_, 1
	note __, 1
	intensity $b7
	note A_, 1
	note __, 1
	intensity $c7
	note B_, 1
	note __, 1
	intensity $b7
	note A_, 1
	note __, 1
	intensity $c7
	note G_, 1
	note __, 1
	intensity $b7
	note E_, 1
	note __, 1
;Bar 3
	intensity $c7
	note F#, 1
	note __, 1
	intensity $b7
	note G_, 1
	note __, 1
	intensity $c7
	note A_, 1
	note __, 1
	note B_, 2
	note __, 2
	note G_, 1
	note __, 1
	intensity $b7
	note F#, 1
	note __, 1
	intensity $c7
	note E_, 1
	note __, 1
;Bar 4
	note E_, 1
	note __, 1
	intensity $b7
	note C_, 1
	note __, 1
	octave 2
	intensity $c7
	note G_, 1
	note __, 1
	octave 3
	intensity $b7
	note E_, 1
	note __, 1
	intensity $c7
	note D_, 1
	note __, 1
	intensity $b7
	note F#, 1
	note __, 1
	intensity $c7
	note A_, 1
	note __, 1
	intensity $b7
	note D_, 1
	note __, 1
;Bar 5
	intensity $c7
	note D_, 1
	note __, 1
	octave 2
	intensity $b7
	note B_, 1
	note __, 1
	octave 3
	intensity $c7
	note F#, 1
	note __, 1
	intensity $b7
	note E_, 4
	note __, 6
	loopchannel 0, Music_LookYoungster_Ch2_loop

; ============================================================================================================

Music_LookYoungster_Ch3:
	notetype 12, $10
;Bar 1
	octave 4
	intensity $10
	note D_, 4
	octave 3
	note A_, 2
	octave 4
	note D_, 1
	note __, 3
	octave 3
	note A_, 6
;Bar 2
Music_LookYoungster_Ch3_loop:
	note G_, 4
	octave 4
	note D_, 1
	note __, 1
	octave 3
	notetype 6, $10
	note G_, 1
	note __, 3
	octave 4
	notetype 12, $10
	note C_, 4
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
;Bar 3
	note D_, 4
	note A_, 1
	note __, 1
	note E_, 3
	note __, 1
	note E_, 2
	notetype 6, $10
	note B_, 4
	note E_, 3
	note __, 1
	notetype 12, $10
;Bar 4
	note C_, 4
	note G_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D_, 2
	note A_, 2
	note D_, 1
	note __, 1
	octave 3
	note B_, 4
;Bar 5
	octave 4
	note D_, 2
	note A_, 1
	note __, 1
	notetype 6, $10
	note E_, 7
	note __, 1
	notetype 12, $10
	note E_, 2
	octave 3
	note B_, 2
	note E_, 2
	loopchannel 0, Music_LookYoungster_Ch3_loop

; ============================================================================================================

