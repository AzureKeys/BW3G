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
	db 16, MARILL
	db 17, DUCKLETT
	db 16, MEDITITE
	db 16, VULPIX
	db 15, SWABLU
	db 17, AUDINO
	db 18, EMOLGA
	db 17, MARILL
	db 18, DUCKLETT
	db 18, VULPIX
	; day
	db 16, MARILL
	db 17, DUCKLETT
	db 16, MEDITITE
	db 16, VULPIX
	db 15, SWABLU
	db 17, AUDINO
	db 18, EMOLGA
	db 17, MARILL
	db 18, DUCKLETT
	db 18, VULPIX
	; nite
	db 16, MARILL
	db 17, DUCKLETT
	db 16, MEDITITE
	db 16, VULPIX
	db 15, SWABLU
	db 17, AUDINO
	db 18, EMOLGA
	db 17, MARILL
	db 18, DUCKLETT
	db 18, VULPIX

	map_id R_20
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, DUCKLETT
	db 18, MEDITITE
	db 16, SWABLU
	db 16, VULPIX
	db 16, CROAGUNK
	db 17, EMOLGA
	db 17, JOLTIK
	db 16, SKORUPI
	db 18, JOLTIK
	db 18, SKORUPI
	; day
	db 17, DUCKLETT
	db 18, MEDITITE
	db 16, SWABLU
	db 16, VULPIX
	db 16, CROAGUNK
	db 17, EMOLGA
	db 17, JOLTIK
	db 16, SKORUPI
	db 18, JOLTIK
	db 18, SKORUPI
	; nite
	db 17, DUCKLETT
	db 18, MEDITITE
	db 16, SWABLU
	db 16, VULPIX
	db 16, CROAGUNK
	db 17, EMOLGA
	db 17, JOLTIK
	db 16, SKORUPI
	db 18, JOLTIK
	db 18, SKORUPI

	map_id FLOCCESY_RANCH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, EEVEE
	db 18, MARILL
	db 16, VULPIX
	db 16, SWABLU
	db 17, MAGBY
	db 17, ELEKID
	db 17, AUDINO
	db 16, FLAAFFY
	db 18, AUDINO
	db 18, FLAAFFY
	; day
	db 17, EEVEE
	db 18, MARILL
	db 16, VULPIX
	db 16, SWABLU
	db 17, MAGBY
	db 17, ELEKID
	db 17, AUDINO
	db 16, FLAAFFY
	db 18, AUDINO
	db 18, FLAAFFY
	; nite
	db 17, EEVEE
	db 18, MARILL
	db 16, VULPIX
	db 16, SWABLU
	db 17, MAGBY
	db 17, ELEKID
	db 17, AUDINO
	db 16, FLAAFFY
	db 18, AUDINO
	db 18, FLAAFFY

	map_id VIRBANK_COMPLEX_OUTSIDE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 18, KOFFING
	db 17, MAGNEMITE
	db 18, CROAGUNK
	db 18, SCRAGGY
	db 17, JOLTIK
	db 19, SKORUPI
	db 20, HEATMOR
	db 20, DURANT
	db 19, JOLTIK
	db 21, SKORUPI
	; day
	db 18, KOFFING
	db 17, MAGNEMITE
	db 18, CROAGUNK
	db 18, SCRAGGY
	db 17, JOLTIK
	db 19, SKORUPI
	db 20, HEATMOR
	db 20, DURANT
	db 19, JOLTIK
	db 21, SKORUPI
	; nite
	db 18, KOFFING
	db 17, MAGNEMITE
	db 18, CROAGUNK
	db 18, SCRAGGY
	db 17, JOLTIK
	db 19, SKORUPI
	db 20, HEATMOR
	db 20, DURANT
	db 19, JOLTIK
	db 21, SKORUPI

	map_id PINWHEEL_FOREST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 20, FOONGUS
	db 19, PETILIL
	db 19, COTTONEE
	db 20, JOLTIK
	db 21, ROSELIA
	db 20, YANMA
	db 21, HERACROSS
	db 21, PINSIR
	db 22, YANMA
	db 23, ROSELIA
	; day
	db 20, FOONGUS
	db 19, PETILIL
	db 19, COTTONEE
	db 20, JOLTIK
	db 21, ROSELIA
	db 20, YANMA
	db 21, HERACROSS
	db 21, PINSIR
	db 22, YANMA
	db 23, ROSELIA
	; nite
	db 20, FOONGUS
	db 19, PETILIL
	db 19, COTTONEE
	db 20, JOLTIK
	db 21, ROSELIA
	db 20, YANMA
	db 21, HERACROSS
	db 21, PINSIR
	db 22, YANMA
	db 23, ROSELIA

	map_id R_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 21, FOONGUS
	db 21, FERROSEED
	db 20, JIGGLYPUFF
	db 20, TRANQUILL
	db 23, TRANQUILL
	db 22, CUBCHOO
	db 21, SAWK
	db 21, THROH
	db 23, FERROSEED
	db 25, JIGGLYPUFF
	; day
	db 21, FOONGUS
	db 21, FERROSEED
	db 20, JIGGLYPUFF
	db 20, TRANQUILL
	db 23, TRANQUILL
	db 22, CUBCHOO
	db 21, SAWK
	db 21, THROH
	db 23, FERROSEED
	db 25, JIGGLYPUFF
	; nite
	db 21, FOONGUS
	db 21, FERROSEED
	db 20, JIGGLYPUFF
	db 20, TRANQUILL
	db 23, TRANQUILL
	db 22, CUBCHOO
	db 21, SAWK
	db 21, THROH
	db 23, FERROSEED
	db 25, JIGGLYPUFF

	map_id WELLSPRING_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 23, WOOBAT
	db 23, ARON
	db 22, CUBCHOO
	db 24, MUNNA
	db 21, SWINUB
	db 22, VANILLITE
	db 25, ARON
	db 24, VANILLITE
	db 23, GOLBAT
	db 25, SNEASEL
	; day
	db 23, WOOBAT
	db 23, ARON
	db 22, CUBCHOO
	db 24, MUNNA
	db 21, SWINUB
	db 22, VANILLITE
	db 25, ARON
	db 24, VANILLITE
	db 23, GOLBAT
	db 25, SNEASEL
	; nite
	db 23, WOOBAT
	db 23, ARON
	db 22, CUBCHOO
	db 24, MUNNA
	db 21, SWINUB
	db 22, VANILLITE
	db 25, ARON
	db 24, VANILLITE
	db 23, GOLBAT
	db 25, SNEASEL

	map_id WELLSPRING_CAVE_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 23, MUNNA
	db 23, ARON
	db 22, VANILLITE
	db 22, CUBCHOO
	db 21, SWINUB
	db 25, SNEASEL
	db 25, SWINUB
	db 23, GOLBAT
	db 25, ARON
	db 25, GOLBAT
	; day
	db 23, MUNNA
	db 23, ARON
	db 22, VANILLITE
	db 22, CUBCHOO
	db 21, SWINUB
	db 25, SNEASEL
	db 25, SWINUB
	db 23, GOLBAT
	db 25, ARON
	db 25, GOLBAT
	; nite
	db 23, MUNNA
	db 23, ARON
	db 22, VANILLITE
	db 22, CUBCHOO
	db 21, SWINUB
	db 25, SNEASEL
	db 25, SWINUB
	db 23, GOLBAT
	db 25, ARON
	db 25, GOLBAT
	
	map_id R_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, JIGGLYPUFF
	db 22, LIEPARD
	db 23, TRANQUILL
	db 22, FERROSEED
	db 22, THROH
	db 22, SAWK
	db 23, TROPIUS
	db 21, TROPIUS
	db 23, SKARMORY
	db 25, SKARMORY
	; day
	db 23, JIGGLYPUFF
	db 22, LIEPARD
	db 23, TRANQUILL
	db 22, FERROSEED
	db 22, THROH
	db 22, SAWK
	db 23, TROPIUS
	db 21, TROPIUS
	db 23, SKARMORY
	db 25, SKARMORY
	; nite
	db 23, JIGGLYPUFF
	db 22, LIEPARD
	db 23, TRANQUILL
	db 22, FERROSEED
	db 22, THROH
	db 22, SAWK
	db 23, TROPIUS
	db 21, TROPIUS
	db 23, SKARMORY
	db 25, SKARMORY
	
	map_id R_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, WATCHOG
	db 22, LIEPARD
	db 23, HERDIER
	db 22, TRANQUILL
	db 20, FERROSEED
	db 22, TROPIUS
	db 23, FERROSEED
	db 21, SKARMORY
	db 23, SKARMORY
	db 25, SKARMORY
	; day
	db 23, WATCHOG
	db 22, LIEPARD
	db 23, HERDIER
	db 22, TRANQUILL
	db 20, FERROSEED
	db 22, TROPIUS
	db 23, FERROSEED
	db 21, SKARMORY
	db 23, SKARMORY
	db 25, SKARMORY
	; nite
	db 23, WATCHOG
	db 22, LIEPARD
	db 23, HERDIER
	db 22, TRANQUILL
	db 20, FERROSEED
	db 22, TROPIUS
	db 23, FERROSEED
	db 21, SKARMORY
	db 23, SKARMORY
	db 25, SKARMORY
	
	map_id R_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, RUFFLET
	db 23, VULLABY
	db 23, FLAAFFY
	db 24, TROPIUS
	db 20, AXEW
	db 25, CUBCHOO
	db 23, VULLABY
	db 23, BOUFFALANT
	db 25, BOUFFALANT
	db 26, AXEW
	; day
	db 23, RUFFLET
	db 23, VULLABY
	db 23, FLAAFFY
	db 24, TROPIUS
	db 20, AXEW
	db 25, CUBCHOO
	db 23, VULLABY
	db 23, BOUFFALANT
	db 25, BOUFFALANT
	db 26, AXEW
	; nite
	db 23, RUFFLET
	db 23, VULLABY
	db 23, FLAAFFY
	db 24, TROPIUS
	db 20, AXEW
	db 25, CUBCHOO
	db 23, VULLABY
	db 23, BOUFFALANT
	db 25, BOUFFALANT
	db 26, AXEW
	
	map_id R_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 23, RUFFLET
	db 23, VULLABY
	db 23, FLAAFFY
	db 24, TROPIUS
	db 20, AXEW
	db 25, CUBCHOO
	db 23, VULLABY
	db 23, BOUFFALANT
	db 25, BOUFFALANT
	db 26, AXEW
	; day
	db 23, RUFFLET
	db 23, VULLABY
	db 23, FLAAFFY
	db 24, TROPIUS
	db 20, AXEW
	db 25, CUBCHOO
	db 23, VULLABY
	db 23, BOUFFALANT
	db 25, BOUFFALANT
	db 26, AXEW
	; nite
	db 23, RUFFLET
	db 23, VULLABY
	db 23, FLAAFFY
	db 24, TROPIUS
	db 20, AXEW
	db 25, CUBCHOO
	db 23, VULLABY
	db 23, BOUFFALANT
	db 25, BOUFFALANT
	db 26, AXEW
	
	map_id P2_LAB
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 23, KLINK
	db 23, MAGNEMITE
	db 23, KOFFING
	db 25, BELDUM
	db 25, KOFFING
	db 25, MAGNEMITE
	db 20, DITTO
	db 25, KLINK
	db 25, DITTO
	db 28, DITTO
	; day
	db 23, KLINK
	db 23, MAGNEMITE
	db 23, KOFFING
	db 25, BELDUM
	db 25, KOFFING
	db 25, MAGNEMITE
	db 20, DITTO
	db 25, KLINK
	db 25, DITTO
	db 28, DITTO
	; nite
	db 23, KLINK
	db 23, MAGNEMITE
	db 23, KOFFING
	db 25, BELDUM
	db 25, KOFFING
	db 25, MAGNEMITE
	db 20, DITTO
	db 25, KLINK
	db 25, DITTO
	db 28, DITTO
	
	map_id GIANT_CHASM_B1F
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 25, GOLBAT
	db 25, BOLDORE
	db 26, CLEFAIRY
	db 26, BOLDORE
	db 28, GOLBAT
	db 20, BELDUM
	db 22, SNEASEL
	db 24, BELDUM
	db 25, SNEASEL
	db 28, SNEASEL
	; day
	db 25, GOLBAT
	db 25, BOLDORE
	db 26, CLEFAIRY
	db 26, BOLDORE
	db 28, GOLBAT
	db 20, BELDUM
	db 22, SNEASEL
	db 24, BELDUM
	db 25, SNEASEL
	db 28, SNEASEL
	; nite
	db 25, GOLBAT
	db 25, BOLDORE
	db 26, CLEFAIRY
	db 26, BOLDORE
	db 28, GOLBAT
	db 20, BELDUM
	db 22, SNEASEL
	db 24, BELDUM
	db 25, SNEASEL
	db 28, SNEASEL
	
	map_id GIANT_CHASM_ROOMS
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 25, GOLBAT
	db 25, BOLDORE
	db 26, CLEFAIRY
	db 26, BOLDORE
	db 28, GOLBAT
	db 20, BELDUM
	db 22, SNEASEL
	db 24, BELDUM
	db 25, SNEASEL
	db 28, SNEASEL
	; day
	db 25, GOLBAT
	db 25, BOLDORE
	db 26, CLEFAIRY
	db 26, BOLDORE
	db 28, GOLBAT
	db 20, BELDUM
	db 22, SNEASEL
	db 24, BELDUM
	db 25, SNEASEL
	db 28, SNEASEL
	; nite
	db 25, GOLBAT
	db 25, BOLDORE
	db 26, CLEFAIRY
	db 26, BOLDORE
	db 28, GOLBAT
	db 20, BELDUM
	db 22, SNEASEL
	db 24, BELDUM
	db 25, SNEASEL
	db 28, SNEASEL
	
	map_id CASTELIA_SEWERS
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 24, TRUBBISH
	db 25, KOFFING
	db 24, SCRAGGY
	db 25, SKORUPI
	db 26, VANILLITE
	db 23, CUBCHOO
	db 23, GOLBAT
	db 25, GOLBAT
	db 28, KOFFING
	db 29, SCRAGGY
	; day
	db 24, TRUBBISH
	db 25, KOFFING
	db 24, SCRAGGY
	db 25, SKORUPI
	db 26, VANILLITE
	db 23, CUBCHOO
	db 23, GOLBAT
	db 25, GOLBAT
	db 28, KOFFING
	db 29, SCRAGGY
	; nite
	db 24, TRUBBISH
	db 25, KOFFING
	db 24, SCRAGGY
	db 25, SKORUPI
	db 26, VANILLITE
	db 23, CUBCHOO
	db 23, GOLBAT
	db 25, GOLBAT
	db 28, KOFFING
	db 29, SCRAGGY
	
	map_id CASTELIA_SEWERS_ROOMS
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 24, TRUBBISH
	db 25, KOFFING
	db 24, SCRAGGY
	db 25, SKORUPI
	db 26, VANILLITE
	db 23, CUBCHOO
	db 23, GOLBAT
	db 25, GOLBAT
	db 28, KOFFING
	db 29, SCRAGGY
	; day
	db 24, TRUBBISH
	db 25, KOFFING
	db 24, SCRAGGY
	db 25, SKORUPI
	db 26, VANILLITE
	db 23, CUBCHOO
	db 23, GOLBAT
	db 25, GOLBAT
	db 28, KOFFING
	db 29, SCRAGGY
	; nite
	db 24, TRUBBISH
	db 25, KOFFING
	db 24, SCRAGGY
	db 25, SKORUPI
	db 26, VANILLITE
	db 23, CUBCHOO
	db 23, GOLBAT
	db 25, GOLBAT
	db 28, KOFFING
	db 29, SCRAGGY
	
	map_id RELIC_PASSAGE_FRONT
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 25, ONIX
	db 24, GURDURR
	db 24, SWINUB
	db 24, BOLDORE
	db 25, GOLETT
	db 24, MAWILE
	db 28, GOLETT
	db 27, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; day
	db 25, ONIX
	db 24, GURDURR
	db 24, SWINUB
	db 24, BOLDORE
	db 25, GOLETT
	db 24, MAWILE
	db 28, GOLETT
	db 27, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; nite
	db 25, ONIX
	db 24, GURDURR
	db 24, SWINUB
	db 24, BOLDORE
	db 25, GOLETT
	db 24, MAWILE
	db 28, GOLETT
	db 27, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	
	map_id RELIC_PASSAGE_BACK
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 25, ONIX
	db 24, GURDURR
	db 24, SWINUB
	db 24, BOLDORE
	db 25, GOLETT
	db 24, MAWILE
	db 28, GOLETT
	db 27, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; day
	db 25, ONIX
	db 24, GURDURR
	db 24, SWINUB
	db 24, BOLDORE
	db 25, GOLETT
	db 24, MAWILE
	db 28, GOLETT
	db 27, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR
	; nite
	db 25, ONIX
	db 24, GURDURR
	db 24, SWINUB
	db 24, BOLDORE
	db 25, GOLETT
	db 24, MAWILE
	db 28, GOLETT
	db 27, BOLDORE
	db 25, LARVITAR
	db 28, LARVITAR

	map_id RELIC_CASTLE_B4F
	db 5 percent, 5 percent, 5 percent ; encounter rates: morn/day/nite
	; morn
	db 25, YAMASK
	db 26, GLIGAR
	db 25, GOLETT
	db 24, DWEBBLE
	db 26, BALTOY
	db 25, BALTOY
	db 26, SIGILYPH
	db 25, TRAPINCH
	db 24, SIGILYPH
	db 28, SIGILYPH
	; day
	db 25, YAMASK
	db 26, GLIGAR
	db 25, GOLETT
	db 24, DWEBBLE
	db 26, BALTOY
	db 25, BALTOY
	db 26, SIGILYPH
	db 25, TRAPINCH
	db 24, SIGILYPH
	db 28, SIGILYPH
	; nite
	db 25, YAMASK
	db 26, GLIGAR
	db 25, GOLETT
	db 24, DWEBBLE
	db 26, BALTOY
	db 25, BALTOY
	db 26, SIGILYPH
	db 25, TRAPINCH
	db 24, SIGILYPH
	db 28, SIGILYPH
	
	map_id R_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, DEERLING
	db 26, JOLTIK
	db 28, KARRABLAST
	db 28, SHELMET
	db 26, FOONGUS
	db 27, FERROSEED
	db 29, FOONGUS
	db 29, FERROSEED
	db 26, KIRLIA
	db 28, KIRLIA
	; day
	db 28, DEERLING
	db 26, JOLTIK
	db 28, KARRABLAST
	db 28, SHELMET
	db 26, FOONGUS
	db 27, FERROSEED
	db 29, FOONGUS
	db 29, FERROSEED
	db 26, KIRLIA
	db 28, KIRLIA
	; nite
	db 28, DEERLING
	db 26, JOLTIK
	db 28, KARRABLAST
	db 28, SHELMET
	db 26, FOONGUS
	db 27, FERROSEED
	db 29, FOONGUS
	db 29, FERROSEED
	db 26, KIRLIA
	db 28, KIRLIA
	
	map_id MISTRALTON_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	; day
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	; nite
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	
	map_id MISTRALTON_CAVE_2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	; day
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	; nite
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	
	map_id MISTRALTON_CAVE_3F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	; day
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	; nite
	db 26, WOOBAT
	db 26, AXEW
	db 25, BOLDORE
	db 25, DRILBUR
	db 27, GOLBAT
	db 28, LAIRON
	db 28, BOLDORE
	db 28, DRILBUR
	db 30, AXEW
	db 30, EXCADRILL
	
	map_id CHARGESTONE_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 26, MAGNEMITE
	db 26, NOSEPASS
	db 27, KLINK
	db 25, TYNAMO
	db 27, BELDUM
	db 28, TYNAMO
	db 28, NOSEPASS
	db 28, STUNFISK
	db 29, LAIRON
	db 30, MAGNETON
	; day
	db 26, MAGNEMITE
	db 26, NOSEPASS
	db 27, KLINK
	db 25, TYNAMO
	db 27, BELDUM
	db 28, TYNAMO
	db 28, NOSEPASS
	db 28, STUNFISK
	db 29, LAIRON
	db 30, MAGNETON
	; nite
	db 26, MAGNEMITE
	db 26, NOSEPASS
	db 27, KLINK
	db 25, TYNAMO
	db 27, BELDUM
	db 28, TYNAMO
	db 28, NOSEPASS
	db 28, STUNFISK
	db 29, LAIRON
	db 30, MAGNETON
	
	map_id CHARGESTONE_CAVE_B1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 26, MAGNEMITE
	db 26, NOSEPASS
	db 27, KLINK
	db 25, TYNAMO
	db 27, BELDUM
	db 28, TYNAMO
	db 28, STUNFISK
	db 30, LAIRON
	db 29, MAGNETON
	db 30, MAGNETON
	; day
	db 26, MAGNEMITE
	db 26, NOSEPASS
	db 27, KLINK
	db 25, TYNAMO
	db 27, BELDUM
	db 28, TYNAMO
	db 28, STUNFISK
	db 30, LAIRON
	db 29, MAGNETON
	db 30, MAGNETON
	; nite
	db 26, MAGNEMITE
	db 26, NOSEPASS
	db 27, KLINK
	db 25, TYNAMO
	db 27, BELDUM
	db 28, TYNAMO
	db 28, STUNFISK
	db 30, LAIRON
	db 29, MAGNETON
	db 30, MAGNETON
	
	map_id CHARGESTONE_CAVE_B2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 28, BELDUM
	db 26, MAGNEMITE
	db 27, KLINK
	db 27, TYNAMO
	db 29, STUNFISK
	db 30, LAIRON
	db 28, NOSEPASS
	db 30, NOSEPASS
	db 30, MAGNETON
	db 32, MAGNETON
	; day
	db 28, BELDUM
	db 26, MAGNEMITE
	db 27, KLINK
	db 27, TYNAMO
	db 29, STUNFISK
	db 30, LAIRON
	db 28, NOSEPASS
	db 30, NOSEPASS
	db 30, MAGNETON
	db 32, MAGNETON
	; nite
	db 28, BELDUM
	db 26, MAGNEMITE
	db 27, KLINK
	db 27, TYNAMO
	db 29, STUNFISK
	db 30, LAIRON
	db 28, NOSEPASS
	db 30, NOSEPASS
	db 30, MAGNETON
	db 32, MAGNETON
	
	map_id R_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 30, FLAAFFY
	db 28, ZEBSTRIKA
	db 29, HERDIER
	db 30, GRANBULL
	db 31, EMOLGA
	db 32, PAWNIARD
	db 32, HERDIER
	db 31, STUNFISK
	db 28, AXEW
	db 33, AXEW
	; day
	db 30, FLAAFFY
	db 28, ZEBSTRIKA
	db 29, HERDIER
	db 30, GRANBULL
	db 31, EMOLGA
	db 32, PAWNIARD
	db 32, HERDIER
	db 31, STUNFISK
	db 28, AXEW
	db 33, AXEW
	; nite
	db 30, FLAAFFY
	db 28, ZEBSTRIKA
	db 29, HERDIER
	db 30, GRANBULL
	db 31, EMOLGA
	db 32, PAWNIARD
	db 32, HERDIER
	db 31, STUNFISK
	db 28, AXEW
	db 33, AXEW
	
	map_id R_7_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 30, FLAAFFY
	db 28, ZEBSTRIKA
	db 29, HERDIER
	db 30, GRANBULL
	db 31, EMOLGA
	db 32, PAWNIARD
	db 32, HERDIER
	db 31, STUNFISK
	db 28, AXEW
	db 33, AXEW
	; day
	db 30, FLAAFFY
	db 28, ZEBSTRIKA
	db 29, HERDIER
	db 30, GRANBULL
	db 31, EMOLGA
	db 32, PAWNIARD
	db 32, HERDIER
	db 31, STUNFISK
	db 28, AXEW
	db 33, AXEW
	; nite
	db 30, FLAAFFY
	db 28, ZEBSTRIKA
	db 29, HERDIER
	db 30, GRANBULL
	db 31, EMOLGA
	db 32, PAWNIARD
	db 32, HERDIER
	db 31, STUNFISK
	db 28, AXEW
	db 33, AXEW
	
	map_id CELESTIAL_TOWER
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 33, LITWICK
	db 32, BALTOY
	db 31, GOLETT
	db 32, MEDITITE
	db 31, SNORUNT
	db 32, HAUNTER
	db 30, SPIRITOMB
	db 34, MEDITITE
	db 33, SNORUNT
	db 34, SPIRITOMB
	; day
	db 33, LITWICK
	db 32, BALTOY
	db 31, GOLETT
	db 32, MEDITITE
	db 31, SNORUNT
	db 32, HAUNTER
	db 30, SPIRITOMB
	db 34, MEDITITE
	db 33, SNORUNT
	db 34, SPIRITOMB
	; nite
	db 33, LITWICK
	db 32, BALTOY
	db 31, GOLETT
	db 32, MEDITITE
	db 31, SNORUNT
	db 32, HAUNTER
	db 30, SPIRITOMB
	db 34, MEDITITE
	db 33, SNORUNT
	db 34, SPIRITOMB
	
	map_id SEASIDE_CAVE_1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 34, VANILLITE
	db 33, CUBCHOO
	db 33, SWINUB
	db 32, SNORUNT
	db 34, SNEASEL
	db 32, CRYOGONAL
	db 36, CUBCHOO
	db 36, SWINUB
	db 36, SNEASEL
	db 35, CRYOGONAL
	; day
	db 34, VANILLITE
	db 33, CUBCHOO
	db 33, SWINUB
	db 32, SNORUNT
	db 34, SNEASEL
	db 32, CRYOGONAL
	db 36, CUBCHOO
	db 36, SWINUB
	db 36, SNEASEL
	db 35, CRYOGONAL
	; nite
	db 34, VANILLITE
	db 33, CUBCHOO
	db 33, SWINUB
	db 32, SNORUNT
	db 34, SNEASEL
	db 32, CRYOGONAL
	db 36, CUBCHOO
	db 36, SWINUB
	db 36, SNEASEL
	db 35, CRYOGONAL
	
	map_id SEASIDE_CAVE_B1F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 34, VANILLITE
	db 33, CUBCHOO
	db 33, SWINUB
	db 32, SNORUNT
	db 34, SNEASEL
	db 32, CRYOGONAL
	db 36, CUBCHOO
	db 36, SWINUB
	db 36, SNEASEL
	db 35, CRYOGONAL
	; day
	db 34, VANILLITE
	db 33, CUBCHOO
	db 33, SWINUB
	db 32, SNORUNT
	db 34, SNEASEL
	db 32, CRYOGONAL
	db 36, CUBCHOO
	db 36, SWINUB
	db 36, SNEASEL
	db 35, CRYOGONAL
	; nite
	db 34, VANILLITE
	db 33, CUBCHOO
	db 33, SWINUB
	db 32, SNORUNT
	db 34, SNEASEL
	db 32, CRYOGONAL
	db 36, CUBCHOO
	db 36, SWINUB
	db 36, SNEASEL
	db 35, CRYOGONAL
	
	map_id SEASIDE_CAVE_B2F
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 38, VANILLITE
	db 37, CUBCHOO
	db 37, SWINUB
	db 36, SNORUNT
	db 39, SNEASEL
	db 38, CRYOGONAL
	db 40, CUBCHOO
	db 40, SWINUB
	db 40, SNEASEL
	db 41, CRYOGONAL
	; day
	db 38, VANILLITE
	db 37, CUBCHOO
	db 37, SWINUB
	db 36, SNORUNT
	db 39, SNEASEL
	db 38, CRYOGONAL
	db 40, CUBCHOO
	db 40, SWINUB
	db 40, SNEASEL
	db 41, CRYOGONAL
	; nite
	db 38, VANILLITE
	db 37, CUBCHOO
	db 37, SWINUB
	db 36, SNORUNT
	db 39, SNEASEL
	db 38, CRYOGONAL
	db 40, CUBCHOO
	db 40, SWINUB
	db 40, SNEASEL
	db 41, CRYOGONAL
	
	map_id VILLAGE_BRIDGE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 40, AZUMARILL
	db 39, SWADLOON
	db 39, WHIRLIPEDE
	db 38, HERDIER
	db 37, ROSELIA
	db 36, FERROSEED
	db 38, GRANBULL
	db 40, FERROSEED
	db 40, GRANBULL
	db 41, ROSELIA
	; day
	db 40, AZUMARILL
	db 39, SWADLOON
	db 39, WHIRLIPEDE
	db 38, HERDIER
	db 37, ROSELIA
	db 36, FERROSEED
	db 38, GRANBULL
	db 40, FERROSEED
	db 40, GRANBULL
	db 41, ROSELIA
	; nite
	db 40, AZUMARILL
	db 39, SWADLOON
	db 39, WHIRLIPEDE
	db 38, HERDIER
	db 37, ROSELIA
	db 36, FERROSEED
	db 38, GRANBULL
	db 40, FERROSEED
	db 40, GRANBULL
	db 41, ROSELIA
	
	map_id R_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 40, RUFFLET
	db 40, VULLABY
	db 41, PINSIR
	db 41, HERACROSS
	db 38, AUDINO
	db 39, EMOLGA
	db 40, VULLABY
	db 38, KIRLIA
	db 40, AUDINO
	db 42, KIRLIA
	; day
	db 40, RUFFLET
	db 40, VULLABY
	db 41, PINSIR
	db 41, HERACROSS
	db 38, AUDINO
	db 39, EMOLGA
	db 40, VULLABY
	db 38, KIRLIA
	db 40, AUDINO
	db 42, KIRLIA
	; nite
	db 40, RUFFLET
	db 40, VULLABY
	db 41, PINSIR
	db 41, HERACROSS
	db 38, AUDINO
	db 39, EMOLGA
	db 40, VULLABY
	db 38, KIRLIA
	db 40, AUDINO
	db 42, KIRLIA
	
	map_id R_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 42, PAWNIARD
	db 41, HEATMOR
	db 41, DURANT
	db 42, GLIGAR
	db 40, STUNFISK
	db 40, SKARMORY
	db 42, STUNFISK
	db 40, GARBODOR
	db 43, SKARMORY
	db 43, GARBODOR
	; day
	db 42, PAWNIARD
	db 41, HEATMOR
	db 41, DURANT
	db 42, GLIGAR
	db 40, STUNFISK
	db 40, SKARMORY
	db 42, STUNFISK
	db 40, GARBODOR
	db 43, SKARMORY
	db 43, GARBODOR
	; nite
	db 42, PAWNIARD
	db 41, HEATMOR
	db 41, DURANT
	db 42, GLIGAR
	db 40, STUNFISK
	db 40, SKARMORY
	db 42, STUNFISK
	db 40, GARBODOR
	db 43, SKARMORY
	db 43, GARBODOR
	
	map_id R_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 43, PALPITOAD
	db 42, STUNFISK
	db 42, CROAGUNK
	db 42, SKORUPI
	db 44, CROAGUNK
	db 44, SKORUPI
	db 40, AMOONGUSS
	db 42, AMOONGUSS
	db 45, STUNFISK
	db 45, AMOONGUSS
	; day
	db 43, PALPITOAD
	db 42, STUNFISK
	db 42, CROAGUNK
	db 42, SKORUPI
	db 44, CROAGUNK
	db 44, SKORUPI
	db 40, AMOONGUSS
	db 42, AMOONGUSS
	db 45, STUNFISK
	db 45, AMOONGUSS
	; nite
	db 43, PALPITOAD
	db 42, STUNFISK
	db 42, CROAGUNK
	db 42, SKORUPI
	db 44, CROAGUNK
	db 44, SKORUPI
	db 40, AMOONGUSS
	db 42, AMOONGUSS
	db 45, STUNFISK
	db 45, AMOONGUSS
	
	map_id MOOR_OF_ICIRRUS
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 43, PALPITOAD
	db 42, STUNFISK
	db 42, KARRABLAST
	db 42, SHELMET
	db 43, CROAGUNK
	db 43, SKORUPI
	db 45, CROAGUNK
	db 45, SKORUPI
	db 45, STUNFISK
	db 45, PALPITOAD
	; day
	db 43, PALPITOAD
	db 42, STUNFISK
	db 42, KARRABLAST
	db 42, SHELMET
	db 43, CROAGUNK
	db 43, SKORUPI
	db 45, CROAGUNK
	db 45, SKORUPI
	db 45, STUNFISK
	db 45, PALPITOAD
	; nite
	db 43, PALPITOAD
	db 42, STUNFISK
	db 42, KARRABLAST
	db 42, SHELMET
	db 43, CROAGUNK
	db 43, SKORUPI
	db 45, CROAGUNK
	db 45, SKORUPI
	db 45, STUNFISK
	db 45, PALPITOAD

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

	db -1 ; end
