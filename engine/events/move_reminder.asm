; Based on an old commit of Rangi's Polished Crystal, which was in turn based off TPP Anniversary Crystal
; https://github.com/Rangi42/polishedcrystal/blob/39bf603531d74254e7ab2740677d38ec3ef9b6bd/event/move_reminder.asm
; https://github.com/TwitchPlaysPokemon/tppcrystal251pub/blob/public/event/move_relearner.asm

MoveReminder:
	ld a, -1
	ld [wScriptVar], a
	
	ld hl, Text_MoveReminderWhichMon
	call PrintText
	call JoyWaitAorB

	ld b, 6
	farcall SelectMonFromParty
	jr c, .cancel

	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg

	call IsAPokemon
	jr c, .no_mon

	call GetRemindableMoves
	jr z, .no_moves

	ld hl, Text_MoveReminderWhichMove
	call PrintText
	call JoyWaitAorB

	call ChooseMoveToLearn
	jr c, .didnt_learn

	ld a, [wMenuSelection]
	ld [wd265], a
	call GetMoveName
	ld hl, wStringBuffer1
	ld de, wStringBuffer2
	ld bc, wStringBuffer2 - wStringBuffer1
	call CopyBytes
	ld b, 0
	predef LearnMove
	ld a, b
	and a
	jr z, .didnt_learn
	xor a ; FALSE
	ld [wScriptVar], a

.didnt_learn
	call ReturnToMapWithSpeechTextbox
.cancel
	ld hl, Text_MoveReminderCancel
	call PrintText
	ret

.egg
	ld hl, Text_MoveReminderEgg
	call PrintText
	ret

.no_mon
	ld hl, Text_MoveReminderNoMon
	call PrintText
	ret

.no_moves
	ld hl, Text_MoveReminderNoMoves
	call PrintText
	ret

GetRemindableMoves:
; Get moves remindable by CurPartyMon
; Returns z if no moves can be reminded.

	ld hl, wd002
	xor a
	ld [hli], a
	ld [hl], $ff

	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartySpecies], a

	push af
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a

	ld b, 0
	ld de, wd002 + 1

; Based on GetEggMove in engine/breeding/egg.asm
	ld a, [wCurPartySpecies]
	dec a
	push bc
	ld b, 0
	ld c, a
	ld hl, EvosAttacksPointers
	REPT 2
	add hl, bc
	ENDR
	ld a, BANK(EvosAttacksPointers)
	call GetFarHalfword
.skip_evos
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	inc hl
	and a
	jr nz, .skip_evos

.loop_moves
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	inc hl
	and a
	jr z, .done
	ld c, a
	ld a, [wCurPartyLevel]
	cp c
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	inc hl
	jr c, .loop_moves

	ld c, a
	call CheckAlreadyInList
	jr c, .loop_moves
	call CheckPokemonAlreadyKnowsMove
	jr c, .loop_moves
	ld a, c
	ld [de], a
	inc de
	ld a, $ff
	ld [de], a
	pop bc
	inc b
	push bc
	jr .loop_moves

.done
	pop bc
	pop af
	ld [wCurPartySpecies], a
	ld a, b
	ld [wd002], a
	and a
	ret

CheckAlreadyInList:
	push hl
	ld hl, wd002 + 1
.loop
	ld a, [hli]
	inc a
	jr z, .nope
	dec a
	cp c
	jr nz, .loop
	pop hl
	scf
	ret
.nope
	pop hl
	and a
	ret

CheckPokemonAlreadyKnowsMove:
	push hl
	push bc
	ld a, MON_MOVES
	call GetPartyParamLocation
	ld b, 4
.loop
	ld a, [hli]
	cp c
	jr z, .yes
	dec b
	jr nz, .loop
	pop bc
	pop hl
	and a
	ret
.yes
	pop bc
	pop hl
	scf
	ret

ChooseMoveToLearn:
; Number of items stored in wd002
; List of items stored in wd002 + 1
	call FadeToMenu
	farcall BlankScreen
	call UpdateSprites
	ld hl, .MenuHeader
	call CopyMenuHeader
	xor a
	ld [wMenuCursorBuffer], a
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	call SpeechTextBox
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .carry
	ld a, [wMenuSelection]
	ld [wPutativeTMHMMove], a
	and a
	ret

