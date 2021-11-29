;Coverted using MIDI2ASM
;Version 2.0. (23-Sep-2019)
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Mart:
	musicheader 4, 1, Music_FriendlyShop_Ch1
	musicheader 1, 2, Music_FriendlyShop_Ch2
	musicheader 1, 3, Music_FriendlyShop_Ch3
	musicheader 1, 4, Music_FriendlyShop_Ch4

Music_FriendlyShop_Ch1:
	volume $77
	stereopanning $f0
	dutycycle $3
	notetype 12, $92
	tempo 140
;Bar 1
	octave 4
	note C#, 4
	note C#, 4
	note C_, 2
	note C_, 4
	octave 3
	note B_, 6
;Bar 2
	intensity $94
	note A#, 12
;Bar 3
Music_FriendlyShop_Ch1_loop:
	notetype 6, $a1
	note D#, 8
	octave 2
	note A#, 4
	octave 3
	note D#, 8
	octave 2
	note F#, 8
	octave 3
	note D#, 8
;Bar 4
	octave 2
	note F#, 4
	note B_, 4
	note F#, 8
	octave 3
	note D#, 8
	octave 2
	note B_, 4
;Bar 5
	note A_, 8
	note F#, 4
	octave 3
	note D#, 8
	octave 2
	note A_, 8
	octave 3
	note D#, 8
;Bar 6
	octave 2
	note F#, 4
	note A_, 4
	note F#, 8
	octave 3
	note D#, 8
	octave 2
	note A_, 4
;Bar 7
	note G#, 8
	note B_, 4
	note E_, 8
	note B_, 8
	note G#, 8
;Bar 8
	note F_, 4
	octave 3
	note D_, 4
	octave 2
	note G#, 8
	octave 3
	note D_, 8
	note F_, 4
;Bar 9
	note B_, 8
	note F#, 4
	note B_, 4
	note F#, 4
	notetype 12, $95
	note F_, 2
	note F#, 2
	note G#, 2
;Bar 10
	intensity $a3
	note A#, 16
;Bar 11
	notetype 6, $95
	note A#, 8
	callchannel Music_FriendlyShop_Ch1_Bar11
;Bar 12
	intensity $a1
	note B_, 4
	note F#, 4
	note B_, 4
	octave 4
	intensity $a5
	note C#, 8
	intensity $a1
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note D#, 4
;Bar 13
	octave 3
	intensity $a5
	note A_, 8
	callchannel Music_FriendlyShop_Ch1_Bar11
;Bar 14
	notetype 6, $a1
	note A_, 4
	note D#, 4
	note F#, 4
	intensity $a5
	note B_, 8
	note A_, 8
	note F#, 2
	note A_, 2
;Bar 15
	note B_, 8
	intensity $a1
	note B_, 4
	intensity $a5
	note E_, 8
	intensity $a1
	note B_, 8
	note E_, 8
;Bar 16
	intensity $a2
	octave 2
	note F_, 4
	octave 3
	note D_, 4
	note F_, 8
	note D_, 8
	note G#, 4
;Bar 17
	intensity $a5
	note B_, 8
	note F#, 1
	note __, 3
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note F#, 1
	note __, 3
	note F_, 4
	note F#, 4
	note G#, 4
;Bar 18
	note A#, 5
	note __, 11
	intensity $a5
	note E_, 4
	intensity $b1
	note C#, 4
	note F#, 4
	note E_, 4
;Bar 19
	note D#, 4
	octave 2
	note G_, 4
	note A#, 4
	note G_, 8
	note A#, 8
	octave 3
	note D#, 8
;Bar 20
	octave 2
	note G_, 4
	note A#, 4
	note G_, 8
	octave 3
	note D#, 8
	octave 2
	note A#, 4
;Bar 21
	octave 3
	note D#, 4
	octave 2
	note G#, 4
	note B_, 4
	note G#, 8
	octave 3
	note D#, 8
	octave 2
	note B_, 8
;Bar 22
	note G#, 4
	note B_, 4
	note G#, 8
	octave 3
	note D#, 8
	octave 2
	note G#, 4
