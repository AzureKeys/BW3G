BattleCommand_StartSun:
; startsun
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
; check for Heat Rock
	ld a, [hBattleTurn]
	and a
	ld hl, wBattleMonItem
	jr z, .got_item
	ld hl, wEnemyMonItem
.got_item
	ld a, [hl]
	cp HEAT_ROCK
	ld a, 5
	jr nz, .no_rock
; Heat Rock sets Sun to 8 turns
	inc a
	inc a
	inc a
.no_rock
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextBox
