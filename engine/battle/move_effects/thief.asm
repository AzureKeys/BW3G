BattleCommand_Thief:
; thief

	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

; The player needs to be able to steal an item.

	call .playeritem
	ld a, [hl]
	and a
	ret nz

; The enemy needs to have an item to steal.

	call .enemyitem
	ld a, [hl]
	and a
	ret z

; Can't steal mail.

	ld [wNamedObjectIndexBuffer], a
	ld d, a
	farcall ItemIsMail
	ret c

	ld a, [wEffectFailed]
	and a
	ret nz

	ld a, [wLinkMode]
	and a
	jr z, .stealenemyitem

	ld a, [wBattleMode]
	dec a
	ret z

.stealenemyitem
	call .enemyitem
	xor a
	ld [hl], a
	ld [de], a

	call .playeritem
	ld a, [wNamedObjectIndexBuffer]
	ld [hl], a
	ld [de], a
; Set backup as well, so we keep it after battle
	call GetBackupItemAddr
	ld a, [de]
	ld [hl], a
; Unlock enemy move if Choice item was stolen
	call .ResetChoice
	jr .stole

.enemy

; Wildmons can't steal items
	ld a, [wBattleMode]
	dec a
	ret z

; The enemy can't already have an item.

	call .enemyitem
	ld a, [hl]
	and a
	ret nz

; The player must have an item to steal.

	call .playeritem
	ld a, [hl]
	and a
	ret z

; Can't steal mail!

	ld [wNamedObjectIndexBuffer], a
	ld d, a
	farcall ItemIsMail
	ret c

	ld a, [wEffectFailed]
	and a
	ret nz

; If the enemy steals your item,
; it's gone for good if you don't get it back.

	call .playeritem
	xor a
	ld [hl], a
	ld [de], a

	call .enemyitem
	ld a, [wNamedObjectIndexBuffer]
	ld [hl], a
	ld [de], a
	call .ResetChoice

.stole
	call GetItemName
	ld hl, StoleText
	jp StdBattleTextBox

.playeritem
	ld a, 1
	call BattlePartyAttr
	ld d, h
	ld e, l
	ld hl, wBattleMonItem
	ret

.enemyitem
	ld a, 1
	call OTPartyAttr
	ld d, h
	ld e, l
	ld hl, wEnemyMonItem
	ret
	
.ResetChoice
	call GetUserItem
	ld a, b
	cp HELD_CHOICE_BOOST
	ret nz
	ld a, c
	cp SPEED
	jr nz, .reset_encore_count
; Recalculate Stats if Choice Scarf is stolen
	call CalcPlayerStats
	call CalcEnemyStats
	
.reset_encore_count
	ld hl, wEnemyEncoreCount
	ldh a, [hBattleTurn]
	and a
	jr z, .got_encore_count
	ld hl, wPlayerEncoreCount
.got_encore_count
	xor a
	ld [hl], a
	ld a, BATTLE_VARS_SUBSTATUS5_OPP
	call GetBattleVarAddr
	res SUBSTATUS_ENCORED, [hl]
	ret
