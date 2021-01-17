; Important note: This song uses data from my May encounter theme. To work properly, either add that song to your game or copy the percussion data from that track to this one manually.

Music_BrendanEncounter:
	musicheader 4, 1, Music_BrendanEncounter_Ch1
	musicheader 1, 2, Music_BrendanEncounter_Ch2
	musicheader 1, 3, Music_BrendanEncounter_Ch3
	musicheader 1, 4, Music_MayEncounter_Ch4


Music_BrendanEncounter_Ch1:
	dutycycle $3
	vibrato $12, $15
	tone $0001
	tempo 156
	notetype $6, $92
	octave 3
	note F#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	intensity $61
	note E_, 1
	note D_, 1
	note C#, 1
	octave 2
	note B_, 2
	intensity $92
	octave 3
	note F_, 1
	note F#, 4
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note E_, 8
	note F#, 8
	note G_, 8
	note G#, 4
	note B_, 2
	intensity $61
	note A_, 1
	note G#, 1
	note F#, 4
Music_BrendanEncounter_Ch1_loop_main:
	dutycycle $0
	octave 3
	intensity $40
Music_BrendanEncounter_Ch1_loop_1:
	note A_, 8
	note __, 2
	note A_, 2
	note __, 2
	note E_, 2
	note A_, 8
	note __, 4
	note A_, 2
	note G#, 2
	note G_, 10
	note A_, 1
	note A#, 1
	note B_, 7
	note A#, 1
	note A_, 3
	note G#, 1
	note G_, 3
	note G#, 1
	note A_, 3
	note B_, 1
	octave 4
	note D_, 8
	octave 3
	note __, 2
	note A_, 2
	note __, 2
	note F#, 2
	note A_, 4
	octave 4
	note D_, 1
	note C#, 3
	note C_, 2
	octave 3
	note B_, 2
	note A#, 2
	note A_, 2
	note G#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note E_, 1
	note __, 1
	note A_, 1
	note __, 1
	note F#, 1
	note __, 1
	note C#, 1
	note __, 1
	note F#, 1
	note __, 1
	note A#, 1
	note __, 1
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note G#, 1
	note E_, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note E_, 1
	note G#, 1
	loopchannel 2, Music_BrendanEncounter_Ch1_loop_1
	dutycycle $3
	callchannel Music_BrendanEncounter_Ch1_branch_1
	intensity $85
	note B_, 6
	callchannel Music_BrendanEncounter_Ch1_branch_1
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	intensity $80
	note E_, 2
	intensity $57
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	note A_, 3
	octave 4
	intensity $87
	note E_, 4
	intensity $82
	note D_, 4
	intensity $87
	note C#, 4
	intensity $82
	octave 3
	note B_, 4
	note G_, 2
	note F#, 2
	note G_, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	intensity $a7
	note E_, 4
	intensity $a2
	note F#, 4
	note E_, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	intensity $90
	note A_, 8
	intensity $95
	note A_, 4
	note G#, 2
	note A_, 2
	intensity $90
	note F#, 4
	intensity $97
	note F#, 4
	note G#, 6
	note A_, 2
	intensity $a0
	note B_, 8
	intensity $a5
	note B_, 4
	note A_, 2
	note B_, 2
	intensity $a7
	note F#, 8
	note A_, 4
	note B_, 2
	octave 4
	note C_, 2
	callchannel Music_BrendanEncounter_Ch2_branch_1
	octave 3
	note B_, 4
	loopchannel 0, Music_BrendanEncounter_Ch1_loop_main
	
Music_BrendanEncounter_Ch1_branch_1:
	intensity $81
	octave 4
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	intensity $80
	note C#, 2
	octave 3
	intensity $57
	note B_, 1
	note A_, 1
	note G#, 1
	note F#, 3
	octave 4
	intensity $82
	note C#, 4
	octave 3
	note B_, 4
	note A_, 2
	endchannel
	
Music_BrendanEncounter_Ch2:
	dutycycle $3
	vibrato $12, $15
	tone $0001
	callchannel Music_BrendanEncounter_Ch2_branch_1
