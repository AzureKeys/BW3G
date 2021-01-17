Music_OldaleTown:
	dbw $80, Music_OldaleTown_Ch1
	dbw $01, Music_OldaleTown_Ch2
	dbw $02, Music_OldaleTown_Ch3

Music_OldaleTown_Ch1:
	tempo 188
	dutycycle 0
	tone $0001
	notetype $C, $83
	callchannel Music_OldaleTown_Ch1_branch_1
	note A_, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	note A#, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	note A_, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note D#, 2
	note D_, 2
	note D#, 2
	octave 2
	note F_, 2
	callchannel Music_OldaleTown_Ch1_branch_1
	note A#, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note F_, 2
	note B_, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note D#, 2
	octave 2
	note G_, 2
	intensity $82
	octave 3
	note F_, 1
	note D#, 1
	note C_, 1
	octave 2
	note A_, 1
	octave 3
	note A_, 1
	note G_, 1
	note F_, 1
	note A_, 1
	intensity $83
	note A#, 2
	note F_, 2
	note A#, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
	note G_, 2
	note A#, 2
	octave 2
	note A#, 2
	octave 3
	note A_, 2
	note F_, 2
	note A_, 2
	note C_, 2
	intensity $87
	note A#, 4
	note B_, 4
	intensity $83
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note D#, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note D#, 2
	intensity $80
	note G_, 2
	intensity $87
	note G_, 4
	intensity $84
	note A_, 2
	intensity $80
	note F_, 2
	intensity $87
	note F_, 6
	dutycycle 2
	intensity $82
	note D#, 1
	note F_, 1
	note G_, 1
	note A_, 1
	note A#, 1
	octave 4
	note D#, 1
	note G_, 1
	note A_, 1
	note A#, 1
	intensity $72
	note D#, 1
	intensity $62
	note A#, 1
	intensity $52
	note D#, 1
	intensity $42
	note A#, 1
	intensity $32
	note D#, 1
	intensity $22
	note A#, 1
	intensity $12
	note D#, 1
	intensity $82
	octave 3
	note F#, 1
	note G#, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 1
	note F#, 1
	note A#, 1
	octave 5
	note C_, 1
	note C#, 1
	intensity $72
	octave 4
	note F#, 1
	intensity $62
	octave 5
	note C#, 1
	intensity $52
	octave 4
	note F#, 1
	intensity $42
	octave 5
	note C#, 1
	intensity $32
	octave 4
	note F#, 1
	intensity $22
	octave 5
	note C#, 1
	intensity $12
	octave 4
	note F#, 1
	dutycycle 0
	octave 4
	intensity $80
	note C_, 2
	intensity $87
	note C_, 6
	octave 3
	intensity $80
	note A#, 2
	intensity $87
	note A#, 6
	intensity $80
	note A_, 2
	intensity $87
	note A_, 4
	note A#, 2
	intensity $80
	octave 4
	note C_, 2
	intensity $87
	note C_, 6
	loopchannel 0, Music_OldaleTown_Ch1
	
Music_OldaleTown_Ch1_branch_1:
	octave 2
	note A#, 2
	note F_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	note A_, 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note G_, 2
	note D_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note A#, 2
	note F_, 2
	endchannel

Music_OldaleTown_Ch2:
	tone $0001
	callchannel Music_OldaleTown_Ch2_branch_1
	note F_, 4
	note __, 4
	dutycycle 3
	octave 3
	intensity $70
	note F_, 6
	note D#, 2
	note D_, 2
	note D#, 2
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 6
	intensity $77
	note C_, 10
	callchannel Music_OldaleTown_Ch2_branch_1
	dutycycle 3
	octave 3
	note C_, 8
	note D_, 6
	octave 2
	note A#, 2
	octave 3
	note F_, 2
	note D#, 2
	note D_, 2
	note D#, 2
	note C_, 4
	intensity $67
	note C_, 4
	intensity $50
	note D#, 4
	intensity $5E
	note D#, 4
	dutycycle 1
	intensity $60
	octave 1
	note A#, 4
	note __, 2
	note F_, 2
	note G_, 6
	note __, 2
	note F_, 4
	note __, 2
	note C_, 2
	note A#, 4
	note G_, 4
	octave 2
	note C_, 4
	note __, 2
	octave 1
	note G_, 2
	octave 2
	note D#, 4
	note __, 2
	octave 1
	note G_, 2
	note A#, 2
	note __, 1
	octave 2
	note C_, 2
	note __, 1
	note D_, 2
	octave 1
	note A_, 2
	note __, 1
	note G_, 2
	note __, 1
	note F_, 2
	note D#, 4
	note __, 2
	note D#, 2
	note A#, 6
	note __, 2
	note F#, 4
	note __, 2
	note F#, 2
	octave 2
	note C#, 6
	note __, 2
	octave 1
	note F_, 8
	note A#, 8
	note F_, 4
	note __, 2
	note F_, 2
	note A_, 4
	intensity $67
	note A_, 4
	loopchannel 0, Music_OldaleTown_Ch2
	
Music_OldaleTown_Ch2_branch_1:
	dutycycle 1
	notetype $C, $60
	octave 1
	note A#, 4
	note __, 4
	note A_, 4
	note __, 4
	note G_, 4
	note __, 4
	endchannel
	

Music_OldaleTown_Ch3:
	stereopanning $ff
	vibrato $16, $13
	callchannel Music_OldaleTown_Ch3_branch_1
	note G_, 1
	note A_, 1
	note A#, 2
	octave 5
	note C_, 2
	note D_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 14
	intensity $21
	note C_, 2
	intensity $22
	note A_, 6
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note C_, 1
	note __, 1
	callchannel Music_OldaleTown_Ch3_branch_1
	octave 5
	note G_, 1
	note A#, 1
	note A_, 2
	note G_, 2
	note F_, 2
	octave 6
	note D#, 2
	note D_, 14
	intensity $21
	note D_, 2
	intensity $22
	octave 5
	note G_, 6
	note D#, 1
	note __, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note C_, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note A_, 1
	intensity $11
	octave 6
	note D_, 5
	note __, 1
	octave 5
	note A#, 1
	octave 6
	note C_, 1
	note D_, 2
	note A#, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F_, 5
	note __, 1
	note G_, 2
	note D_, 8
	note D#, 5
	note __, 1
	note C_, 1
	note D_, 1
	note D#, 1
	note __, 1
	note F_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 5
	note G_, 2
	note A#, 5
	note __, 1
	octave 6
	note C_, 2
	octave 5
	note A_, 8
	note A#, 5
	note __, 1
	octave 6
	note D#, 1
	note F_, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 5
	note A#, 2
	octave 6
	note C#, 5
	note __, 1
	note D#, 1
	note F_, 1
	note F#, 1
	note __, 1
	note G#, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 5
	note A#, 2
	octave 6
	note C_, 6
	note D_, 2
	note D#, 2
	note C_, 2
	notetype $8, $11
	note A#, 2
	note A_, 2
	note A#, 2
	notetype $C, $11
	note A_, 8
	intensity $21
	note A_, 4
	intensity $31
	note A_, 4
	loopchannel 0, Music_OldaleTown_Ch3
	
Music_OldaleTown_Ch3_branch_1:
	notetype $C, $11
	octave 5
	note A#, 6
	note F_, 2
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	octave 4
	note A#, 5
	note __, 1
	endchannel
	