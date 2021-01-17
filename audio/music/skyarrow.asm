; Skyarrow Bridge (Pokémon BW/B2W2)
; Demix by TriteHexagon 

; 	dw Drum00
; 	dw Snare12
; 	dw Snare13
; 	dw Snare14
; 	dw Kick1
; 	dw Triangle5
; 	dw Snare5 ;was Drum20
; 	dw Drum27
; 	dw Drum28
; 	dw Drum29
; 	dw Snare9 ;was Drum00
; 	dw Kick2
; 	dw Crash2

Music_SkyarrowBridge:
	musicheader 4, 1, Music_SkyarrowBridge_Ch1
	musicheader 1, 2, Music_SkyarrowBridge_Ch2
	musicheader 1, 3, Music_SkyarrowBridge_Ch3
	musicheader 1, 4, Music_SkyarrowBridge_Ch4

; ============================================================================================================
Music_SkyarrowBridge_Ch1:
	tempo 169
	volume $77
	dutycycle $2
	stereopanning $ff
	notetype $c, $77
	tone $0002
	vibrato $12, $14

;Ch3_Bar3:
	octave 4
	note A_, 8
;Ch3_Bar4:
	note F_, 8
	note G_, 8
;Ch3_Bar5:
	note D#, 8
	stereopanning $f
Music_SkyarrowBridge_Ch1_master:
	intensity $75
;Ch1_Bar3:
	octave 1
	note A#, 3
	note A#, 2
	note __, 1
	note A#, 1
	note A#, 2
	note __, 1
	note A_, 1
	note A_, 1
	note __, 1
	note A_, 3
;Ch1_Bar4:
	note G_, 3
	note G_, 2
	note __, 1
	note G_, 1
	octave 2
	note D_, 2
	note __, 1
	octave 1
	note F_, 2
	note __, 1
	note E_, 3
;Ch1_Bar5:
	note D#, 3
	note D#, 1
	note __, 1
	note D#, 1
	note G_, 1
	note A#, 1
	note __, 2
	octave 2
	note D#, 2
	note __, 1
	octave 1
	note D#, 3
;Ch1_Bar6:
	note F_, 2
	octave 2
	note C_, 1
	octave 1
	note F_, 2
	note F_, 2
	note F_, 1
	note F_, 2
	octave 2
	note C_, 1
	note F_, 1
	note __, 1
	octave 1
	note F_, 3
;Ch1_Bar7:
	note D#, 4
	note A#, 1
	note D#, 1
	note __, 1
	note F_, 2
	note __, 1
	note F_, 2
	octave 2
	note C_, 1
	octave 1
	note F_, 3
;Ch1_Bar8:
	octave 2
	note D_, 4
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	note __, 1
	octave 1
	note G_, 3
	note A#, 1
	octave 2
	note D_, 1
	note __, 1
	octave 1
	note G_, 3
;Ch1_Bar9:
	octave 2
	note C_, 4
	note C_, 1
	note G_, 1
	note __, 1
	note C_, 3
	octave 1
	note G_, 1
	octave 2
	note C_, 2
	octave 1
	note G_, 3
;Ch1_Bar10:
	note F_, 4
	note F_, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note F_, 2
	note F_, 1
	octave 2
	note C_, 1
	note F_, 1
	note __, 1
	octave 1
	note F_, 3
;Ch1_Bar11:
	octave 2
	note D#, 4
	note A#, 1
	note D#, 1
	note __, 1
	note D_, 3
	octave 1
	note A#, 1
	octave 2
	note D_, 1
	note __, 1
	octave 1
	note A#, 3
;Ch1_Bar12:
	octave 2
	note C_, 3
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note A#, 2
	note __, 4
	note A#, 1
	octave 2
	note C_, 1
	note D_, 1
;Ch1_Bar13:
	callchannel Music_SkyarrowBridge_Ch1_bar_13_15_17
;Ch1_Bar14:
	octave 2
	note C_, 2
	octave 1
	note G_, 1
	octave 2
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 1
	note A#, 3
	note F_, 1
	note A#, 1
	note __, 1
	note F_, 3
;Ch1_Bar15:
	callchannel Music_SkyarrowBridge_Ch1_bar_13_15_17
