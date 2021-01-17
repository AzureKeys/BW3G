Music_UnovaRoute2:
	dbw $c0, Music_UnovaRoute2_Ch1
	dbw $01, Music_UnovaRoute2_Ch2
	dbw $02, Music_UnovaRoute2_Ch3
	dbw $03, Music_UnovaRoute2_Ch4

Music_UnovaRoute2_Ch1:
	tempo 150
	dutycycle 0
	tone $0001
	notetype $C, $A7
	octave 3
	note __, 16
	note __, 16
Music_UnovaRoute2_Ch1_loop:
	note D_, 2
	note G_, 2
	octave 4
	note D_, 4
	note C_, 2
	note D_, 2
	note E_, 4
	note D_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note D_, 4
	note D#, 4
	note E_, 4
	octave 3
	note G_, 4
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note F#, 4
	note G_, 4
	intensity $A0
	note D_, 2
	intensity $A7
	note D_, 6
	note D_, 2
	note G_, 2
	octave 4
	note D_, 4
	note C_, 2
	note D_, 2
	note E_, 4
	note D_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note D_, 4
	octave 3
	note G_, 4
	octave 4
	note C_, 4
	note D_, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note F#, 4
	intensity $A0
	note G_, 4
	intensity $A7
	note G_, 4
	intensity $C7
	dutycycle 3
	octave 4
	note D_, 4
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	note B_, 2
	note D_, 4
	note G_, 4
	octave 4
	note D_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note B_, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 4
	note G_, 4
	octave 4
	note D_, 8
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 4
	note D#, 2
	note E_, 2
	note F#, 4
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note A_, 4
	note G_, 4
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note __, 2
	octave 3
	note G_, 4
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note __, 2
	octave 3
	note E_, 2
	note F#, 2
	note G_, 16
	octave 4
	note D_, 6
	note E_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note D_, 8
	octave 3
	note G_, 16
	dutycycle 0
	intensity $A7
	note __, 8
	loopchannel 0, Music_UnovaRoute2_Ch1_loop

Music_UnovaRoute2_Ch2:
	tone $0001
	dutycycle 2
	notetype $C, $64
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	note G_, 2
	note __, 2
	octave 3
	note C_, 2
	note A_, 2
	octave 4
	note F#, 2
Music_UnovaRoute2_Ch2_loop:
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	note G_, 2
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	note B_, 2
	octave 4
	note G_, 2
	octave 3
	note D_, 2
	note G_, 2
	note B_, 2
	note __, 2
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	note E_, 2
	note __, 2
	octave 3
	note D_, 2
	octave 4
	note C_, 2
	note F#, 2
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	note __, 2
	octave 3
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	note __, 2
	octave 3
	note E_, 2
	note A_, 2
	octave 4
	note F#, 2
	note __, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note E_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note E_, 2
	octave 4
	note C_, 2
	note G_, 2
	note __, 2
	octave 3
	note D_, 2
	octave 4
	note C_, 2
	note F#, 2
	note __, 2
	octave 2
	note B_ ,2
	octave 3
	note G_, 2
	octave 4
	note D_, 2
	note G_, 2
	note __, 2
	octave 3
	note A_, 4
	octave 4
	dutycycle 1
	note B_, 1
	octave 5
	note B_, 1
	note D_, 1
	octave 6
	note D_, 1
	octave 4
	note A_, 1
	octave 5
	note A_, 1
	octave 4
	note B_, 1
	octave 5
	note B_, 1
	note A_, 1
	note G_, 1
	octave 4
	note B_, 1
	note A_, 1
	note D_, 1
	note E_, 1
	note G_, 1
	note A_, 1
	octave 5
	note D_, 1
	octave 6
	note D_, 1
	octave 5
	note E_, 1
	octave 6
	note E_, 1
	octave 4
	note B_, 1
	octave 5
	note B_, 1
	octave 5
	note C_, 1
	octave 6
	note C_, 1
	octave 5
	note B_, 1
	note A_, 1
	note E_, 1
	note C_, 1
	octave 4
	note E_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 1
	note D_, 1
	note __, 1
	octave 4
	note A_, 1
	note __, 1
	octave 5
	note D_, 1
	note __, 1
	octave 4
	note A_, 1
	note __, 1
	octave 5
	note D#, 1
	note __, 1
	octave 4
	note B_, 1
	note __, 1
	octave 5
	note D#, 1
	note __, 1
	octave 4
	note B_, 1
	note __, 1
	octave 5
	note F#, 1
	note E_, 1
	octave 4
	note B_, 1
	note G_, 1
	octave 5
	note E_, 1
	octave 4
	note B_, 1
	note G_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note D_, 1
	note G_, 1
	note B_, 1
	octave 6
	note C_, 1
	note __, 1
	octave 5
	note C_, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 4
	note E_, 1
	note __, 1
	octave 5
	note C_, 1
	note __, 1
	octave 4
	note C_, 1
	note __, 1
	note E_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 2
	note D#, 2
	note B_, 2
	octave 5
	note D#, 2
	note F#, 4
	note E_, 4
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note __, 2
	octave 4
	note E_, 4
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note __, 2
	note C_, 4
	octave 3
	note B_, 2
	dutycycle 2
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	note __, 2
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note F#, 2
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note D_, 2
	note B_, 2
	octave 4
	note G_, 2
	note __, 2
	octave 3
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	note __, 2
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note F#, 2
	loopchannel 0, Music_UnovaRoute2_Ch2_loop

