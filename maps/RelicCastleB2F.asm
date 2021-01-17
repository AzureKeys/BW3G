	const_def 2 ; object constants
	const RELICCASTLEB2F_TM_BULLDOZE
	const RELICCASTLEB2F_PSYCHIC

RelicCastleB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerPsychicRelicCastleB2F:
	trainer PSYCHIC_T, PSYCHIC_RELIC_CASTLE_3, EVENT_BEAT_PSYCHIC_RELIC_CASTLE_3, PsychicRelicCastleB2FSeenText, PsychicRelicCastleB2FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicRelicCastleB2FAfterText
	waitbutton
	closetext
	end
	
RelicCastleTMBulldoze:
	itemball TM_BULLDOZE
	
PsychicRelicCastleB2FSeenText:
	text "I was training"
	line "here alone."

	para "Behold the fruits"
	line "of my labor!"
	done

PsychicRelicCastleB2FBeatenText:
	text "Waaaargh!"
	done

PsychicRelicCastleB2FAfterText:
	text "This calls for"
	line "extreme measures."
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
	object_event  2,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RelicCastleTMBulldoze, EVENT_RELIC_CASTLE_TM_BULLDOZE
	object_event  5,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicRelicCastleB2F, -1
	