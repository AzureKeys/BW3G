;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookHiker:
	musicheader 4, 1, Music_LookHiker_Ch1
	musicheader 1, 2, Music_LookHiker_Ch2
	musicheader 1, 3, Music_LookHiker_Ch3
	musicheader 1, 4, Music_LookHiker_Ch4

Music_LookHiker_Ch1:
	volume $77
	dutycycle $2
	notetype 4, $a7
	tempo 144
;Bar 1
Music_LookHiker_Ch1_loop:
	octave 3
	note F_, 2
	note __, 6
	note A#, 1
	note __, 3
	octave 4
	note C_, 2
	note __, 2 ; WARNING: Auto-Sync says: Rounded up!
	octave 3
	note F_, 1
	note __, 3
	octave 4
	note C_, 1
	note __, 3
	intensity $b7
	note D_, 7
	note __, 1
	octave 3
	intensity $a7
	note A#, 1
	note __, 3 ; WARNING: Auto-Sync says: Rounded up!
	intensity $b7
	note F_, 6
	note __, 2
	intensity $a7
	note A#, 1
	note __, 3
;Bar 2
	octave 4
	note C_, 6
	note __, 2
	octave 3
	intensity $97
	note A#, 2
	note __, 2
	intensity $a7
	note A_, 1
	note __, 3
	note G#, 1
	note __, 3
	note G_, 1
	note __, 3
	note F_, 8
	intensity $97
	note G_, 2
	note __, 2
	intensity $a7
	note F_, 10
	note __, 2
;Bar 3
	note F_, 2
	note __, 6
	note A#, 1
	note __, 3
	octave 4
	note C_, 2
	note __, 2
	octave 3
	note F_, 1
	note __, 3
	octave 4
	note C_, 1
	note __, 3
	intensity $b7
	note D_, 7
	note __, 1
	octave 3
	intensity $a7
	note A#, 1
	note __, 3
	intensity $b7
	note F_, 6
	note __, 2
	intensity $a7
	note A#, 1
	note __, 3
;Bar 4
	octave 4
	note C_, 6
	note __, 2
	octave 3
	intensity $97
	note A#, 2
	note __, 2
	intensity $a7
	note A_, 1
	note __, 3
	note G_, 1
	note __, 3
	note A_, 1
	note __, 3
	note A#, 12
	note __, 12
	loopchannel 0, Music_LookHiker_Ch1_loop

; ============================================================================================================

Music_LookHiker_Ch2:
	dutycycle $1
	notetype 4, $a7
;Bar 1
Music_LookHiker_Ch2_loop:
	octave 2
	intensity $b7
	note F_, 3
	note __, 9
	note D#, 3
	note __, 9
	note D_, 3
	note __, 9
	octave 1
	note A#, 3
	note __, 9
;Bar 2
	octave 2
	note C_, 3
	note __, 9
	octave 1
	note F_, 3
	note __, 9
	octave 2
	note C_, 3
	note __, 9
	note C_, 3
	note __, 1
	intensity $a7
	note D_, 3
	note __, 1
	note E_, 3
	note __, 1
;Bar 3
	intensity $c7
	note F_, 3
	note __, 9
	note D#, 3
	note __, 9
	note D_, 3
	note __, 9
	octave 1
	intensity $b7
	note A#, 3
	note __, 9
;Bar 4
	octave 2
	intensity $c7
	note C_, 3
	note __, 9
	note F_, 3
	note __, 9
	octave 1
	note A#, 10
	note __, 2
	note A#, 3
	note __, 9
	loopchannel 0, Music_LookHiker_Ch2_loop

; ============================================================================================================

Music_LookHiker_Ch3:
	notetype 4, $10
;Bar 1
Music_LookHiker_Ch3_loop:
	octave 4
	intensity $10
	note D_, 2
	note __, 10
	note D_, 2
	note __, 2
	intensity $20
	note D_, 2
	note __, 2
	intensity $10
	note D_, 2
	note __, 2
	note D_, 2
	note __, 10
	note D_, 2
	note __, 10
;Bar 2
	note D#, 2
	note __, 10
	note C_, 2
	note __, 10
	octave 3
	note A_, 2
	note __, 10
	octave 4
	note D#, 11
	note __, 1
;Bar 3
	note D_, 2
	note __, 10
	note D_, 2
	note __, 2
	intensity $20
	note D_, 2
	note __, 2
	intensity $10
	note D_, 2
	note __, 2
	note D_, 2
	note __, 10
	note D_, 2
	note __, 10
;Bar 4
	note D#, 2
	note __, 10
	note C_, 2
	note __, 10
	note D_, 10
	note __, 2
	octave 3
	note A#, 2
	note __, 10
	loopchannel 0, Music_LookHiker_Ch3_loop

; ============================================================================================================

Music_LookHiker_Ch4:
	togglenoise 1 ; WARNING: this might sound bad.
	notetype 4
;Bar 1
Music_LookHiker_Ch4_loop:
	note A#, 8
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 8
	note A#, 4
	note A#, 8
	note A#, 4
;Bar 2
	note A#, 8
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 12
;Bar 3
	note A#, 8
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 8
	note A#, 4
	note A#, 8
	note A#, 4
;Bar 4
	note A#, 8
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 12
	note __, 12
	loopchannel 0, Music_LookHiker_Ch4_loop

; ============================================================================================================