;Ch1_Bar16:
	callchannel Music_SkyarrowBridge_Ch1_bar_16_18
;Ch1_Bar17:
	callchannel Music_SkyarrowBridge_Ch1_bar_13_15_17
;Ch1_Bar18:
	callchannel Music_SkyarrowBridge_Ch1_bar_16_18
	loopchannel 0, Music_SkyarrowBridge_Ch1_master
	endchannel

Music_SkyarrowBridge_Ch1_bar_13_15_17:
	octave 2
	note D#, 4
	note A#, 1
	note D#, 1
	note __, 1
	note D_, 3
	octave 1
	note A#, 1
	octave 2
	note D_, 1
	note __, 1
	octave 1
	note A#, 3
	endchannel

Music_SkyarrowBridge_Ch1_bar_16_18:
	octave 2
	note C_, 3
	octave 1
	note G_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note A#, 3
	note F_, 1
	note A#, 1
	note __, 1
	note F_, 3
	endchannel

; ============================================================================================================
Music_SkyarrowBridge_Ch2:
	stereopanning $f0
	vibrato $12, $14
	notetype 12, $77
	dutycycle $1
	tone $0001

;Ch2_Bar1:
	note __, 16
;Ch2_Bar2:
	octave 3
	note D#, 1
	note C_, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 1
Music_SkyarrowBridge_Ch2_master:
;Ch2_Bar3:
	note D_, 1
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	note C_, 1
	octave 3
	note F_, 1
	note A_, 1
	octave 4
	note C_, 2
	octave 3
	note F_, 2
;Ch2_Bar4:
	octave 4
	note D_, 1
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	octave 3
	note F_, 1
	note A#, 1
	octave 4
	note D_, 2
	note C_, 1
	octave 3
	note D#, 1
	note G#, 1
	octave 4
	note C_, 2
	octave 3
	note D_, 2
;Ch2_Bar5:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 3
	note A#, 2
;Ch2_Bar6:
	intensity $68
	note A#, 3
	intensity $67
	note A#, 2
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	intensity $68
	note C_, 6
	intensity $67
	note C_, 2
;Ch2_Bar7:
	octave 3
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 1
	note A#, 2
	note A_, 1
	note C_, 1
	note F_, 1
	note A_, 2
	note F_, 2
;Ch2_Bar8:
	note A_, 1
	note C_, 1
	note F_, 1
	note A_, 2
	note F_, 1
	note G_, 1
	note A_, 2
	note A#, 1
	note D_, 1
	note F_, 1
	note A#, 2
	note F_, 2
;Ch2_Bar9:
	intensity $68
	note G_, 3
	intensity $67
	note G_, 2
	octave 2
	note A#, 1
	octave 3
	note C_, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note A_, 1
;Ch2_Bar10:
	intensity $68
	note A#, 4
	intensity $67
	note A#, 2
	note A#, 1
	note B_, 1
	octave 4
	intensity $68
	note C_, 2
	intensity $67
	note C_, 2
	octave 3
	note C_, 1
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
;Ch2_Bar11:
	octave 3
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar12:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 2
	intensity $68
	note D_, 7
	intensity $67
	note D_, 2
;Ch2_Bar13:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar14:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note A_, 2
	note A#, 2
	note D_, 1
	note D#, 1
	note F_, 1
	note D_, 2
	note F_, 2
;Ch2_Bar15:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 2
	octave 2
	note A#, 1
	octave 3
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar16:
	note G_, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D#, 2
	note D_, 2
	note D_, 1
	note D#, 1
	note F_, 1
	note G_, 2
	note F_, 2
;Ch2_Bar17:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 2
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 2
	note A#, 2
;Ch2_Bar18:
	note A#, 1
	note D#, 1
	note G_, 1
	note A#, 2
	note A_, 2
	note A#, 2
	note D_, 1
	note D#, 1
	note F_, 1
	note D_, 2
	note F_, 2
	loopchannel 0, Music_SkyarrowBridge_Ch2_master
	endchannel

; ============================================================================================================
Music_SkyarrowBridge_Ch3:
	stereopanning $ff
	notetype 12, $25
	;vibrato $00, $00

	octave 5
	note F_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note F_, 4