;Bar 23
	intensity $a2
	octave 3
	note G_, 4
	intensity $a1
	note D#, 4
	intensity $a2
	note G_, 4
	intensity $a1
	note D#, 4
	intensity $a5
	note A#, 4
	note A_, 1
	note __, 3
	note A#, 1
	note __, 3
	octave 4
	note D#, 4
;Bar 24
	intensity $a2
	octave 3
	note D#, 4
	octave 2
	note A#, 4
	intensity $92
	octave 4
	note D#, 2
	note D_, 2
	note D#, 2
	note __, 2
	note F_, 2
	note E_, 2
	note F_, 2
	note __, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note __, 2
;Bar 25
	note C#, 4
	octave 3
	note G#, 2
	note __, 2
	octave 4
	note D#, 2
	note __, 2
	octave 3
	note B_, 4
	note __, 4
	intensity $a1
	note D#, 8
	note C#, 8
;Bar 26
	octave 4
	note C#, 4
	note D#, 4
	octave 3
	intensity $a5
	note B_, 4
	note __, 4
	intensity $a1
	note D#, 8
	octave 2
	note G#, 4
;Bar 27
	octave 3
	note D#, 4
	octave 2
	note B_, 4
	octave 3
	note D#, 4
	note G#, 8
	note B_, 8
	note D#, 4
;Bar 28
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	note G#, 8
	note F_, 8
	note D_, 4
;Bar 29
	note C#, 4
	octave 2
	note F#, 4
	note A#, 4
	octave 3
	note C#, 4
	note F#, 4
	intensity $95
	note B_, 4
	octave 4
	note C#, 2
	note __, 2
	octave 3
	note B_, 2
	note __, 2
;Bar 30
	octave 4
	note C#, 4
	intensity $a1
	octave 3
	note B_, 8
	note A#, 4
	note __, 16
	loopchannel 0, Music_FriendlyShop_Ch1_loop

Music_FriendlyShop_Ch1_Bar11:
	intensity $a1
	note B_, 4
	intensity $a5
	note D#, 8
	intensity $a1
	note F#, 8
	intensity $a2
	note D#, 2
	note F#, 2
	endchannel

; ============================================================================================================

Music_FriendlyShop_Ch2:
	dutycycle $1
	notetype 12, $82
	vibrato $12, $14
;Bar 1
	octave 4
	note F#, 4
	note F#, 4
	note F#, 2
	note F#, 4
	note F#, 6
;Bar 2
	intensity $86
	note F#, 6
	intensity $95
	octave 3
	note F#, 2
	note G#, 1
	note __, 1
	note A#, 1
	note __, 1

Music_FriendlyShop_Ch2_loop:
	dutycycle $1
	notetype 12, $b5
	vibrato $12, $14
	octave 4
	note C#, 3
	intensity $95
	octave 3
	note F#, 1
	intensity $b5
	octave 4
	note D#, 1
	note __, 1
	octave 3
	note B_, 4
	note __, 4
	note B_, 1
	octave 4
	note C#, 1
;Bar 4
	note D#, 2
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note E_, 4
	note __, 2
	note D#, 1
	note E_, 1
	note F#, 1
	note __, 1
;Bar 5
	note C#, 3
	intensity $95
	octave 3
	note F#, 1
	intensity $b5
	octave 4
	note D#, 1
	note __, 1
	octave 3
	note B_, 4
	note __, 4 
	note B_, 1
	octave 4
	note C#, 1
;Bar 6
	note D#, 2
	note D_, 1
	note __, 1
	note D#, 1
	note __, 1
	note G#, 4
	note __, 2
	note E_, 1
	note D#, 1
	note C#, 1
	note __, 1
;Bar 7
	note D#, 3
	intensity $95
	octave 3
	note G#, 1
	intensity $b5
	octave 4
	note E_, 1
	note __, 1
	note C#, 4
	note __, 8
;Bar 8
	octave 3
	intensity $b5
	note G#, 6
	note A#, 2
	note __, 2
	note B_, 2
	note __, 2
