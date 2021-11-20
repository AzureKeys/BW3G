BattleCommand_StartHail:
; starthail

	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jr z, .failed

	ld a, WEATHER_HAIL
	ld [wBattleWeather], a
; check for Icy Rock
	ld a, [hBattleTurn]
	and a
	ld hl, wBattleMonItem
	jr z, .got_item
	ld hl, wEnemyMonItem
.got_item
	ld a, [hl]
	cp ICY_ROCK
	ld a, 5
	jr nz, .no_rock
; Icy Rock sets Hail to 8 turns
	inc a
	inc a
	inc a
.no_rock
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, ItStartedToHailText
	jp StdBattleTextBox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
