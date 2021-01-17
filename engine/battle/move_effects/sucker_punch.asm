BattleCommand_SuckerPunch:
; suckerpunch
	call CheckOpponentWentFirst
	jr nz, .failed
	
	ld a, [wBattlePlayerAction]
	and a
	jr nz, .failed
	
; opponent did pick a move
	call BattleCommand_SwitchTurn
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
; mask type
	and STATUS
; shift category bits to 0-2
	; rlc a
	; rlc a
	; dec a
	
	push af
	call BattleCommand_SwitchTurn
	pop af
	cp STATUS
	ret nz
.failed
	call AnimateFailedMove
	call TryPrintButItFailed
	jp EndMoveEffect