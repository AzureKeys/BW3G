BattleCommand_StartSandstorm:
; startsandstorm

	ld a, [wBattleWeather]
	cp WEATHER_SANDSTORM
	jr z, .failed

	ld a, WEATHER_SANDSTORM
	ld [wBattleWeather], a
; check for Smooth Rock
	ld a, [hBattleTurn]
	and a
	ld hl, wBattleMonItem
	jr z, .got_item
	ld hl, wEnemyMonItem
.got_item
	ld a, [hl]
	cp SMOOTH_ROCK
	ld a, 5
	jr nz, .no_rock
; Smooth Rock sets Sandstorm to 8 turns
	inc a
	inc a
	inc a
.no_rock
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SandstormBrewedText
	jp StdBattleTextBox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