Music_BrendanEncounter_Ch2_loop:
	dutycycle $2
	octave 3
	intensity $93
	note A_, 2
	note B_, 2
	octave 4
	note C#, 4
	note D_, 3
	intensity $66
	note F_, 1
	intensity $93
	note E_, 4
	intensity $96
	note E_, 8
	note D_, 4
	note C#, 4
	note D_, 2
	note C#, 2
	intensity $66
	note C_, 1
	intensity $97
	octave 3
	note B_, 14
	octave 4
	note C_, 1
	note C#, 4
	intensity $70
	note C_, 1
	octave 3
	intensity $60
	note B_, 1
	intensity $50
	note A#, 1
	intensity $40
	note A_, 1
	intensity $93
	note F#, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note A_, 8
	note A_, 8
	note A_, 8
	note A_, 4
	note F#, 2
	note A_, 2
	note E_, 4
	octave 4
	note E_, 4
	note D_, 4
	intensity $95
	note C#, 8
	note D_, 2
	note C#, 2
	octave 3
	note B_, 8
	intensity $93
	octave 4
	note C#, 4
	note D_, 4
	note E_, 4
	intensity $70
	note G#, 1
	intensity $97
	note A_, 5
	intensity $70
	note F#, 1
	intensity $50
	note E_, 1
	intensity $93
	note C#, 4
	note D_, 2
	intensity $97
	note C#, 6
	octave 3
	note B_, 10
	note E_, 2
	intensity $40
	note G_, 1
	intensity $50
	note A_, 1
	intensity $60
	note B_, 1
	octave 4
	intensity $70
	note D_, 1
	intensity $97
	note E_, 8
	intensity $93
	note D_, 4
	note E_, 2
	note D_, 2
	note C#, 8
	note C#, 8
	note C#, 2
	note C#, 2
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note D_, 2
	note A_, 2
	octave 4
	note C#, 6
	note E_, 4
	note D_, 4
	note C#, 8
	note D_, 2
	note C#, 2
	intensity $97
	octave 3
	note B_, 8 ;;;;;;;;;
	dutycycle $0
	intensity $90
	octave 4
	note C#, 8
	intensity $94
	note C#, 4
	octave 3
	intensity $92
	note F#, 2
	note F#, 2
	note A_, 4
	note F#, 4
	note A_, 2
	intensity $90
	note B_, 6
	octave 4
	note C#, 8
	intensity $94
	note C#, 6
	octave 3
	intensity $92
	note E_, 2
	note A_, 4
	note B_, 4
	octave 4
	note D_, 2
	intensity $90
	note C#, 6
	note E_, 2
	intensity $70
	note D#, 1
	intensity $60
	note D_, 1
	intensity $50
	note C#, 1
	intensity $40
	note C_, 1
	intensity $37
	octave 3
	note B_, 10
	intensity $90
	octave 4
	note E_, 4
	note D_, 2
	note __, 2
	note C#, 2
	octave 3
	note B_, 2
	note E_, 2
	note F#, 2
	note G_, 10
	note E_, 2
	note G_, 2
	octave 4
	note C#, 2
	note E_, 4
	note F#, 2
	note __, 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 8
	intensity $94
	note C#, 4
	intensity $90
	note C_, 2
	note C#, 2
	octave 3
	note A_, 6
	intensity $97
	note A_, 2
	note B_, 6
	note __, 2
	octave 4
	note C#, 2
	note __, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 8
	intensity $92
	note B_, 2
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 1
	note D_, 1
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	intensity $90
	note E_, 2
	intensity $70
	note D_, 1
	intensity $60
	note C_, 1
	intensity $50
	octave 3
	note B_, 1
	intensity $47
	note A_, 2
	dutycycle $2
	intensity $77
	octave 4
	note D#, 1
	note E_, 5
	note D#, 1
	note E_, 5
	note D#, 1
	note E_, 3
	note A_, 1
	note G#, 8
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 10
	note D_, 1
	note C#, 1
	loopchannel 0, Music_BrendanEncounter_Ch2_loop
	
