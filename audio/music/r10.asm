; Route 10 (Pokémon Black & White)
; Demixed by TriteHexagon

; dn 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 3, 3, 12, 12, 12, 12, 10, 10, 9, 9, 8, 8, 9, 9, 10, 10, 12, 12

Music_Route10:
	musicheader 4, 1, Music_Route10_Ch1
	musicheader 1, 2, Music_Route10_Ch2
	musicheader 1, 3, Music_Route10_Ch3
	musicheader 1, 4, Music_Route10_Ch4

; ============================================================================================================
Music_Route10_Ch1:
	tempo 137 ;134
	volume $77
	stereopanning $ff
	notetype 12, $68
    dutycycle $2
	vibrato $0, $48

;Ch1_Bar1:
	octave 2
	note C_, 14
    notetype 6, $68
	note G_, 1
    note __, 3
    notetype 12, $68
;Ch1_Bar2:
	octave 3
	note C_, 16
;Ch1_Bar3:
	octave 2
	note C_, 15
    note __, 1
;Ch1_Bar4:
	note C_, 4
	notetype 6, $68
	note G_, 1
    note __, 3
    notetype 12, $68
	octave 3
	note C_, 4
	octave 2
	note G_, 6
Music_Route10_Ch1_master:
;Ch1_Bar5-20:
	intensity $68
    callchannel Music_Route10_Ch1_Bar5
    intensity $68
    callchannel Music_Route10_Ch1_Bar5
    intensity $68
;Ch1_Bar21-25:
	callchannel Music_Route10_Ch1_Bar21
;Ch1_Bar26:
	octave 1
	note A#, 6
	octave 2
	note F_, 4
	octave 1
	note A#, 2
	octave 2
	note D_, 1
    note __, 1
	octave 1
	note A#, 2
;Ch1_Bar27:
	note D#, 6
	note A#, 6
	note D#, 4
;Ch1_Bar28:
	note G_, 4
	notetype 6, $68
	note D_, 1
    note __, 3
    notetype 12, $68
	note G_, 4
	octave 2
	note D_, 4
	octave 1
	note G_, 2
;Ch1_Bar29-33:
    callchannel Music_Route10_Ch1_Bar21
;Ch1_Bar34:
	octave 1
	note G_, 6
	octave 2
	note D_, 4
	octave 1
	note G_, 2
	note A#, 1
    note __, 1
	octave 2
	note D_, 2
;Ch1_Bar35:
	octave 1
	note G#, 6
	octave 2
	note D#, 4
	octave 1
	note G#, 2
	octave 2
	note C_, 1
    note __, 1
	note D#, 2
;Ch1_Bar36:
	octave 1
	note A#, 4
	octave 2
	notetype 6, $68
	note F_, 1
    note __, 3
    notetype 12, $68
	note A#, 4
	notetype 6, $68
	note F_, 1
    note __, 3
    notetype 12, $68
	octave 1
	note A#, 4
;Ch1_Bar37:
	octave 2
	note C_, 14
    notetype 6, $68
	note G_, 1
    note __, 3
    notetype 12, $68
;Ch1_Bar38:
	octave 3
	note C_, 16
;Ch1_Bar39:
	octave 2
	note C_, 15
    note __, 1
;Ch1_Bar40:
	note C_, 4
	notetype 6, $68
	note G_, 1
    note __, 3
    notetype 12, $68
	octave 3
	note C_, 4
	octave 2
	note G_, 6
    loopchannel 0, Music_Route10_Ch1_master
	endchannel

Music_Route10_Ch1_Bar5:
;Ch1_Bar5:
    note C_, 6
	note G_, 4
	note D#, 2
	note F_, 1
    note __, 1
	note G_, 1
    note __, 1
;Ch1_Bar6:
	octave 1
	note A#, 6
	octave 2
	note F_, 4
	octave 1
	note A#, 2
	octave 2
	note C_, 1
    note __, 1
	note D_, 2
;Ch1_Bar7:
	octave 1
	note G#, 6
	octave 2
	note D#, 4
	octave 1
	note G#, 2
	note A#, 1
    note __, 1
	octave 2
	note C_, 2
;Ch1_Bar8:
	octave 1
	note G_, 6
	octave 2
	note D#, 4
	note A#, 2
	note G_, 2
	octave 1
	note A#, 2
