	const_def 2 ; object constants
	const RELICCASTLEB1F_MAX_POTION
	const RELICCASTLEB1F_PSYCHICF

RelicCastleB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerPsychicFRelicCastleB1F:
	trainer PSYCHICF_T, PSYCHICF_RELIC_CASTLE_1, EVENT_BEAT_PSYCHICF_RELIC_CASTLE_1, PsychicFRelicCastleB1FSeenText, PsychicFRelicCastleB1FBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFRelicCastleB1FAfterText
	waitbutton
	closetext
	end
	
RelicCastleMaxPotion:
	itemball MAX_POTION
	
RelicCastleElixer:
	hiddenitem ELIXER, EVENT_RELIC_CASTLE_ELIXER
	
PsychicFRelicCastleB1FSeenText:
	text "My psychic type"
	line "#MON just"

	para "started making"
	line "noises. Is that"
	
	para "because we're in"
	line "the ruins… or is"
	cont "it because of you?"
	done

PsychicFRelicCastleB1FBeatenText:
	text "So… strong! Who"
	line "are you?"
	done

PsychicFRelicCastleB1FAfterText:
	text "RELIC CASTLE…"
	
	para "Apparently people"
	line "and #MON came"
	
	para "together here to"
	line "create UNOVA."
	done

RelicCastleB1F_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 14,  2, RELIC_CASTLE_1F, 2
	warp_event  2, 12, RELIC_CASTLE_1F, 3
	warp_event  8,  2, RELIC_CASTLE_B2F, 1
	warp_event 14, 11, RELIC_CASTLE_B2F, 4
	warp_event  3,  9, RELIC_CASTLE_1F, 4
	warp_event  8,  9, RELIC_CASTLE_1F, 5

	db 0 ; coord events

	db 1 ; bg events
	bg_event 14, 10, BGEVENT_ITEM, RelicCastleElixer

	db 2 ; object events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RelicCastleMaxPotion, EVENT_RELIC_CASTLE_MAX_POTION
	object_event  9,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicFRelicCastleB1F, -1
	