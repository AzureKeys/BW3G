BattleCommand_StartRain:
; startrain
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
; check for Damp Rock
	ld a, [hBattleTurn]
	and a
	ld hl, wBattleMonItem
	jr z, .got_item
	ld hl, wEnemyMonItem
.got_item
	ld a, [hl]
	cp DAMP_ROCK
	ld a, 5
	jr nz, .no_rock
; Damp Rock sets Rain to 8 turns
	inc a
	inc a
	inc a
.no_rock
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, DownpourText
	jp StdBattleTextBox