Music_BrendanEncounter_Ch2_branch_1:
	notetype $6, $a2
	octave 4
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	intensity $71
	octave 3
	note B_, 1
	note A_, 1
	note G#, 1
	note F#, 2
	octave 4
	intensity $a2
	note C_, 1
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 8
	note A_, 8
	note A#, 8
	note B_, 4
	octave 4
	note E_, 2
	intensity $71
	note D_, 1
	note C#, 1
	endchannel
	
Music_BrendanEncounter_Ch3:
	notetype $6, $12
	octave 2
	note B_, 1
	note __, 1
	note B_, 2
	octave 1
	note B_, 1
	note __, 1
	note B_, 2
	octave 2
	note B_, 4
	note A#, 1
	note A_, 1
	note G#, 1
	octave 2
	note G_, 1
	octave 1
	note B_, 4
	octave 2
	note F#, 4
	note B_, 4
	octave 3
	note E_, 2
	note D_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 4
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3	
Music_BrendanEncounter_Ch3_loop:
	note D#, 1
	note E_, 7
	octave 2
	note E_, 4
	octave 3
	note D#, 1
	note E_, 7
	callchannel Music_BrendanEncounter_Ch3_branch_1
	octave 1
	note A_, 3
	note __, 1
	note A_, 4
	octave 2
	note G_, 2
	note E_, 2
	note C#, 4
	note D_, 5
	note __, 1
	note D_, 2
	note D_, 2
	callchannel Music_BrendanEncounter_Ch3_branch_2
	octave 2
	note G#, 2
	note D_, 2
	callchannel Music_BrendanEncounter_Ch3_branch_3
	octave 3
	note F#, 2
	octave 1
	note B_, 2
	callchannel Music_BrendanEncounter_Ch3_branch_1
	note A_, 5
	note __, 1
	note A_, 1
	note __, 1
	note A_, 2
	octave 2
	note G_, 2
	note __, 2
	note E_, 2
	note D_, 5
	note __, 1
	note D_, 2
	note D_, 1
	note __, 1
	callchannel Music_BrendanEncounter_Ch3_branch_2
	octave 2
	note D_, 2
	note D#, 2
	callchannel Music_BrendanEncounter_Ch3_branch_3
	octave 2
	note E_, 2
	note D#, 2
	note D_, 5
	note __, 1
	note D_, 2
	note __, 4
	octave 1
	note A_, 2
	octave 2
	note C#, 2
	octave 3
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	octave 2
	note A_, 2
	note D_, 4
	note C#, 2
	note D_, 5
	note __, 1
	note D_, 2
	note __, 4
	octave 1
	note A_, 4
	octave 2
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	note D_, 2
	octave 3
	note D_, 3
	note C#, 1
	note C_, 1
	octave 2
	note B_, 1
	note C_, 2
	note C#, 5
	note __, 1
	note C#, 2
	note __, 4
	octave 1
	note A_, 2
	note B_, 2
	octave 2
	note G#, 2
	note __, 2
	note G#, 2
	note __, 2
	note G#, 2
	note E_, 4
	note C_, 2
	note C#, 5
	note __, 1
	note C#, 2
	note __, 4
	note G_, 2
	octave 1
	note B_, 2
	octave 2
	note C#, 5
	note __, 1
	note C#, 2
	note __, 4
	note C_, 4
	octave 1
	note B_, 5
	note __, 1
	note B_, 2
	note __, 4
	octave 2
	note F#, 2
	octave 1
	note A_, 2
	note B_, 2
	octave 2
	note F#, 2
	note D_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note __, 2
	octave 1
	note A#, 4
	note B_, 5
	note __, 1
	note B_, 2
	note __, 4
	octave 2
	note E_, 2
	octave 1
	note G#, 2
	note B_, 5
	note __, 1
	note B_, 1
	note __, 1
	note B_, 2
	note __, 2
	octave 2
	note G#, 4
	note B_, 1
	note __, 1
	note B_, 2
	octave 1
	note B_, 1
	note __, 1
	note B_, 2
	octave 2
	note B_, 8
	octave 1
	note B_, 4
	octave 2
	note F#, 4
	note B_, 4
	octave 3
	note E_, 2
	note D_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 4
	octave 3
	note E_, 2
	note __, 2
	loopchannel 0, Music_BrendanEncounter_Ch3_loop
	