;Ch1_Bar9:
	note F_, 6
	octave 2
	note C_, 4
	octave 1
	note G#, 2
	note A#, 1
    note __, 1
	octave 2
	note C_, 1
    note __, 1
;Ch1_Bar10:
	note D#, 6
	octave 3
	note C_, 4
	octave 2
	note D#, 2
	note F_, 1
    note __, 1
	note G_, 1
    note __, 1
;Ch1_Bar11:
	note D_, 6
	note A_, 4
	note D_, 2
	note E_, 1
    note __, 1
	note F#, 2
;Ch1_Bar12:
	octave 1
	note G_, 6
	octave 2
	note D_, 4
	note G_, 2
	note D_, 2
	octave 1
	note B_, 2
    endchannel

Music_Route10_Ch1_Bar21:
    ;Ch1_Bar21:
	note F_, 6
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	note G#, 1
    note __, 1
	octave 2
	note C_, 2
;Ch1_Bar22:
	octave 1
	note A#, 4
	octave 2
	notetype 6, $68
	note D_, 1
    note __, 3
    notetype 12, $68
	note F_, 4
	octave 1
	note A#, 2
	octave 2
	note D_, 1
    note __, 1
	note F_, 2
;Ch1_Bar23:
	octave 1
	note D#, 6
	note A#, 4
	note D#, 2
	note F#, 1
    note __, 1
	note A#, 2
;Ch1_Bar24:
	note G#, 4
	octave 2
    notetype 6, $68
	note D#, 1
    note __, 3
    notetype 12, $68
	octave 1
	note G#, 4
	note G_, 4
	note G#, 1
    note __, 1
;Ch1_Bar25:
	note F_, 6
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	note G#, 1
    note __, 1
	octave 2
	note C_, 2
    endchannel

; ============================================================================================================
Music_Route10_Ch2:
	dutycycle $1
	stereopanning $ff
	notetype $c, $68
    tone $0001
	;vibrato $12, $14
    octave 3
;Ch2_Bar1:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar2:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar3:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar4:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
Music_Route10_Ch2_master:
;Ch2_Bar5:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar6:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar7:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar8:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar9:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar10:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar11:
	pitchoffset 0, F#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar12:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar13:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar14:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar15:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar16:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar17:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar18:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar19:
	pitchoffset 0, F#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar20:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar21:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar22:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar23:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar24:
	pitchoffset 0, C_
	callchannel Music_Route10_Ch2_Bar32
;Ch2_Bar25:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar26:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar27:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar28:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar29:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar30:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar31:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar32:
	pitchoffset 0, C_
	callchannel Music_Route10_Ch2_Bar32
;Ch2_Bar33:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar34:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar35:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar36:
	pitchoffset 0, G_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar37:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar38:
	pitchoffset 0, D_
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar39:
	pitchoffset 0, D#
	callchannel Music_Route10_Ch2_C_
;Ch2_Bar40:
	pitchoffset 0, F_
	callchannel Music_Route10_Ch2_C_
	loopchannel 0, Music_Route10_Ch2_master
	endchannel

Music_Route10_Ch2_C_:
	intensity $62
    note C_, 2
    notetype 3, $62
	note C_, 4
	note C_, 4
	note C_, 8
    notetype 12, $67
	note C_, 4
	note C_, 4
	note C_, 2
    endchannel

Music_Route10_Ch2_Bar32:
	intensity $62
	note F#, 2
    notetype 3, $62
	note F#, 4
	note F#, 4
	note F#, 8
    notetype 12, $67
	note D#, 4
	note D#, 4
	note D#, 2
	endchannel

; ============================================================================================================
Music_Route10_Ch3:
	stereopanning $ff
	;vibrato $00, $13
	notetype 12, $10
	octave 5

;Ch2_Bar1:
	note D#, 16
;Ch2_Bar2:
	note D_, 16
;Ch2_Bar3:
	note C_, 16
;Ch2_Bar4:
	note D_, 15
	notetype 6, $1B
    note D#, 1
    note F_, 1
    notetype 12, $1B
Music_Route10_Ch3_master:
;Ch3_Bar5:
    octave 4
	note G_, 13
    intensity $2B
    note G_, 2
    intensity $1B
    notetype 6, $1B
    note __, 1
    note C_, 1
    notetype 12, $1B
