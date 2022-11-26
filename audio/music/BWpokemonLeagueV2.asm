Music_BWPokemonLeague:
	musicheader 4, 1, Music_BWPokemonLeague_Ch1
	musicheader 1, 2, Music_BWPokemonLeague_Ch2
	musicheader 1, 3, Music_BWPokemonLeague_Ch3
	musicheader 1, 4, Music_BWPokemonLeague_Ch4

Music_BWPokemonLeague_Ch1:
	volume $77
	dutycycle $1
	notetype 12, $b7
	tempo 159
;Bar 1
	octave 3
	callchannel Music_BWPokemonLeague_Ch1_Bar1
;Bar 2
	note A#, 4
	note G_, 1
	note __, 1
	note G_, 1
	note __, 9
;Bar 3
	note G_, 1
	note __, 1
	note G_, 1
	note __, 5
	octave 4
	note C_, 4
;Bar 4
	octave 3
	callchannel Music_BWPokemonLeague_Ch1_Bar1
;Bar 5
	octave 4
	note E_, 4
	octave 3
	note G_, 1
	note __, 1
	note G_, 1
	note __, 9
;Bar 6
	note G_, 1
	note __, 1
	note G_, 1
	note __, 5
	octave 4
	note F_, 4
	loopchannel 0, Music_BWPokemonLeague_Ch1

Music_BWPokemonLeague_Ch1_Bar1:
	note G_, 1;
	note __, 1
	note G_, 1
	note __, 9
	note G_, 1
	note __, 1
	note G_, 1
	note __, 5
	endchannel

; ============================================================================================================

Music_BWPokemonLeague_Ch2:
	dutycycle $3
	notetype 12, $b7
;Bar 1
	octave 1
	callchannel Music_BWPokemonLeague_Ch2_Bar1
;Bar 2
	note D#, 4
	note C_, 1
	note __, 1
	note C_, 1
	note __, 9
;Bar 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 5
	note F#, 4
;Bar 4
	callchannel Music_BWPokemonLeague_Ch2_Bar1
;Bar 5
	note F#, 4
	note C_, 1
	note __, 1
	note C_, 1
	note __, 9
;Bar 6
	note C_, 1
	note __, 1
	note C_, 1
	note __, 5
	note F#, 4
	loopchannel 0, Music_BWPokemonLeague_Ch2

Music_BWPokemonLeague_Ch2_Bar1:
	note C_, 1;
	note __, 1
	note C_, 1
	note __, 9
	note C_, 1
	note __, 1
	note C_, 1
	note __, 5
	endchannel

; ============================================================================================================

Music_BWPokemonLeague_Ch3:
	notetype 12, $13
;Bar 1
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 7
	callchannel Music_BWPokemonLeague_Ch3_main2
	loopchannel 0, Music_BWPokemonLeague_Ch3

Music_BWPokemonLeague_Ch3_main2:
	octave 4
	note C_, 2
	note D_, 2
	note D#, 2
	note A#, 5
	note __, 1
	note C_, 2
	note D_, 2
;Bar 8
	note D#, 2
	note A#, 5
	note __, 1
	note C_, 2
	note D_, 2
	note D#, 2
	note A_, 5
;Bar 9
	note __, 1
	note C_, 2
	note D_, 2
	note D#, 2
	note A_, 5
	note __, 1
;Bar 10
	note C_, 2
	note D_, 2
	note D#, 2
	note G#, 5
	note __, 1
	note C_, 2
	note D_, 2
;Bar 11
	note D#, 2
	note G#, 5
	note __, 1
	note C_, 2
	note D_, 2
	note D#, 2
	note G_, 5
;Bar 12
	note __, 1
	note C_, 2
	note D_, 2
	note D#, 2
	note G_, 5
	note __, 1
	loopchannel 2, Music_BWPokemonLeague_Ch3_main2
	endchannel

; ============================================================================================================

Music_BWPokemonLeague_Ch4:
	togglenoise 1
	notetype 4
Music_BWPokemonLeague_Ch4_loop:
;Bar 1
	note F#, 16
	note __, 8
	callchannel Music_BWPokemonLeague_Ch4_Type1
	callchannel Music_BWPokemonLeague_Ch4_Type2
;Bar 2
	callchannel Music_BWPokemonLeague_Ch4_Type1
	callchannel Music_BWPokemonLeague_Ch4_Type2
;Bar 3
	callchannel Music_BWPokemonLeague_Ch4_Type1
	callchannel Music_BWPokemonLeague_Ch4_Type2
	callchannel Music_BWPokemonLeague_Ch4_Type1
;Bar 4
	callchannel Music_BWPokemonLeague_Ch4_Type2
	callchannel Music_BWPokemonLeague_Ch4_Type1
	callchannel Music_BWPokemonLeague_Ch4_Type2
;Bar 5
	note F#, 12
	note F#, 16
	note __, 8
;Bar 6
	callchannel Music_BWPokemonLeague_Ch4_Type1
	callchannel Music_BWPokemonLeague_Ch4_Type2
	callchannel Music_BWPokemonLeague_Ch4_Type1
	loopchannel 0, Music_BWPokemonLeague_Ch4_loop

Music_BWPokemonLeague_Ch4_Type1:
	notetype 3
	note A#, 2
	note A#, 2
	notetype 4
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	endchannel

Music_BWPokemonLeague_Ch4_Type2:
	note A#, 6;
	note A#, 16
	note __, 2
	endchannel

