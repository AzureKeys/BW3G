Music_UnovaRoute1: ; ec000
	musicheader 3, 1, Music_UnovaRoute1_Ch1
	musicheader 1, 2, Music_UnovaRoute1_Ch2
	musicheader 1, 3, Music_UnovaRoute1_Ch3
; ec009

	db $3

Music_UnovaRoute1_Ch1: ; ec00a
	stereopanning $f
	tempo 118
	volume $77
	vibrato $16, $11
	dutycycle $3
	notetype $c, $83
	octave 4
	note F_, 6
	note D#, 6
	note E_, 6
	intensity $87
	note F_, 4
	note D_, 2
Music_UnovaRoute1_Ch1_loop:
	notetype $c, $74
	dutycycle $3
	octave 3
	note C_, 4
	note G_, 2
	note __, 4
	octave 4
	note E_, 2
	octave 3
	note D_, 4
	note A_, 2
	note __, 4
	octave 4
	note F_, 2
	octave 3
	note E_, 4
	note B_, 2
	note __, 4
	octave 4
	note G_, 2
	octave 3
	intensity $77
	note A_, 4
	octave 4
	note G_, 2
	octave 5
	note C#, 4
	octave 4
	note A#, 2
	note A_, 4
	note __, 2
	octave 5
	note F_, 4
	octave 4
	note B_, 2
	note F_, 4
	note A_, 2
	octave 5
	note G_, 4
	octave 4
	note C_, 2
	octave 5
	note D_, 2
	note __, 4
	octave 4
	note B_, 2
	note __, 4
	octave 5
	note C_, 4
	octave 4
	note B_, 6
	note F_, 2
	dutycycle $2
	notetype $6, $81
	octave 5
	note C_, 2
	intensity $41
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	intensity $81
	note C_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note C_, 4
	note D_, 2
	intensity $41
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	intensity $81
	note D_, 4
	note D_, 4
	note C#, 4
	note D_, 4
	note E_, 2
	intensity $41
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	intensity $81
	note E_, 4
	note D#, 4
	note E_, 4
	note A_, 2
	intensity $41
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	intensity $81
	note G_, 4
	note F_, 4
	note D#, 4
	note __, 4
	note A_, 2
	intensity $41
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	intensity $81
	note A_, 1
	intensity $41
	note A_, 1
	note A_, 1
	note A_, 1
	intensity $81
	note C_, 4
	note A_, 1
	intensity $41
	note A_, 1
	note A_, 1
	note A_, 1
	intensity $81
	note B_, 1
	intensity $41
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	octave 6
	intensity $81
	note C_, 1
	intensity $41
	note C_, 1
	note C_, 1
	note C_, 1
	intensity $81
	note D_, 1
	intensity $41
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	intensity $81
	octave 5
	note B_, 2
	intensity $41
	note B_, 2
	intensity $83
	octave 6
	note C_, 9
	octave 5
	note G_, 1
	note A_, 1
	note B_, 1
	octave 6
	note C_, 9
	octave 5
	note G_, 1
	note A_, 1
	note B_, 1
	note C_, 12
	note A#, 2
	intensity $41
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
;;;;;;;;;;;;;;mark
	dutycycle $3
	notetype $c, $84
	octave 4
	note E_, 3
	note __, 1
	note E_, 2
	note __, 8
	note E_, 1
	note __, 3
	note D_, 3
	note __, 1
	note E_, 1
	note __, 1
	note D_, 3
	note __, 1
	note D_, 2
	note __, 8
	note D_, 1
	note __, 3
	note C_, 3
	note __, 1
	note D_, 1
	note __, 1
	note C_, 3
	note __, 1
	note C_, 2
	note __, 8
	note C_, 1
	note __, 3
	octave 3
	note B_, 3
	note __, 1
	note A_, 2
	note B_, 3
	note __, 1
	note B_, 2
	note __, 8
	note G_, 1
	note __, 3
	note A#, 3
	note __, 1
	note A_, 1
	note __, 1
	octave 4
	note E_, 3
	note __, 1
	note E_, 2
	note __, 8
	note E_, 1
	note __, 3
	note D_, 3
	note __, 1
	note D_, 1
	note __, 1
	note D_, 3
	note __, 1
	note D_, 2
	note __, 8
	note D_, 1
	note __, 3
	note C_, 3
	note __, 1
	note D_, 2
	octave 3
	note G#, 2
	note D_, 2
	note G#, 2
	octave 4
	note G#, 2
	note G_, 2
	note G#, 2
	note C_, 2
	octave 3
	note D_, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note G_, 2
	note G#, 2
	intensity $87
	octave 4
	note F_, 10
	note G_, 2
	note B_, 12
	loopchannel 0, Music_UnovaRoute1_Ch1_loop
