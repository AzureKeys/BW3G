tileset: MACRO
	dba \1GFX, \1Meta, \1Coll, \1Attr
	dw \1Anim
ENDM

; Associated data:
; - The *GFX, *Meta, and *Coll are defined in gfx/tilesets.asm
; - The *PalMap are defined in gfx/tileset_palette_maps.asm
; - The *Anim are defined in engine/tilesets/tileset_anims.asm

Tilesets::
; entries correspond to TILESET_* constants
	tileset Tileset0
	tileset TilesetJohto
	tileset TilesetJohtoModern
	tileset TilesetBattleTowerOutside
	tileset TilesetHouse
	tileset TilesetPlayersHouse
	tileset TilesetPokecenter
	tileset TilesetGate
	tileset TilesetPort
	tileset TilesetLab
	tileset TilesetFacility
	tileset TilesetMart
	tileset TilesetMansion
	tileset TilesetGameCorner
	tileset TilesetEliteFourRoom
	tileset TilesetTraditionalHouse
	tileset TilesetTrainStation
	tileset TilesetChampionsRoom
	tileset TilesetPlayersRoom
	tileset TilesetBattleTower
	tileset TilesetTower
	tileset TilesetCave
	tileset TilesetPark
	tileset TilesetRadioTower
	tileset TilesetUnderground
	tileset TilesetIcePath
	tileset TilesetForest
	tileset TilesetLentimas
	tileset TilesetDesert
	tileset TilesetBridge
	tileset TilesetVillageBridge
	tileset TilesetMistralton
	tileset TilesetUnovaBeach
	tileset TilesetUnovaEast
	tileset TilesetStriaton
	tileset TilesetNacrene
	tileset TilesetUnovaWest
	tileset TilesetNimbasa
	tileset TilesetVirbank
	tileset TilesetComplex
	tileset TilesetDriftveil
	tileset TilesetUnovaNorth
	tileset TilesetCastelia
	tileset TilesetAirport
	tileset TilesetOpelucid
	tileset TilesetIcirrus
	tileset TilesetDreamyard
	tileset TilesetPkmnLeague
