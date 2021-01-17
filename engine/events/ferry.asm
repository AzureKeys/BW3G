Ferry:
	ld a, [wScriptVar]
	and a
	jr nz, .ToCastelia
	ld a, 1 ; forwards
	lb bc,  $40,  $60
	lb de, (11 * 8) - (11 * 8 + 4), -$60
	jr .continue

.ToCastelia:
	ld a, -1 ; backwards
	lb bc, -$40, -$60
	lb de, (11 * 8) + (11 * 8 + 4), $60

.continue
	ld h, a
	ldh a, [rSVBK]
	push af
	ld a, BANK(wMagnetTrain)
	ldh [rSVBK], a

	ld a, h
	ld [wMagnetTrainDirection], a
	ld a, c
	ld [wMagnetTrainInitPosition], a
	ld a, b
	ld [wMagnetTrainHoldPosition], a
	ld a, e
	ld [wMagnetTrainFinalPosition], a
	ld a, d
	ld [wMagnetTrainPlayerSpriteInitX], a

	ldh a, [hSCX]
	push af
	ldh a, [hSCY]
	push af
	call Ferry_LoadGFX_PlayMusic
	ld hl, hVBlank
	ld a, [hl]
	push af
	ld [hl], $1
.loop
	ld a, [wJumptableIndex]
	and a
	jr z, .initialize
	bit 7, a
	jr nz, .done
	callfar PlaySpriteAnimations
	call Ferry_Jumptable
	call Ferry_UpdateLYOverrides
	call PushLYOverrides
	call DelayFrame
	jr .loop

.initialize
	call Ferry_Jumptable_FirstRunThrough
	jr .loop

.done
	pop af
	ldh [hVBlank], a
	call ClearBGPalettes
	xor a
	ldh [hLCDCPointer], a
	ldh [hLYOverrideStart], a
	ldh [hLYOverrideEnd], a
	ldh [hSCX], a
	ld [wRequested2bppSource], a
	ld [wRequested2bppSource + 1], a
	ld [wRequested2bppDest], a
	ld [wRequested2bppDest + 1], a
	ld [wRequested2bpp], a
	call ClearTileMap

	pop af
	ldh [hSCY], a
	pop af
	ldh [hSCX], a
	xor a
	ldh [hBGMapMode], a
	pop af
	ldh [rSVBK], a
	ret

Ferry_UpdateLYOverrides:
	ld hl, wLYOverridesBackup
	ld c, $2f
	ld a, [wMagnetTrainOffset]
	add a
	ldh [hSCX], a
	call .loadloop
	ld c, $30
	ld a, [wMagnetTrainPosition]
	call .loadloop
	ld c, $31
	ld a, [wMagnetTrainOffset]
	add a
	call .loadloop
	ld a, [wMagnetTrainDirection]
	ld d, a
	ld hl, wMagnetTrainOffset
	ld a, [hl]
	add d
	add d
	ld [hl], a
	ret

.loadloop
	ld [hli], a
	dec c
	jr nz, .loadloop
	ret

Ferry_LoadGFX_PlayMusic:
	call ClearBGPalettes
	call ClearSprites
	call DisableLCD
	callfar ClearSpriteAnims
	call SetFerryPals
	call DrawFerry
	ld a, $90
	ldh [hWY], a
	call EnableLCD
	xor a
	ldh [hBGMapMode], a
	ldh [hSCX], a
	ldh [hSCY], a
	ldh a, [rSVBK]
	push af
	ld a, BANK(wPlayerGender)
	ldh [rSVBK], a
	farcall GetPlayerIcon
	pop af
	ldh [rSVBK], a
	ld hl, vTiles0
	ld c, 4
	call Request2bpp
	ld hl, 12 tiles
	add hl, de
	ld d, h
	ld e, l
	ld hl, vTiles0 tile $04
	ld c, 4
	call Request2bpp
	call Ferry_InitLYOverrides
	ld hl, wJumptableIndex
	xor a
	ld [hli], a ; wJumptableIndex
	ld a, [wMagnetTrainInitPosition]
	ld [hli], a ; wMagnetTrainOffset
	ld [hli], a ; wMagnetTrainPosition
	ld [hli], a ; wMagnetTrainWaitCounter
	ld de, MUSIC_MAGNET_TRAIN
	call PlayMusic2
	ret

DrawFerry:
	hlbgcoord 0, 0
	xor a