Music_UnovaRoute2_Ch3:
	stereopanning $ff
	notetype $C, $24
	vibrato $16, $23
	octave 3
	note G_, 2
	note __, 4
	note G_, 2
	octave 2
	note B_, 2
	note __, 4
	note B_, 2
	octave 3
	note C_, 2
	note __, 4
	note C_, 2
	note D_, 2
	note __, 4
	note D_, 2
Music_UnovaRoute2_Ch3_branch_1:
	note G_, 2
	note __, 4
	note G_, 2
	note C_, 2
	note __, 4
	note C_, 2
	note G_, 2
	note __, 4
	note G_, 2
	note B_, 2
	note __, 2
	note G_, 2
	note B_, 2
	octave 4
	note C_, 2
	note __, 4
	note C_, 2
	note D_, 2
	note __, 2
	octave 3
	note D_, 2
	note __, 2
	note G_, 2
	note __, 4
	note G_, 2
	note B_, 2
	note D_, 2
	note G_, 2
	note B_, 2
	octave 4
	note C_, 2
	note __, 4
	note C_, 2
	note D_, 2
	note __, 4
	note C_, 2
	octave 3
	note B_, 2
	note __, 4
	note B_, 2
	octave 4
	note E_, 2
	note __, 2
	note D_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	octave 3
	note G_, 2
	note __, 2
	note D_, 2
	note __, 2
	octave 2
	note G_, 2
	note __, 2
	octave 3
	note D_, 4
	note G_, 2
	note G_, 2
	note __, 2
	note G_, 2
	note B_, 2
	note B_, 2
	note __, 2
	note B_, 2
	octave 4
	note C_, 2
	note C_, 2
	note __, 2
	note C_, 2
	octave 3
	note C_, 2
	note C_, 2
	note __, 2
	note C_, 2
	note D_, 2
	note D_, 2
	note __, 2
	note D_, 2
	note D#, 2
	note D#, 2
	note __, 2
	note D#, 2
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note G_, 2
	note __, 6
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	octave 4
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	octave 3
	note B_, 2
	note __, 2
	note D#, 2
	note __, 2
	note E_, 8
	octave 4
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	octave 3
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	octave 2
	note A_, 2
	note A_, 2
	note B_, 2
	octave 3
	note C_, 2
	note D_, 4
	note __, 4
	note G_, 2
	note __, 4
	note G_, 2
	octave 2
	note B_, 2
	note __, 4
	note B_, 2
	octave 3
	note C_, 2
	note __, 4
	note E_, 2
	note D_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note __, 4
	note G_, 2
	octave 2
	note B_, 2
	note __, 4
	note B_, 2
	octave 3
	note C_, 2
	note __, 4
	note C_, 2
	note D_, 2
	note __, 4
	note D_, 2
	loopchannel 0, Music_UnovaRoute2_Ch3_branch_1

