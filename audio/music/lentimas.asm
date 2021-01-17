Music_LentimasTown:
	dbw $c0, Music_LentimasTown_Ch1
	dbw $01, Music_LentimasTown_Ch2
	dbw $02, Music_LentimasTown_Ch3
	dbw $03, Music_LentimasTown_Ch4

Music_LentimasTown_Ch1:
	tempo 152
	dutycycle 0
	tone $0002
	notetype $C, $84
	octave 3
	note C#, 6
	note B_, 6
	note A_, 4
	octave 2
	note F#, 6
	note F#, 4
	callchannel Music_LentimasTown_Ch1_branch_1
	note F#, 2
	note F_, 2
	note __, 2
	note C#, 2
	note F_, 2
	octave 2
	note G#, 2
	note B_, 4
	octave 3
	note D#, 2
	note C#, 4
	note C#, 4
	callchannel Music_LentimasTown_Ch1_branch_1
	note G_, 2
	note F#, 4
	octave 2
	note A#, 2
	note __, 4
	note A#, 2
	octave 3
	note C#, 4
	octave 2
	note A#, 4
	note B_, 4
	note B_, 4
	octave 3
	note D_, 2
	note C#, 2
	note C_, 4
	note F#, 2
	note F_, 2
	note D#, 4
	note B_, 2
	intensity $86
	note F#, 6
	intensity $84
	note F_, 2
	note __, 12
	intensity $b5
	note F#, 2
	note G#, 6
	note A_, 2
	octave 2
	note A_, 2
	note __, 2
	note G#, 2
	note __, 4
	notetype $8, $b4
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note G#, 2
	note F#, 2
	notetype $C, $b5
	note F_, 2
	note __, 2
	note A_, 2
	note B_, 2
	note __, 2
	octave 4
	note D_, 2
	intensity $b7
	note C#, 16
	note __, 6
	notetype $6, $b4
	octave 3
	note F#, 4
	note G#, 1
	note A_, 1
	note G#, 2
	note F#, 4
	notetype $8, $b5
	note A#, 4
	note B_, 4
	octave 4
	note C#, 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 5
	notetype $C, $b5
	note F#, 4
	note F#, 2
	note G#, 2
	note A_, 2
	note D_, 2
	note __, 14
	note C#, 2
	note __, 14
	note F#, 8
	notetype $8, $b5
	note __, 2
	note A_, 2
	note B_, 2
	octave 4
	notetype $c, $b5
	note C#, 3
	note F#, 2
	intensity $b0
	note C#, 1
	notetype $8, $b5
	note C#, 2
	note F#, 2
	note C#, 2
	note D_, 4
	octave 3
	note G#, 1
	note A_, 3
	note B_, 4 
	notetype $6, $b5
	note __, 2
	note F#, 4
	note F#, 4
	note F_, 1
	note F#, 1
	note F_, 4
	note C#, 8
	notetype $8, $b5
	note __, 2
	note C#, 4
	note D_, 3
	note C#, 2
	note E_, 4
	notetype $6, $b5
	note __, 2
	note D_, 6
	note C#, 4
	octave 2
	note B_, 8
	note A_, 5
	note B_, 6
	octave 3
	note C#, 1
	note D#, 1
	note D_, 1
	note C#, 8
	note A_, 3
	note G#, 3
	note F#, 3
	note A_, 5
	note G#, 4
	notetype $8, $b5
	note C#, 2
	note C#, 4
	note A_, 2
	note G#, 4
	note B_, 3
	note A_, 2
	note C#, 4
	notetype $6, $b5
	note __, 3
	note C_, 1
	note C#, 5
	note D_, 5
	octave 2
	note G#, 6
	octave 3
	note C#, 4
	notetype $8, $b5
	note D#, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note G_, 2
	note G#, 14
	note __, 6
	loopchannel 0, Music_LentimasTown_Ch1
	
Music_LentimasTown_Ch1_branch_1:
	octave 3
	note B_, 2
	octave 4
	notetype $6, $94
	note C#, 1
	note D_, 1
	note C#, 2
	notetype $C, $94
	octave 3
	note A_, 2
	endchannel

