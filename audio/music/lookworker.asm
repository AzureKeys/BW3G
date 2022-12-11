;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookWorker:
	musicheader 4, 1, Music_LookWorker_Ch1
	musicheader 1, 2, Music_LookWorker_Ch2
	musicheader 1, 3, Music_LookWorker_Ch3
	musicheader 1, 4, Music_LookWorker_Ch4

Music_LookWorker_Ch1:
	volume $77
	dutycycle $2
	notetype 6, $a7
	tempo 112
;Bar 1
	note __, 16
Music_LookWorker_Ch1_loop:
	note __, 8
	octave 4
	notetype 3, $97
	note A_, 1
	intensity $b7
	note A#, 5
	note __, 10
;Bar 2
	notetype 6, $a7
	note G_, 2
	note __, 14
	intensity $b7
	note G_, 8
	note __, 4
	intensity $a7
	note G_, 1
	note __, 7
;Bar 3
	note G_, 8
	note __, 12
	notetype 3, $97
	note A_, 1
	intensity $b7
	note B_, 3
	note __, 12
;Bar 4
	notetype 6, $a7
	note G_, 2
	note __, 14
	intensity $b7
	note G_, 7
	note __, 5
	intensity $a7
	note G_, 2
	note __, 6
;Bar 5
	intensity $b7
	note E_, 8
	intensity $a7
	note G_, 2
	note __, 2
	intensity $b7
	note A_, 5
	note __, 3
	intensity $a7
	note A_, 5
	note __, 3
;Bar 6
	intensity $b7
	note A_, 8
	intensity $a7
	note G_, 2
	note __, 2
	note A_, 1
	note __, 3
	notetype 3, $97
	note A_, 1
	intensity $a7
	note A#, 5
	note __, 2
	note A_, 10
	note __, 6
	intensity $b7
	note G_, 10
;Bar 7
	note __, 6
	note E_, 10
	note __, 6
	intensity $a7
	note G_, 1
	note __, 7
	notetype 12, $b7
	note G_, 4
	note __, 2
	note G_, 9
;Bar 8
	notetype 6, $b7
	note __, 2
	note __, 16
	note __, 16
	loopchannel 0, Music_LookWorker_Ch1_loop

; ============================================================================================================

Music_LookWorker_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	intensity $d7
	note __, 8
Music_LookWorker_Ch2_loop:
	octave 2
	intensity $c7
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
;Bar 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
;Bar 3
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 1
	intensity $d7
	note G_, 1
	note __, 1
	intensity $c7
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 4
	octave 2
	intensity $d7
	note D_, 1
	note __, 1
	intensity $c7
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	intensity $d7
	note F_, 1
	note __, 1
	intensity $c7
	note F_, 1
	note __, 1
	intensity $d7
	note E_, 1
	note __, 1
	intensity $c7
	note E_, 1
	note __, 1
;Bar 5
	intensity $d7
	note D_, 1
	note __, 1
	intensity $c7
	note D_, 1
	note __, 1
	octave 1
	intensity $d7
	note B_, 1
	note __, 1
	intensity $c7
	note B_, 1
	note __, 1
	octave 2
	intensity $d7
	note D_, 1
	note __, 1
	intensity $c7
	note D_, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
;Bar 6
	intensity $d7
	note A_, 1
	note __, 1
	intensity $c7
	note A_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	intensity $d7
	note C_, 1
	note __, 1
	intensity $c7
	note C_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
;Bar 7
	intensity $d7
	note G_, 1
	note __, 1
	intensity $c7
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 1
	intensity $d7
	note G_, 1
	note __, 1
	intensity $c7
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 8
	octave 2
	intensity $d7
	note D_, 1
	note __, 1
	intensity $c7
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 3
	intensity $d7
	note D_, 1
	note __, 1
	intensity $c7
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 9
	intensity $d7
	note D_, 1
	note __, 1
	intensity $c7
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	loopchannel 0, Music_LookWorker_Ch2_loop

; ============================================================================================================

Music_LookWorker_Ch3:
	notetype 3, $13
;Bar 1
	intensity $23
	note __, 16
	note __, 9
	octave 3
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
Music_LookWorker_Ch3_loop:
	notetype 12, $23
	note G_, 15
;Bar 2
	notetype 6, $23
	note G_, 1
	note A_, 1
	note A#, 12
	note G_, 2
	note __, 6
;Bar 3
	note G_, 12
	notetype 12, $23
	note G_, 15
;Bar 4
	notetype 6, $23
	note A_, 1
	note A#, 1
	note B_, 12
	note G_, 2
	note __, 6
;Bar 5
	note G_, 8
	notetype 3, $23
	octave 3
	note __, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	notetype 12, $23
	note A_, 16
;Bar 6
	note G_, 16
;Bar 7
	note G_, 16
;Bar 8
	note __, 14
;Bar 9
	notetype 3, $23
	octave 3
	note __, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note F_, 1
	loopchannel 0, Music_LookWorker_Ch3_loop

; ============================================================================================================

Music_LookWorker_Ch4:
	togglenoise 3 ; WARNING: this might sound bad.
	notetype 12
;Bar 1
	note A_, 1
	note G#, 1
	note G_, 2
	note A#, 4
Music_LookWorker_Ch4_loop:
	note B_, 4
	note C_, 2
	note A#, 4
;Bar 2
	note A#, 2
	note D_, 4
	note A#, 4
	note C_, 4
;Bar 3
	note A#, 2
	note A#, 2
	note D_, 4
	note B_, 4
	note C_, 2
	note A#, 4
;Bar 4
	note A#, 2
	note D_, 4
	note A#, 4
	note C_, 4
;Bar 5
	note A#, 2
	note A#, 2
	note D_, 4
	note B_, 4
	note C_, 2
	note A#, 4
;Bar 6
	note A#, 2
	note D_, 4
	note A#, 4
	note C_, 4
;Bar 7
	note A#, 2
	note A#, 2
	note D_, 4
	note A#, 4
	note C_, 2
	note A#, 4
;Bar 8
	note A#, 2
	note D_, 4
	note A#, 2
	note C_, 2
	note C_, 2
	note C_, 2
;Bar 9
	note C_, 2
	note C_, 2
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	loopchannel 0, Music_LookWorker_Ch4_loop

; ============================================================================================================

