BattleCommand_BugBite:
; bugbite
	call GetOpponentItem
	ld a, [hl]
	ld [wCurItem], a
	push bc
	push hl
	farcall CheckItemPocket
	pop hl
	pop bc
	ld a, [wItemAttributeParamBuffer]
	cp BERRIES
	ret nz

; steal berries
	call StealHeldStatusHealingItem
	call StealHPHealingItem
	
; check if opponent still has a berry
	call GetOpponentItem
	ld a, [hl]
	and a
	ret z
	farcall ItemRecoveryAnimBugBite
	call GetCurItemName
	ld hl, BattleText_UserAteItem
	call StdBattleTextBox
	call ConsumeOpponentItem
	ld hl, NothingHappenedText
	jp StdBattleTextBox
	
; steal status berry
StealHeldStatusHealingItem:
	call GetOpponentItem
	call _HeldStatusHealingItem
	ret z
	jr StealBattleItem
	
_HeldStatusHealingItem:
	ld hl, .Statuses
.loop
	ld a, [hli]
	cp $ff
	ret z
	inc hl
	cp b
	jr nz, .loop
	dec hl
	ld b, [hl]
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	and b
	ret z
	xor a
	ld [hl], a
	push bc
	call UpdateUserInParty
	pop bc
	ld a, b
	cp ALL_STATUS
	jr nz, .skip_confuse
	ld a, BATTLE_VARS_SUBSTATUS3
	call GetBattleVarAddr
	res SUBSTATUS_CONFUSED, [hl]
.skip_confuse
	farcall ItemRecoveryAnimBugBite
	or 1
	ret
	
.Statuses:
	db HELD_HEAL_POISON, 1 << PSN
	db HELD_HEAL_FREEZE, 1 << FRZ
	db HELD_HEAL_BURN, 1 << BRN
	db HELD_HEAL_SLEEP, SLP
	db HELD_HEAL_PARALYZE, 1 << PAR
	db HELD_HEAL_STATUS, ALL_STATUS
	db $ff
	
; steal HP berry
StealHPHealingItem:
	farcall CheckFullHP
	ret z
	call GetOpponentItem
	call _HeldHPHealingItem
	ret nz
; fallthrough
StealBattleItem:
	call RefreshBattleHuds
	call GetOpponentItem
	call GetCurItemName
	ld hl, RecoveredUsingTextBugBite
	call StdBattleTextBox
	jr ConsumeOpponentItem
	
_HeldHPHealingItem:
	ld a, b
	cp HELD_BERRY
	ret nz
	ld b, 0 ; bc contains HP to restore
	ld a, [hl]
	farcall ItemRecoveryAnimBugBite
	farcall RestoreHPBugBite
	xor a
	ret
	
; consume opponent item
ConsumeOpponentItem:
	ld a, [hBattleTurn]
	and a
	ld a, [wCurBattleMon]
	ld de, wEnemyMonItem
	ld hl, wOTPartyMon1Item
	jr z, .got_item_pointers
	ld a, [wCurOTMon]
	ld de, wBattleMonItem
	ld hl, wPartyMon1Item
.got_item_pointers
	call GetPartyLocation
	ld a, [de]
	xor a
	ld [de], a
	
	ld a, [hBattleTurn]
	and a
	jr nz, .has_party
	
	ld a, [wBattleMode]
	dec a
	jr z, .done
	
.has_party
	ld a, [hl]
	ld d, a
	xor a
	ld [hl], a
	
.done
	ret
