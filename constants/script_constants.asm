; person constants
PLAYER      EQU  0
LAST_TALKED EQU -2

; memory constants
	const_def
	const MEM_BUFFER_0 ; use wStringBuffer3
	const MEM_BUFFER_1 ; use wStringBuffer4
	const MEM_BUFFER_2 ; use wStringBuffer5
NUM_MEM_BUFFERS EQU const_value

; checkmoney/takemoney accounts
	const_def
	const YOUR_MONEY ; 0
	const MOMS_MONEY ; 1

; checkmoney/checkcoins return values
	const_def
	const HAVE_MORE   ; 0
	const HAVE_AMOUNT ; 1
	const HAVE_LESS   ; 2

; checkpokemail return values
	const_def
	const POKEMAIL_WRONG_MAIL ; 0
	const POKEMAIL_CORRECT    ; 1
	const POKEMAIL_REFUSED    ; 2
	const POKEMAIL_NO_MAIL    ; 3
	const POKEMAIL_LAST_MON   ; 4

; askforphonenumber return values
	const_def
	const PHONE_CONTACT_GOT     ; 0
	const PHONE_CONTACTS_FULL   ; 1
	const PHONE_CONTACT_REFUSED ; 2

; writecode/checkcode arguments
; _GetVarAction.VarActionTable indexes (see engine/overworld/variables.asm)
	const_def
	const VAR_STRINGBUFFER2    ; 00
	const VAR_PARTYCOUNT       ; 01
	const VAR_BATTLERESULT     ; 02
	const VAR_BATTLETYPE       ; 03
	const VAR_TIMEOFDAY        ; 04
	const VAR_DEXCAUGHT        ; 05
	const VAR_DEXSEEN          ; 06
	const VAR_BADGES           ; 07
	const VAR_MOVEMENT         ; 08
	const VAR_FACING           ; 09
	const VAR_HOUR             ; 0a
	const VAR_WEEKDAY          ; 0b
	const VAR_MAPGROUP         ; 0c
	const VAR_MAPNUMBER        ; 0d
	const VAR_UNOWNCOUNT       ; 0e
	const VAR_ROOFPALETTE      ; 0f
	const VAR_BOXSPACE         ; 10
	const VAR_CONTESTMINUTES   ; 11
	const VAR_XCOORD           ; 12
	const VAR_YCOORD           ; 13
	const VAR_SPECIALPHONECALL ; 14
	const VAR_BT_WIN_STREAK    ; 15
	const VAR_KURT_APRICORNS   ; 16
	const VAR_CALLERID         ; 17
	const VAR_BLUECARDBALANCE  ; 18
	const VAR_BUENASPASSWORD   ; 19
	const VAR_KENJI_BREAK      ; 1a
NUM_VARS EQU const_value       ; 1b

; variable action types
RETVAR_STRBUF2 EQU (0 << 6)
RETVAR_ADDR_DE EQU (1 << 6)
RETVAR_EXECUTE EQU (2 << 6)

; PlayerEventScriptPointers indexes (see engine/overworld/events.asm)
	const_def -1
	const PLAYEREVENT_MAPSCRIPT
	const PLAYEREVENT_NONE
	const PLAYEREVENT_SEENBYTRAINER
	const PLAYEREVENT_TALKTOTRAINER
	const PLAYEREVENT_ITEMBALL
	const PLAYEREVENT_CONNECTION
	const PLAYEREVENT_WARP
	const PLAYEREVENT_FALL
	const PLAYEREVENT_WHITEOUT
	const PLAYEREVENT_HATCH
	const PLAYEREVENT_JOYCHANGEFACING
NUM_PLAYER_EVENTS EQU const_value

; bg_event types
; TryBGEvent arguments (see engine/overworld/events.asm)
	const_def
	const BGEVENT_READ
	const BGEVENT_UP
	const BGEVENT_DOWN
	const BGEVENT_RIGHT
	const BGEVENT_LEFT
	const BGEVENT_IFSET
	const BGEVENT_IFNOTSET
	const BGEVENT_ITEM
	const BGEVENT_COPY

; object_event types
; TryObjectEvent arguments (see engine/overworld/events.asm)
	const_def
	const OBJECTTYPE_SCRIPT
	const OBJECTTYPE_ITEMBALL
	const OBJECTTYPE_TRAINER
	const OBJECTTYPE_3
	const OBJECTTYPE_4
	const OBJECTTYPE_5
	const OBJECTTYPE_6

; elevfloor macro values
; ElevatorFloorNames indexes (see data/events/elevator_floors.asm)
	const_def
	const FLOOR_B4F
	const FLOOR_B3F
	const FLOOR_B2F
	const FLOOR_B1F
	const FLOOR_1F
	const FLOOR_2F
	const FLOOR_3F
	const FLOOR_4F
	const FLOOR_5F
	const FLOOR_6F
	const FLOOR_7F
	const FLOOR_8F
	const FLOOR_9F
	const FLOOR_10F
	const FLOOR_11F
	const FLOOR_ROOF

; showemote arguments
; Emotes indexes (see data/sprites/emotes.asm)
	const_def
	const EMOTE_SHOCK ; 0
	const EMOTE_QUESTION ; 1
	const EMOTE_HAPPY ; 2
	const EMOTE_SAD ; 3
	const EMOTE_HEART ; 4
	const EMOTE_BOLT ; 5
	const EMOTE_SLEEP ; 6
	const EMOTE_FISH ; 7
	const EMOTE_SHADOW ; 8
	const EMOTE_ROD ; 9
	const EMOTE_BOULDER_DUST ; 10
	const EMOTE_GRASS_RUSTLE ; 11
	const EMOTE_PUDDLE_SPLASH
