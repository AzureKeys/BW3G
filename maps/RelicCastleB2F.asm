	const_def 2 ; object constants
	const RELICCASTLEB2F_TM_DIG
	const RELICCASTLEB2F_PSYCHICF

RelicCastleB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerPsychicFRelicCastleB2F:
	trainer PSYCHICF_T, PSYCHICF_RELIC_CASTLE_2, EVENT_BEAT_PSYCHICF_RELIC_CASTLE_2, PsychicFRelicCastleB2FSeenText, PsychicFRelicCastleB2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFRelicCastleB2FAfterText
	waitbutton
	closetext
	end
	
RelicCastleTMDig:
	itemball TM_DIG
	
PsychicFRelicCastleB2FSeenText:
	text "…When I am here, I"
	line "feel like I might"

	para "be crushed by"
	line "sorrow. You there…"
	cont "Let's have a bout!"
	done

PsychicFRelicCastleB2FBeatenText:
	text "This bout… I will"
	line "not forget it…"
	done

PsychicFRelicCastleB2FAfterText:
	text "This castle will"
	line "be buried by the"
	
	para "sands and for-"
	line "gotten in time…"
	done

RelicCastleB2F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  8,  2, RELIC_CASTLE_B1F, 3
	warp_event  2,  2, RELIC_CASTLE_B3F, 1
	warp_event 10,  7, RELIC_CASTLE_B3F, 2
	warp_event 14, 11, RELIC_CASTLE_B1F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RelicCastleTMDig, EVENT_RELIC_CASTLE_TM_DIG
	object_event  5,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicFRelicCastleB2F, -1
	