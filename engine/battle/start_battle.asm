ShowLinkBattleParticipants:
; If we're not in a communications room,
; we don't need to be here.
	ld a, [wLinkMode]
	and a
	ret z

	farcall _ShowLinkBattleParticipants
	ld c, 150
	call DelayFrames
	call ClearTileMap
	call ClearSprites
	ret

FindFirstAliveMonAndStartBattle:
	xor a
	ldh [hMapAnims], a
	call DelayFrame
	ld b, PARTY_LENGTH
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH - 1

.loop
	ld a, [hli]
	or [hl]
	jr nz, .okay
	add hl, de
	dec b
	jr nz, .loop

.okay
	ld de, MON_LEVEL - MON_HP
	add hl, de
	ld a, [hl]
	ld [wBattleMonLevel], a
	predef DoBattleTransition
	farcall _LoadBattleFontsHPBar
	ld a, 1
	ldh [hBGMapMode], a
	call ClearSprites
	call ClearTileMap
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a
	ldh [rWY], a
	ldh [hMapAnims], a
	ret

PlayBattleMusic:
	push hl
	push de
	push bc

	xor a
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	call MaxVolume

	ld a, [wBattleType]
	cp BATTLETYPE_SUICUNE
	ld de, MUSIC_GHETSIS_BATTLE
	jp z, .done
	cp BATTLETYPE_ROAMING
	jp z, .done

	; Are we fighting a trainer?
	ld a, [wOtherTrainerClass]
	and a
	jr nz, .trainermusic

	ld de, MUSIC_WILD_BATTLE
	ld a, [wTimeOfDay]
	cp NITE_F
	jp nz, .done
	ld de, MUSIC_WILD_BATTLE_NIGHT
	jr .done

.trainermusic
	ld de, MUSIC_CYNTHIA_BATTLE
	cp CYNTHIA
	jr z, .done
	
	ld de, MUSIC_CHAMPION_BATTLE
	cp JUNIPER
	jr z, .done
	cp IRIS
	jr z, .done
	cp ALDER
	jr z, .done
	
	ld de, MUSIC_ELITE_FOUR
	cp GRIMSLEY
	jr z, .done
	cp MARSHAL
	jr z, .done
	cp ELESA
	jr z, .done
	cp COLRESS
	jr z, .done
	cp CAITLIN
	jr z, .done

	ld de, MUSIC_PLASMA_BATTLE
	cp GRUNTM
	jr z, .done
	cp GRUNTF
	jr z, .done
	cp GIALLO
	jr z, .done
	cp BRONIUS
	jr z, .done
	cp RYOKU
	jr z, .done
	cp GORM
	jr z, .done
	cp ZINZOLIN
	jr z, .done
	cp INFER_SAGE
	jr z, .done
	
	ld de, MUSIC_GHETSIS_BATTLE
	cp GENESIS
	jr z, .done

	; IsGymLeader also counts CHAMPION, RED, and the Kanto gym leaders
	; but they have been taken care of before this
	ld de, MUSIC_GYM_LEADER_BATTLE
	farcall IsGymLeader
	jr c, .done

	ld de, MUSIC_RIVAL_BATTLE
	ld a, [wOtherTrainerClass]
	cp INFER
	jr z, .done
	cp INFER2
	jr z, .done

	ld de, MUSIC_TRAINER_BATTLE

.done
	call PlayMusic

	pop bc
	pop de
	pop hl
	ret

ClearBattleRAM:
	xor a
	ld [wBattlePlayerAction], a
	ld [wBattleResult], a

	ld hl, wPartyMenuCursor
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld [wMenuScrollPosition], a
	ld [wCriticalHit], a
	ld [wBattleMonSpecies], a
	ld [wBattleParticipantsNotFainted], a
	ld [wCurBattleMon], a
	ld [wForcedSwitch], a
	ld [wTimeOfDayPal], a
	ld [wPlayerTurnsTaken], a
	ld [wEnemyTurnsTaken], a
	ld [wEvolvableFlags], a

	ld hl, wPlayerHPPal
	ld [hli], a
	ld [hl], a

	ld hl, wBattleMonDVs
	ld [hli], a
	ld [hl], a

	ld hl, wEnemyMonDVs
	ld [hli], a
	ld [hl], a

; Clear the entire BattleMons area
	ld hl, wBattle
	ld bc, wBattleEnd - wBattle
	xor a
	call ByteFill

	callfar ResetEnemyStatLevels

	call ClearWindowData

	ld hl, hBGMapAddress
	xor a ; LOW(vBGMap0)
	ld [hli], a
	ld [hl], HIGH(vBGMap0)
	ret