EMOTE_MEM EQU -1

; fruittree arguments
; FruitTreeItems indexes (see data/items/fruit_trees.asm)
	const_def 1
	const FRUITTREE_R_22           ; 01
	const FRUITTREE_R_12           ; 02
	const FRUITTREE_R_13           ; 03
	const FRUITTREE_R_14           ; 04
	const FRUITTREE_R_5            ; 05
	const FRUITTREE_FLOCCESY_RANCH ; 06
	const FRUITTREE_R_19           ; 07
	const FRUITTREE_R_20           ; 08
	const FRUITTREE_R_2            ; 09
	const FRUITTREE_R_1            ; 0a
	const FRUITTREE_R_6            ; 0b
	const FRUITTREE_R_7            ; 0c
	const FRUITTREE_VILLAGE_BRIDGE ; 0d
NUM_FRUIT_TREES EQU const_value + -1

; hiddengrotto arguments
; HiddenGrotto event indexes
	const_def 1
	const HIDDENGROTTO_R_22         ; 01
	const HIDDENGROTTO_R_13         ; 02
	const HIDDENGROTTO_LOSTLORN     ; 03
	const HIDDENGROTTO_R_5          ; 04
	const HIDDENGROTTO_R_19         ; 05
	const HIDDENGROTTO_FLOCCESY     ; 06
	const HIDDENGROTTO_PINWHEEL     ; 07
	const HIDDENGROTTO_R_3          ; 08
	const HIDDENGROTTO_R_2          ; 09
	const HIDDENGROTTO_R_18         ; 0a
	const HIDDENGROTTO_GIANT_CHASM  ; 0b
	const HIDDENGROTTO_R_6          ; 0c
	const HIDDENGROTTO_R_23         ; 0d
	const HIDDENGROTTO_R_7          ; 0e
	const HIDDENGROTTO_R_9          ; 0f
NUM_HIDDEN_GROTTO EQU const_value + -1

; Hidden Grotto/Gift Item Tiers
	const_def 1
	const HIDDENGROTTO_TIER_1 ; 1
	const HIDDENGROTTO_TIER_2 ; 2
	const HIDDENGROTTO_TIER_3 ; 3

; describedecoration arguments
; DescribeDecoration.JumpTable indexes (see engine/overworld/decorations.asm)
	const_def
	const DECODESC_POSTER     ; 0
	const DECODESC_LEFT_DOLL  ; 1
	const DECODESC_RIGHT_DOLL ; 2
	const DECODESC_BIG_DOLL   ; 3
	const DECODESC_CONSOLE    ; 4

; swarm arguments
; StoreSwarmMapIndices arguments
	const_def
	const SWARM_DUNSPARCE ; 0
	const SWARM_YANMA     ; 1

; ActivateFishingSwarm writebyte arguments
	const_def
	const FISHSWARM_NONE     ; 0
	const FISHSWARM_QWILFISH ; 1
	const FISHSWARM_REMORAID ; 2

; SpecialGameboyCheck return values
	const_def
	const GBCHECK_GB  ; 0
	const GBCHECK_SGB ; 1
	const GBCHECK_CGB ; 2

; CheckMagikarpLength return values
	const_def
	const MAGIKARPLENGTH_NOT_MAGIKARP ; 0
	const MAGIKARPLENGTH_REFUSED      ; 1
	const MAGIKARPLENGTH_TOO_SHORT    ; 2
	const MAGIKARPLENGTH_BEAT_RECORD  ; 3

; SpecialReturnShuckle return values
	const_def
	const SHUCKIE_WRONG_MON ; 0
	const SHUCKIE_REFUSED   ; 1
	const SHUCKIE_RETURNED  ; 2
	const SHUCKIE_HAPPY     ; 3
	const SHUCKIE_FAINTED   ; 4

; CheckPartyFullAfterContest return values
	const_def
	const BUGCONTEST_CAUGHT_MON ; 0
	const BUGCONTEST_BOXED_MON  ; 1
	const BUGCONTEST_NO_CATCH   ; 2

; HealMachineAnim writebyte arguments
; HealMachineAnim.Pointers indexes (see engine/events/heal_machine_anim.asm)
	const_def
	const HEALMACHINE_POKECENTER   ; 0
	const HEALMACHINE_ELMS_LAB     ; 1
	const HEALMACHINE_HALL_OF_FAME ; 2

; UnownPuzzle writebyte arguments
; LoadUnownPuzzlePiecesGFX.LZPointers indexes (see engine/games/unown_puzzle.asm)
	const_def
	const UNOWNPUZZLE_KABUTO     ; 0
	const UNOWNPUZZLE_OMANYTE    ; 1
	const UNOWNPUZZLE_AERODACTYL ; 2
	const UNOWNPUZZLE_HO_OH      ; 3
NUM_UNOWN_PUZZLES EQU const_value

; DisplayUnownWords writebyte arguments
; UnownWalls and MenuHeaders_UnownWalls indexes (see data/events/unown_walls.asm)
	const_def
	const UNOWNWORDS_ESCAPE ; 0
	const UNOWNWORDS_LIGHT  ; 1
	const UNOWNWORDS_WATER  ; 2
	const UNOWNWORDS_HO_OH  ; 3

; MoveTutor writebyte arguments
	const_def 1
	const MOVETUTOR_FLAMETHROWER ; 1
	const MOVETUTOR_THUNDERBOLT  ; 2
	const MOVETUTOR_ICE_BEAM     ; 3
