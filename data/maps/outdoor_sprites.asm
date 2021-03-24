; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw DungeonsGroupSprites
	dw CableClubGroupSprites
	dw HumilauGroupSprites
	dw LacunosaGroupSprites
	dw UndellaGroupSprites
	dw LentimasGroupSprites
	dw NimbasaGroupSprites
	dw DesertGroupSprites
	dw CasteliaGroupSprites
	dw AspertiaGroupSprites
	dw FloccesyGroupSprites
	dw VirbankGroupSprites
	dw NacreneGroupSprites
	dw StriatonGroupSprites
	dw AccumulaGroupSprites
	dw P2GroupSprites
	dw PwtGroupSprites
	dw DriftveilGroupSprites
	dw MistraltonGroupSprites
	dw OpelucidGroupSprites
	dw PkmnLeagueGroupSprites

HumilauGroupSprites:
; Humilau City, Route 22, Route 21
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_TEACHER
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

LacunosaGroupSprites:
; Lacunosa Town, Route 12, Route 13
	db SPRITE_MONSTER
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_MARLON
	db SPRITE_INFER
	db SPRITE_BUG_CATCHER
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

UndellaGroupSprites:
; Undella Town, Route 14
	db SPRITE_COOLTRAINER_M
	db SPRITE_FISHER
	db SPRITE_MARLON
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_BUG_CATCHER
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

LentimasGroupSprites:
; Lentimas Outskirts, Lentimas Town
	db SPRITE_OFFICER
	db SPRITE_LASS
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_BLACK_BELT
	db SPRITE_SCIENTIST
	db SPRITE_GRANNY
	db SPRITE_GRAMPS
	db SPRITE_POKEFAN_F
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db 0 ; end

NimbasaGroupSprites:
; Route 16, Nimbasa City, Route 5
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_BIKER
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_F
	db SPRITE_SUPER_NERD
	db SPRITE_GRAMPS
	db SPRITE_ROCKET
	db SPRITE_CHEREN
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

DesertGroupSprites:
; Route 4, Desert Resort
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_BIKER
	db SPRITE_BUENA
	db SPRITE_POKEFAN_M
	db SPRITE_OFFICER
	db SPRITE_BUG_CATCHER
	db SPRITE_FISHER
	db SPRITE_POKEFAN_F
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db 0 ; end

CasteliaGroupSprites:
; Castelia City, Skyarrow Bridge
	db SPRITE_CLERK
	db SPRITE_SAILOR
	db SPRITE_CHEREN
	db SPRITE_YOUNGSTER
	db SPRITE_TEACHER
	db SPRITE_LASS
	db SPRITE_GENTLEMAN
	db SPRITE_TWIN
	; 8 of max 9 walking sprites
	db SPRITE_SNEASEL
	db SPRITE_SLEEPING_MAN
	db SPRITE_POKE_BALL
	db SPRITE_CABLE
	db 0 ; end

AspertiaGroupSprites:
; Aspertia City
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_TEACHER
	db SPRITE_GRAMPS
	db SPRITE_POKEFAN_M
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db 0 ; end

FloccesyGroupSprites:
; Floccesy Town, R19, R20, Floccesy Ranch
	db SPRITE_YOUNGSTER
	db SPRITE_BUENA
	db SPRITE_FISHER
	db SPRITE_SUPER_NERD
	db SPRITE_LASS
	db SPRITE_TEACHER
	db SPRITE_JUNIPER
	db SPRITE_TWIN
	db SPRITE_POKEFAN_M
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

VirbankGroupSprites:
; Virbank City, Virbank Complex
	db SPRITE_PHARMACIST
	db SPRITE_COOLTRAINER_F
	db SPRITE_POKEFAN_M
	db SPRITE_FISHER
	db SPRITE_CHEREN
	db SPRITE_SAILOR
	db SPRITE_FISHING_GURU
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db 0 ; end

NacreneGroupSprites:
; Nacrene City
	db SPRITE_LENORA
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_GENTLEMAN
	db SPRITE_PHARMACIST
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db 0 ; end

StriatonGroupSprites:
; Striaton City, R3, R2
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_GENTLEMAN
	db SPRITE_BUENA
	db SPRITE_SUPER_NERD
	db SPRITE_OFFICER
	db SPRITE_TWIN
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_BOULDER
	db 0 ; end

AccumulaGroupSprites:
; Accumula Town, R1, Nuvema Town
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_TWIN
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_PZMA_SAGE
	db SPRITE_TEACHER
	db SPRITE_POKEFAN_M
	db SPRITE_POKEFAN_F
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

P2GroupSprites:
; R17, R18
	db SPRITE_SWIMMER_GUY
	db SPRITE_SWIMMER_GIRL
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_BLACK_BELT
	db SPRITE_FISHER
	db SPRITE_SCIENTIST
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

PwtGroupSprites:
; PWT Outside
	db SPRITE_BIANCA
	db SPRITE_CHEREN
	db SPRITE_PHARMACIST
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_SAILOR
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

DriftveilGroupSprites:
; Driftveil City, R6
	db SPRITE_OFFICER
	db SPRITE_ROCKET
	db SPRITE_GRANNY
	db SPRITE_GRAMPS
	db SPRITE_PHARMACIST
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_SCIENTIST
	db SPRITE_SCIENTIST_F
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

MistraltonGroupSprites:
; Mistralton City, R7
	db SPRITE_YOUNGSTER
	db SPRITE_HARLEQUIN
	db SPRITE_TWIN
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_M
	db SPRITE_GYM_GUY
	db SPRITE_OFFICER
	db SPRITE_TEACHER
	db SPRITE_POKEFAN_F
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

OpelucidGroupSprites:
; Opelucid City, R11, Village Bridge
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db SPRITE_CABLE
	db 0 ; end

PkmnLeagueGroupSprites:
; R23
	db SPRITE_OFFICER
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

DungeonsGroupSprites:
; Pinwheel Forest, Giant Chasm B1F
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_BUG_CATCHER
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER
	db SPRITE_INFER
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_SUPER_NERD
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db 0 ; end

CableClubGroupSprites:
; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end