;Ch3_Bar6:
    octave 5
	note D_, 12
    intensity $2B
    note D_, 2
    intensity $1B
	note D#, 1
	note D_, 1
;Ch3_Bar7:
    octave 4
	note G_, 12
    intensity $2B
    note G_, 2
    intensity $1B
	note F_, 1
	note G_, 1
;Ch3_Bar8:
    note A#, 11
    intensity $2B
    note A#, 2
    intensity $1B
    note __, 1
	note G#, 1
	note G_, 1
;Ch3_Bar9:
    note G#, 6
	note A#, 6
	octave 5
	note C_, 3
    notetype 6, $1B
    note __, 1
    note D_, 1
    notetype 12, $1B
;Ch3_Bar10:
    note D#, 6
	note C_, 6
	note D#, 3
    notetype 3, $1B
    note C_, 1
    note D_, 1
    note D#, 1
    note F_, 1
    notetype 12, $1B
;Ch3_Bar11:
    note F#, 6
	note D#, 6
	note D_, 4
;Ch3_Bar12:
    note C_, 6
	octave 4
	note B_, 7
    note __, 1
    intensity $13
	octave 5
	note D#, 1
    notetype 3, $13
	note F_, 3
    note G_, 1
;Ch3_Bar13:
    note G#, 1
    notetype 12, $13
    note G_, 15
    notetype 3, $13
    note __, 1
    note C_, 1
    note D_, 1
    notetype 12, $13
;Ch3_Bar14:check
    octave 6
    note D_, 11
    intensity $23
    note D_, 3
	intensity $13
	note D#, 1
    notetype 6, $13
    note D_, 1
	octave 5
	note G_, 1
;Ch3_Bar15:check
    note G#, 1
    intensity $13
    note G_, 1
    notetype 12, $13
    note G_, 10
    intensity $23
    note G_, 3
	notetype 6, $13
	note F_, 2
	note G_, 1
    note __, 1
;Ch3_Bar16:
    note A#, 1
    octave 6
	note C_, 1
	octave 5
    notetype 12, $13
    note A#, 10
    intensity $23
    note A#, 3
	intensity $13
	note G#, 1
	note G_, 1
;Ch3_Bar17:
    notetype 6, $13
    note G#, 1
    note A#, 1
    notetype 12, $13
	note G#, 5
	note A#, 6
	octave 6
	note C_, 4
;Ch3_Bar18:
    note D#, 6
	note C_, 6
	note D#, 4
;Ch3_Bar19:
    notetype 3, $13
    note F#, 2
    note A_, 2
    notetype 12, $13
	note F#, 5
	note D#, 6
	note D_, 4
;Ch3_Bar20:
    note C_, 6
	octave 5
	note B_, 1
	octave 6
	note C_, 1
    notetype 6, $13
    note D_, 1
    note D#, 1
    notetype 12, $13
	note D_, 5
    intensity $1B
	octave 5
	note C_, 1
	note D_, 1
;Ch3_Bar21:
    intensity $1B
    note D#, 6
	note C_, 5
    notetype 6, $1B
    note F_, 1
	note F#, 1
    notetype 12, $1B
	note G_, 4
;Ch3_Bar22:
    note F_, 5
    notetype 3, $1B
    note F_, 2
    note C_, 1
    note C#, 1
    notetype 12, $1B
	note D_, 6
	note C_, 4
;Ch3_Bar23:
    octave 4
	note A#, 6
	note G_, 5
	octave 5
    notetype 6, $1B
    note C_, 1
	note C#, 1
    notetype 12, $1B
	note D_, 4
;Ch3_Bar24:
    note D_, 6
	note C_, 8
	octave 4
	note G#, 1
	note G_, 1
;Ch3_Bar25:
    note G#, 6
	note A#, 6
	octave 5
	note C_, 3
    octave 4
    notetype 6, $1B
    note G_, 1
    note G#, 1
    notetype 12, $1B
;Ch3_Bar26:
	note A#, 6
	note G#, 6
	note A#, 4
;Ch3_Bar27:
    note G_, 6
	note D#, 6
	note F_, 3
    notetype 6, $1B
    note D#, 1
    note F_, 1
    notetype 12, $1B