;Bar 9
	octave 4
	note D#, 6
	note E_, 1
	note D#, 1
	note C#, 1
	note __, 1
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
;Bar 10
	octave 4
	intensity $93
	note C#, 3
	note __, 4
	notetype 6, $95
	note __, 1
	note A#, 1
	notetype 12, $b5
	note B_, 1
	note __, 1
	note F#, 2
	note E_, 2
	note D#, 2
;Bar 11
	note C#, 3
	intensity $95
	octave 3
	note F#, 1
	intensity $b5
	octave 4
	note D#, 1
	note __, 1
	octave 3
	note B_, 4
	note __, 4
	note B_, 1
	octave 4
	note C#, 1
;Bar 12
	note D#, 3
	note __, 3
	note E_, 4
	note D#, 1
	note __, 1
	note E_, 1
	note __, 1
	note F#, 1
	note __, 1
;Bar 13
	note C#, 3
	intensity $95
	octave 3
	note F#, 1
	intensity $b5
	octave 4
	note D#, 1
	note __, 1
	octave 3
	note B_, 4
	note __, 4
	note B_, 1
	octave 4
	note C#, 1
;Bar 14
	note D#, 3
	note __, 2
	notetype 6, $95
	note __, 1
	note G_, 1
	notetype 12, $b5
	note G#, 4
	note F#, 4
	octave 3
	note B_, 1
	octave 4
	note C#, 1
;Bar 15
	note D#, 3
	intensity $95
	octave 3
	note G#, 1
	intensity $b5
	octave 4
	note E_, 1
	note __, 1
	note C#, 5
	note __, 7
;Bar 16
	octave 3
	note G#, 2
	note G_, 2
	note G#, 2
	note A#, 1
	note __, 1
	note G#, 2
	note A#, 2
	notetype 6, $b5
	note B_, 3
;Bar 17
	intensity $95
	octave 4
	note D_, 1
	notetype 12, $b5
	note D#, 6
	note E_, 1
	note D#, 1
	note C#, 1
	note __, 1
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
;Bar 18
	octave 4
	intensity $93
	note C#, 3
	note __, 9
	dutycycle $2
	intensity $a7
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note C#, 1
	note __, 1
;Bar 19
	note D#, 2
	note __, 2
	note D#, 2
	note __, 2
	note D#, 2
	note D_, 2
	notetype 6, $a7
	note D#, 3
	intensity $87
	note G#, 1
	notetype 12, $a7
	note A#, 6
;Bar 20
	intensity $b5
	note G_, 2
	note __, 2
	note D#, 2
	note __, 2
	note C#, 2
	note __, 2
;Bar 21
	intensity $a7
	note C#, 3
	notetype 6, $97
	note C#, 1
	note D_, 1
	notetype 12, $a7
	note D#, 1
	note __, 1
	octave 3
	note B_, 4
	note A#, 2
	note B_, 2
	octave 4
	note C#, 6
;Bar 22
	note D#, 2
	note G#, 4
	note __, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 1
	note __, 1
;Bar 23
	note D#, 2
	note __, 2
	note D#, 2
	note __, 2
	note D#, 2
	note D_, 2
	notetype 6, $a7
	note D#, 3
	intensity $97
	note G#, 1
	notetype 12, $a7
	note A#, 6
;Bar 24
	note G_, 1
	intensity $97
	note F#, 1
	intensity $a7
	note G_, 1
	note __, 1
	note G#, 1
	intensity $97
	note G_, 1
	intensity $a7
	note G#, 1
	note __, 1
	note A#, 1
	intensity $97
	note A_, 1
	intensity $a7
	note A#, 1
	note __, 1
;Bar 25
	note A#, 4
	note B_, 1
	note __, 1
	note G#, 4
	note G_, 2
	note G#, 2
	note A#, 6
;Bar 26
	note B_, 1
	note __, 1
	notetype 6, $97
	note G#, 7
	dutycycle $0
	vibrato $08, $24
	octave 5
	note C_, 1
	notetype 12, $98
	note C#, 2
	octave 4
	note B_, 1
	note __, 1
	note A#, 1
	note __, 1
;Bar 27
	note B_, 11
	intensity $95
	vibrato $00, $24
	note B_, 4
	vibrato $08, $24
	notetype 6, $98
	note G#, 1
	note A#, 1