Music_LentimasTown_Ch2:
	dutycycle 1
	vibrato $16, $25
	notetype $C, $a0
	octave 4
	note __, 4
	note C#, 4
	note F#, 2
	note F_, 4
	note C#, 2
	note __, 2
	notetype $6, $a0
	note D_, 1
	note E_, 1
	note D#, 1
	note D_, 5
	notetype $C, $a0
	note C#, 2
	note __, 14
	note C#, 2
	note D_, 2
	note C#, 2
	note __, 2
	octave 3
	note G#, 2
	note __, 2
	notetype $6, $a0
	note B_, 1
	octave 4
	note C#, 1
	note C_, 1
	octave 3
	note B_, 5
	notetype $C, $a0
	note A_, 2
	note __, 14
	octave 4
	note C#, 2
	note D_, 2
	note C#, 4
	octave 3
	note F#, 4
	note G_, 4
	note F#, 2
	note __, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note G#, 4
	octave 4
	note D#, 2
	note C#, 2
	note C_, 4
	note G#, 2
	note F#, 6
	note F_, 2
	note __, 2
	dutycycle 2
	octave 4
	intensity $64
	note C#, 2
	note F#, 2
	note A_, 2
	intensity $74
	octave 5
	note C#, 2
	callchannel Music_LentimasTown_Ch2_branch_1
	intensity $74
	octave 5
	note D_, 2
	callchannel Music_LentimasTown_Ch2_branch_1
	callchannel Music_LentimasTown_Ch2_branch_2
	note C#, 2
	callchannel Music_LentimasTown_Ch2_branch_2
	intensity $74
	octave 5
	note D#, 2
	dutycycle 1
	intensity $90
	octave 3
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note C#, 2
	note __, 2
	note A_, 6
	intensity $77
	note __, 2
	note A#, 4
	note A#, 4
	intensity $70
	note F#, 4
	intensity $77
	note F#, 4
	note B_, 4
	note B_, 4
	intensity $70
	note A_, 4
	intensity $77
	note A_, 2
	octave 4
	notetype $8, $a0
	note __, 4
	note D_, 4
	note C#, 4
	notetype $6, $b0
	octave 3
	note B_, 4
	octave 4
	note F#, 4
	note A_, 1
	note G#, 3
	note F#, 4
	note __, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 4
	note F_, 4
	octave 4
	note C#, 4
	note E_, 1
	note D_, 3
	note C#, 4
	octave 3
	note G#, 16
	notetype $c, $b5
	note G#, 8
	note __, 2
	dutycycle 2
	octave 4
	intensity $64
	note D_, 4
	note D_, 4
	note A_, 4
	note F#, 4
	note D_, 4
	note D_, 4
	note G#, 4
	note F_, 4
	note D#, 4
	note D#, 4
	intensity $a4
	dutycycle 1
	note E_, 4
	note F_, 2
	note F#, 2
	note F#, 2
	dutycycle 2
	intensity $64
	note __, 2
	note F#, 4
	note A_, 4
	note C#, 4
	note D_, 4
	note D_, 4
	note A_, 4
	note F#, 4
	note C#, 4
	note C#, 4
	note D_, 4
	note F_, 4
	note E_, 4
	note E_, 4
	note F_, 4
	note F#, 2
	loopchannel 0, Music_LentimasTown_Ch2
	
Music_LentimasTown_Ch2_branch_1:
	octave 4
	intensity $64
	note C#, 2
	intensity $54
	note F#, 2
	intensity $44
	note A_, 2
	endchannel
	
Music_LentimasTown_Ch2_branch_2:
	intensity $74
	octave 5
	note C#, 2
	octave 4
	intensity $64
	note C#, 2
	intensity $54
	note F_, 2
	intensity $74
	octave 5
	note D_, 2
	intensity $54
	octave 4
	note C#, 2
	note F_, 2
	intensity $44
	note G#, 2
	endchannel
	
Music_LentimasTown_Ch3:
	notetype $C, $14
	vibrato $16, $25
	octave 2
	note F_, 2
	note __, 4
	note G#, 6
	octave 3
	note C#, 2
	note __, 2
	octave 2
	note F#, 2
	note __, 4
	note A_, 6
	octave 3
	note C#, 2
	note __, 2
	octave 2
	note C#, 2
	note __, 4
	note G#, 6
	note B_, 2
	note __, 2
	note F#, 2
	note __, 4
	note A_, 6
	octave 3
	note C#, 2
	note __, 2
	octave 2
	note F#, 2
	note __, 4
	note A#, 6
	octave 3
	note C#, 2
	note __, 2
	octave 2
	note B_, 2
	note __, 4
	note D_, 6
	note F#, 2
	note __, 2
	octave 3
	note C_, 2
	note __, 4
	octave 2
	note D#, 6
	note G#, 2
	note __, 2
	note C#, 1
	note __, 1
	note C#, 2
	note __, 2
	note G#, 4
	note __, 2
	note C#, 2
	note __, 2
	note F#, 2
	note __, 4
	callchannel Music_LentimasTown_Ch3_branch_1
	note F_, 2
	note __, 4
	callchannel Music_LentimasTown_Ch3_branch_1
	note G#, 2
	note __, 4
	callchannel Music_LentimasTown_Ch3_branch_1
	note F#, 2
	note __, 4
	callchannel Music_LentimasTown_Ch3_branch_1
	note F#, 2
	note __, 4
	callchannel Music_LentimasTown_Ch3_branch_1
	note D_, 2
	note __, 4
	octave 3
	note C_, 2
	note __, 2
	note C_, 2
	octave 2
	note C_, 2
	note __, 2
	octave 1
	note B_, 2
	note __, 14
	octave 2
	note C#, 2
	note __, 14
	note F#, 6
	note A_, 6
	octave 3
	note C#, 2
	note __, 2
	callchannel Music_LentimasTown_Ch3_branch_2
	note F#, 6
	note A_, 6
	note C#, 2
	note __, 2
	octave 1
	note A_, 6
	octave 2
	note C#, 6
	note F#, 2
	note __, 2
	callchannel Music_LentimasTown_Ch3_branch_2
	note F#, 6
	octave 1
	note A_, 6
	octave 2
	note C#, 2
	note __, 2
	loopchannel 0, Music_LentimasTown_Ch3
	
Music_LentimasTown_Ch3_branch_1:
	octave 3
	note C#, 2
	note __, 2
	note C#, 2
	octave 2
	note C#, 2
	note __, 2
	endchannel
	
Music_LentimasTown_Ch3_branch_2:
	octave 1
	note B_, 6
	octave 2
	note D_, 6
	note F#, 2
	note __, 2
	note C#, 6
	note F_, 6
	note G#, 2
	note __, 2
	endchannel

Music_LentimasTown_Ch4:
	togglenoise $3
	notetype $c
Music_LentimasTown_Ch4_loop:
	callchannel Music_LentimasTown_Ch4_branch_1
	loopchannel 0, Music_LentimasTown_Ch4_loop

Music_LentimasTown_Ch4_branch_1:
	note F#, 2
	note F#, 2
	note D_, 2
	note F#, 2
	loopchannel 4, Music_LentimasTown_Ch4_branch_1
	endchannel