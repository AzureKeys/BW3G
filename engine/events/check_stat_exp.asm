DVChecker:
	ld hl, Text_DVCheckerWhichMon
	call PrintText
	call JoyWaitAorB

	ld b, 6
	farcall SelectMonFromParty
	jp c, .cancel

	ld a, [wCurPartySpecies]
	cp EGG
	jp z, .egg

	call IsAPokemon
	jp c, .no_mon
	
	ld hl, Text_DVCheckerLetsSee
	call PrintText
	
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1DVs
	call GetPartyLocation
; Get Attack/Defense DVs
	ld a, [hli]
	ld b, a
	push hl
	push bc
; Isolate Attack DV
	and $f0
	swap a
	ld [wBuffer1], a
	ld hl, wStringBuffer1
	ld de, wBuffer1
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ld [hl], "@"
	ld hl, .stat_names
	ld de, wStringBuffer2
	ld bc, 19
	call CopyBytes
	ld hl, Text_DVCheckerPrintDV
	call PrintText
; Isolate Defense DV
	pop bc
	ld a, b
	and $0f
	ld [wBuffer1], a
	ld hl, wStringBuffer1
	ld de, wBuffer1
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ld [hl], "@"
	ld hl, .stat_names + 7
	ld de, wStringBuffer2
	ld bc, 19
	call CopyBytes
	ld hl, Text_DVCheckerPrintDV
	call PrintText
; Get Speed/Special DVs
	pop hl
	ld a, [hl]
	ld b, a
	push bc
; Isolate Speed DV
	and $f0
	swap a
	ld [wBuffer1], a
	ld hl, wStringBuffer1
	ld de, wBuffer1
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ld [hl], "@"
	ld hl, .stat_names + 15
	ld de, wStringBuffer2
	ld bc, 19
	call CopyBytes
	ld hl, Text_DVCheckerPrintDV
	call PrintText
; Isolate Special DV
	pop bc
	ld a, b
	and $0f
	ld [wBuffer1], a
	ld hl, wStringBuffer1
	ld de, wBuffer1
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ld [hl], "@"
; Get name for Special Attack
	ld hl, .stat_names + 21
	ld de, wStringBuffer2
	ld bc, 19
	call CopyBytes
	ld hl, Text_DVCheckerPrintDV
	call PrintText
; Print again for Special Defense
	ld hl, .stat_names + 31
	ld de, wStringBuffer2
	ld bc, 19
	call CopyBytes
	ld hl, Text_DVCheckerPrintDV
	call PrintText
	xor a
	
.cancel
	ld hl, Text_DVCheckerCancel
	call PrintText
	ret

.egg
	ld hl, Text_DVCheckerEgg
	call PrintText
	ret

.no_mon
	ld hl, Text_DVCheckerNoMon
	call PrintText
	ret
	
.stat_names
	db "ATTACK@"
	db "DEFENSE@"
	db "SPEED@"
	db "SP.ATTACK@"
	db "SP.DEFENSE@"

Text_DVCheckerWhichMon:
	text_far _DVCheckerWhichMon
	text_end

Text_DVCheckerLetsSee:
	text_far _DVCheckerLetsSee
	text_end

Text_DVCheckerPrintDV:
	text_far _DVCheckerPrintDV
	text_end

Text_DVCheckerCancel:
	text_far _DVCheckerCancel
	text_end

Text_DVCheckerEgg:
	text_far _DVCheckerEgg
	text_end

Text_DVCheckerNoMon:
	text_far _DVCheckerNoMon
	text_end
	