;Ch3_Bar28:
    note G_, 11
    intensity $2B
    note G_, 2
    intensity $1B
    note __, 1
	octave 5
	note C_, 1
	note D_, 1
;Ch3_Bar29:
    note D#, 6
	note C_, 5
    notetype 6, $1B
    note F_, 1
	note F#, 1
    notetype 12, $1B
	note G_, 4
;Ch3_Bar30:
    note F_, 5
    notetype 6, $1B
    note C_, 1
	note C#, 1
    notetype 12, $1B
	note D_, 6
	note C_, 4
;Ch3_Bar31:
    octave 4
	note A#, 6
	note G_, 5
	octave 5
	notetype 6, $1B
    note C_, 1
	note C#, 1
    notetype 12, $1B
	note D_, 4
;Ch3_Bar32:
    note D_, 6
	note C_, 7
    note __, 1
	note C_, 1
	note D_, 1
;Ch3_Bar33:
    note D#, 6
	note C_, 5
    notetype 6, $1B
    note F_, 1
	note F#, 1
    notetype 12, $1B
	note G_, 4
;Ch3_Bar34:
    note F_, 6
	note D#, 6
	note D_, 4
;Ch3_Bar35:
    intensity $1B
    note C_, 16
;Ch3_Bar36:
    intensity $1B
    note C_, 11
    note __, 1
	octave 4
	note A#, 4
	octave 5
;Ch3_Bar37:
    intensity $1B
	note C_, 16
;Ch3_Bar38:
    intensity $1B
	note C_, 12
	note G_, 3
    notetype 6, $1B
    note A#, 1
	note B_, 1
    notetype 12, $1B
;Ch3_Bar39:
    octave 6
	note C_, 12
    octave 4
    note G_, 4
;Ch3_Bar40:
    note F_, 6
	note D#, 6
    note D_, 3
    octave 4
    notetype 6, $1B
    note D#, 1
    note F_, 1
    notetype 12, $1B
	loopchannel 0, Music_Route10_Ch3_master
	endchannel

; ============================================================================================================
Music_Route10_Ch4:
	notetype 12
	togglenoise $3

Music_Route10_Ch4_master:
;Ch4_Bar1:
Music_Route10_Ch4_Bar1:
    stereopanning $f0
	note C_, 4
    stereopanning $f
	note D_, 2
    stereopanning $f0
	note C_, 4
	note C_, 2
    stereopanning $f
	note D_, 2
    stereopanning $f0
	note C_, 2
	loopchannel 2, Music_Route10_Ch4_Bar1

Music_Route10_Ch4_Bar3:
;Ch4_Bar3:
    stereopanning $f0
	note C_, 3
    stereopanning $f
    note A#, 1
	note D_, 2
    stereopanning $f0
	note C_, 4
	note C_, 2
    stereopanning $f
	note D_, 2
    stereopanning $f0
	note C_, 2
	loopchannel 2, Music_Route10_Ch4_Bar3
;Ch4_Bar5:
    stereopanning $ff
	callchannel Music_Route10_Ch4_cymbal
;Ch4_Bar6:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar7:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar8:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar9:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar10:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar11:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar12:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar13:
	callchannel Music_Route10_Ch4_cymbal
;Ch4_Bar14:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar15:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar16:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar17:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar18:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar19:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar20:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar21:
	callchannel Music_Route10_Ch4_cymbal
;Ch4_Bar22:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar23:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar24:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar25:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar26:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar27:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar28:
	note A#, 4
	note D_, 2
	note A#, 3
	note D_, 1
	note A#, 2
	note D_, 2
	note A#, 2
;Ch4_Bar29:
	callchannel Music_Route10_Ch4_cymbal
;Ch4_Bar30:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar31:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar32:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar33:
	callchannel Music_Route10_Ch4_cymbal
;Ch4_Bar34:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar35:
	callchannel Music_Route10_Ch4_default
;Ch4_Bar36:
	callchannel Music_Route10_Ch4_default
	loopchannel 0, Music_Route10_Ch4_master
	endchannel

Music_Route10_Ch4_default:
	note A#, 4
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 2
	endchannel

Music_Route10_Ch4_cymbal:
	note B_, 4
	note D_, 2
	note A#, 4
	note A#, 2
	note D_, 2
	note A#, 2
	endchannel
	