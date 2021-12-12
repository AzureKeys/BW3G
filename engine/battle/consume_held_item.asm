ConsumeHeldItem:
	push hl
	push de
	push bc
	ldh a, [hBattleTurn]
	and a
	ld hl, wOTPartyMon1Item
	ld de, wEnemyMonItem
	ld a, [wCurOTMon]
	jr z, .theirturn
	ld hl, wPartyMon1Item
	ld de, wBattleMonItem
	ld a, [wCurBattleMon]

.theirturn
	push hl
	push af
	ld a, [de]
	ld b, a
	farcall GetItemHeldEffect
	ld hl, ConsumableEffects
.loop
	ld a, [hli]
	cp b
	jr z, .ok
	inc a
	jr nz, .loop
	pop af
	pop hl
	pop bc
	pop de
	pop hl
	ret

.ok
	xor a
	ld [de], a
	pop af
	pop hl
	call GetPartyLocation
	ldh a, [hBattleTurn]
	and a
	jr z, .enemyturn

; our turn
	ld a, [hl]
	ld d, a ; save copy of current item
	ld [hl], NO_ITEM
; If item is a berry, remove the backup too
	ld [wCurItem], a
	push bc
	push hl
	farcall CheckItemPocket
	pop hl
	pop bc
	ld a, [wItemAttributeParamBuffer]
	cp BERRIES
	jr nz, .done
	call GetBackupItemAddr
; If the backup is different, don't remove it
	ld a, [hl]
	cp d
	jr nz, .done
	xor a
	ld [hl], a

.done
	pop bc
	pop de
	pop hl
	ret
	
.enemyturn
; Done if it's a wild battle, otherwise clear enemy's party mon item first
	ld a, [wBattleMode]
	dec a
	jr z, .done
	ld [hl], NO_ITEM
	jr .done

INCLUDE "data/battle/held_consumables.asm"
