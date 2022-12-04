;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_LookAceTrainer:
	musicheader 4, 1, Music_LookAceTrainer_Ch1
	musicheader 1, 2, Music_LookAceTrainer_Ch2
	musicheader 1, 3, Music_LookAceTrainer_Ch3
	musicheader 1, 4, Music_LookAceTrainer_Ch4

Music_LookAceTrainer_Ch1:
	volume $77
	dutycycle $2
	notetype 6, $a7
	tempo 134
;Bar 1
	octave 4
	intensity $b7
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
	note C#, 1
	note __, 1
	note C#, 1
	note __, 3
	note D_, 1
	note __, 3
	note D_, 1
	note __, 3
	note F_, 1
	octave 5
	intensity $a7
	note E_, 1
	intensity $97
	note D_, 1
	note C_, 1
	octave 3
	intensity $b7
	note A_, 1
	note __, 1
	octave 4
	note C_, 1
	note __, 1
	intensity $a7
	note F_, 1
	note __, 1
Music_LookAceTrainer_Ch1_Loop:
;Bar 2
	note A_, 4
	octave 5
	intensity $b7
	note C_, 1
	octave 4
	intensity $a7
	note A_, 1
	octave 5
	note C_, 1
	octave 4
	note A_, 1
	octave 5
	note C_, 1
	octave 4
	note A_, 1
	octave 5
	intensity $97
	note C_, 1
	octave 4
	intensity $b7
	note A_, 7
	note G_, 2
	note G#, 1
	note __, 1
	note A_, 1
	note __, 1
	note F_, 2
	note C_, 3
	intensity $a7
	note C#, 1
	note D_, 2
;Bar 3
	note __, 2
	intensity $b7
	note D_, 2
	note C_, 4
	note F_, 1
	note __, 1
	note C_, 1
	note __, 3
	intensity $a7
	note G_, 1
	note G#, 1
	intensity $b7
	note A_, 2
	note C_, 2
	note D_, 2
	note C_, 2
	note G_, 2
	note F_, 3
	note E_, 1
	intensity $a7
	note D_, 1
	note G#, 1
;Bar 4
	intensity $b7
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note A#, 2
	note A_, 1
	note __, 1
	note C_, 1
	note __, 1
	note G_, 2
	note F_, 3
	intensity $a7
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	intensity $b7
	note A_, 2
	octave 4
	note C_, 2
	note F_, 2
	note C#, 1
	note __, 1
	note G_, 1
	note __, 1
	note C#, 1
	note __, 1
;Bar 5
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G#, 1
	note __, 1
	note A_, 2
	intensity $a7
	note G_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	intensity $b7
	note A_, 2
	note G_, 2
	note G#, 2
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 4
	octave 5
	note G_, 1
	note __, 1
	note F_, 2
	note E_, 1
	intensity $a7
	note D_, 1
;Bar 6
	intensity $b7
	note C#, 4
	note C_, 1
	note __, 1
	octave 4
	note B_, 4
	note A#, 1
	note __, 1
	note A_, 4
	note G#, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	note F_, 4
	intensity $a7
	note E_, 1
	note D#, 1
	note D_, 1
	intensity $b7
	note C#, 2
	intensity $a7
	note C_, 1
;Bar 7
	octave 5
	intensity $b7
	note F_, 1
	note __, 1
	note E_, 4
	note D#, 1
	note __, 1
	note D_, 4
	note C#, 1
	note __, 1
	note C_, 4
	octave 4
	note B_, 1
	note __, 1
	note A#, 1
	note __, 1
	intensity $a7
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	intensity $b7
	note F_, 1
	note __, 1
	intensity $a7
	note G_, 1
	note A_, 1
	note A#, 1
	intensity $97
	note F_, 1
;Bar 8
	intensity $b7
	note E_, 2
	note D#, 1
	note __, 1
	note E_, 4
	note F_, 1
	note __, 1
	note E_, 2
	note D#, 1
	note __, 1
	note E_, 4
	note D_, 1
	intensity $a7
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	octave 4
	note E_, 2
	note F_, 1
	note E_, 1
	intensity $b7
	note F_, 2
	octave 3
	note G#, 2
	note B_, 1
	note __, 1
;Bar 9
	octave 4
	note C_, 1
	note __, 3
	note C_, 1
	note __, 3
	note C#, 1
	note __, 1
	note C#, 1
	note __, 3
	note D_, 1
	note __, 3
	note D_, 1
	note __, 3
	note F_, 1
	intensity $a7
	note E_, 1
	note D_, 1
	note C_, 1
	octave 3
	intensity $b7
	note A_, 1
	note __, 1
	octave 4
	note C_, 1
	note __, 1
	intensity $a7
	note F_, 1
	note __, 1
	loopchannel 0, Music_LookAceTrainer_Ch1_Loop

