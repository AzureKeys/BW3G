SkipEvo::
	cp EVOLVE_TYPES + 1
	ret nc
	push bc
	push hl
	ld hl, EvoTypeSizes
	ld b, 0
	ld c, a
	dec bc
	add hl, bc
	ld a, BANK(EvoTypeSizes)
	call GetFarByte
	ld b, 0
	ld c, a
	pop hl
	add hl, bc
	pop bc
	scf
	ret