;Bar 28
	notetype 12, $98
	note B_, 6
	intensity $95
	vibrato $00, $24
	note B_, 4
	vibrato $08, $24
	intensity $98
	note G#, 2
	note A#, 1
	note __, 1
	note B_, 1
	note __, 1
;Bar 29
	note A#, 6
	vibrato $00, $24
	intensity $95
	note A#, 4
	vibrato $08, $24
	intensity $98
	note G#, 2
	note A#, 1
	note __, 1
	note G#, 1
	note __, 1
;Bar 30
	note A#, 2
	note G#, 1
	note __, 3
	note F#, 4
	vibrato $08, $24
	intensity $95
	note F#, 4
	note __, 2
	loopchannel 0, Music_FriendlyShop_Ch2_loop

; ============================================================================================================

Music_FriendlyShop_Ch3:
	notetype 12, $25
	vibrato $08, $1a
;Bar 1
	octave 4
	note D#, 1
	note __, 3
	note D#, 1
	note __, 3
	note D_, 1
	note __, 1
	note D_, 1
	note __, 3
	note C#, 1
	note __, 5
;Bar 2
	octave 3
	note F#, 4
	note __, 8
;Bar 3
Music_FriendlyShop_Ch3_loop:
	octave 2
	callchannel Music_FriendlyShop_Ch3_Bar3
;Bar 4
	callchannel Music_FriendlyShop_Ch3_Bar3
;Bar 5
	callchannel Music_FriendlyShop_Ch3_Bar3
;Bar 6
	callchannel Music_FriendlyShop_Ch3_Bar3
;Bar 7
	note E_, 4
	note __, 2
	note E_, 1
	note __, 1
	note B_, 4
	note __, 2
	note B_, 1
	note __, 1
;Bar 8
	note F_, 4
	note __, 2
	note F_, 1
	note __, 1
	note B_, 4
	note __, 2
	note B_, 1
	note __, 1
;Bar 9
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
	octave 3
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
;Bar 10
	octave 2
	note F#, 2
	note __, 14
;Bar 11
	callchannel Music_FriendlyShop_Ch3_Bar11
;Bar 12
	callchannel Music_FriendlyShop_Ch3_Bar11
;Bar 13
	callchannel Music_FriendlyShop_Ch3_Bar11
;Bar 14
	callchannel Music_FriendlyShop_Ch3_Bar11
;Bar 15
	note E_, 4
	octave 6
	intensity $35
	note G#, 1
	intensity $25
	octave 2
	note __, 1
	note E_, 1
	note __, 1
	note B_, 4
	octave 5
	intensity $35
	note G#, 1
	intensity $25
	octave 2
	note __, 1
	note B_, 1
	note __, 1
;Bar 16
	note F_, 4
	octave 6
	intensity $35
	note G#, 1
	intensity $25
	octave 2
	note __, 1
	note F_, 1
	note __, 1
	note B_, 4
	octave 6
	intensity $35
	note G#, 1
	intensity $25
	octave 2
	note __, 1
	note B_, 1
	note __, 1
;Bar 17
	note F#, 4
	octave 6
	intensity $35
	note F#, 1
	intensity $25
	octave 2
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note F#, 4
	octave 6
	intensity $35
	note G#, 1
	intensity $25
	octave 3
	note __, 1
	note F#, 1
	note __, 1
;Bar 18
	octave 2
	note F#, 1
	note __, 7
	octave 3
	note C#, 4
	octave 2
	note F#, 4
;Bar 19
	note D#, 4
	note __, 2
	note D#, 1
	note __, 1
	note G_, 4
	note __, 2
	note G_, 1
	note __, 1
;Bar 20
	note A#, 4
	note __, 2
	note A#, 1
	note __, 1
	note D#, 4
	note G_, 4
;Bar 21
	note G#, 4
	note __, 2
	note G#, 1
	note __, 1
	note G_, 4
	note __, 2
	note G_, 1
	note __, 1
;Bar 22
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
	note F_, 4
	note E_, 4