; ec0eb

Music_UnovaRoute1_Ch2: ; ec0eb
	stereopanning $f0
	vibrato $12, $22
	dutycycle $2
	notetype $6, $94
	octave 5
	note C_, 4
	note __, 6
	octave 4
	note G_, 1
	note A_, 1
	note A#, 1
	note B_, 3
	note __, 6
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 7
	notetype $c, $94
	octave 4
	note B_, 2
	note A_, 4
	note B_, 2
Music_UnovaRoute1_Ch2_loop:
	note E_, 2
	note __, 8
	note D_, 1
	note E_, 1
	note F_, 2
	note __, 8
	note E_, 1
	note F_, 1
	intensity $90
	note G_, 6
	intensity $97
	note G_, 6
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note F_, 4
	note E_, 2
	intensity $90
	note A_, 6
	intensity $97
	note A_, 6
	note B_, 4
	octave 5
	note C_, 2
	note D_, 4
	octave 4
	note B_, 2
	intensity $94
	note G_, 6
	note E_, 6
	intensity $97
	note F_, 4
	note A_, 4
	note __, 2
	intensity $94
	dutycycle $1
	note G_, 1
	note F_, 1
	note E_, 2
	note __, 2
	note E_, 2
	note __, 4
	note D_, 1
	note E_, 1
	note F_, 2
	note __, 2
	note F_, 2
	note __, 4
	note E_, 1
	note F_, 1
	intensity $90
	note G_, 6
	intensity $97
	note G_, 6
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note F_, 2
	note D#, 2
	note E_, 2
	intensity $90
	note A_, 6
	intensity $97
	note A_, 6
	note B_, 4
	octave 5
	note C_, 2
	note D_, 4
	octave 4
	note B_, 2
	notetype $6, $94
	octave 5
	note C_, 4
	note __, 6
	octave 4
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 3
	note __, 6
	octave 4
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 3
	note __, 8
	notetype $c, $97
	octave 4
	note A#, 6
;;;;;;;;;;;;;;mark
	intensity $A4
	dutycycle $2
	note __, 4
	note F_, 2
	note A_, 2
	note __, 2
	octave 5
	note E_, 2
	note D_, 2
	note __, 2
	note E_, 2
	note D_, 2
	octave 4
	note B_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	octave 5
	note D_, 4
	intensity $A7
	note C_, 12
	note __, 6
	octave 4
	intensity $A4
	note C_, 2
	note F_, 2
	note __, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note __, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note __, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note F_, 2
	note G_, 4
	note A_, 4
	note A#, 4
	octave 5
	note C_, 4
	note D_, 2
	note E_, 4
	dutycycle $1
	octave 4
	note F_, 2
	note A_, 2
	note __, 2
	octave 5
	note E_, 2
	note D_, 2
	note __, 2
	note E_, 2
	note D_, 2
	octave 4
	note B_, 2
	note G#, 2
	note G_, 2
	note E_, 2
	note G_, 2
	octave 5
	note A_, 2
	note __, 2
	intensity $A7
	note G_, 14
	intensity $B4
