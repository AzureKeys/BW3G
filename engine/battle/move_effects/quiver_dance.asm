BattleCommand_QuiverDance: ; 37588
; curse

	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ld a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels

.go


; If no stats can be increased, don't.

; Speed
	inc bc
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise

; SpAttack
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise
	
; SpDefense
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise

.raise

; Raise SpAttack, SpDefense, and Speed.

	ld a, $1
	ld [wKickCounter], a
	call AnimateCurrentMove
	call BattleCommand_SpecialAttackUp
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialDefenseUp
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpeedUp
	jp BattleCommand_StatUpMessage


.cantraise

; Can't raise either stat.

	ld b, ABILITY + 1
	call GetStatName
	call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextBox
; 37618