; ============================================================================================================

Music_LookAceTrainer_Ch2:
	dutycycle $1
	notetype 6, $a7
;Bar 1
	octave 2
	intensity $c7
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 4
	octave 1
	intensity $d7
	note A_, 2
	octave 2
	note C_, 2
	note C#, 2
Music_LookAceTrainer_Ch2_Loop:
;Bar 2
	note D_, 6
	intensity $c7
	note A_, 6
	octave 3
	note D_, 8
	octave 2
	note D_, 4
	note F_, 2
	note G_, 2
	note G#, 2
	note A_, 2
;Bar 3
	note D_, 6
	note A_, 6
	octave 3
	note D_, 8
	octave 2
	note D_, 4
	note F_, 2
	note G_, 2
	note G#, 2
	note A_, 2
;Bar 4
	note G_, 6
	octave 3
	note D_, 6
	note F_, 8
	octave 2
	note G_, 4
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note D_, 2
;Bar 5
	octave 2
	note A_, 6
	octave 3
	note E_, 6
	note A_, 8
	octave 2
	note A_, 4
	octave 3
	note C#, 2
	note D_, 2
	note D#, 2
	note E_, 2
;Bar 6
	octave 2
	note D_, 6
	note A_, 6
	octave 3
	note D_, 8
	octave 2
	note D_, 4
	note F_, 2
	note G_, 2
	note G#, 2
	note A_, 2
;Bar 7
	note G_, 6
	octave 3
	note D_, 6
	note F_, 8
	octave 2
	note G_, 4
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note D_, 2
;Bar 8
	octave 2
	note G#, 6
	octave 3
	note E_, 6
	note G#, 8
	octave 2
	note G#, 4
	octave 3
	note F_, 2
	note F#, 2
	note G_, 2
	note G#, 2
;Bar 9
	note A_, 2
	note __, 2
	octave 2
	note A_, 2
	note __, 2
	note A_, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 2
	note __, 2
	note A_, 4
	octave 1
	intensity $d7
	note A_, 2
	octave 2
	note C_, 2
	note C#, 2
	loopchannel 0, Music_LookAceTrainer_Ch2_Loop

; ============================================================================================================

Music_LookAceTrainer_Ch3:
	notetype 6, $10
;Bar 1
	octave 3
	intensity $20
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note F_, 2
	note F_, 2
	note __, 2
	note F#, 2
	note __, 2
	note F#, 2
	note __, 2
	note A_, 10
Music_LookAceTrainer_Ch3_Loop:
;Bar 2
	note B_, 6
	octave 4
	note C#, 6
	octave 3
	note F#, 8
	note E_, 4
	note A_, 8
;Bar 3
	note F#, 4
	note E_, 4
	note A_, 2
	note E_, 4
	note F#, 6
	note A_, 4
	note B_, 2
	octave 4
	note C_, 6
;Bar 4
	note C#, 6
	note E_, 6
	octave 3
	note E_, 8
	note B_, 4
	note A_, 8
;Bar 5
	note B_, 4
	note C#, 2
	octave 4
	note C#, 4
	note C#, 2
	note E_, 4
	note C#, 2
	note C_, 2
	octave 3
	note B_, 2
	note E_, 2
	note B_, 2
	note A_, 6
;Bar 6
	note B_, 6
	note A#, 6
	note A_, 6
	note B_, 2
	octave 4
	note C_, 2
	note C#, 2
	octave 3
	note E_, 2
	note A_, 6
;Bar 7
	note G#, 6
	note G_, 6
	note F#, 6
	note F_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note F#, 4
	note D#, 2
;Bar 8
	note G#, 4
	note A_, 2
	note G#, 4
	note C#, 2
	note C_, 4
	note E_, 2
	note D#, 4
	note D_, 2
	note D#, 2
	note C#, 2
	note D_, 2
	note D#, 2
;Bar 9
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note F_, 2
	note F_, 2
	note __, 2
	note F#, 2
	note __, 2
	note F#, 2
	note __, 2
	note A_, 10
	loopchannel 0, Music_LookAceTrainer_Ch3_Loop

; ============================================================================================================

Music_LookAceTrainer_Ch4:
	togglenoise 3 ; WARNING: this might sound bad.
	notetype 6
;Bar 1
	note A#, 4
	note A#, 4
	note A#, 2
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 6
	note A_, 2
	note G#, 2
Music_LookAceTrainer_Ch4_Loop:
;Bar 2
	note A#, 8
	note C_, 6
	note A#, 4
	note A#, 6
	note C_, 2
	note C_, 6
	loopchannel 7, Music_LookAceTrainer_Ch4_Loop
;Bar 9
	note C_, 4
	note C_, 4
	note C_, 2
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 8
	note B_, 2
	loopchannel 0, Music_LookAceTrainer_Ch4_Loop

; ============================================================================================================

