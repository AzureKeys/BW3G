Special_HiddenPowerGuru:
	farcall SelectMonFromParty
	jr c, .cancel
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	call CopyPokemonName_Buffer1_Buffer3
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1DVs
	call GetPartyLocation
	;farcall GetHiddenPowerType
	
		; Def & 3
	ld a, [hl]
	and %0011
	ld b, a

	; + (Atk & 3) << 2
	ld a, [hl]
	and %0011 << 4
	swap a
	add a
	add a
	or b

; Skip Normal
	inc a

; Skip Bird
	cp BIRD
	jr c, .gottype
	inc a

; Skip unused types
	cp UNUSED_TYPES
	jr c, .gottype
	add UNUSED_TYPES_END - UNUSED_TYPES

.gottype
	ld [wNamedObjectIndexBuffer], a
	farcall GetTypeName
	ld a, 2
.done
	ld [wScriptVar], a
	ret

.cancel
	xor a
	jr .done

.egg
	ld a, 1
	jr .done