.loop
	call GetFerryBGTiles
	ld b, 32 / 2
	call .FillAlt
	inc a
	cp $12
	jr c, .loop
	ld a, [wScriptVar]
	and a
	jr z, .Right
	
	hlbgcoord 0, 5
	ld de, FerryLTilemap
	ld c, 20
	call .FillLine
	hlbgcoord 0, 6
	ld de, FerryLTilemap + 20
	ld c, 20
	call .FillLine
	hlbgcoord 0, 7
	ld de, FerryLTilemap + 40
	ld c, 20
	call .FillLine
	hlbgcoord 0, 8
	ld de, FerryLTilemap + 60
	ld c, 20
	call .FillLine
	hlbgcoord 0, 9
	ld de, FerryLTilemap + 80
	ld c, 20
	call .FillLine
	hlbgcoord 0, 10
	ld de, FerryLTilemap + 100
	ld c, 20
	call .FillLine
	hlbgcoord 0, 11
	ld de, FerryLTilemap + 120
	ld c, 20
	call .FillLine
	ret
	
.Right
	hlbgcoord 0, 5
	ld de, FerryRTilemap
	ld c, 20
	call .FillLine
	hlbgcoord 0, 6
	ld de, FerryRTilemap + 20
	ld c, 20
	call .FillLine
	hlbgcoord 0, 7
	ld de, FerryRTilemap + 40
	ld c, 20
	call .FillLine
	hlbgcoord 0, 8
	ld de, FerryRTilemap + 60
	ld c, 20
	call .FillLine
	hlbgcoord 0, 9
	ld de, FerryRTilemap + 80
	ld c, 20
	call .FillLine
	hlbgcoord 0, 10
	ld de, FerryRTilemap + 100
	ld c, 20
	call .FillLine
	hlbgcoord 0, 11
	ld de, FerryRTilemap + 120
	ld c, 20
	call .FillLine
	ret

.FillLine:
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .FillLine
	ret

.FillAlt:
	ld [hl], e
	inc hl
	ld [hl], d
	inc hl
	dec b
	jr nz, .FillAlt
	ret

GetFerryBGTiles:
	push hl
	ld e, a
	ld d, 0
	ld hl, FerryBGTiles
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	pop hl
	ret

FerryBGTiles:
; 2x18 tilemap, repeated in vertical strips for the background.
INCBIN "gfx/overworld/ferry_bg.tilemap"

Ferry_InitLYOverrides:
	ld hl, wLYOverrides
	ld bc, wLYOverridesEnd - wLYOverrides
	ld a, [wMagnetTrainInitPosition]
	call ByteFill
	ld hl, wLYOverridesBackup
	ld bc, wLYOverridesBackupEnd - wLYOverridesBackup
	ld a, [wMagnetTrainInitPosition]
	call ByteFill
	ld a, LOW(rSCX)
	ldh [hLCDCPointer], a
	ret

SetFerryPals:
	ld a, $1
	ldh [rVBK], a

	; water
	hlbgcoord 0, 0
	ld bc, 18 * BG_MAP_WIDTH
	ld a, PAL_BG_WATER
	call ByteFill
	
	ld a, [wScriptVar]
	and a
	jr z, .Right

	; ferry
	hlbgcoord 7, 6
	ld bc, 6
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 0, 7
	ld bc, 15
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 0, 8
	ld bc, 15
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 0, 9
	ld bc, 15
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 0, 10
	ld bc, 14
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 1, 11
	ld bc, 12
	ld a, PAL_BG_ROOF
	call ByteFill

	; ferry emblem
	hlbgcoord 1, 7
	ld bc, 1
	ld a, PAL_BG_RED
	call ByteFill

	; ferry emblem
	hlbgcoord 1, 9
	ld bc, 1
	ld a, PAL_BG_RED
	call ByteFill

	; ferry emblem
	hlbgcoord 9, 10
	ld bc, 1
	ld a, PAL_BG_RED
	call ByteFill
	jr .cont
	
.Right
	; ferry
	hlbgcoord 7, 6
	ld bc, 6
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 5, 7
	ld bc, 15
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 5, 8
	ld bc, 15
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 5, 9
	ld bc, 15
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 6, 10
	ld bc, 14
	ld a, PAL_BG_ROOF
	call ByteFill
	hlbgcoord 7, 11
	ld bc, 12
	ld a, PAL_BG_ROOF
	call ByteFill

	; ferry emblem
	hlbgcoord 18, 7
	ld bc, 1
	ld a, PAL_BG_RED
	call ByteFill

	; ferry emblem
	hlbgcoord 18, 9
	ld bc, 1
	ld a, PAL_BG_RED
	call ByteFill

	; ferry emblem
	hlbgcoord 10, 10
	ld bc, 1
	ld a, PAL_BG_RED
	call ByteFill