Music_BrendanEncounter_Ch3_branch_1:
	octave 1
	note A_, 5
	note __, 1
	note A_, 2
	octave 2
	note G#, 2
	octave 1
	note A_, 2
	note __, 2
	note G#, 2
	note A_, 2
	tone $0040
	note A_, 2
	tone $0000
	note A_, 8
	octave 2
	note G#, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 6
	note A_, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	note __, 4
	endchannel
	
Music_BrendanEncounter_Ch3_branch_2:
	octave 3
	note D_, 2
	note __, 2
	octave 2
	note D_, 1
	note __, 1
	note D_, 3
	note __, 1
	note D_, 3
	note __, 1
	note D_, 2
	octave 3
	note D_, 2
	endchannel
	
Music_BrendanEncounter_Ch3_branch_3:
	note E_, 4
	octave 3
	note E_, 2
	note __, 2
	octave 2
	note F#, 4
	octave 3
	note F#, 2
	note __, 2
	octave 2
	note G_, 4
	octave 3
	note G_, 2
	note __, 2
	octave 2
	note G#, 2
	octave 3
	note G#, 2
	endchannel
	
Music_MayEncounter_Ch4:
	togglenoise $3
	notetype $6
Music_MayEncounter_Ch4_loop:
	note C_, 2
	note C_, 2
	note C#, 2
	note C#, 2
	note C_, 8
	note C_, 2
	note C_, 2
	note C#, 4
	note C_, 4
	note C_, 2
	note C_, 2
	note C#, 4
	note C_, 4
	note C_, 4
	note C#, 2
	note C_, 2
	note C#, 4
	note C_, 4
	note B_, 8
	callchannel Music_MayEncounter_Ch4_branch_1
	callchannel Music_MayEncounter_Ch4_branch_1
	callchannel Music_MayEncounter_Ch4_branch_1
	callchannel Music_MayEncounter_Ch4_branch_2
	note C_, 2
	note C#, 2
	note C_, 2
	note C_, 2
	callchannel Music_MayEncounter_Ch4_branch_1
	callchannel Music_MayEncounter_Ch4_branch_1
	callchannel Music_MayEncounter_Ch4_branch_1
	callchannel Music_MayEncounter_Ch4_branch_2
	note C_, 4
	note C#, 2
	note C_, 1
	note C_, 1
	callchannel Music_MayEncounter_Ch4_branch_3
	note C#, 6
	note C#, 2
	note D_, 4
	note C#, 2
	note C#, 2
	note D_, 4
	note C#, 4
	note C#, 4
	note D_, 2
	note C#, 2
	callchannel Music_MayEncounter_Ch4_branch_3
	note C#, 4
	note D_, 2
	note C#, 2
	note D_, 4
	note C#, 2
	note D_, 2
	note C#, 6
	note C#, 2
	note D_, 4
	note C_, 2
	note C_, 2
	note C#, 6
	note C#, 2
	note D_, 4
	note C#, 4
	note C#, 6
	note D_, 2
	note C#, 4
	note D_, 4
	note C#, 6
	note C#, 2
	note D_, 4
	note D_, 4
	note C#, 2
	note D_, 4
	note C#, 2
	note D_, 4
	note D_, 2
	note C_, 2
	loopchannel 0, Music_MayEncounter_Ch4_loop
	
Music_MayEncounter_Ch4_branch_1:
	note C#, 8
	note C_, 2
	note C#, 4
	note C#, 6
	note C#, 4
	note C_, 4
	note D#, 2
	note D#, 2
	endchannel
	
Music_MayEncounter_Ch4_branch_2:
	note C#, 4
	note C_, 4
	note C#, 2
	note C_, 4
	note C#, 2
	note C_, 4
	note C_, 4
	endchannel
	
Music_MayEncounter_Ch4_branch_3:
	note C#, 6
	note D_, 6
	note C#, 2
	note C#, 2
	note C#, 4
	note C#, 4
	note D_, 2
	note C#, 4
	note C#, 2
	endchannel