Music_UnovaRoute2_Ch4:
	togglenoise $1
	notetype $c
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_2
	callchannel Music_UnovaRoute2_branch_3
Music_UnovaRoute2_Ch4_loop:
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_3
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_4
	callchannel Music_UnovaRoute2_branch_5
	callchannel Music_UnovaRoute2_branch_6
	callchannel Music_UnovaRoute2_branch_7
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_3
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_4
	callchannel Music_UnovaRoute2_branch_5
	callchannel Music_UnovaRoute2_branch_2
	callchannel Music_UnovaRoute2_branch_3
	callchannel Music_UnovaRoute2_branch_8
	callchannel Music_UnovaRoute2_branch_9
	callchannel Music_UnovaRoute2_branch_8
	callchannel Music_UnovaRoute2_branch_9
	callchannel Music_UnovaRoute2_branch_8
	callchannel Music_UnovaRoute2_branch_9
	callchannel Music_UnovaRoute2_branch_2
	callchannel Music_UnovaRoute2_branch_10
	callchannel Music_UnovaRoute2_branch_11
	callchannel Music_UnovaRoute2_branch_11
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_12
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_13
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_14
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_3
	callchannel Music_UnovaRoute2_branch_2
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_1
	callchannel Music_UnovaRoute2_branch_2
	callchannel Music_UnovaRoute2_branch_3
	loopchannel 0, Music_UnovaRoute2_Ch4_loop
; e9734

Music_UnovaRoute2_branch_1:
	note A_, 2
	note A_, 2
	note A_, 2
	notetype $8
	note A#, 1
	note A#, 1
	note A#, 1
	notetype $C
	endchannel
; e973b

Music_UnovaRoute2_branch_2:
	note A_, 2
	note A_, 1
	note A_, 1
	note A_, 2
	notetype $8
	note A#, 1
	note A#, 1
	note A#, 1
	notetype $C
	endchannel
; e9741

Music_UnovaRoute2_branch_3:
	note A_, 2
	note A_, 2
	note A#, 1
	note A#, 1
	note A_, 2
	endchannel
	
Music_UnovaRoute2_branch_4:
	note A_, 2
	note A_, 2
	note __, 1
	note A#, 1
	note A#, 1
	note A#, 1
	endchannel
	
Music_UnovaRoute2_branch_5:
	note A_, 2
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A_, 2
	endchannel
	
Music_UnovaRoute2_branch_6:
	note A_, 2
	note A#, 1
	note A#, 1
	note A_, 2
	notetype $8
	note A#, 1
	note A#, 1
	note A#, 1
	notetype $C
	endchannel
	
Music_UnovaRoute2_branch_7:
	note A_, 2
	note A#, 1
	note A#, 1
	note A_, 2
	note A_, 2
	endchannel
	
Music_UnovaRoute2_branch_8:
	note A_, 2
	note A_, 2
	note __, 2
	note A#, 1
	note A#, 1
	endchannel
	
Music_UnovaRoute2_branch_9:
	note A_, 2
	note A_, 2
	note __, 2
	notetype $8
	note A#, 1
	note A#, 1
	note A#, 1
	notetype $C
	endchannel
	
Music_UnovaRoute2_branch_10:
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A_, 2
	note A_, 2
	endchannel
	
Music_UnovaRoute2_branch_11:
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	endchannel
	
Music_UnovaRoute2_branch_12:
	note A#, 1
	note A#, 1
	note A_, 2
	note A#, 1
	note A#, 1
	notetype $8
	note A#, 1
	note A#, 1
	note A#, 1
	notetype $C
	endchannel
	
Music_UnovaRoute2_branch_13:
	note A_, 2
	note A_, 2
	note F#, 4
	endchannel
	
Music_UnovaRoute2_branch_14:
	note A_, 4
	notetype $8
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	notetype $C
	endchannel