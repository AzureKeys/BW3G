HiddenGrottoScript::
	callasm GetCurGrottoItem
	opentext
	copybytetovar wCurGrottoItem
	itemtotext USE_SCRIPT_VAR, MEM_BUFFER_0
	writetext FoundHiddenGrottoText
	buttonsound
	callasm TryResetHiddenGrotto
	callasm CheckHiddenGrotto
	iffalse .fruit
	writetext GrottoEmptyText
	waitbutton
	jump .end

.fruit
	writetext GrottoItemText
	copybytetovar wCurGrottoItem
	giveitem ITEM_FROM_MEM
	iffalse .packisfull
	buttonsound
	writetext ObtainedGrottoItemText
	callasm PickedGrottoItem
	specialsound
	itemnotify
	jump .end

.packisfull
	buttonsound
	writetext GrottoPackIsFullText
	waitbutton

.end
	closetext
	end

GetCurGrottoItem:
	ld a, [wCurHiddenGrotto]
	dec a
	call GetHiddenGrottoItem
	ld [wCurGrottoItem], a
	ret

TryResetHiddenGrotto:
	ld hl, wDailyFlags1
	bit DAILYFLAGS1_ALL_FRUIT_TREES_F, [hl]
	ret nz
	jp ResetHiddenGrotto

CheckHiddenGrotto:
	ld b, 2
	call GetHiddenGrottoFlag
	ld a, c
	ld [wScriptVar], a
	ret

PickedGrottoItem:
	farcall StubbedTrainerRankings_FruitPicked
	ld b, 1
	jp GetHiddenGrottoFlag

ResetHiddenGrotto:
	xor a
	ld hl, wFruitTreeFlags
	ld [hli], a
	ld [hl], a
	ld hl, wHiddenGrottoFlags
	ld [hli], a
	ld [hl], a
	ld hl, wDailyFlags1
	set DAILYFLAGS1_ALL_FRUIT_TREES_F, [hl]
	ret

GetHiddenGrottoFlag:
	push hl
	push de
	ld a, [wCurHiddenGrotto]
	dec a
	ld e, a
	ld d, 0
	ld hl, wHiddenGrottoFlags
	call FlagAction
	pop de
	pop hl
	ret

GetHiddenGrottoItem:
	push hl
	push de
	;ld e, a
	;ld d, 0
	;ld hl, HiddenGrottoItems
	;add hl, de
	;ld a, [hl]
	ld a, 4
	call RandomRange
	cp 0
	jr z, .red
	cp 1
	jr z, .blue
	cp 2
	jr z, .green
	ld a, YELLOW_SHARD
	jp .done
.blue
	ld a, BLUE_SHARD
	jp .done
.red
	ld a, RED_SHARD
	jp .done
.green
	ld a, GREEN_SHARD
.done
	pop de
	pop hl
	ret

;INCLUDE "data/items/hidden_grotto.asm"

FoundHiddenGrottoText:
	text_far _FoundHiddenGrottoText
	text_end

GrottoItemText:
	text_far _GrottoItemText
	text_end

ObtainedGrottoItemText:
	text_far _ObtainedFruitText
	text_end

GrottoPackIsFullText:
	text_far _FruitPackIsFullText
	text_end

GrottoEmptyText:
	text_far _NothingHereText
	text_end
