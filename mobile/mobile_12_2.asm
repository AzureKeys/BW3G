MobileCheckOwnMonAnywhere:
	ret

UnusedFindItemInPCOrBag:
	ret

Function4a94e:
	ret

UnknownText_0x4a9be:
	; Pick three #MON for battle.
	text_far UnknownText_0x1c51d7
	text_end

Function4a9c3:
	ret

Function4a9d7:
	ret

UnknownText_0x4aa1d:
	; , @  and @ . Use these three?
	text_far UnknownText_0x1c51f4
	text_end

Function4aa22:
	call ClearBGPalettes

Function4aa25:
	ret

Function4aa34:
	ret

Function4aa6e:
	ret

Function4aa7a:
	ret

Function4aab6:
	ret

Function4aad3:
	ret

Function4aafb:
	ret

Function4ab06:
	ret

Function4ab1a:
	ret

Function4ab99:
	ret

Function4aba8:
	ret

Function4abc3:
	ret

Function4ac58:
	ret

MenuHeader_0x4aca2:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 9, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw NULL
	db 1 ; default option

Function4acaa:
.asm_4acaa
	ld a, $a0
	ld [wMenuDataFlags], a
	ld a, [wd019]
	bit 1, a
	jr z, .asm_4acc2
	ld a, $2
	ld [wMenuDataItems], a
	ld a, $c
	ld [wMenuBorderTopCoord], a
	jr .asm_4accc

.asm_4acc2
	ld a, $4
	ld [wMenuDataItems], a
	ld a, $8
	ld [wMenuBorderTopCoord], a

.asm_4accc
	ld a, $b
	ld [wMenuBorderLeftCoord], a
	ld a, $1
	ld [wMenuCursorBuffer], a
	call InitVerticalMenuCursor
	ld hl, w2DMenuFlags1
	set 6, [hl]
	call StaticMenuJoypad
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	ldh a, [hJoyPressed]
	bit 0, a
	jr nz, .asm_4acf4
	bit 1, a
	jr nz, .asm_4acf3
	jr .asm_4acaa

.asm_4acf3
	ret

.asm_4acf4
	ld a, [wd019]
	bit 1, a
	jr nz, .asm_4ad0e
	ld a, [wMenuCursorY]
	cp $1
	jr z, Function4ad17
	cp $2
	jp z, Function4ad56
	cp $3
	jp z, Function4ad60
	jr .asm_4acf3

.asm_4ad0e
	ld a, [wMenuCursorY]
	cp $1
	jr z, Function4ad56
	jr .asm_4acf3

Function4ad17:
	call Function4adb2
	jr z, .asm_4ad4a
	ld hl, wd002
	ld a, $ff
	cp [hl]
	jr z, .asm_4ad39
	inc hl
	cp [hl]
	jr z, .asm_4ad39
	inc hl
	cp [hl]
	jr z, .asm_4ad39
	ld de, SFX_WRONG
	call WaitPlaySFX
	ld hl, UnknownText_0x4ad51
	call PrintText
	ret

.asm_4ad39
	ld a, [wCurPartyMon]
	ld [hl], a
	call Function4a9c3
	ret c
	ld a, [wd019]
	set 0, a
	ld [wd019], a
	ret

.asm_4ad4a
	ld a, $ff
	ld [hl], a
	call Function4adc2
	ret

UnknownText_0x4ad51:
	; Only three #MON may enter.
	text_far UnknownText_0x1c521c
	text_end

Function4ad56:
	farcall OpenPartyStats
	call WaitBGMap2
	ret

Function4ad60:
	farcall ManagePokemonMoves
	ret

Function4ad67:
	ret

Function4ad68:
	hlcoord 13, 12
	ld de, String_4ad88
	call PlaceString
	call Function4adb2
	jr c, .asm_4ad7e
	hlcoord 13, 10
	ld de, String_4ada0
	jr .asm_4ad84

.asm_4ad7e
	hlcoord 13, 10
	ld de, String_4ad9a

.asm_4ad84
	call PlaceString
	ret

String_4ad88:
	db   "つよさをみる"
	next "つかえるわざ"
	next "もどる@"

String_4ad9a:
	db   "さんかする@"

String_4ada0:
	db   "さんかしない@"

String_4ada7:
	db   "つよさをみる"
	next "もどる@" ; BACK

Function4adb2:
	ld hl, wd002
	ld a, [wCurPartyMon]
	cp [hl]
	ret z
	inc hl
	cp [hl]
	ret z
	inc hl
	cp [hl]
	ret z
	scf
	ret

Function4adc2:
	ld a, [wd002]
	cp $ff
	jr nz, .skip
	ld a, [wd003]
	cp $ff
	jr nz, .skip2
	ld a, [wd004]
	ld [wd002], a
	ld a, $ff
	ld [wd004], a
	jr .skip

.skip2
	ld [wd002], a
	ld a, $ff
	ld [wd003], a

.skip
	ld a, [wd003]
	cp $ff
	ret nz
	ld b, a
	ld a, [wd004]
	ld [wd003], a
	ld a, b
	ld [wd004], a
	ret

Function4adf7:
	ld a, [wd019]
	bit 0, a
	ret z
	ld a, [wPartyCount]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	ld a, [wd019]
	res 0, a
	ld [wd019], a
	ret
