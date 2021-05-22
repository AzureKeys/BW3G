map_id: MACRO
;\1: map id
	db GROUP_\1, MAP_\1
ENDM

scene_script: MACRO
;\1: script pointer
	dw \1
	dw 0 ; filler
ENDM

callback: MACRO
;\1: type: a MAPCALLBACK_* constant
;\2: script pointer
	dbw \1, \2
ENDM

warp_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: map id: from constants/map_constants.asm
;\4: warp destination: starts at 1
	db \2, \1, \4
	map_id \3
ENDM

coord_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: scene id: a SCENE_* constant; controlled by setscene/setmapscene
;\4: script pointer
	db \3, \2, \1
	db 0 ; filler
	dw \4
	db 0, 0 ; filler
ENDM

bg_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: function: a BGEVENT_* constant
;\4: script pointer
	db \2, \1, \3
	dw \4
ENDM

object_event: MACRO
;\1: x: left to right, starts at 0
;\2: y: top to bottom, starts at 0
;\3: sprite: a SPRITE_* constant
;\4: movement function: a SPRITEMOVEDATA_* constant
;\5, \6: movement radius: x, y
;\7, \8: hour limits: h1, h2 (0-23)
;  * if h1 < h2, the object_event will only appear from h1 to h2
;  * if h1 > h2, the object_event will not appear from h2 to h1
;  * if h1 == h2, the object_event will always appear
;  * if h1 == -1, h2 is treated as a time-of-day value:
;    a combo of MORN, DAY, and/or NITE, or -1 to always appear
;\9: color: a PAL_NPC_* constant, or 0 for sprite default
;\10: function: a OBJECTTYPE_* constant
;\11: sight range: applies to OBJECTTYPE_TRAINER
;\12: script pointer
;\13: event flag: an EVENT_* constant, or -1 to always appear
	db \3, \2 + 4, \1 + 4, \4
	dn \6, \5
	db \7, \8
	shift
	dn \8, \9
	shift
	db \9
	shift
	dw \9
	shift
	dw \9
ENDM

trainer: MACRO
;\1: trainer group
;\2: trainer id
;\3: flag: an EVENT_BEAT_* constant
;\4: seen text
;\5: win text
;\6: loss text
;\7: after-battle text
	dw \3
	db \1, \2
	dw \4, \5, \6, \7
ENDM

itemball: MACRO
;\1: item: from constants/item_constants.asm
;\2: quantity: default 1
if _NARG == 1
	itemball \1, 1
else
	db \1, \2
endc
ENDM

hiddenitem: MACRO
;\1: item: from constants/item_constants.asm
;\2: flag: an EVENT_* constant
	dwb \2, \1
ENDM

elevfloor: MACRO
;\1: floor: a FLOOR_* constant
;\2: warp destination: starts at 1
;\3: map id
	db \1, \2
	map_id \3
ENDM

conditional_event: MACRO
;\1: flag: an EVENT_* constant
;\2: script pointer
	dw \1, \2
ENDM

cmdqueue: MACRO
;\1: type: a CMDQUEUE_* constant
;\2: data pointer
	dbw \1, \2
	dw 0 ; filler
ENDM

stonetable: MACRO
;\1: warp id
;\2: object_event id
;\3: script pointer
	dbbw \1, \2, \3
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if "\1" == "north"
_blk = \3_WIDTH * (\3_HEIGHT + -3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "south"
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "west"
_blk = (\3_WIDTH * _src) + \3_WIDTH + -3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 + -6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif "\1" == "east"
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM
