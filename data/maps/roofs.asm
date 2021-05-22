; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_HUMILAU   ; 1
	const ROOF_LENTIMAS  ; 2
	const ROOF_ACCUMULA  ; 3
	const ROOF_STRIATON  ; 4
	const ROOF_NIMBASA   ; 5
	const ROOF_FLOCCESY  ; 6

MapGroupRoofs:
; entries correspond to map groups
; values are indexes for Roofs (see below)
	db -1             ;  0
	db -1             ; Dungeons
	db -1             ; CableClub
	db ROOF_HUMILAU   ; Humilau
	db ROOF_HUMILAU   ; Lacunosa
	db ROOF_HUMILAU   ; Undella
	db ROOF_LENTIMAS  ; Lentimas
	db ROOF_NIMBASA   ; Nimbasa
	db ROOF_HUMILAU   ; Desert
	db ROOF_HUMILAU   ; Castelia
	db ROOF_STRIATON  ; Aspertia
	db ROOF_FLOCCESY  ; Floccesy
	db ROOF_HUMILAU   ; Virbank
	db ROOF_HUMILAU   ; Nacrene
	db ROOF_STRIATON  ; Striaton
	db ROOF_ACCUMULA  ; Accumula
	db ROOF_HUMILAU   ; P2
	db ROOF_HUMILAU   ; PWT
	db ROOF_HUMILAU   ; Driftveil
	db ROOF_HUMILAU   ; Mistralton
	db ROOF_HUMILAU   ; Opelucid
	db ROOF_HUMILAU   ; Icirrus
	db ROOF_HUMILAU   ; PkmnLeague

Roofs:
; entries correspond to ROOF_* constants
INCBIN "gfx/tilesets/roofs/humilau.2bpp"
INCBIN "gfx/tilesets/roofs/lentimas.2bpp"
INCBIN "gfx/tilesets/roofs/accumula.2bpp"
INCBIN "gfx/tilesets/roofs/striaton.2bpp"
INCBIN "gfx/tilesets/roofs/nimbasa.2bpp"
INCBIN "gfx/tilesets/roofs/floccesy.2bpp"
