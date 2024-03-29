
HandleNewMap:
	call Clearwc7e8
	call ResetMapBufferEventFlags
	call ResetFlashIfOutOfCave
	call GetCurrentMapSceneID
	call ResetBikeFlags
	ld a, MAPCALLBACK_NEWMAP
	call RunMapCallback
InitCommandQueue:
	xor a
	ld [wStoneTableAddress], a
	ld [wStoneTableAddress+1], a
	ld a, MAPCALLBACK_STONETABLE
	call RunMapCallback
	call GetMapTimeOfDay
	ld [wMapTimeOfDay], a
	ret

EnterMapConnection:
; Return carry if a connection has been entered.

	ld hl, DualMapConnections
.dual_loop
; check end
	ld a, [hli]
	and a
	jr z, .not_dual
; check map group
	ld b, a
	ld a, [wMapGroup]
	cp b
	jr nz, .skip31
; check map number
	ld a, [hli]
	ld b, a
	ld a, [wMapNumber]
	cp b
	jr nz, .skip30
; check step direction
	ld a, [hli]
	ld b, a
	ld a, [wPlayerStepDirection]
	cp b
	jr nz, .skip29
; check coordinate
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld b, a
	ld a, [de]
	cp b
; de = map connection struct
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
; hl = connection data
	jr c, .lesser
	ld bc, 12 ; size of connection
	add hl, bc
.lesser
	call GetMapConnection
	; fallthrough
	
.not_dual
	ld a, [wPlayerStepDirection]
	and a ; DOWN
	jp z, .south
	cp UP
	jp z, .north
	cp LEFT
	jp z, .west
	cp RIGHT
	jp z, .east
	ret
	
.skip31
	inc hl
.skip30
	inc hl
.skip29
	ld bc, 8 + 12 * 2 - 3 ; size of dual_connection, minus 3 bytes passed already
	add hl, bc
	jr .dual_loop

.west
	ld a, [wWestConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wWestConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wWestConnectionStripXOffset]
	ld [wXCoord], a
	ld a, [wWestConnectionStripYOffset]
	ld hl, wYCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wWestConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	srl c
	jr z, .skip_to_load
	ld a, [wWestConnectedMapWidth]
	add 6
	ld e, a
	ld d, 0

.loop
	add hl, de
	dec c
	jr nz, .loop

.skip_to_load
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
	jp .done

.east
	ld a, [wEastConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wEastConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wEastConnectionStripXOffset]
	ld [wXCoord], a
	ld a, [wEastConnectionStripYOffset]
	ld hl, wYCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wEastConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	srl c
	jr z, .skip_to_load2
	ld a, [wEastConnectedMapWidth]
	add 6
	ld e, a
	ld d, 0

.loop2
	add hl, de
	dec c
	jr nz, .loop2

.skip_to_load2
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
	jp .done

.north
	ld a, [wNorthConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wNorthConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wNorthConnectionStripYOffset]
	ld [wYCoord], a
	ld a, [wNorthConnectionStripXOffset]
	ld hl, wXCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wNorthConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, 0
	srl c
	add hl, bc
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
	jp .done

.south
	ld a, [wSouthConnectedMapGroup]
	ld [wMapGroup], a
	ld a, [wSouthConnectedMapNumber]
	ld [wMapNumber], a
	ld a, [wSouthConnectionStripYOffset]
	ld [wYCoord], a
	ld a, [wSouthConnectionStripXOffset]
	ld hl, wXCoord
	add [hl]
	ld [hl], a
	ld c, a
	ld hl, wSouthConnectionWindow
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, 0
	srl c
	add hl, bc
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
.done
	scf
	ret

LoadWarpData:
	call .SaveDigWarp
	call .SetSpawn
	ld a, [wNextWarp]
	ld [wWarpNumber], a
	ld a, [wNextMapGroup]
	ld [wMapGroup], a
	ld a, [wNextMapNumber]
	ld [wMapNumber], a
	ret

.SaveDigWarp:
	call GetMapEnvironment
	call CheckOutdoorMap
	ret nz
	ld a, [wNextMapGroup]
	ld b, a
	ld a, [wNextMapNumber]
	ld c, a
	call GetAnyMapEnvironment
	call CheckIndoorMap
	ret nz

; The following are outdoor maps within indoor maps:
; GIANT_CHASM_B1F, CELESTIAL_TOWER_ROOF, DRAGONSPIRAL_TOWER_ROOF
; VICTORY_ROAD_OUTDOOR_1F, VICTORY_ROAD_OUTDOOR_2F, TWIST_MOUNTAIN_OUTSIDE
; Dig and Escape Rope should not take you to them.
	ld a, [wPrevMapGroup]
	cp GROUP_CELESTIAL_TOWER_ROOF ; all are in group DUNGEONS
	jr nz, .not_mt_moon_or_tin_tower
	ld a, [wPrevMapNumber]
	cp MAP_GIANT_CHASM_B1F
	ret z
	cp MAP_CELESTIAL_TOWER_ROOF
	ret z
	cp MAP_DRAGONSPIRAL_TOWER_ROOF
	ret z
	cp MAP_VICTORY_ROAD_OUTDOOR_1F
	ret z
	cp MAP_VICTORY_ROAD_OUTDOOR_2F
	ret z
	cp MAP_TWIST_MOUNTAIN_OUTSIDE
	ret z
.not_mt_moon_or_tin_tower

	ld a, [wPrevWarp]
	ld [wDigWarpNumber], a
	ld a, [wPrevMapGroup]
	ld [wDigMapGroup], a
	ld a, [wPrevMapNumber]
	ld [wDigMapNumber], a
	ret

