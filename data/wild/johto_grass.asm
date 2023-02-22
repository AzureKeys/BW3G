; Johto Pokémon in grass

JohtoGrassWildMons:

;Percentages:
	;20%
	;15%
	;15%
	;15%
	;10%
	;10%
	;5%
	;5%
	;4%
	;1%

	map_id R_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, PATRAT
	db 2, PIDOVE
	db 2, PURRLOIN
	db 2, AZURILL
	db 2, IGGLYBUFF
	db 3, PIDOVE
	db 3, PURRLOIN
	db 3, PATRAT
	db 3, IGGLYBUFF
	db 3, AZURILL
	; day
	db 2, PATRAT
	db 2, PIDOVE
	db 2, PURRLOIN
	db 2, AZURILL
	db 2, IGGLYBUFF
	db 3, PIDOVE
	db 3, PURRLOIN
	db 3, PATRAT
	db 3, IGGLYBUFF
	db 3, AZURILL
	; nite
	db 2, PATRAT
	db 2, PIDOVE
	db 2, PURRLOIN
	db 2, AZURILL
	db 2, IGGLYBUFF
	db 3, PIDOVE
	db 3, PURRLOIN
	db 3, PATRAT
	db 3, IGGLYBUFF
	db 3, AZURILL
	
	map_id GIANT_CHASM_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 2, ZUBAT
	db 2, WOOBAT
	db 3, WOOBAT
	db 2, ROGGENROLA
	db 3, ZUBAT
	db 3, ROGGENROLA
	db 2, MUNNA
	db 3, CLEFFA
	db 3, MUNNA
	db 4, CLEFFA
	; day
	db 2, ZUBAT
	db 2, WOOBAT
	db 3, WOOBAT
	db 2, ROGGENROLA
	db 3, ZUBAT
	db 3, ROGGENROLA
	db 2, MUNNA
	db 3, CLEFFA
	db 3, MUNNA
	db 4, CLEFFA
	; nite
	db 2, ZUBAT
	db 2, WOOBAT
	db 3, WOOBAT
	db 2, ROGGENROLA
	db 3, ZUBAT
	db 3, ROGGENROLA
	db 2, MUNNA
	db 3, CLEFFA
	db 3, MUNNA
	db 4, CLEFFA

	map_id R_12
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, LILLIPUP
	db 2, PIDOVE
	db 2, PURRLOIN
	db 3, BUDEW
	db 2, IGGLYBUFF
	db 3, SHROOMISH
	db 3, PIDOVE
	db 3, PURRLOIN
	db 2, RALTS
	db 4, RALTS
	; day
	db 3, LILLIPUP
	db 2, PIDOVE
	db 2, PURRLOIN
	db 3, BUDEW
	db 2, IGGLYBUFF
	db 3, SHROOMISH
	db 3, PIDOVE
	db 3, PURRLOIN
	db 2, RALTS
	db 4, RALTS
	; nite
	db 3, LILLIPUP
	db 2, PIDOVE
	db 2, PURRLOIN
	db 3, BUDEW
	db 2, IGGLYBUFF
	db 3, SHROOMISH
	db 3, PIDOVE
	db 3, PURRLOIN
	db 2, RALTS
	db 4, RALTS

	map_id R_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, PATRAT
	db 3, SEWADDLE
	db 3, VENIPEDE
	db 4, LILLIPUP
	db 4, BUDEW
	db 4, SHROOMISH
	db 3, AZURILL
	db 3, MAREEP
	db 4, AZURILL
	db 5, MAREEP
	; day
	db 3, PATRAT
	db 3, SEWADDLE
	db 3, VENIPEDE
	db 4, LILLIPUP
	db 4, BUDEW
	db 4, SHROOMISH
	db 3, AZURILL
	db 3, MAREEP
	db 4, AZURILL
	db 5, MAREEP
	; nite
	db 3, PATRAT
	db 3, SEWADDLE
	db 3, VENIPEDE
	db 4, LILLIPUP
	db 4, BUDEW
	db 4, SHROOMISH
	db 3, AZURILL
	db 3, MAREEP
	db 4, AZURILL
	db 5, MAREEP

	map_id R_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 4, MAREEP
	db 5, SEWADDLE
	db 5, VENIPEDE
	db 5, PATRAT
	db 4, BLITZLE
	db 5, SNUBBULL
	db 4, RALTS
	db 5, SHROOMISH
	db 5, RALTS
	db 7, SHROOMISH
	; day
	db 4, MAREEP
	db 5, SEWADDLE
	db 5, VENIPEDE
	db 5, PATRAT
	db 4, BLITZLE
	db 5, SNUBBULL
	db 4, RALTS
	db 5, SHROOMISH
	db 5, RALTS
	db 7, SHROOMISH
	; nite
	db 4, MAREEP
	db 5, SEWADDLE
	db 5, VENIPEDE
	db 5, PATRAT
	db 4, BLITZLE
	db 5, SNUBBULL
	db 4, RALTS
	db 5, SHROOMISH
	db 5, RALTS
	db 7, SHROOMISH

	map_id REVERSAL_MOUNTAIN_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 7, ROGGENROLA
	db 7, ZUBAT
	db 6, WOOBAT
	db 7, TIMBURR
	db 6, ARON
	db 7, ONIX
	db 8, NOSEPASS
	db 6, NOSEPASS
	db 6, MAWILE
	db 8, MAWILE
	; day
	db 7, ROGGENROLA
	db 7, ZUBAT
	db 6, WOOBAT
	db 7, TIMBURR
	db 6, ARON
	db 7, ONIX
	db 8, NOSEPASS
	db 6, NOSEPASS
	db 6, MAWILE
	db 8, MAWILE
	; nite
	db 7, ROGGENROLA
	db 7, ZUBAT
	db 6, WOOBAT
	db 7, TIMBURR
	db 6, ARON
	db 7, ONIX
	db 8, NOSEPASS
	db 6, NOSEPASS
	db 6, MAWILE
	db 8, MAWILE

	map_id REVERSAL_MOUNTAIN_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 8, ROGGENROLA
	db 7, ZUBAT
	db 8, WOOBAT
	db 8, TIMBURR
	db 7, ARON
	db 8, ONIX
	db 7, MAWILE
	db 8, MAWILE
	db 8, NOSEPASS
	db 7, NOSEPASS
	; day
	db 8, ROGGENROLA
	db 7, ZUBAT
	db 8, WOOBAT
	db 8, TIMBURR
	db 7, ARON
	db 8, ONIX
	db 7, MAWILE
	db 8, MAWILE
	db 8, NOSEPASS
	db 7, NOSEPASS
	; nite
	db 8, ROGGENROLA
	db 7, ZUBAT
	db 8, WOOBAT
	db 8, TIMBURR
	db 7, ARON
	db 8, ONIX
	db 7, MAWILE
	db 8, MAWILE
	db 8, NOSEPASS
	db 7, NOSEPASS

	map_id LENTIMAS_OUTSKIRTS
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 8, DRILBUR
	db 7, BLITZLE
	db 8, PURRLOIN
	db 8, TIMBURR
	db 8, DRIFLOON
	db 7, HOUNDOUR
	db 9, TIMBURR
	db 9, BLITZLE
	db 9, DRIFLOON
	db 9, HOUNDOUR
	; day
	db 8, DRILBUR
	db 7, BLITZLE
	db 8, PURRLOIN
	db 8, TIMBURR
	db 8, DRIFLOON
	db 7, HOUNDOUR
	db 9, TIMBURR
	db 9, BLITZLE
	db 9, DRIFLOON
	db 9, HOUNDOUR
	; nite
	db 8, DRILBUR
	db 7, BLITZLE
	db 8, PURRLOIN
	db 8, TIMBURR
	db 8, DRIFLOON
	db 7, HOUNDOUR
	db 9, TIMBURR
	db 9, BLITZLE
	db 9, DRIFLOON
	db 9, HOUNDOUR

	map_id STRANGE_HOUSE_1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; morn
	db 8, YAMASK
	db 8, GASTLY
	db 8, DRIFLOON
	db 9, YAMASK
	db 9, GASTLY
	db 9, DRIFLOON
	db 10, GASTLY
	db 11, YAMASK
	db 10, DRIFLOON
	db 11, GASTLY
	; day
	db 8, YAMASK
	db 8, GASTLY
	db 8, DRIFLOON
	db 9, YAMASK
	db 9, GASTLY
	db 9, DRIFLOON
	db 10, GASTLY
	db 11, YAMASK
	db 10, DRIFLOON
	db 11, GASTLY
	; nite
	db 8, YAMASK
	db 8, GASTLY
	db 8, DRIFLOON
	db 9, YAMASK
	db 9, GASTLY
	db 9, DRIFLOON
	db 10, GASTLY
	db 11, YAMASK
	db 10, DRIFLOON
	db 11, GASTLY

	map_id STRANGE_HOUSE_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 8, YAMASK
	db 8, GASTLY
	db 8, DRIFLOON
	db 9, YAMASK
	db 9, GASTLY
	db 9, DRIFLOON
	db 10, GASTLY
	db 11, YAMASK
	db 10, DRIFLOON
	db 11, GASTLY
	; day
	db 8, YAMASK
	db 8, GASTLY
	db 8, DRIFLOON
	db 9, YAMASK
	db 9, GASTLY
	db 9, DRIFLOON
	db 10, GASTLY
	db 11, YAMASK
	db 10, DRIFLOON
	db 11, GASTLY
	; nite
	db 8, YAMASK
	db 8, GASTLY
	db 8, DRIFLOON
	db 9, YAMASK
	db 9, GASTLY
	db 9, DRIFLOON
	db 10, GASTLY
	db 11, YAMASK
	db 10, DRIFLOON
	db 11, GASTLY

	map_id LOSTLORN_FOREST
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 10, COTTONEE
	db 10, SHROOMISH
	db 10, PETILIL
	db 11, SEWADDLE
	db 11, VENIPEDE
	db 11, YANMA
	db 11, VENIPEDE
	db 10, PETILIL
	db 9, ZORUA
	db 12, ZORUA
	; day
	db 10, COTTONEE
	db 10, SHROOMISH
	db 10, PETILIL
	db 11, SEWADDLE
	db 11, VENIPEDE
	db 11, YANMA
	db 11, VENIPEDE
	db 10, PETILIL
	db 9, ZORUA
	db 12, ZORUA
	; nite
	db 10, COTTONEE
	db 10, SHROOMISH
	db 10, PETILIL
	db 11, SEWADDLE
	db 11, VENIPEDE
	db 11, YANMA
	db 11, VENIPEDE
	db 10, PETILIL
	db 9, ZORUA
	db 12, ZORUA

	map_id R_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, SNUBBULL
	db 12, SOLOSIS
	db 12, GOTHITA
	db 12, DEERLING
	db 13, DRILBUR
	db 11, TRUBBISH
	db 10, MAGNEMITE
	db 13, TRUBBISH
	db 12, MAGNEMITE
	db 14, MAGNEMITE
	; day
	db 13, SNUBBULL
	db 12, SOLOSIS
	db 12, GOTHITA
	db 12, DEERLING
	db 13, DRILBUR
	db 11, TRUBBISH
	db 10, MAGNEMITE
	db 13, TRUBBISH
	db 12, MAGNEMITE
	db 14, MAGNEMITE
	; nite
	db 13, SNUBBULL
	db 12, SOLOSIS
	db 12, GOTHITA
	db 12, DEERLING
	db 13, DRILBUR
	db 11, TRUBBISH
	db 10, MAGNEMITE
	db 13, TRUBBISH
	db 12, MAGNEMITE
	db 14, MAGNEMITE

	map_id R_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, DEERLING
	db 13, GOTHITA
	db 13, SOLOSIS
	db 12, SHELMET
	db 12, KARRABLAST
	db 13, TIMBURR
	db 12, KARRABLAST
	db 12, SNUBBULL
	db 14, SNUBBULL
	db 15, SNUBBULL
	; day
	db 14, DEERLING
	db 13, GOTHITA
	db 13, SOLOSIS
	db 12, SHELMET
	db 12, KARRABLAST
	db 13, TIMBURR
	db 12, KARRABLAST
	db 12, SNUBBULL
	db 14, SNUBBULL
	db 15, SNUBBULL
	; nite
	db 14, DEERLING
	db 13, GOTHITA
	db 13, SOLOSIS
	db 12, SHELMET
	db 12, KARRABLAST
	db 13, TIMBURR
	db 12, KARRABLAST
	db 12, SNUBBULL
	db 14, SNUBBULL
	db 15, SNUBBULL

	map_id R_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, DARUMAKA
	db 13, ELEKID
	db 13, MAGBY
	db 14, SANDILE
	db 13, DRILBUR
	db 13, NUMEL
	db 14, ELEKID
	db 14, MAGBY
	db 14, DRILBUR
	db 15, NUMEL
	; day
	db 14, DARUMAKA
	db 13, ELEKID
	db 13, MAGBY
	db 14, SANDILE
	db 13, DRILBUR
	db 13, NUMEL
	db 14, ELEKID
	db 14, MAGBY
	db 14, DRILBUR
	db 15, NUMEL
	; nite
	db 14, DARUMAKA
	db 13, ELEKID
	db 13, MAGBY
	db 14, SANDILE
	db 13, DRILBUR
	db 13, NUMEL
	db 14, ELEKID
	db 14, MAGBY
	db 14, DRILBUR
	db 15, NUMEL

	map_id DESERT_RESORT
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, SANDILE
	db 15, DARUMAKA
	db 14, TRAPINCH
	db 14, NUMEL
	db 14, MARACTUS
	db 15, GLIGAR
	db 16, MARACTUS
	db 15, TRAPINCH
	db 14, SIGILYPH
	db 16, SIGILYPH
	; day
	db 14, SANDILE
	db 15, DARUMAKA
	db 14, TRAPINCH
	db 14, NUMEL
	db 14, MARACTUS
	db 15, GLIGAR
	db 16, MARACTUS
	db 15, TRAPINCH
	db 14, SIGILYPH
	db 16, SIGILYPH
	; nite
	db 14, SANDILE
	db 15, DARUMAKA
	db 14, TRAPINCH
	db 14, NUMEL
	db 14, MARACTUS
	db 15, GLIGAR
	db 16, MARACTUS
	db 15, TRAPINCH
	db 14, SIGILYPH
	db 16, SIGILYPH

	map_id RELIC_CASTLE_1F
	db 5 percent, 5 percent, 5 percent ; encounter rates: morn/day/nite
	; morn
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 14, DWEBBLE
	db 16, GASTLY
	db 15, GLIGAR
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, GLIGAR
	; day
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 14, DWEBBLE
	db 16, GASTLY
	db 15, GLIGAR
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, GLIGAR
	; nite
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 14, DWEBBLE
	db 16, GASTLY
	db 15, GLIGAR
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, GLIGAR

	map_id RELIC_CASTLE_B1F
	db 5 percent, 5 percent, 5 percent ; encounter rates: morn/day/nite
	; morn
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 14, DWEBBLE
	db 16, GASTLY
	db 15, GLIGAR
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, GLIGAR
	; day
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 14, DWEBBLE
	db 16, GASTLY
	db 15, GLIGAR
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, GLIGAR
	; nite
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 14, DWEBBLE
	db 16, GASTLY
	db 15, GLIGAR
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, GLIGAR

	map_id RELIC_CASTLE_B2F
	db 5 percent, 5 percent, 5 percent ; encounter rates: morn/day/nite
	; morn
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 16, GLIGAR
	db 16, GASTLY
	db 15, DWEBBLE
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, SIGILYPH
	; day
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 16, GLIGAR
	db 16, GASTLY
	db 15, DWEBBLE
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, SIGILYPH
	; nite
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 16, GLIGAR
	db 16, GASTLY
	db 15, DWEBBLE
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, SIGILYPH

	map_id RELIC_CASTLE_B3F
	db 5 percent, 5 percent, 5 percent ; encounter rates: morn/day/nite
	; morn
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 16, GLIGAR
	db 16, GASTLY
	db 15, DWEBBLE
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, SIGILYPH
	; day
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 16, GLIGAR
	db 16, GASTLY
	db 15, DWEBBLE
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, SIGILYPH
	; nite
	db 15, BALTOY
	db 16, YAMASK
	db 15, TRAPINCH
	db 16, GLIGAR
	db 16, GASTLY
	db 15, DWEBBLE
	db 14, SIGILYPH
	db 16, DWEBBLE
	db 16, SIGILYPH
	db 18, SIGILYPH

	map_id R_19
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 18, MARILL
	db 19, DUCKLETT
	db 18, MEDITITE
	db 18, VULPIX
	db 17, SWABLU
	db 19, AUDINO
	db 20, EMOLGA
	db 19, MARILL
	db 20, DUCKLETT
	db 20, VULPIX
	; day
	db 18, MARILL
	db 19, DUCKLETT
	db 18, MEDITITE
	db 18, VULPIX
	db 17, SWABLU
	db 19, AUDINO
	db 20, EMOLGA
	db 19, MARILL
	db 20, DUCKLETT
	db 20, VULPIX
	; nite
	db 18, MARILL
	db 19, DUCKLETT
	db 18, MEDITITE
	db 18, VULPIX
	db 17, SWABLU
	db 19, AUDINO
	db 20, EMOLGA
	db 19, MARILL
	db 20, DUCKLETT
	db 20, VULPIX

	map_id R_20
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 19, DUCKLETT
	db 20, MEDITITE
	db 18, SWABLU
	db 18, VULPIX
	db 18, CROAGUNK
	db 19, EMOLGA
	db 19, JOLTIK
	db 18, SKORUPI
	db 20, JOLTIK
	db 20, SKORUPI
	; day
	db 19, DUCKLETT
	db 20, MEDITITE
	db 18, SWABLU
	db 18, VULPIX
	db 18, CROAGUNK
	db 19, EMOLGA
	db 19, JOLTIK
	db 18, SKORUPI
	db 20, JOLTIK
	db 20, SKORUPI
	; nite
	db 19, DUCKLETT
	db 20, MEDITITE
	db 18, SWABLU
	db 18, VULPIX
	db 18, CROAGUNK
	db 19, EMOLGA
	db 19, JOLTIK
	db 18, SKORUPI
	db 20, JOLTIK
	db 20, SKORUPI

	map_id FLOCCESY_RANCH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 19, EEVEE
	db 20, MARILL
	db 18, VULPIX
	db 18, SWABLU
	db 19, MAGBY
	db 19, ELEKID
	db 19, AUDINO
	db 18, FLAAFFY
	db 20, AUDINO
	db 20, FLAAFFY
	; day
	db 19, EEVEE
	db 20, MARILL
	db 18, VULPIX
	db 18, SWABLU
	db 19, MAGBY
	db 19, ELEKID
	db 19, AUDINO
	db 18, FLAAFFY
	db 20, AUDINO
	db 20, FLAAFFY
	; nite
	db 19, EEVEE
	db 20, MARILL
	db 18, VULPIX
	db 18, SWABLU
	db 19, MAGBY
	db 19, ELEKID
	db 19, AUDINO
	db 18, FLAAFFY
	db 20, AUDINO
	db 20, FLAAFFY

	map_id VIRBANK_COMPLEX_OUTSIDE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, KOFFING
	db 22, MAGNEMITE
	db 23, CROAGUNK
	db 23, SCRAGGY
	db 22, JOLTIK
	db 24, SKORUPI
	db 25, HEATMOR
	db 25, DURANT
	db 24, JOLTIK
	db 26, SKORUPI
	; day
	db 23, KOFFING
	db 22, MAGNEMITE
	db 23, CROAGUNK
	db 23, SCRAGGY
	db 22, JOLTIK
	db 24, SKORUPI
	db 25, HEATMOR
	db 25, DURANT
	db 24, JOLTIK
	db 26, SKORUPI
	; nite
	db 23, KOFFING
	db 22, MAGNEMITE
	db 23, CROAGUNK
	db 23, SCRAGGY
	db 22, JOLTIK
	db 24, SKORUPI
	db 25, HEATMOR
	db 25, DURANT
	db 24, JOLTIK
	db 26, SKORUPI

	map_id PINWHEEL_FOREST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, FOONGUS
	db 25, PETILIL
	db 25, COTTONEE
	db 26, JOLTIK
	db 27, ROSELIA
	db 26, YANMA
	db 27, HERACROSS
	db 27, PINSIR
	db 28, YANMA
	db 29, ROSELIA
	; day
	db 26, FOONGUS
	db 25, PETILIL
	db 25, COTTONEE
	db 26, JOLTIK
	db 27, ROSELIA
	db 26, YANMA
	db 27, HERACROSS
	db 27, PINSIR
	db 28, YANMA
	db 29, ROSELIA
	; nite
	db 26, FOONGUS
	db 25, PETILIL
	db 25, COTTONEE
	db 26, JOLTIK
	db 27, ROSELIA
	db 26, YANMA
	db 27, HERACROSS
	db 27, PINSIR
	db 28, YANMA
	db 29, ROSELIA

	map_id NACRENE_OUTSKIRT
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, TIMBURR
	db 27, THROH
	db 27, SAWK
	db 26, CROAGUNK
	db 26, PALPITOAD
	db 25, YANMA
	db 28, CROAGUNK
	db 28, YANMA
	db 28, GURDURR
	db 29, GURDURR
	; day
	db 26, TIMBURR
	db 27, THROH
	db 27, SAWK
	db 26, CROAGUNK
	db 26, PALPITOAD
	db 25, YANMA
	db 28, CROAGUNK
	db 28, YANMA
	db 28, GURDURR
	db 29, GURDURR
	; nite
	db 26, TIMBURR
	db 27, THROH
	db 27, SAWK
	db 26, CROAGUNK
	db 26, PALPITOAD
	db 25, YANMA
	db 28, CROAGUNK
	db 28, YANMA
	db 28, GURDURR
	db 29, GURDURR

	map_id NACRENE_OUTSKIRT_EAST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, TIMBURR
	db 27, THROH
	db 27, SAWK
	db 26, CROAGUNK
	db 26, PALPITOAD
	db 25, YANMA
	db 28, CROAGUNK
	db 28, YANMA
	db 28, GURDURR
	db 29, GURDURR
	; day
	db 26, TIMBURR
	db 27, THROH
	db 27, SAWK
	db 26, CROAGUNK
	db 26, PALPITOAD
	db 25, YANMA
	db 28, CROAGUNK
	db 28, YANMA
	db 28, GURDURR
	db 29, GURDURR
	; nite
	db 26, TIMBURR
	db 27, THROH
	db 27, SAWK
	db 26, CROAGUNK
	db 26, PALPITOAD
	db 25, YANMA
	db 28, CROAGUNK
	db 28, YANMA
	db 28, GURDURR
	db 29, GURDURR

	map_id R_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, FOONGUS
	db 26, FERROSEED
	db 25, JIGGLYPUFF
	db 25, TRANQUILL
	db 28, TRANQUILL
	db 27, CUBCHOO
	db 26, SAWK
	db 26, THROH
	db 28, FERROSEED
	db 30, JIGGLYPUFF
	; day
	db 26, FOONGUS
	db 26, FERROSEED
	db 25, JIGGLYPUFF
	db 25, TRANQUILL
	db 28, TRANQUILL
	db 27, CUBCHOO
	db 26, SAWK
	db 26, THROH
	db 28, FERROSEED
	db 30, JIGGLYPUFF
	; nite
	db 26, FOONGUS
	db 26, FERROSEED
	db 25, JIGGLYPUFF
	db 25, TRANQUILL
	db 28, TRANQUILL
	db 27, CUBCHOO
	db 26, SAWK
	db 26, THROH
	db 28, FERROSEED
	db 30, JIGGLYPUFF

	map_id WELLSPRING_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 27, WOOBAT
	db 27, ARON
	db 26, CUBCHOO
	db 28, MUNNA
	db 25, SWINUB
	db 26, VANILLITE
	db 29, ARON
	db 28, VANILLITE
	db 27, GOLBAT
	db 29, SNEASEL
	; day
	db 27, WOOBAT
	db 27, ARON
	db 26, CUBCHOO
	db 28, MUNNA
	db 25, SWINUB
	db 26, VANILLITE
	db 29, ARON
	db 28, VANILLITE
	db 27, GOLBAT
	db 29, SNEASEL
	; nite
	db 27, WOOBAT
	db 27, ARON
	db 26, CUBCHOO
	db 28, MUNNA
	db 25, SWINUB
	db 26, VANILLITE
	db 29, ARON
	db 28, VANILLITE
	db 27, GOLBAT
	db 29, SNEASEL

	map_id WELLSPRING_CAVE_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 28, MUNNA
	db 28, ARON
	db 27, VANILLITE
	db 27, CUBCHOO
	db 26, SWINUB
	db 30, SNEASEL
	db 30, SWINUB
	db 28, GOLBAT
	db 30, ARON
	db 30, GOLBAT
	; day
	db 28, MUNNA
	db 28, ARON
	db 27, VANILLITE
	db 27, CUBCHOO
	db 26, SWINUB
	db 30, SNEASEL
	db 30, SWINUB
	db 28, GOLBAT
	db 30, ARON
	db 30, GOLBAT
	; nite
	db 28, MUNNA
	db 28, ARON
	db 27, VANILLITE
	db 27, CUBCHOO
	db 26, SWINUB
	db 30, SNEASEL
	db 30, SWINUB
	db 28, GOLBAT
	db 30, ARON
	db 30, GOLBAT
	
	map_id DREAMYARD
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 29, JIGGLYPUFF
	db 28, LIEPARD
	db 28, WATCHOG
	db 29, MEDITITE
	db 27, MUNNA
	db 28, GOLBAT
	db 30, LIEPARD
	db 30, WATCHOG
	db 29, MUNNA
	db 31, MUSHARNA
	; day
	db 29, JIGGLYPUFF
	db 28, LIEPARD
	db 28, WATCHOG
	db 29, MEDITITE
	db 27, MUNNA
	db 28, GOLBAT
	db 30, LIEPARD
	db 30, WATCHOG
	db 29, MUNNA
	db 31, MUSHARNA
	; nite
	db 29, JIGGLYPUFF
	db 28, LIEPARD
	db 28, WATCHOG
	db 29, MEDITITE
	db 27, MUNNA
	db 28, GOLBAT
	db 30, LIEPARD
	db 30, WATCHOG
	db 29, MUNNA
	db 31, MUSHARNA
	
	map_id DREAMYARD_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 29, WOOBAT
	db 28, MUNNA
	db 28, JIGGLYPUFF
	db 29, GOLBAT
	db 27, SKORUPI
	db 28, JOLTIK
	db 30, MUNNA
	db 30, JIGGLYPUFF
	db 29, SKORUPI
	db 32, MUSHARNA
	; day
	db 29, WOOBAT
	db 28, MUNNA
	db 28, JIGGLYPUFF
	db 29, GOLBAT
	db 27, SKORUPI
	db 28, JOLTIK
	db 30, MUNNA
	db 30, JIGGLYPUFF
	db 29, SKORUPI
	db 32, MUSHARNA
	; nite
	db 29, WOOBAT
	db 28, MUNNA
	db 28, JIGGLYPUFF
	db 29, GOLBAT
	db 27, SKORUPI
	db 28, JOLTIK
	db 30, MUNNA
	db 30, JIGGLYPUFF
	db 29, SKORUPI
	db 32, MUSHARNA
	
	map_id R_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, JIGGLYPUFF
	db 27, LIEPARD
	db 28, TRANQUILL
	db 27, FERROSEED
	db 27, THROH
	db 27, SAWK
	db 28, TROPIUS
	db 26, TROPIUS
	db 28, SKARMORY
	db 30, SKARMORY
	; day
	db 28, JIGGLYPUFF
	db 27, LIEPARD
	db 28, TRANQUILL
	db 27, FERROSEED
	db 27, THROH
	db 27, SAWK
	db 28, TROPIUS
	db 26, TROPIUS
	db 28, SKARMORY
	db 30, SKARMORY
	; nite
	db 28, JIGGLYPUFF
	db 27, LIEPARD
	db 28, TRANQUILL
	db 27, FERROSEED
	db 27, THROH
	db 27, SAWK
	db 28, TROPIUS
	db 26, TROPIUS
	db 28, SKARMORY
	db 30, SKARMORY
	
	map_id R_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, WATCHOG
	db 27, LIEPARD
	db 28, HERDIER
	db 27, TRANQUILL
	db 25, FERROSEED
	db 27, TROPIUS
	db 28, FERROSEED
	db 26, SKARMORY
	db 28, SKARMORY
	db 30, SKARMORY
	; day
	db 28, WATCHOG
	db 27, LIEPARD
	db 28, HERDIER
	db 27, TRANQUILL
	db 25, FERROSEED
	db 27, TROPIUS
	db 28, FERROSEED
	db 26, SKARMORY
	db 28, SKARMORY
	db 30, SKARMORY
	; nite
	db 28, WATCHOG
	db 27, LIEPARD
	db 28, HERDIER
	db 27, TRANQUILL
	db 25, FERROSEED
	db 27, TROPIUS
	db 28, FERROSEED
	db 26, SKARMORY
	db 28, SKARMORY
	db 30, SKARMORY
	
	map_id R_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 29, RUFFLET
	db 29, VULLABY
	db 29, FLAAFFY
	db 30, TROPIUS
	db 26, AXEW
	db 31, CUBCHOO
	db 29, VULLABY
	db 29, BOUFFALANT
	db 31, BOUFFALANT
	db 32, AXEW
	; day
	db 29, RUFFLET
	db 29, VULLABY
	db 29, FLAAFFY
	db 30, TROPIUS
	db 26, AXEW
	db 31, CUBCHOO
	db 29, VULLABY
	db 29, BOUFFALANT
	db 31, BOUFFALANT
	db 32, AXEW
	; nite
	db 29, RUFFLET
	db 29, VULLABY
	db 29, FLAAFFY
	db 30, TROPIUS
	db 26, AXEW
	db 31, CUBCHOO
	db 29, VULLABY
	db 29, BOUFFALANT
	db 31, BOUFFALANT
	db 32, AXEW
	
	map_id R_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 29, RUFFLET
	db 29, VULLABY
	db 29, FLAAFFY
	db 30, TROPIUS
	db 26, AXEW
	db 31, CUBCHOO
	db 29, VULLABY
	db 29, BOUFFALANT
	db 31, BOUFFALANT
	db 32, AXEW
	; day
	db 29, RUFFLET
	db 29, VULLABY
	db 29, FLAAFFY
	db 30, TROPIUS
	db 26, AXEW
	db 31, CUBCHOO
	db 29, VULLABY
	db 29, BOUFFALANT
	db 31, BOUFFALANT
	db 32, AXEW
	; nite
	db 29, RUFFLET
	db 29, VULLABY
	db 29, FLAAFFY
	db 30, TROPIUS
	db 26, AXEW
	db 31, CUBCHOO
	db 29, VULLABY
	db 29, BOUFFALANT
	db 31, BOUFFALANT
	db 32, AXEW
	
	map_id P2_LAB
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 28, KLINK
	db 28, MAGNEMITE
	db 28, KOFFING
	db 30, BELDUM
	db 30, KOFFING
	db 30, MAGNEMITE
	db 25, DITTO
	db 30, KLINK
	db 30, DITTO
	db 33, DITTO
	; day
	db 28, KLINK
	db 28, MAGNEMITE
	db 28, KOFFING
	db 30, BELDUM
	db 30, KOFFING
	db 30, MAGNEMITE
	db 25, DITTO
	db 30, KLINK
	db 30, DITTO
	db 33, DITTO
	; nite
	db 28, KLINK
	db 28, MAGNEMITE
	db 28, KOFFING
	db 30, BELDUM
	db 30, KOFFING
	db 30, MAGNEMITE
	db 25, DITTO
	db 30, KLINK
	db 30, DITTO
	db 33, DITTO
	
	map_id GIANT_CHASM_B1F
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 30, GOLBAT
	db 30, BOLDORE
	db 31, CLEFAIRY
	db 31, BOLDORE
	db 33, GOLBAT
	db 25, BELDUM
	db 27, SNEASEL
	db 29, BELDUM
	db 30, SNEASEL
	db 33, SNEASEL
	; day
	db 30, GOLBAT
	db 30, BOLDORE
	db 31, CLEFAIRY
	db 31, BOLDORE
	db 33, GOLBAT
	db 25, BELDUM
	db 27, SNEASEL
	db 29, BELDUM
	db 30, SNEASEL
	db 33, SNEASEL
	; nite
	db 30, GOLBAT
	db 30, BOLDORE
	db 31, CLEFAIRY
	db 31, BOLDORE
	db 33, GOLBAT
	db 25, BELDUM
	db 27, SNEASEL
	db 29, BELDUM
	db 30, SNEASEL
	db 33, SNEASEL
	
	map_id GIANT_CHASM_ROOMS
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 30, GOLBAT
	db 30, BOLDORE
	db 31, CLEFAIRY
	db 31, BOLDORE
	db 33, GOLBAT
	db 25, BELDUM
	db 27, SNEASEL
	db 29, BELDUM
	db 30, SNEASEL
	db 33, SNEASEL
	; day
	db 30, GOLBAT
	db 30, BOLDORE
	db 31, CLEFAIRY
	db 31, BOLDORE
	db 33, GOLBAT
	db 25, BELDUM
	db 27, SNEASEL
	db 29, BELDUM
	db 30, SNEASEL
	db 33, SNEASEL
	; nite
	db 30, GOLBAT
	db 30, BOLDORE
	db 31, CLEFAIRY
	db 31, BOLDORE
	db 33, GOLBAT
	db 25, BELDUM
	db 27, SNEASEL
	db 29, BELDUM
	db 30, SNEASEL
	db 33, SNEASEL
	
	map_id CASTELIA_SEWERS
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 30, TRUBBISH
	db 31, KOFFING
	db 30, SCRAGGY
	db 31, SKORUPI
	db 32, VANILLITE
	db 29, CUBCHOO
	db 29, GOLBAT
	db 31, GOLBAT
	db 34, KOFFING
	db 36, WEEZING
	; day
	db 30, TRUBBISH
	db 31, KOFFING
	db 30, SCRAGGY
	db 31, SKORUPI
	db 32, VANILLITE
	db 29, CUBCHOO
	db 29, GOLBAT
	db 31, GOLBAT
	db 34, KOFFING
	db 36, WEEZING
	; nite
	db 30, TRUBBISH
	db 31, KOFFING
	db 30, SCRAGGY
	db 31, SKORUPI
	db 32, VANILLITE
	db 29, CUBCHOO
	db 29, GOLBAT
	db 31, GOLBAT
	db 34, KOFFING
	db 36, WEEZING
	
	map_id CASTELIA_SEWERS_ROOMS
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 30, TRUBBISH
	db 31, KOFFING
	db 30, SCRAGGY
	db 31, SKORUPI
	db 32, VANILLITE
	db 29, CUBCHOO
	db 29, GOLBAT
	db 31, GOLBAT
	db 34, KOFFING
	db 36, WEEZING
	; day
	db 30, TRUBBISH
	db 31, KOFFING
	db 30, SCRAGGY
	db 31, SKORUPI
	db 32, VANILLITE
	db 29, CUBCHOO
	db 29, GOLBAT
	db 31, GOLBAT
	db 34, KOFFING
	db 36, WEEZING
	; nite
	db 30, TRUBBISH
	db 31, KOFFING
	db 30, SCRAGGY
	db 31, SKORUPI
	db 32, VANILLITE
	db 29, CUBCHOO
	db 29, GOLBAT
	db 31, GOLBAT
	db 34, KOFFING
	db 36, WEEZING
	
	map_id RELIC_PASSAGE_FRONT
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 33, ONIX
	db 32, GURDURR
	db 32, SWINUB
	db 32, BOLDORE
	db 33, GOLETT
	db 32, MAWILE
	db 36, GOLETT
	db 35, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; day
	db 33, ONIX
	db 32, GURDURR
	db 32, SWINUB
	db 32, BOLDORE
	db 33, GOLETT
	db 32, MAWILE
	db 36, GOLETT
	db 35, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; nite
	db 33, ONIX
	db 32, GURDURR
	db 32, SWINUB
	db 32, BOLDORE
	db 33, GOLETT
	db 32, MAWILE
	db 36, GOLETT
	db 35, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	
	map_id RELIC_PASSAGE_BACK
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 33, ONIX
	db 32, GURDURR
	db 32, SWINUB
	db 32, BOLDORE
	db 33, GOLETT
	db 32, MAWILE
	db 36, GOLETT
	db 35, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; day
	db 33, ONIX
	db 32, GURDURR
	db 32, SWINUB
	db 32, BOLDORE
	db 33, GOLETT
	db 32, MAWILE
	db 36, GOLETT
	db 35, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; nite
	db 33, ONIX
	db 32, GURDURR
	db 32, SWINUB
	db 32, BOLDORE
	db 33, GOLETT
	db 32, MAWILE
	db 36, GOLETT
	db 35, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR

	map_id RELIC_CASTLE_B4F
	db 5 percent, 5 percent, 5 percent ; encounter rates: morn/day/nite
	; morn
	db 33, YAMASK
	db 34, GLIGAR
	db 33, GOLETT
	db 32, DWEBBLE
	db 34, BALTOY
	db 33, BALTOY
	db 34, SIGILYPH
	db 33, TRAPINCH
	db 32, SIGILYPH
	db 36, SIGILYPH
	; day
	db 33, YAMASK
	db 34, GLIGAR
	db 33, GOLETT
	db 32, DWEBBLE
	db 34, BALTOY
	db 33, BALTOY
	db 34, SIGILYPH
	db 33, TRAPINCH
	db 32, SIGILYPH
	db 36, SIGILYPH
	; nite
	db 33, YAMASK
	db 34, GLIGAR
	db 33, GOLETT
	db 32, DWEBBLE
	db 34, BALTOY
	db 33, BALTOY
	db 34, SIGILYPH
	db 33, TRAPINCH
	db 32, SIGILYPH
	db 36, SIGILYPH
	
	map_id R_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 34, DEERLING
	db 32, JOLTIK
	db 34, KARRABLAST
	db 34, SHELMET
	db 32, FOONGUS
	db 33, FERROSEED
	db 35, FOONGUS
	db 35, FERROSEED
	db 31, KIRLIA
	db 33, KIRLIA
	; day
	db 34, DEERLING
	db 32, JOLTIK
	db 34, KARRABLAST
	db 34, SHELMET
	db 32, FOONGUS
	db 33, FERROSEED
	db 35, FOONGUS
	db 35, FERROSEED
	db 31, KIRLIA
	db 33, KIRLIA
	; nite
	db 34, DEERLING
	db 32, JOLTIK
	db 34, KARRABLAST
	db 34, SHELMET
	db 32, FOONGUS
	db 33, FERROSEED
	db 35, FOONGUS
	db 35, FERROSEED
	db 31, KIRLIA
	db 33, KIRLIA
	
	map_id MISTRALTON_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	; day
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	; nite
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	
	map_id MISTRALTON_CAVE_2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	; day
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	; nite
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	
	map_id MISTRALTON_CAVE_3F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	; day
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	; nite
	db 31, WOOBAT
	db 31, AXEW
	db 30, BOLDORE
	db 30, DRILBUR
	db 32, GOLBAT
	db 33, LAIRON
	db 33, BOLDORE
	db 33, DRILBUR
	db 35, AXEW
	db 35, EXCADRILL
	
	map_id CHARGESTONE_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 31, MAGNEMITE
	db 31, NOSEPASS
	db 32, KLINK
	db 30, TYNAMO
	db 32, BELDUM
	db 33, TYNAMO
	db 33, NOSEPASS
	db 33, STUNFISK
	db 34, LAIRON
	db 35, MAGNETON
	; day
	db 31, MAGNEMITE
	db 31, NOSEPASS
	db 32, KLINK
	db 30, TYNAMO
	db 32, BELDUM
	db 33, TYNAMO
	db 33, NOSEPASS
	db 33, STUNFISK
	db 34, LAIRON
	db 35, MAGNETON
	; nite
	db 31, MAGNEMITE
	db 31, NOSEPASS
	db 32, KLINK
	db 30, TYNAMO
	db 32, BELDUM
	db 33, TYNAMO
	db 33, NOSEPASS
	db 33, STUNFISK
	db 34, LAIRON
	db 35, MAGNETON
	
	map_id CHARGESTONE_CAVE_B1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 31, MAGNEMITE
	db 31, NOSEPASS
	db 32, KLINK
	db 20, TYNAMO
	db 32, BELDUM
	db 33, TYNAMO
	db 33, STUNFISK
	db 35, LAIRON
	db 34, MAGNETON
	db 35, MAGNETON
	; day
	db 31, MAGNEMITE
	db 31, NOSEPASS
	db 32, KLINK
	db 20, TYNAMO
	db 32, BELDUM
	db 33, TYNAMO
	db 33, STUNFISK
	db 35, LAIRON
	db 34, MAGNETON
	db 35, MAGNETON
	; nite
	db 31, MAGNEMITE
	db 31, NOSEPASS
	db 32, KLINK
	db 20, TYNAMO
	db 32, BELDUM
	db 33, TYNAMO
	db 33, STUNFISK
	db 35, LAIRON
	db 34, MAGNETON
	db 35, MAGNETON
	
	map_id CHARGESTONE_CAVE_B2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 33, BELDUM
	db 31, MAGNEMITE
	db 32, KLINK
	db 32, TYNAMO
	db 34, STUNFISK
	db 35, LAIRON
	db 33, NOSEPASS
	db 35, NOSEPASS
	db 35, MAGNETON
	db 37, MAGNETON
	; day
	db 33, BELDUM
	db 31, MAGNEMITE
	db 32, KLINK
	db 32, TYNAMO
	db 34, STUNFISK
	db 35, LAIRON
	db 33, NOSEPASS
	db 35, NOSEPASS
	db 35, MAGNETON
	db 37, MAGNETON
	; nite
	db 33, BELDUM
	db 31, MAGNEMITE
	db 32, KLINK
	db 32, TYNAMO
	db 34, STUNFISK
	db 35, LAIRON
	db 33, NOSEPASS
	db 35, NOSEPASS
	db 35, MAGNETON
	db 37, MAGNETON
	
	map_id R_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, FLAAFFY
	db 34, ZEBSTRIKA
	db 35, HERDIER
	db 36, GRANBULL
	db 37, EMOLGA
	db 38, PAWNIARD
	db 38, HERDIER
	db 37, STUNFISK
	db 34, AXEW
	db 39, AXEW
	; day
	db 36, FLAAFFY
	db 34, ZEBSTRIKA
	db 35, HERDIER
	db 36, GRANBULL
	db 37, EMOLGA
	db 38, PAWNIARD
	db 38, HERDIER
	db 37, STUNFISK
	db 34, AXEW
	db 39, AXEW
	; nite
	db 36, FLAAFFY
	db 34, ZEBSTRIKA
	db 35, HERDIER
	db 36, GRANBULL
	db 37, EMOLGA
	db 38, PAWNIARD
	db 38, HERDIER
	db 37, STUNFISK
	db 34, AXEW
	db 39, AXEW
	
	map_id R_7_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, FLAAFFY
	db 34, ZEBSTRIKA
	db 35, HERDIER
	db 36, GRANBULL
	db 37, EMOLGA
	db 38, PAWNIARD
	db 38, HERDIER
	db 37, STUNFISK
	db 34, AXEW
	db 39, AXEW
	; day
	db 36, FLAAFFY
	db 34, ZEBSTRIKA
	db 35, HERDIER
	db 36, GRANBULL
	db 37, EMOLGA
	db 38, PAWNIARD
	db 38, HERDIER
	db 37, STUNFISK
	db 34, AXEW
	db 39, AXEW
	; nite
	db 36, FLAAFFY
	db 34, ZEBSTRIKA
	db 35, HERDIER
	db 36, GRANBULL
	db 37, EMOLGA
	db 38, PAWNIARD
	db 38, HERDIER
	db 37, STUNFISK
	db 34, AXEW
	db 39, AXEW
	
	map_id CELESTIAL_TOWER
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 38, LITWICK
	db 37, BALTOY
	db 36, GOLETT
	db 37, MEDITITE
	db 36, SNORUNT
	db 37, HAUNTER
	db 37, DUOSION
	db 37, GOTHORITA
	db 38, SPIRITOMB
	db 42, SPIRITOMB
	; day
	db 38, LITWICK
	db 37, BALTOY
	db 36, GOLETT
	db 37, MEDITITE
	db 36, SNORUNT
	db 37, HAUNTER
	db 37, DUOSION
	db 37, GOTHORITA
	db 38, SPIRITOMB
	db 42, SPIRITOMB
	; nite
	db 38, LITWICK
	db 37, BALTOY
	db 36, GOLETT
	db 37, MEDITITE
	db 36, SNORUNT
	db 37, HAUNTER
	db 37, DUOSION
	db 37, GOTHORITA
	db 38, SPIRITOMB
	db 42, SPIRITOMB
	
	map_id SEASIDE_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 39, VANILLITE
	db 38, CUBCHOO
	db 38, SWINUB
	db 37, SNORUNT
	db 39, SNEASEL
	db 37, CRYOGONAL
	db 41, CUBCHOO
	db 41, SWINUB
	db 41, SNEASEL
	db 40, CRYOGONAL
	; day
	db 39, VANILLITE
	db 38, CUBCHOO
	db 38, SWINUB
	db 37, SNORUNT
	db 39, SNEASEL
	db 37, CRYOGONAL
	db 41, CUBCHOO
	db 41, SWINUB
	db 41, SNEASEL
	db 40, CRYOGONAL
	; nite
	db 39, VANILLITE
	db 38, CUBCHOO
	db 38, SWINUB
	db 37, SNORUNT
	db 39, SNEASEL
	db 37, CRYOGONAL
	db 41, CUBCHOO
	db 41, SWINUB
	db 41, SNEASEL
	db 40, CRYOGONAL
	
	map_id SEASIDE_CAVE_B1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 39, VANILLITE
	db 38, CUBCHOO
	db 38, SWINUB
	db 37, SNORUNT
	db 39, SNEASEL
	db 37, CRYOGONAL
	db 41, CUBCHOO
	db 41, SWINUB
	db 41, SNEASEL
	db 40, CRYOGONAL
	; day
	db 39, VANILLITE
	db 38, CUBCHOO
	db 38, SWINUB
	db 37, SNORUNT
	db 39, SNEASEL
	db 37, CRYOGONAL
	db 41, CUBCHOO
	db 41, SWINUB
	db 41, SNEASEL
	db 40, CRYOGONAL
	; nite
	db 39, VANILLITE
	db 38, CUBCHOO
	db 38, SWINUB
	db 37, SNORUNT
	db 39, SNEASEL
	db 37, CRYOGONAL
	db 41, CUBCHOO
	db 41, SWINUB
	db 41, SNEASEL
	db 40, CRYOGONAL
	
	map_id SEASIDE_CAVE_B2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 43, VANILLITE
	db 42, CUBCHOO
	db 42, SWINUB
	db 41, SNORUNT
	db 44, SNEASEL
	db 43, CRYOGONAL
	db 45, CUBCHOO
	db 45, SWINUB
	db 45, SNEASEL
	db 46, CRYOGONAL
	; day
	db 43, VANILLITE
	db 42, CUBCHOO
	db 42, SWINUB
	db 41, SNORUNT
	db 44, SNEASEL
	db 43, CRYOGONAL
	db 45, CUBCHOO
	db 45, SWINUB
	db 45, SNEASEL
	db 46, CRYOGONAL
	; nite
	db 43, VANILLITE
	db 42, CUBCHOO
	db 42, SWINUB
	db 41, SNORUNT
	db 44, SNEASEL
	db 43, CRYOGONAL
	db 45, CUBCHOO
	db 45, SWINUB
	db 45, SNEASEL
	db 46, CRYOGONAL
	
	map_id VILLAGE_BRIDGE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 45, AZUMARILL
	db 44, SWADLOON
	db 44, WHIRLIPEDE
	db 43, HERDIER
	db 42, ROSELIA
	db 41, FERROSEED
	db 43, GRANBULL
	db 45, FERROSEED
	db 45, GRANBULL
	db 46, ROSELIA
	; day
	db 45, AZUMARILL
	db 44, SWADLOON
	db 44, WHIRLIPEDE
	db 43, HERDIER
	db 42, ROSELIA
	db 41, FERROSEED
	db 43, GRANBULL
	db 45, FERROSEED
	db 45, GRANBULL
	db 46, ROSELIA
	; nite
	db 45, AZUMARILL
	db 44, SWADLOON
	db 44, WHIRLIPEDE
	db 43, HERDIER
	db 42, ROSELIA
	db 41, FERROSEED
	db 43, GRANBULL
	db 45, FERROSEED
	db 45, GRANBULL
	db 46, ROSELIA
	
	map_id R_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 45, RUFFLET
	db 45, VULLABY
	db 46, PINSIR
	db 46, HERACROSS
	db 43, AUDINO
	db 44, EMOLGA
	db 45, VULLABY
	db 43, KIRLIA
	db 45, AUDINO
	db 47, KIRLIA
	; day
	db 45, RUFFLET
	db 45, VULLABY
	db 46, PINSIR
	db 46, HERACROSS
	db 43, AUDINO
	db 44, EMOLGA
	db 45, VULLABY
	db 43, KIRLIA
	db 45, AUDINO
	db 47, KIRLIA
	; nite
	db 45, RUFFLET
	db 45, VULLABY
	db 46, PINSIR
	db 46, HERACROSS
	db 43, AUDINO
	db 44, EMOLGA
	db 45, VULLABY
	db 43, KIRLIA
	db 45, AUDINO
	db 47, KIRLIA
	
	map_id R_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 47, PAWNIARD
	db 46, HEATMOR
	db 46, DURANT
	db 47, GLIGAR
	db 45, GOTHORITA
	db 45, DUOSION
	db 47, SKARMORY
	db 45, GARBODOR
	db 48, SCRAFTY
	db 48, GARBODOR
	; day
	db 47, PAWNIARD
	db 46, HEATMOR
	db 46, DURANT
	db 47, GLIGAR
	db 45, GOTHORITA
	db 45, DUOSION
	db 47, SKARMORY
	db 45, GARBODOR
	db 48, SCRAFTY
	db 48, GARBODOR
	; nite
	db 47, PAWNIARD
	db 46, HEATMOR
	db 46, DURANT
	db 47, GLIGAR
	db 45, GOTHORITA
	db 45, DUOSION
	db 47, SKARMORY
	db 45, GARBODOR
	db 48, SCRAFTY
	db 48, GARBODOR
	
	map_id R_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 46, PALPITOAD
	db 45, STUNFISK
	db 45, CROAGUNK
	db 45, SKORUPI
	db 47, CROAGUNK
	db 47, SKORUPI
	db 43, AMOONGUSS
	db 45, AMOONGUSS
	db 48, STUNFISK
	db 48, AMOONGUSS
	; day
	db 46, PALPITOAD
	db 45, STUNFISK
	db 45, CROAGUNK
	db 45, SKORUPI
	db 47, CROAGUNK
	db 47, SKORUPI
	db 43, AMOONGUSS
	db 45, AMOONGUSS
	db 48, STUNFISK
	db 48, AMOONGUSS
	; nite
	db 46, PALPITOAD
	db 45, STUNFISK
	db 45, CROAGUNK
	db 45, SKORUPI
	db 47, CROAGUNK
	db 47, SKORUPI
	db 43, AMOONGUSS
	db 45, AMOONGUSS
	db 48, STUNFISK
	db 48, AMOONGUSS
	
	map_id MOOR_OF_ICIRRUS
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 46, PALPITOAD
	db 45, STUNFISK
	db 45, KARRABLAST
	db 45, SHELMET
	db 46, CROAGUNK
	db 46, SKORUPI
	db 48, CROAGUNK
	db 48, SKORUPI
	db 48, STUNFISK
	db 48, PALPITOAD
	; day
	db 46, PALPITOAD
	db 45, STUNFISK
	db 45, KARRABLAST
	db 45, SHELMET
	db 46, CROAGUNK
	db 46, SKORUPI
	db 48, CROAGUNK
	db 48, SKORUPI
	db 48, STUNFISK
	db 48, PALPITOAD
	; nite
	db 46, PALPITOAD
	db 45, STUNFISK
	db 45, KARRABLAST
	db 45, SHELMET
	db 46, CROAGUNK
	db 46, SKORUPI
	db 48, CROAGUNK
	db 48, SKORUPI
	db 48, STUNFISK
	db 48, PALPITOAD
	
	map_id DRAGONSPIRAL_TOWER_1F
	db 2 percent, 2 percent, 2 percent ; encounter rates: morn/day/nite
	; morn
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; day
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; nite
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	
	map_id DRAGONSPIRAL_TOWER_2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; day
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; nite
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	
	map_id DRAGONSPIRAL_TOWER_3F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; day
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; nite
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	
	map_id DRAGONSPIRAL_TOWER_4F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; day
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; nite
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	
	map_id DRAGONSPIRAL_TOWER_5F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; day
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; nite
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	
	map_id DRAGONSPIRAL_TOWER_6F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; day
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA
	; nite
	db 46, AXEW
	db 45, SWABLU
	db 45, GOLETT
	db 47, DEINO
	db 46, DRATINI
	db 48, FRAXURE
	db 48, DRATINI
	db 48, CLAYDOL
	db 49, DRAGONAIR
	db 49, ALTARIA

	map_id R_23_EAST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, AUDINO
	db 19, ELEKID
	db 19, MAGBY
	db 17, FERROSEED
	db 16, HOUNDOUR
	db 17, TRAPINCH
	db 18, THROH
	db 18, SAWK
	db 20, FERROSEED
	db 21, AUDINO
	; day
	db 17, AUDINO
	db 19, ELEKID
	db 19, MAGBY
	db 17, FERROSEED
	db 16, HOUNDOUR
	db 17, TRAPINCH
	db 18, THROH
	db 18, SAWK
	db 20, FERROSEED
	db 21, AUDINO
	; nite
	db 17, AUDINO
	db 19, ELEKID
	db 19, MAGBY
	db 17, FERROSEED
	db 16, HOUNDOUR
	db 17, TRAPINCH
	db 18, THROH
	db 18, SAWK
	db 20, FERROSEED
	db 21, AUDINO

	map_id R_23_WEST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 50, AUDINO
	db 49, ELECTABUZZ
	db 49, MAGMAR
	db 47, BRELOOM
	db 48, HOUNDOOM
	db 49, DARMANITAN
	db 50, THROH
	db 50, SAWK
	db 52, BRELOOM
	db 54, AUDINO
	; day
	db 50, AUDINO
	db 49, ELECTABUZZ
	db 49, MAGMAR
	db 47, BRELOOM
	db 48, HOUNDOOM
	db 49, DARMANITAN
	db 50, THROH
	db 50, SAWK
	db 52, BRELOOM
	db 54, AUDINO
	; nite
	db 50, AUDINO
	db 49, ELECTABUZZ
	db 49, MAGMAR
	db 47, BRELOOM
	db 48, HOUNDOOM
	db 49, DARMANITAN
	db 50, THROH
	db 50, SAWK
	db 52, BRELOOM
	db 54, AUDINO

	map_id VICTORY_ROAD_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; day
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; nite
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS

	map_id VICTORY_ROAD_CAVE_2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; day
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; nite
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS

	map_id VICTORY_ROAD_CAVE_3F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; day
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; nite
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS

	map_id VICTORY_ROAD_CASTLE_OUTSIDE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; day
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS
	; nite
	db 52, GURDURR
	db 51, SWOOBAT
	db 52, LAIRON
	db 50, CRUSTLE
	db 51, PILOSWINE
	db 52, LAMPENT
	db 48, DEINO
	db 50, METANG
	db 52, COFAGRIGUS
	db 55, ZWEILOUS

	map_id VICTORY_ROAD_OUTDOOR_1F
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 52, KROKOROK
	db 51, VIBRAVA
	db 52, EXCADRILL
	db 50, MEDICHAM
	db 51, FERROTHORN
	db 52, TOXICROAK
	db 50, PUPITAR
	db 50, DRIFBLIM
	db 52, FRAXURE
	db 55, FRAXURE
	; day
	db 52, KROKOROK
	db 51, VIBRAVA
	db 52, EXCADRILL
	db 50, MEDICHAM
	db 51, FERROTHORN
	db 52, TOXICROAK
	db 50, PUPITAR
	db 50, DRIFBLIM
	db 52, FRAXURE
	db 55, FRAXURE
	; nite
	db 52, KROKOROK
	db 51, VIBRAVA
	db 52, EXCADRILL
	db 50, MEDICHAM
	db 51, FERROTHORN
	db 52, TOXICROAK
	db 50, PUPITAR
	db 50, DRIFBLIM
	db 52, FRAXURE
	db 55, FRAXURE

	map_id VICTORY_ROAD_OUTDOOR_2F
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 52, KROKOROK
	db 51, VIBRAVA
	db 52, EXCADRILL
	db 50, MEDICHAM
	db 51, FERROTHORN
	db 52, TOXICROAK
	db 50, PUPITAR
	db 50, DRIFBLIM
	db 52, FRAXURE
	db 55, FRAXURE
	; day
	db 52, KROKOROK
	db 51, VIBRAVA
	db 52, EXCADRILL
	db 50, MEDICHAM
	db 51, FERROTHORN
	db 52, TOXICROAK
	db 50, PUPITAR
	db 50, DRIFBLIM
	db 52, FRAXURE
	db 55, FRAXURE
	; nite
	db 52, KROKOROK
	db 51, VIBRAVA
	db 52, EXCADRILL
	db 50, MEDICHAM
	db 51, FERROTHORN
	db 52, TOXICROAK
	db 50, PUPITAR
	db 50, DRIFBLIM
	db 52, FRAXURE
	db 55, FRAXURE

	map_id VICTORY_ROAD_GROVE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 52, ROSELIA
	db 50, COTTONEE
	db 50, PETILIL
	db 52, SAWSBUCK
	db 51, BRELOOM
	db 52, TROPIUS
	db 50, WHIMSICOTT
	db 50, LILLIGANT
	db 55, ROSELIA
	db 55, ROSERADE
	; day
	db 52, ROSELIA
	db 50, COTTONEE
	db 50, PETILIL
	db 52, SAWSBUCK
	db 51, BRELOOM
	db 52, TROPIUS
	db 50, WHIMSICOTT
	db 50, LILLIGANT
	db 55, ROSELIA
	db 55, ROSERADE
	; nite
	db 52, ROSELIA
	db 50, COTTONEE
	db 50, PETILIL
	db 52, SAWSBUCK
	db 51, BRELOOM
	db 52, TROPIUS
	db 50, WHIMSICOTT
	db 50, LILLIGANT
	db 55, ROSELIA
	db 55, ROSERADE

	map_id TWIST_MOUNTAIN_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX
	; day
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX
	; nite
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX

	map_id TWIST_MOUNTAIN_2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX
	; day
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX
	; nite
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX

	map_id TWIST_MOUNTAIN_3F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX
	; day
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX
	; nite
	db 58, BOLDORE
	db 60, VANILLISH
	db 59, GURDURR
	db 60, BEARTIC
	db 62, HEATMOR
	db 62, DURANT
	db 60, SWOOBAT
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, STEELIX

	map_id TWIST_MOUNTAIN_B1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 58, VANILLISH
	db 60, BEARTIC
	db 59, KLANG
	db 60, MAGNETON
	db 62, HEATMOR
	db 62, DURANT
	db 60, STEELIX
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, EXCADRILL
	; day
	db 58, VANILLISH
	db 60, BEARTIC
	db 59, KLANG
	db 60, MAGNETON
	db 62, HEATMOR
	db 62, DURANT
	db 60, STEELIX
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, EXCADRILL
	; nite
	db 58, VANILLISH
	db 60, BEARTIC
	db 59, KLANG
	db 60, MAGNETON
	db 62, HEATMOR
	db 62, DURANT
	db 60, STEELIX
	db 62, CRYOGONAL
	db 63, EXCADRILL
	db 65, EXCADRILL

	db -1 ; end