;Ch1_Bar2:
	note D#, 4
	octave 4
	note A#, 4
	note G_, 4
	note A_, 4
Music_SkyarrowBridge_Ch3_master:
	vibrato $08, $15
;Bar3
	octave 5
	notetype 6, $13
	note F_, 7
	note __, 1
	notetype 12, $13

	note F_, 1
	note D#, 1
	note __, 1
	note D_, 3
	note F_, 2
	note G_, 1
	note __, 1
	note A_, 1
	notetype 6, $13
	note G_, 1
	note A_, 1
	notetype 12, $13
;Bar4
	note A#, 4
	note A_, 1
	note G_, 1
	note __, 1
	note D_, 6
	note __, 1
	note C_, 1
	note D_, 1
;Bar5
	note C_, 1
	octave 4
	note A#, 1
	note __, 1

	note A#, 3
	note G_, 1
	notetype 6, $13
	note G_, 1
	note A_, 1
	notetype 12, $13
	note A#, 3
	octave 5
	note C_, 2
	note __, 1
	note D_, 1
	note __, 1
;Bar6
	note D_, 6
	note D#, 1
	note D_, 1
	note C_, 7
	note __, 1
;Bar7
	octave 4
	note A#, 3
	note __, 1
	note A#, 1
	octave 5
	note D_, 1
	note __, 1
	note C_, 5
	note G_, 4
;Bar8
	note F_, 3
	note __, 1
	note G_, 1
	note A_, 1
	note __, 1
	note A#, 6
	note __, 1
	note D#, 1
	note D_, 1
;Bar9
	note D#, 1
	note D_, 1
	note __, 1

	octave 4
	note A#, 3
	note G_, 1
	note __, 1
	note A#, 3
	octave 5
	note C_, 2
	note __, 1
	note D_, 1
	note __, 1
;Bar10
	note D_, 6
	note D#, 1
	notetype 6, $13
	note D_, 1
	note __, 1
	notetype 12, $13
	note C_, 7
	octave 4
	vibrato $00, $00
	notetype 6, $25
	note G_, 1
	note A_, 1
	notetype 12, $25
;Bar11
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	notetype 6, $25
	note A#, 1
	note __, 1
	notetype 12, $25
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note F_, 3
	note A#, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
;Bar12
	octave 5
	note C_, 1
	note __, 1
	note C_, 1
	octave 4
	note A#, 1

	note __, 1
	note A_, 1
	note __, 1
	note A#, 1

	note __, 1
	note D_, 1
	note D#, 1
	note F_, 1

	note D_, 1
	note __, 1
	note F_, 1
	note __, 1
;Bar13
	note A#, 1
	note __, 1
	note F_, 1
	note A#, 1

	note __, 1
	octave 5
	note C_, 1
	note __, 1
	octave 4
	note A#, 1

	note __, 1
	octave 5
	note F_, 3

	note C#, 1
	note C_, 1
	octave 4
	note A#, 1
	note __, 1
;Bar14
	octave 5
	note C_, 1
	note __, 1
	note C_, 1
	octave 4
	note A#, 1

	note __, 1
	note A_, 1
	note __, 1
	note A#, 1

	note __, 1
	note F_, 3
	note D_, 3
	vibrato $08, $15
	notetype 6, $13
	note G_, 1
	note A_, 1
;Bar15
	notetype 12, $13
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	notetype 6, $13
	note A#, 1
	note __, 1
	notetype 12, $13
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	note F_, 3
	note A#, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
;Bar16
	note C_, 1
	note __, 1
	note C_, 1
	octave 4
	note A#, 1
	note __, 1
	note A_, 1
	note __, 1
	note A#, 1
	note __, 1
	note F_, 3
	note G_, 1
	note F#, 1
	note F_, 1
	note __, 1
;Bar17
	note A#, 1
	note __, 1
	note F_, 1
	note A#, 1
	note __, 1
	octave 5
	note C_, 1
	note __, 1
	octave 4
	note A#, 1
	note __, 1
	octave 5
	note F_, 3
	note G_, 1
	note __, 1
	note A_, 1
	notetype 6, $13
	note G_, 1
	note A_, 1
	notetype 12, $13