.SetSpawn:
	call GetMapEnvironment
	call CheckOutdoorMap
	ret nz
	ld a, [wNextMapGroup]
	ld b, a
	ld a, [wNextMapNumber]
	ld c, a
	call GetAnyMapEnvironment
	call CheckIndoorMap
	ret nz
	ld a, [wNextMapGroup]
	ld b, a
	ld a, [wNextMapNumber]
	ld c, a

; Respawn in Pokémon Centers. (and PWT)
	call GetAnyMapTileset
	ld a, c
	cp TILESET_POKECENTER
	jr z, .pokecenter_pokecom
	cp TILESET_BATTLE_TOWER
	jr z, .pokecenter_pokecom
	ret
.pokecenter_pokecom

	ld a, [wPrevMapGroup]
	ld [wLastSpawnMapGroup], a
	ld a, [wPrevMapNumber]
	ld [wLastSpawnMapNumber], a
	ret

LoadMapTimeOfDay:
	ld hl, wVramState
	res 6, [hl]
	ld a, $1
	ld [wSpriteUpdatesEnabled], a
	farcall ReplaceTimeOfDayPals
	farcall UpdateTimeOfDayPal
	call OverworldTextModeSwitch
	call .ClearBGMap
	call .PushAttrMap
	ret

.ClearBGMap:
	ld a, HIGH(vBGMap0)
	ld [wBGMapAnchor + 1], a
	xor a ; LOW(vBGMap0)
	ld [wBGMapAnchor], a
	ldh [hSCY], a
	ldh [hSCX], a
	farcall ApplyBGMapAnchorToObjects

	ldh a, [rVBK]
	push af
	ld a, $1
	ldh [rVBK], a

	xor a
	ld bc, vBGMap1 - vBGMap0
	hlbgcoord 0, 0
	call ByteFill

	pop af
	ldh [rVBK], a

	ld a, "■"
	ld bc, vBGMap1 - vBGMap0
	hlbgcoord 0, 0
	call ByteFill
	ret

.PushAttrMap:
	decoord 0, 0
	call .copy
	ldh a, [hCGB]
	and a
	ret z

	decoord 0, 0, wAttrMap
	ld a, $1
	ldh [rVBK], a
.copy
	hlbgcoord 0, 0
	ld c, SCREEN_WIDTH
	ld b, SCREEN_HEIGHT
.row
	push bc
.column
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .column
	ld bc, BG_MAP_WIDTH - SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ld a, $0
	ldh [rVBK], a
	ret

LoadGraphics:
	call LoadTileset
	call LoadTilesetGFX
	xor a
	ldh [hMapAnims], a
	xor a
	ldh [hTileAnimFrame], a
	farcall RefreshSprites
	call LoadFontsExtra
	farcall LoadOverworldFont
	ret

LoadMapPalettes:
	ld b, SCGB_MAPPALS
	jp GetSGBLayout

RefreshMapSprites:
	call ClearSprites
	farcall ReturnFromMapSetupScript
	call GetMovementPermissions
	farcall RefreshPlayerSprite
	farcall CheckReplaceKrisSprite
	ld hl, wPlayerSpriteSetupFlags
	bit PLAYERSPRITESETUP_SKIP_RELOAD_GFX_F, [hl]
	jr nz, .skip
	ld hl, wVramState
	set 0, [hl]
	call SafeUpdateSprites
.skip
	ld a, [wPlayerSpriteSetupFlags]
	and %00011100
	ld [wPlayerSpriteSetupFlags], a
	ret

CheckMovingOffEdgeOfMap::
	ld a, [wPlayerStepDirection]
	cp STANDING
	ret z
	and a ; DOWN
	jr z, .down
	cp UP
	jr z, .up
	cp LEFT
	jr z, .left
	cp RIGHT
	jr z, .right
	and a
	ret

.down
	ld a, [wPlayerStandingMapY]
	sub 4
	ld b, a
	ld a, [wMapHeight]
	add a
	cp b
	jr z, .ok
	and a
	ret

.up
	ld a, [wPlayerStandingMapY]
	sub 4
	cp -1
	jr z, .ok
	and a
	ret

.left
	ld a, [wPlayerStandingMapX]
	sub 4
	cp -1
	jr z, .ok
	and a
	ret

.right
	ld a, [wPlayerStandingMapX]
	sub 4
	ld b, a
	ld a, [wMapWidth]
	add a
	cp b
	jr z, .ok
	and a
	ret

.ok
	scf
	ret

GetCoordOfUpperLeftCorner::
	ld hl, wOverworldMapBlocks
	ld a, [wXCoord]
	bit 0, a
	jr nz, .increment_then_halve1
	srl a
	add $1
	jr .resume

.increment_then_halve1
	add $1
	srl a

.resume
	ld c, a
	ld b, $0
	add hl, bc
	ld a, [wMapWidth]
	add $6
	ld c, a
	ld b, $0
	ld a, [wYCoord]
	bit 0, a
	jr nz, .increment_then_halve2
	srl a
	add $1
	jr .resume2

.increment_then_halve2
	add $1
	srl a

.resume2
	call AddNTimes
	ld a, l
	ld [wOverworldMapAnchor], a
	ld a, h
	ld [wOverworldMapAnchor + 1], a
	ld a, [wYCoord]
	and $1
	ld [wMetatileStandingY], a
	ld a, [wXCoord]
	and $1
	ld [wMetatileStandingX], a
	ret
	
INCLUDE "data/maps/dual_connections.asm"
