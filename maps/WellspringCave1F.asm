	const_def 2 ; object constants
	const WELLSPRINGCAVE1F_ICE_STONE
	const WELLSPRINGCAVE1F_MAX_REPEL
	const WELLSPRINGCAVE1F_ESCAPE_ROPE
	const WELLSPRINGCAVE1F_ELIXER
	const WELLSPRINGCAVE1F_BLACKBELT

WellspringCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerBlackbeltWellspring1F:
	trainer BLACKBELT_T, BLACKBELT_WELLSPRING_1, EVENT_BEAT_BLACKBELT_WELLSPRING_1, BlackbeltWellspring1FSeenText, BlackbeltWellspring1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltWellspring1FAfterText
	waitbutton
	closetext
	end
	
WellspringCave1FIceStone:
	itemball ICE_STONE
	
WellspringCave1FMaxRepel:
	itemball MAX_REPEL
	
WellspringCave1FEscapeRope:
	itemball ESCAPE_ROPE
	
WellspringCave1FElixer:
	itemball ELIXER
	
WellspringCave1FPPUp:
	hiddenitem PP_UP, EVENT_WELLSPRING_CAVE_PP_UP
	
BlackbeltWellspring1FSeenText:
	text "My #MON and I"
	line "are bound togeth-"
	cont "er by friendship."

	para "Our bond will"
	line "never be broken!"
	done

BlackbeltWellspring1FBeatenText:
	text "This isn't real!"
	done

BlackbeltWellspring1FAfterText:
	text "You seem to have a"
	line "strong bond with"
	cont "your #MON too!"
	done

WellspringCave1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 29,  3, R_3, 4
	warp_event 17, 21, WELLSPRING_CAVE_B1F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 14, 18, BGEVENT_ITEM, WellspringCave1FPPUp
	
	db 5 ; object events
	object_event 22,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WellspringCave1FIceStone, EVENT_WELLSPRING_CAVE_ICE_STONE
	object_event 17,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WellspringCave1FMaxRepel, EVENT_WELLSPRING_CAVE_MAX_REPEL
	object_event 12,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WellspringCave1FEscapeRope, EVENT_WELLSPRING_CAVE_ESCAPE_ROPE
	object_event  3,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WellspringCave1FElixer, EVENT_WELLSPRING_CAVE_ELIXER
	object_event 16,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltWellspring1F, -1
	