.cont
	ld a, $0
	ldh [rVBK], a
	ret

Ferry_Jumptable:
	ld a, [wJumptableIndex]
	ld e, a
	ld d, 0
	ld hl, .Jumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Jumptable:
	dw .InitPlayerSpriteAnim
	dw .WaitScene
	dw .MoveTrain1
	dw .WaitScene
	dw .MoveTrain2
	dw .WaitScene
	dw .TrainArrived

.Next:
	ld hl, wJumptableIndex
	inc [hl]
	ret

.InitPlayerSpriteAnim:
	; ld d, 10 * 8 + 5
	; ld a, [wMagnetTrainPlayerSpriteInitX]
	; ld e, a
	; ld b, SPRITE_ANIM_INDEX_MAGNET_TRAIN_RED
	; ldh a, [rSVBK]
	; push af
	; ld a, BANK(wPlayerGender)
	; ldh [rSVBK], a
	; ld a, [wPlayerGender]
	; bit PLAYERGENDER_FEMALE_F, a
	; jr z, .got_gender
	; ld b, SPRITE_ANIM_INDEX_MAGNET_TRAIN_BLUE

; .got_gender
	; pop af
	; ldh [rSVBK], a
	; ld a, b
	; call _InitSpriteAnimStruct
	; ld hl, SPRITEANIMSTRUCT_TILE_ID
	; add hl, bc
	; ld [hl], $0
	call .Next
	ld a, $80
	ld [wMagnetTrainWaitCounter], a
	ret

.MoveTrain1:
	ld hl, wMagnetTrainHoldPosition
	ld a, [wMagnetTrainPosition]
	cp [hl]
	jr z, .PrepareToHoldTrain
	ld e, a
	ld a, [wMagnetTrainDirection]
	xor $ff
	inc a
	add e
	ld [wMagnetTrainPosition], a
	ld hl, wGlobalAnimXOffset
	ld a, [wMagnetTrainDirection]
	add [hl]
	ld [hl], a
	ret

.PrepareToHoldTrain:
	call .Next
	ld a, $80
	ld [wMagnetTrainWaitCounter], a
	ret

.WaitScene:
	ld hl, wMagnetTrainWaitCounter
	ld a, [hl]
	and a
	jr z, .DoneWaiting
	dec [hl]
	ret

.DoneWaiting:
	call .Next
	ret

.MoveTrain2:
	ld hl, wMagnetTrainFinalPosition
	ld a, [wMagnetTrainPosition]
	cp [hl]
	jr z, .PrepareToFinishAnim
	ld e, a
	ld a, [wMagnetTrainDirection]
	xor $ff
	inc a
	ld d, a
	ld a, e
	add d
	add d
	ld [wMagnetTrainPosition], a
	ld hl, wGlobalAnimXOffset
	ld a, [wMagnetTrainDirection]
	ld d, a
	ld a, [hl]
	add d
	add d
	ld [hl], a
	ret

	ret

.PrepareToFinishAnim:
	call .Next
	ret

.TrainArrived:
	ld a, $80
	ld [wJumptableIndex], a
	ld de, SFX_TRAIN_ARRIVED
	call PlaySFX
	ret

Ferry_Jumptable_FirstRunThrough:
	farcall PlaySpriteAnimations
	call Ferry_Jumptable
	call Ferry_UpdateLYOverrides
	call PushLYOverrides
	call DelayFrame
	ldh a, [rSVBK]
	push af
	ld a, BANK(wEnvironment)
	ldh [rSVBK], a
	ld a, [wTimeOfDayPal]
	push af
	ld a, [wEnvironment]
	push af
	ld a, [wTimeOfDay]
	maskbits NUM_DAYTIMES
	ld [wTimeOfDayPal], a
	ld a, $1
	ld [wEnvironment], a
	ld b, SCGB_MAPPALS
	call GetSGBLayout
	call UpdateTimePals
	ldh a, [rBGP]
	ld [wBGP], a
	ldh a, [rOBP0]
	ld [wOBP0], a
	ldh a, [rOBP1]
	ld [wOBP1], a
	pop af
	ld [wEnvironment], a
	pop af
	ld [wTimeOfDayPal], a
	pop af
	ldh [rSVBK], a
	ret

FerryLTilemap:
; 20x4 tilemap
INCBIN "gfx/overworld/ferry_fg_left.tilemap"

FerryRTilemap:
; 20x4 tilemap
INCBIN "gfx/overworld/ferry_fg_right.tilemap"
