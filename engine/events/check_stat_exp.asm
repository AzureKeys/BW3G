CheckStatExp:
; Input threshold in wBuffer1+wBuffer2 and stat to check in wScriptVar:
; 0: HP
; 1: Atk
; 2: Def
; 3: Spd
; 4: Spc
; Return 0 in wScriptVar if stat exp >= threshold, -1 otherwise

	ld b, 6
	farcall SelectMonFromParty
	jp c, .cancel

	ld a, [wCurPartySpecies]
	cp EGG
	jp z, .egg

	call IsAPokemon
	jp c, .fail
; Get Stat Exp for selected mon
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1StatExp
	call GetPartyLocation
; Get Stat Exp for selected stat
	ld a, [wScriptVar]
.loop
	and a
	jr z, .GotStat
	inc hl
	inc hl
	dec a
	jr .loop
.GotStat
; Compare Hi byte of stat to Hi Byte of threshold in wBuffer1
	ld a, [hli]
	ld b, a
	ld a, [wBuffer1]
	cp b
	jr c, .pass
	jr nz, .fail
; If Hi Bytes are equal, compare Lo Bytes
	ld a, [wBuffer2]
	ld b, a
	ld a, [hl]
	cp b
	jr c, .fail
	
.pass
	xor a
	ld [wScriptVar], a
	ret
	
.fail
	ld hl, Text_StatExpCheckFail
	call PrintText
	jr .done
	
.cancel
	ld hl, Text_StatExpCheckCancel
	call PrintText
	jr .done

.egg
	ld hl, Text_StatExpCheckEgg
	call PrintText
.done
	ld a, -1
	ld [wScriptVar], a
	ret

Text_StatExpCheckFail:
	text_far _StatExpCheckFail
	text_end

Text_StatExpCheckEgg:
	text_far _StatExpCheckEgg
	text_end

Text_StatExpCheckCancel:
	text_far _StatExpCheckCancel
	text_end
	