;Bar18
	note A#, 1
	note __, 1
	note F_, 1
	note A#, 1
	note __, 1
	octave 6
	note C_, 1
	note __, 1
	octave 5
	note A#, 7
	intensity $23
	note A#, 2
	intensity $13
	loopchannel 0, Music_SkyarrowBridge_Ch3_master
	endchannel

; ============================================================================================================
Music_SkyarrowBridge_Ch4:
	notetype 12
	stereopanning $ff
	togglenoise 6

	callchannel Music_SkyarrowBridge_Ch4_Intro
;Ch4_Bar2:
	note F_, 8
	note B_, 2
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D#, 2
Music_SkyarrowBridge_Ch4_master:
;Ch4_Bar3:
	callchannel Music_SkyarrowBridge_Ch4_Bar3_1H
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar4:
	callchannel Music_SkyarrowBridge_Ch4_Bar4_1H
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar5:
	callchannel Music_SkyarrowBridge_Ch4_Bar4_1H
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar6:
	note A#, 3
	note A#, 1
	note D_, 2
	note A#, 1
	note A#, 2
	note D_, 1
	note A_, 2
	note D_, 1
	note A#, 1
	note D_, 1
	note D_, 1
;Ch4_Bar7:
	note F_, 3
	note A#, 1
	note D_, 3
	note A#, 1
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar8:
	callchannel Music_SkyarrowBridge_Ch4_Bar4_1H
	note A#, 1
	note D_, 3
	note D_, 2
	note A_, 2
;Ch4_Bar9:
	callchannel Music_SkyarrowBridge_Ch4_Bar3_1H
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar10:
	callchannel Music_SkyarrowBridge_Ch4_Bar4_1H
	note A#, 1
	note D_, 1
	note A_, 2
	note D_, 1
	note D_, 1
	note A#, 1
	note D_, 1
;Ch4_Bar11:
	callchannel Music_SkyarrowBridge_Ch4_Bar3_1H
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar12:
	note A#, 3
	note D_, 1
	note A#, 1
	note A_, 2
	note A_, 5
	note D_, 1
	note D_, 1
	note A_, 2
;Ch4_Bar13:
	callchannel Music_SkyarrowBridge_Ch4_Bar3_1H
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar14:
	note A#, 2
	note A#, 1
	note A_, 2
	note A#, 2
	note A#, 1
	note A#, 1
	note D_, 1
	note A_, 2
	note D_, 1
	note D_, 1
	note A#, 1
	note D_, 1
;Ch4_Bar15:
	callchannel Music_SkyarrowBridge_Ch4_Bar3_1H
	callchannel Music_SkyarrowBridge_Ch4_Bar4_2H
;Ch4_Bar16:
	note A#, 2
	note A#, 1
	note D_, 2
	note D_, 2
	note A#, 1
	note A#, 1
	note D_, 1
	note A_, 2
	note D_, 1
	note D_, 1
	note A#, 2
;Ch4_Bar17:
	callchannel Music_SkyarrowBridge_Ch4_Bar3_1H
	note A#, 2
	note F_, 3
	note D_, 1
	note D_, 1
	note A#, 1
;Ch4_Bar18:
	note B_, 3
	note A#, 2
	note A#, 2
	note F_, 4
	note A#, 1
	note D_, 1
	note D_, 1
	note D#, 2
	loopchannel 0, Music_SkyarrowBridge_Ch4_master
	endchannel

Music_SkyarrowBridge_Ch4_Intro:
	note G_, 1
	loopchannel 16, Music_SkyarrowBridge_Ch4_Intro
	endchannel

Music_SkyarrowBridge_Ch4_Bar4_1H:
	note A#, 3
	note A#, 1
	note D_, 3
	note A#, 1
	endchannel

Music_SkyarrowBridge_Ch4_Bar4_2H:
	note A#, 2
	note A_, 2
	note D_, 2
	note A#, 2
	endchannel

Music_SkyarrowBridge_Ch4_Bar3_1H:
	note B_, 3
	note A#, 1
	note D_, 3
	note A#, 1
	endchannel
	