Music_UnovaRoute1_Ch2_branch_1:
	note G_, 2
	note F_, 2
	note D#, 2
	loopchannel 3, Music_UnovaRoute1_Ch2_branch_1
	note C_, 2
	note D_, 2
	note D#, 2
	intensity $B7
	note G_, 6
	note __, 2
	note D_, 2
	note F_, 2
	note G_, 10
	dutycycle $2
	intensity $94
	octave 4
	note G_, 1
	note F_, 1
	loopchannel 0, Music_UnovaRoute1_Ch2_loop
	
	
Music_UnovaRoute1_Ch3: ; ec1b8
	stereopanning $ff
	vibrato $10, $23
	notetype $c, $25
	octave 3
	note C_, 2
	note __, 4
	octave 2
	note G_, 2
	note __, 4
	octave 3
	note C_, 2
	note __, 4
	octave 2
	note B_, 4
	note G_, 2
Music_UnovaRoute1_Ch3_loop:
	octave 2
	callchannel Music_UnovaRoute1_Ch3_branch_1
	note F_, 10
	note E_, 2
	note D_, 6
	note __, 6
	octave 3
	note E_, 2
	note __, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note __, 2
	note D#, 2
	note D_, 4
	octave 2
	note G_, 6
	note B_, 2
	callchannel Music_UnovaRoute1_Ch3_branch_1
	note F_, 2
	note C_, 2
	note A_, 2
	note __, 4
	note G#, 2
	note G_, 2
	note D_, 2
	note B_, 2
	note __, 4
	note B_, 2
	octave 3
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note C_, 2
	note __, 2
	octave 2
	note C_, 1
	note __, 1
	note E_, 6
;;;;;;;;;;;;;;mark
	note F_, 3
	note __, 1
	note C_, 2
	note __, 8
	note F_, 1
	note __, 3
	note F_, 3
	note __, 1
	note F_, 1
	note __, 1
	note E_, 3
	note __, 1
	note E_, 2
	note __, 8
	note E_, 1
	note __, 3
	note E_, 3
	note __, 1
	note E_, 1
	note __, 1
	note D_, 3
	note __, 1
	note D_, 2
	note __, 8
	note D_, 1
	note __, 3
	note D_, 3
	note __, 1
	note F#, 2
	note G_, 3
	note __, 1
	note C_, 2
	note __, 8
	note C#, 1
	note __, 3
	note C#, 3
	note __, 1
	note G_, 1
	note __, 1
	note F_, 3
	note __, 1
	octave 1
	note A_, 2
	note __, 8
	octave 2
	note F_, 1
	note __, 3
	note F_, 3
	note __, 1
	note G#, 1
	note __, 1
	note E_, 3
	note __, 1
	octave 1
	note B_, 2
	note __, 8
	octave 2
	note E_, 1
	note __, 3
	note G_, 3
	note __, 1
	note E_, 1
	note __, 1
	note G#, 3
	note __, 1
	note C_, 2
	note __, 8
	note G#, 1
	note __, 3
	note G#, 3
	note __, 1
	note G#, 1
	note __, 1
	note G_, 2
	note __, 2
	note G_, 1
	note __, 5
	note G_, 1
	note __, 3
	note G_, 1
	note __, 3
	note G_, 3
	note __, 1
	octave 1
	note G_, 2
	loopchannel 0, Music_UnovaRoute1_Ch3_loop

Music_UnovaRoute1_Ch3_branch_1:
	note C_, 2
	note __, 4
	octave 1
	note G_, 2
	note __, 4
	octave 2
	note D_, 2
	note __, 4
	octave 1
	note G_, 2
	note __, 4
	octave 2
	note E_, 2
	note __, 4
	octave 1
	note B_, 2
	note __, 4
	note A_, 4
	octave 2
	note E_, 2
	note G_, 4
	note F#, 2
	endchannel