.carry
	scf
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 1, SCREEN_WIDTH - 1, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS | SCROLLINGMENU_ENABLE_FUNCTION3 ; item format
	db 5, SCREEN_WIDTH + 2 ; rows, columns
	db 1
	dba  wd002
	dba .PrintMoveName
	dba .PrintDetails
	dba .PrintMoveDesc

.PrintMoveName
	push de
	ld a, [wMenuSelection]
	ld [wd265], a
	call GetMoveName
	pop hl
	call PlaceString
	ret

.PrintDetails
	ld hl, wStringBuffer1
	ld bc, wStringBuffer2 - wStringBuffer1
	ld a, " "
	call ByteFill
	ld a, [wMenuSelection]
	inc a
	ret z
	dec a
	push de
	dec a

;IF DEF(PSS)
	ld bc, MOVE_LENGTH
	ld hl, Moves + MOVE_TYPE
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	and ~TYPE_MASK
	rlc a
	rlc a
	dec a

; bc = a * 4
	add a
	add a
	ld b, 0
	ld c, a
	ld hl, .Categories
	add hl, bc
	ld d, h
	ld e, l
	ld hl, wStringBuffer1
	ld bc, 3
	call PlaceString
	ld hl, wStringBuffer1 + 3
	ld [hl], "/"

	ld a, [wMenuSelection]
	dec a
;ENDC

	ld bc, MOVE_LENGTH
	ld hl, Moves + MOVE_TYPE
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	ld [wd265], a

; bc = a * 4
	add a
	add a
	ld b, 0
	ld c, a
	ld hl, .Types
	add hl, bc
	ld d, h
	ld e, l
	ld hl, wStringBuffer1 + 4
	ld bc, 3
	call PlaceString
	ld hl, wStringBuffer1 + 7
	ld [hl], "/"

	ld a, [wMenuSelection]
	dec a

	ld bc, MOVE_LENGTH
	ld hl, Moves + MOVE_POWER
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	ld hl, wStringBuffer1 + 8
	and a
	jr z, .no_power
	ld [wBuffer1], a
	ld de, wBuffer1
	lb bc, 1, 3
	call PrintNum
	jr .got_power
.no_power
	ld de, .ThreeDashes
	ld bc, 3
	call PlaceString
.got_power
	ld hl, wStringBuffer1 + 11
	ld [hl], "/"

	ld a, [wMenuSelection]
	dec a

; Print PP (works)
	ld a, [wMenuSelection]
	dec a
	ld bc, MOVE_LENGTH
	ld hl, Moves + MOVE_PP
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	ld [wBuffer1], a
	ld hl, wStringBuffer1 + 12
	ld de, wBuffer1
	lb bc, 1, 2
	call PrintNum
	ld hl, wStringBuffer1 + 14
	ld [hl], "@"

	pop hl
	ld de, wStringBuffer1
	jp PlaceString

.ThreeDashes
	db "---@"

.Categories
	db "PHY@"
	db "SPE@"
	db "STA@"

.Types
	db "NRM@"
	db "FGT@"
	db "FLY@"
	db "PSN@"
	db "GRD@"
	db "RCK@"
	db "BRD@"
	db "BUG@"
	db "GHT@"
	db "STL@"
	db "NRM@"
	db "NRM@"
	db "NRM@"
	db "NRM@"
	db "NRM@"
	db "NRM@"
	db "NRM@"
	db "NRM@"
	db "NRM@"
	db "???@"
	db "FIR@"
	db "WTR@"
	db "GRS@"
	db "ELC@"
	db "PSY@"
	db "ICE@"
	db "DRG@"
	db "DRK@"
	db "FAI@"

.PrintMoveDesc
	push de
	call SpeechTextBox
	ld a, [wMenuSelection]
	inc a
	pop de
	ret z
	dec a
	ld [wCurSpecies], a
	hlcoord 1, 14
	predef PrintMoveDesc
	ret

Text_MoveReminderWhichMon:
	text_far _MoveReminderWhichMon
	text_end

Text_MoveReminderWhichMove:
	text_far _MoveReminderWhichMove
	text_end

Text_MoveReminderCancel:
	text_far _MoveReminderCancel
	text_end

Text_MoveReminderEgg:
	text_far _MoveReminderEgg
	text_end

Text_MoveReminderNoMon:
	text_far _MoveReminderNoMon
	text_end

Text_MoveReminderNoMoves:
	text_far _MoveReminderNoMoves
	text_end