;Bar 23
	note D#, 4
	octave 4
	intensity $35
	note A#, 1
	intensity $25
	octave 2
	note __, 1
	note D#, 1
	note __, 1
	note G_, 4
	octave 4
	intensity $35
	note G_, 1
	intensity $25
	octave 2
	note __, 1
	note G_, 1
	note __, 1
;Bar 24
	note A#, 4
	octave 4
	intensity $35
	note A#, 1
	intensity $25
	octave 2
	note __, 1
	note A#, 1
	note __, 1
	note D#, 4
	note G_, 4
;Bar 25
	note G#, 4
	octave 6
	intensity $35
	note D#, 1
	intensity $25
	octave 2
	note __, 1
	note G#, 1
	note __, 1
	note G_, 4
	octave 6
	intensity $35
	note D#, 1
	intensity $25
	octave 2
	note __, 1
	note G_, 1
	note __, 1
;Bar 26
	note F#, 4
	octave 6
	intensity $35
	note D#, 1
	note __, 1
	intensity $25
	octave 2
	note F#, 1
	note __, 1
	note F_, 4
	octave 6
	intensity $35
	note D#, 1
	note __, 1
	intensity $25
	octave 2
	note F_, 1
	note __, 1
;Bar 27
	note E_, 4
	octave 6
	intensity $35
	note G#, 1
	note __, 1
	intensity $25
	octave 2
	note E_, 1
	note __, 1
	octave 1
	note B_, 4
	octave 5
	intensity $35
	note G#, 1
	note __, 1
	intensity $25
	octave 1
	note B_, 1
	note __, 1
;Bar 28
	octave 2
	note F_, 4
	octave 6
	intensity $35
	note G#, 1
	note __, 1
	intensity $25
	octave 2
	note F_, 1
	note __, 1
	octave 1
	note B_, 4
	octave 6
	intensity $35
	note D_, 1
	note __, 1
	intensity $25
	octave 1
	note B_, 1
	note __, 1
;Bar 29
	octave 2
	note F#, 4
	octave 6
	intensity $35
	note F#, 1
	note __, 1
	intensity $25
	octave 2
	note F#, 1
	note __, 1
	octave 3
	note C#, 4
	octave 5
	intensity $35
	note F#, 1
	note __, 1
	intensity $25
	octave 3
	note C#, 1
	note __, 1
;Bar 30
	octave 2
	note F#, 1
	note __, 1
	note F#, 1
	note __, 3
	note F#, 4
	note F#, 1
	note __, 1
	note G#, 1
	note __, 1
	note A#, 1
	note __, 1
	loopchannel 0, Music_FriendlyShop_Ch3_loop

Music_FriendlyShop_Ch3_Bar3:
	note B_, 4
	note __, 2
	note B_, 1
	note __, 1
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
	endchannel

Music_FriendlyShop_Ch3_Bar11:
	note B_, 4
	octave 6
	intensity $35
	note F#, 1
	intensity $25
	octave 2
	note __, 1
	note B_, 1
	note __, 1
	note F#, 4
	octave 5
	intensity $35
	note F#, 1
	intensity $25
	octave 2
	note __, 1
	note F#, 1
	note __, 1
	endchannel

; ============================================================================================================

Music_FriendlyShop_Ch4:
	togglenoise 3
	stereopanning $f
	notetype 12
;Bar 1
	note D_, 4
	note D_, 4
	note D_, 2
	note D_, 4
	note D_, 6
;Bar 2
	note F_, 12
;Bar 3
Music_FriendlyShop_Ch4_loop:
	note B_, 4
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 4
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
;Bar 5
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 6
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
;Bar 7
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 8
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
;Bar 9
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 10
	note D_, 16
;Bar 11
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 12
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
;Bar 13
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 14
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
;Bar 15
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 16
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
;Bar 17
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note C#, 2
;Bar 18
	note D_, 16
;Bar 19
Music_FriendlyShop_Ch4_part2:
	note F_, 4
	note D_, 2
	note C#, 2
	loopchannel 22, Music_FriendlyShop_Ch4_part2
;Bar 30
	note D_, 2
	note F_, 4
	note F_, 4
	note C#, 2
	note D_, 2
	note D_, 2
	loopchannel 0, Music_FriendlyShop_Ch4_loop
